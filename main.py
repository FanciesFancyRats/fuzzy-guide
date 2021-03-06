from typing import Optional
from fastapi import FastAPI, Response, status, HTTPException, Depends
from fastapi.params import Body
from pydantic import BaseModel
from random import randrange
import psycopg2
from psycopg2.extras import RealDictCursor
import time;
from sqlalchemy.orm import Session
from . import models
#from .models import Base
from .database import engine, Sessionlocal, Base

from starlette.status import HTTP_204_NO_CONTENT, HTTP_404_NOT_FOUND

models.Base.metadata.create_all(bind=engine)

while True:

    try:
        conn = psycopg2.connect(host='localhost', database='fastapi', user='postgres', password='password1234', cursor_factory=RealDictCursor)
        cursor = conn.cursor()
        print("Database conection was succesfull!")
        break
    except Exception as error:
        print("Connecting to database failed")
        print("Error: ", error)
        time.sleep(2)


app = FastAPI()

# Dependency
def get_db():
    db = Sessionlocal()
    try:
        yield db
    finally:
        db.close()


class Post(BaseModel):
    title: str
    content: str
    published: bool = True
    rating: Optional[int] = None


my_post = [{"title": "title of post 1", "content" : "content of post 1", "id" : 1}, {"title": "title of post 2", "content" : "content of post 2", "id" : 2}, {"title": "title of post 3", "content" : "content of post 3", "id" : 3}, {"title": "title of post 4", "content" : "content of post 4", "id" : 4}]

def find_post(id):
    for p in my_post:
        if p["id"] == id:
            return p

def find_index_post(id):
    for i, p in enumerate(my_post):
        if p['id'] == id:
            return i

@app.get("/")
async def root():
    return({"message": "something else"})

@app.get("/posts")
def get_posts():
    cursor.execute("""SELECT * FROM posts""")
    posts = cursor.fetchall()
    return {"data": posts}

@app.get("/posts/{id}")
def get_post(id: int, resposne: Response):

    cursor.execute("""SELECT * FROM posts WHERE id = %s """, (str(id),))
    post = cursor.fetchone()
    if not post:
        raise HTTPException(status_code=status.HTTP_404_NOT_FOUND, detail=f"post with id: {id} was not found")
    return{"post_detail": post}


@app.post("/posts", status_code=status.HTTP_201_CREATED)
def create_posts(post: Post):
    cursor.execute("""INSERT INTO posts (title, content, published) VALUES (%s, %s, %s) RETURNING *""",(post.title, post.content, post.published))
    new_post = cursor.fetchone()
    
    conn.commit()

    return {"data": new_post}

@app.delete("/posts/{id}", status_code=status.HTTP_204_NO_CONTENT)
def delete_post(id: int):
    cursor.execute("""DELETE from posts WHERE id = %s RETURNING *""", (str(id),)) # deleting post
    deleted_post = cursor.fetchone() 
    conn.commit()
    
    if deleted_post == None:
        raise HTTPException(status_code=status.HTTP_404_NOT_FOUND, detail=f"post with id: {id} was not found")
    return Response(status_code=HTTP_204_NO_CONTENT)

@app.put("/posts/{id}")
def update_post(id: int, post: Post):
    cursor.execute("""UPDATE posts SET title = %s, content = %s, published = %s WHERE id = %s RETURNING *""", (post.title, post.content, post.published, (str(id),)))
    updated_post = cursor.fetchone();
    conn.commit()
    if updated_post == None:
        raise HTTPException(status_code=status.HTTP_404_NOT_FOUND, detail=f"post with id: {id} was not found")
    return {"data": updated_post}

@app.get("/sqlalchemy")
def test_post(db: Session = Depends(get_db)):
    return {"status":"success"}
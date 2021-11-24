from sqlalchemy import Boolean, Column, String
from sqlalchemy.sql.expression import null, text 
from sqlalchemy.sql.sqltypes import TIMESTAMP, Integer
from sqlalchemy.sql.visitors import TraversibleType
from sqlalchemy.util.langhelpers import public_factory

from .database import Base


class Post(Base):
    __tablename__ = "posts"

    id = Column(Integer, primary_key=True, nullable=False) 
    title = Column(String, nullable=False)
    content = Column(String, nullable=False)
    published = Column(Boolean, default=True)
    created_at = Column(TIMESTAMP(timezone=True), nullable=False, server_default=text('now()'))

    
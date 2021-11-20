create table posts (
	id SERIAL NOT NULL PRIMARY KEY,
	title VARCHAR(50),
	content VARCHAR(500),
	published boolean DEFAULT true, 
	created_at DATE DEFAULT NOW()
);
insert into posts (title, content, created_at) values ('zero defect', 'dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit',  '2021-09-05 21:44:19');
insert into posts (title, content, created_at) values ('knowledge user', 'turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit',  '2021-05-24 16:45:08');
insert into posts (title, content, created_at) values ('background', 'mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id',  '2021-05-15 19:43:59');
insert into posts (title, content, created_at) values ('throughput', 'volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis',  '2021-11-06 18:08:14');
insert into posts (title, content, created_at) values ('didactic', 'ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet',  '2021-08-06 23:14:26');
insert into posts (title, content, created_at) values ('capability', 'venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi',  '2021-05-16 15:47:03');
insert into posts (title, content, created_at) values ('Managed', 'cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui',  '2021-07-26 04:11:09');
insert into posts (title, content, created_at) values ('logistical', 'bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem',  '2020-12-03 14:41:28');
insert into posts (title, content, created_at) values ('Reactive', 'dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien',  '2021-09-25 14:41:22');
insert into posts (title, content, created_at) values ('Devolved', 'quisque ut erat curabitur gravida nisi at nibh in hac habitasse',  '2021-04-29 03:26:10');
insert into posts (title, content, created_at) values ('Reduced', 'nulla justo aliquam quis turpis eget elit sodales scelerisque mauris',  '2021-05-29 18:25:45');
insert into posts (title, content, created_at) values ('neural-net', 'mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla',  '2021-05-24 14:38:42');
insert into posts (title, content, created_at) values ('service-desk', 'nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque',  '2021-10-15 19:12:18');
insert into posts (title, content, created_at) values ('object-oriented', 'nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum',  '2020-12-26 19:28:26');
insert into posts (title, content, created_at) values ('Graphical User Interface', 'iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis',  '2021-03-29 15:10:57');
insert into posts (title, content, created_at) values ('well-modulated', 'in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at',  '2021-09-11 22:38:55');
insert into posts (title, content, created_at) values ('radical', 'sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc',  '2021-09-14 11:20:54');
insert into posts (title, content, created_at) values ('product', 'vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu',  '2021-11-01 16:24:54');
insert into posts (title, content, created_at) values ('methodical', 'nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris',  '2020-12-07 17:52:30');
insert into posts (title, content, created_at) values ('Upgradable', 'mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam',  '2021-03-28 14:02:27');
insert into posts (title, content, created_at) values ('reciprocal', 'sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices',  '2021-02-13 21:34:13');
insert into posts (title, content, created_at) values ('throughput', 'nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat',  '2021-07-03 09:01:40');
insert into posts (title, content, created_at) values ('Synergistic', 'est et tempus semper est quam pharetra magna ac consequat metus',  '2020-12-05 04:17:55');
insert into posts (title, content, created_at) values ('Grass-roots', 'orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus',  '2021-01-09 18:08:59');
insert into posts (title, content, created_at) values ('clear-thinking', 'fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet',  '2021-05-08 13:35:39');

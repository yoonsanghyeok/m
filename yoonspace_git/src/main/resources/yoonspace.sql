DROP TABLE NHKarticle;

CREATE TABLE NHKarticle(
	postno number PRIMARY KEY,
	title varchar2(90) NOT NULL,
	inputdate date NOT NULL,
	summary varchar2(1000) NOT NULL,
	more varchar2(3000),
	additional varchar2(3000),
	image_url varchar2(300),
	video_url varchar2(300)
);

CREATE SEQUENCE NHKarticle_seq;


commit;
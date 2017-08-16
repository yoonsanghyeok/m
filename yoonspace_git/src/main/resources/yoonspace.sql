DROP TABLE NHK_article;
DROP SEQUENCE NHKarticle_seq;

CREATE TABLE NHK_article(
	arcno number PRIMARY KEY,
	title varchar2(300) NOT NULL,
	inputdate date NOT NULL,
	jdate varchar2(90) NOT NULL,
	summary varchar2(3000) NOT NULL,
	more varchar2(3000),
	additional varchar2(3000),
	image_url varchar2(300),
	video_url varchar2(300),
	tango varchar2(3000) DEFAULT '',
	bunkei varchar2(3000) DEFAULT '',
	opinion varchar2(3000) DEFAULT ''
);

CREATE SEQUENCE NHK_article_seq;

commit;
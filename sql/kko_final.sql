-- 한이음 WEB IDE를 이용한 코딩 테스트 사이트 
-- 생각보다 어렵네요... 주석은 전부 달았습니다! 
-- PK : primary Key (기본키) / FK : Foriegn Key (외래키) 


-- 데이터 베이스 생성 kko는 저희 이름의 초성... , 기본 문자열 -> UTF-8 
create database kko default character set UTF8;


-- 존재하는 데이터베이스 검색 
show databases; 


-- 데이터베이스 kko를 사용
use kko;


-- 데이테비이스 테이블 검색
show tables;


-- 테이블 생성 명령문
create table category -- 카테고리 테이블 생성 
(
    category_id varchar(10) not null unique, -- PK / 코드 / ex) CA_0001 
    category_name varchar(100) not null, -- 카테고리 이름 / ex) 위상정렬 
    PRIMARY KEY (category_id) -- PK는 카테고리 이름
);

create table problem -- 문제 테이블 생성 
(
    problem_id int not null auto_increment unique, -- PK / 번호 / ex) 1516 
    problem_title varchar(100) not null unique, -- 문제 이름 / ex) 게임개발 
    problem_content varchar(3000) not null, -- 설명 / ex) 건물을 짓는데
    problem_time int, -- 제한시간(ms) / ex) 1000
    problem_hint varchar(3000) not null default '정답코드 없음', -- 정답코드(힌트) / ex) 이중 for문을 사용해서 풀어라!
    problem_submitnum int not null default 0, -- 제출횟수 / ex) 5
    problem_successnum int not null default 0, -- 정답횟수 / ex) 1
    problem_failnum int not null default 0, -- 오답횟수 / ex) 100
    problem_level int not null default 1,  -- 난이도 / ex) 브론즈, 실버, 골드
    category_id varchar(10) not null, -- FK / problem의 code_id는 category의 code_id를 참조한다!
	primary key (problem_id), -- PK는 문제 번호
    constraint fk_problem_category foreign key (category_id) references category (category_id) on update cascade on delete cascade -- FK는 code_id 
    -- 제약조건 설정 ) on update casecade와 on delete casecade는 원본 테이블의 이벤트 발생시 참조한 테이블에 자동으로 반영시키는 제약조건  
);

create table testcase -- 테스트케이스 테이블 생성
(
	testcase_id int not null auto_increment unique, -- PK / 테스트케이스 번호 / ex) 1
    testcase_input varchar(500) not null, -- 입력값 / ex) 1 2 3
    testcase_output varchar(500) not null default "error", -- 출력값 / ex) 5
    problem_id int not null, -- FK / 문제번호 / ex) 1516
    primary key (testcase_id), -- PK는 테스트케이스 번호
	constraint fk_testcase_problem foreign key (problem_id) references problem (problem_id) on update cascade on delete cascade -- FK는 problem_id 
    -- 제약조건 설정 ) on update casecade와 on delete casecade는 원본 테이블의 이벤트 발생시 참조한 테이블에 자동으로 반영시키는 제약조건  
);

create table code -- 코드 테이블 생성
( 
	code_id int not null auto_increment unique, -- PK / 코드 번호 / ex) 124
    code_code varchar(3000) not null, -- 코드 / ex) #include<stdio.h> int main(void)...
    code_language varchar(10) not null default "c++", -- 언어 / ex) c++
    code_success boolean not null default false, -- 성공여부 / ex) O
    code_open boolean not null default false, -- 공개여부 / ex) X
    code_date datetime,  -- 날짜 / 2019.9.8
    user_id varchar(30) not null, --  회원 id / ex) admin
    problem_id int not null, -- FK / 문제번호 / ex) 1516
    primary key (code_id), -- PK는 코드 번호
    constraint fk_code_user foreign key (user_id) references user (user_id) on update cascade on delete cascade, -- FK는 user_id 
    constraint fk_code_problem foreign key (problem_id) references problem (problem_id) on update cascade on delete cascade -- FK는 problem_id 
    -- 제약조건 설정 ) on update casecade와 on delete casecade는 원본 테이블의 이벤트 발생시 참조한 테이블에 자동으로 반영시키는 제약조건  
);

create table user -- 회원정보 테이블 생성
(
	user_id varchar(30) not null unique, --  PK / 회원 id / ex) admin
    user_passwd varchar(50) not null, -- 비밀번호 / ex) passwd
    user_name varchar(20) not null, -- 사용자 이름 / ex) 김민지
    user_img MEDIUMBLOB, -- 사용자 이미지 추가
    user_introduce varchar(3000), -- 소개 / 화이팅!! 혼자서도 잘해요~
    user_authority varchar(30) not null default "user", -- 권한 / ex) admin or user
    primary key(user_id) -- PK는 회원 id
);

create table board  -- 게시글 테이블 생성
(
	board_id int not null auto_increment unique, -- PK / 글 번호 / ex) 2234
    board_title varchar(500) not null, -- 게시글 제목 / ex) 코드 질문합니다 ㅜㅜㅠㅠ
	board_content varchar(3000) not null, -- 내용 / ex) 화이팅! 풀스텍 개발자~~
	board_upload datetime not null, -- 게시일 / ex) 2020.07.07
    user_id varchar(30) not null, -- FK / 사용자 아이디 / ex) admin
    problem_id int, -- FK / 문제번호 / ex) 1516
    primary key(board_id), -- PK는 게시글 id
    constraint fk_board_user foreign key (user_id) references user (user_id) on update cascade on delete cascade, -- FK는 user_id 
    constraint fk_board_problem foreign key (problem_id) references problem (problem_id) on update cascade on delete cascade -- FK는 problem_id 
    -- 제약조건 설정 ) on update casecade와 on delete casecade는 원본 테이블의 이벤트 발생시 참조한 테이블에 자동으로 반영시키는 제약조건    
);

create table comments -- 댓글 테이블 생성
(
	comments_id int not null auto_increment unique, -- PK / 댓글 번호 / ex) 245
    comments_content varchar(2000) not null, -- 댓글 내용 / ex) 나는 JAVA 마스터!
	user_id varchar(30) not null, -- FK / 사용자 아이디 / ex) admin
    comments_upload datetime not null, -- 등록일 / ex) 2020.07.07
    board_id int not null, -- FK / 글번호 / ex) 2234
    primary key(comments_id),
    constraint fk_comments_board foreign key (board_id) references board (board_id) on update cascade on delete cascade, -- FK는 board_id 
    constraint fk_comments_user foreign key (user_id) references user (user_id) on update cascade on delete cascade -- FK는 user_id  
    -- 제약조건 설정 ) on update casecade와 on delete casecade는 원본 테이블의 이벤트 발생시 참조한 테이블에 자동으로 반영시키는 제약조건  
);

create table chat -- 채팅 테이블 생성
(
	chat_id int not null auto_increment unique, -- PK / 채팅 번호 / ex) 448
    chat_content varchar(2000) not null, -- 채팅 내용 / ex) 나는 천재이다!
    chat_date datetime not null, -- 채팅시간 / ex) 2020.07.08
    user_id varchar(30) default "(알수없음)", -- FK / 사용자 아이디 / ex) admin
    problem_id int not null, -- FK / 문제번호 / ex) 1516
    primary key(chat_id), -- PK는 채팅 id
	constraint fk_chat_user foreign key (user_id) references user (user_id) on update cascade on delete cascade, -- FK는 user_id 
    constraint fk_chat_problem foreign key (problem_id) references problem (problem_id) on update cascade on delete cascade -- FK는 problem_id 
    -- 제약조건 설정 ) on update casecade와 on delete casecade는 원본 테이블의 이벤트 발생시 참조한 테이블에 자동으로 반영시키는 제약조건    
);


-- 테이블 삭제 / 테이블이 존재할때!
set foreign_key_checks = 0; -- 테이블의 관계를 강제적으로 부시는 것! 조심조심
drop table if exists category; -- 카테고리 테이블 삭제 
drop table if exists problem; -- 문제 테이블 삭제
drop table if exists testcase; -- 테스트케이스 테이블 삭제
drop table if exists code; -- 코드 테이블 삭제
drop table if exists user; -- 회원정보 테이블 삭제
drop table if exists board; -- 게시글 테이블 삭제
drop table if exists comments; -- 댓글 테이블 삭제
drop table if exists chat; -- 채팅 테이블 삭제
set foreign_key_checks = 1; -- 테이블의 관계를 복구! 꼭 하자!


-- 테이블 최적화
optimize table category; -- 카테고리 테이블 최적화
optimize table problme; -- 문제 테이블 최적화
optimize table testcase; -- 테스트케이스 테이블 최적화
optimize table code; -- 코드 테이블 최적화
optimize table user; -- 사용자 테이블 최적화
optimize table board; -- 게시글 테이블 최적화
optimize table comments; -- 댓글 테이블 최적화
optimize table chat; -- 채팅 테이블 최적화

-- 테이블 무결성 점검
check table category fast quick; -- 카테고리 테이블 무결성 점검
check table problem fast quick; -- 문제 테이블 무결성 점검
check table testcase fast quick; -- 문제 테이블 무결성 점검
check table code fast quick; -- 코드 테이블 무결성 점검
check table user fast quick; -- 사용자 테이블 무결성 점검
check table board fast quick; -- 게시글 테이블 무결성 점검
check table comments fast quick; -- 댓글 테이블 무결성 점검
check table chat fast quick; -- 채팅 테이블 무결성 점검

-- 데이터 삭제
delete from category; -- 카테고리 테이블 투플 삭제
delete from problme; -- 문제 테이블 투플 삭제
delete from testcase; -- 테스트케이스 투플 삭제
delete from code; -- 코드 테이블 투플 삭제
delete from user; -- 사용자 테이블 투플 삭제
delete from board; -- 게시글 테이블 투플 삭제
delete from comments; -- 댓글 테이블 투플 삭제
delete from chat; -- 채팅 테이블 투플 삭제


-- 카테고리 데이터
insert into category values("CA_0001",   "list"); -- 1406 에디터
insert into category values("CA_0002",   "stack"); -- 10828 스택, 9012 괄호
insert into category values("CA_0003",  " queue"); -- 10845 큐, 1158 요세푸스 문제
insert into category values("CA_0004", " sort");  -- 2750 수 정렬하기, 
insert into category values("CA_0005",  "math"); -- A+B, A-B, A*B, A/B, 9613 GCD 합, 2747 피보나치 수  6588 골드바흐의 추측
insert into category values("CA_0006","  graph"); -- 11724 연결 요소의 개수, 1516 게임 개발
insert into category values("CA_0007",  "dfs");  -- 1260 DFS와 BFS
insert into category values("CA_0008", "bfs"); -- 10026 적록색약
insert into category values("CA_0009",  "tree"); -- 1991 트리순회
insert into category values("CA_0010 ",  "heap"); -- 1766 문제집
insert into category values("CA_0011",  "dynamic programming"); -- 1463 1로 만들기 외에도 많이 추가해둘것
insert into category values("CA_0012",  "recursive call"); -- 11729 하노이탑 이동순서, 6603 로또
insert into category values("CA_0013",  "divide conquer"); -- 11780 종이의 개수
insert into category values("CA_0014", "dijkstra"); -- 4485 녹색 옷 입은 애가 젤다지?
insert into category values("CA_0015",  "floyd"); -- 11403 경로 찾기
insert into category values("CA_0016"," bellman ford"); -- 타임머신
insert into category values("CA_0017", "disjoint-set"); -- 1717 집합의 표현
insert into category values("CA_0018",  "kruskal"); -- 1197 최소 스패닝 트리, 1922 네트워크 연결
insert into category values("CA_0018",  "prim"); -- 6497 전력난
insert into category values("CA_0019", " brute force"); -- 2309 일곱난쟁이
insert into category values("CA_0020","backtracking"); -- 9663 N-Queen
insert into category values("CA_0021","greedy"); -- 11047 동전 0, 
insert into category values("CA_0022","print"); -- 2557 hello world, 10171 고양이, 10172 개, 5338 마이크로소프트
insert into category values("CA_0023","if/switch"); -- 9498 시험 성적, 2753 윤년, 1330 두 수 비교하기
insert into category values("CA_0024","for/while"); --  2438 별 찍기 - 1, 2439 별 찍기 - 2, 구구단 2742 N 찍기 2742 기찍 N
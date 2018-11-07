create table admin_login(
	a_id varchar2(30) primary key, 
	a_password varchar2(30) not null
);

create table user_login(
	u_id varchar2(30) primary key,
	u_password varchar2(30) not null
);

create table product_details(
	p_id varchar2(30) primary key,
	p_name varchar2(30),
	description varchar2(300),
	price number(5),
	image blob,
	qty number(2)
);

create table order_details(
	o_id varchar2(30) primary key,
	p_id varchar2(30),
	u_id varchar2(30),
	qty number(2),
	m_o_p varchar2(30),
	price number(5),
	status varchar2(30),
	foreign key(p_id) references product_details(p_id),
	foreign key(u_id) references user_login(u_id)
);

create table user_cart(
	u_id varchar2(30),
	p_id varchar2(30),
	qty number(2),
	foreign key(u_id) references user_login(u_id),
	foreign key(p_id) references product_details(p_id)
);

create table user_registration(
	u_name varchar2(30),
	u_address varchar2(30),
	u_phone number(10),
	email varchar2(30),foreign key(email) references user_login(u_id)
);
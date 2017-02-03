alter table actedby
add foreign key (MOV_ID) references movie (ID),
add foreign key (Main_Actor) references actors(SL_NO);

alter table purchase
add foreign key (CS_ID) references customer (CUST_ID),
add foreign key (M_ID) references movie (ID);

alter table rent
add foreign key (mo_id) references movie (ID);
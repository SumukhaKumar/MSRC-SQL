/*1. This query will retrieve movie and its main actor */
select m_name, concat(ac_fname, " " , ac_lname) as Main_Actor /* Concat will combine actors first and last name*/
from movie, actors, actedby
where id = mov_id and main_Actor = sl_no;

/*2. This query will retrieve customer name who borrows maximum movies */
select F_name, l_name /*this query will fetch customer first and last name whose cust_id is similar to sub query*/
from customer 
where cust_id = (select cu_id /* This query will fetch the customer id who borrowed maximum movies*/
				from rent, customer 
                where cu_id = cust_id 
                group by cu_id
                having (count(cu_id)>1) 
                limit 1);

/*3. This query will retrieve customer who buy action movie */
select concat (F_NAME, " ", L_NAME) as Customer_Name /*Concat will combine customer first and last name */
from customer, purchase, movie
where CS_ID = CUST_ID and M_ID = ID and genre = 'Action';

/*4. This query will retrieve movie name, number of rent and selling operations */
select M_NAME, MO_ID, count(MO_ID) as Rent_Count, Selling_Operation
from movie, rent 
where MO_ID = ID
group by MO_ID
order by Rent_Count desc; /*Display Rent_count in descending order */

/*5. This query will retrieve movie name which is made by walt disney */
select M_NAME
from movie
where BOX_OFFICE = 'walt disney';

/*6. This query will retrieve total number of action movies */
select count(*) as Num_of_Movies
from movie
where Genre = 'Action';

/*7. This query will retrieve total number of movies of each genre */
select count(ID) as Num_of_Movies, GENRE
from movie
group by GENRE
order by Num_of_Movies desc; /*this will order num_of_movies by descending order*/

/*8. This query will retrieve who buy and borrow the same movie */
select concat (F_NAME, " ", L_NAME) as Customer_Name /*Concat will combine customer first and last name */
from customer, rent, purchase, movie
where CU_ID = CUST_ID and CS_ID = CUST_ID and m_id = id and MO_ID = ID;

/*9. This query will retrieve customer name who borrows maximum movies in 2012 */
select concat (F_NAME, " ", L_NAME) as Customer_Name /*Concat will combine customer first and last name */
from customer 
where cust_id = (select cu_id /* This query will fetch the customer id who borrowed maximum movies in 2012*/
				from rent, customer 
                where cu_id = cust_id and borrow_date like '2012%'
                group by cu_id
                having (count(cu_id)>1) 
                limit 1);

/*10. This query will retrieve total amount of rent and selling operations for each movie */
select M_NAME, MO_ID, count(MO_ID) as Rent_Count, Selling_Operation, sum(Amount) as Total_Amount
from movie, rent 
where MO_ID = ID
group by MO_ID
order by Rent_Count desc; /*Display Rent_count in descending order */
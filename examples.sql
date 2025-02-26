 # comentarios en SQL sin con #######
  use publications;
 
 select * from publishers;
 
 select * from publishers where city = 'Boston' or city = 'Chicago';
 select * from publishers where country  = 'USA';
 select * from publishers where city in ('Boston','chicago');
 
 select * from titles as t
 left join titleauthor as a
 on t.title_id = a.title_id;
 
 select t.title, t.title_id, a.au_id, concat(au.au_fname, ' ', au.au_lname) as completename
 from titles as t
 left join titleauthor as a
 on t.title_id = a.title_id
 left join authors as au
 on a.au_id = au.au_id;
 
 
 select  title, year(max(pubdate)) as 'year', count(titleauthor.title_id) as numauthors,
 group_concat(concat(authors.au_fname, ' ', authors.au_lname)) as allauthors
 from titles
 left join titleauthor
 on titles.title_id = titleauthor.title_id
 left join authors
 on authors.au_id = titleauthor.au_id
 group by titles.title
 order by numauthors desc;
 
 select *
 from publications.employee emp
 right join publications.jobs job
 on emp.job_id = job.job_id
 union
 select * 
 from publications.employee emp
 left join publications.jobs job
 on emp.job_id = job.job_id;
 
 
 
 
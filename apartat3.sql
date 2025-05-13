use bd1;

select codi, nom 
from laboratoris 
where codi = ANY(
    select codiLab 
    from zones_biocontencio 
    where nivell = 'A');
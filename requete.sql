1

DELETE FROM Utilisateur 
      WHERE idUtilisateur = 15;
      
   --INSERT INTO Utilisateur VALUES (0, 'Max', 'GARNIER', 'Thomas', 'Thomas@orange.com', 'Mandres', 22, 'Basebook', 56);
   --La ligne ci-dessus permet de réinsérer la quinzième entrée (qui ne sera du coup plus la quinzième mais la dernière).

2 trié par EvalPrix descendant et apres par etoileoff pour des restaurant parisien mais plusieurs evalPrix pour le meme restaurant

SELECT nomE, adresse 
	FROM etablissement natural join evaluationPrix natural join restaurant
	where adresse like '%Paris'
	order by notePrix, etoileOff desc;

3

(SELECT nomE,idEtablissement FROM  Etablissement NATURAL JOIN proprietaire natural join restaurant where statut='or' and Adresse LIKE '%Paris%')
union
(SELECT nomE,idEtablissement FROM  Etablissement NATURAL JOIN proprietaire natural join restaurant where statut='argent' and Adresse LIKE '%Paris%')
union
(SELECT nomE,idEtablissement FROM  Etablissement NATURAL JOIN proprietaire natural join restaurant where statut='bronze' and Adresse LIKE '%Paris%')
union
(SELECT nomE,idEtablissement FROM  Etablissement NATURAL JOIN proprietaire natural join restaurant where statut='standard' and Adresse LIKE '%Paris%');

4 en supposant que utilisateur est a moins de cinq kilometre de bordeaux

select nomE  from magasin natural join etablissement natural join avis where categorie="bricolage" and Note>3 and adresse like '%Bordeaux';

5

SELECT nomE, adresse, note FROM Etablissement NATURAL JOIN Restaurant NATURAL JOIN Avis
      WHERE Adresse LIKE '%Paris%'
        AND cuisine = 'indien'
        AND Note > 4
   ORDER BY Note DESC;

6

select nomE,adresse 
	from hotel
	natural join etablissement natural join avis
	where note>3 and etoileOff>2;

7

INSERT INTO Avis VALUES (270, 3, 'Super !', '13-08-2014', 2);

8 requete que pour utilisateur 20

select nomE
	from etablissement natural join voyageur natural join avis
	where dateA like '2012%'and idUtilisateur=20;

9

select idEtablissement,idUtilisateur,idAvis,datea,note from avis a1 natural join voyageur v2 natural join etablissement t1

where exists (


    (select idEtablissement
    from avis a2 natural join voyageur v1 natural join etablissement t2 
    where t1.idEtablissement = t2.idEtablissement and
    v1.idUtilisateur = v2.idUtilisateur 
    
     and datediff(a1.datea,a2.datea) between -365 and 365 
          
    group by idEtablissement
    having count(*)>1)) order by idEtablissement, idUtilisateur asc;

10 jimpose annnee=2010

SELECT idUtilisateur
FROM avis natural join voyageur 
WHERE
  (
    EXISTS (
      SELECT * FROM avis nautral join voyageur
      WHERE 
        datea >= "2010-01-01" && datea<= "2010-01-31"
    ) &&
          EXISTS (
      SELECT * FROM avis nautral join voyageur
      WHERE 
        datea >= "2010-02-01" && datea <= "2010-02-31"
    ) &&
          EXISTS (
      SELECT * FROM avis nautral join voyageur
      WHERE 
        datea >= "2010-03-01" && datea <= "2010-03-31"
    ) &&
          EXISTS (
      SELECT * FROM avis nautral join voyageur
      WHERE 
        datea >= "2010-04-01" && datea <= "2010-04-31"
    ) &&
          EXISTS (
      SELECT * FROM avis nautral join voyageur
      WHERE 
        datea >= "2010-05-01" && datea <= "2010-05-31"
    ) &&
      EXISTS (
      SELECT * FROM avis nautral join voyageur
      WHERE 
        datea >= "2010-06-01" && datea <= "2010-06-31"
    ) &&    EXISTS (
      SELECT * FROM avis nautral join voyageur
      WHERE 
        datea >= "2010-07-01" && datea <= "2010-07-31"
    ) &&    EXISTS (
      SELECT * FROM avis nautral join voyageur
      WHERE 
        datea >= "2010-08-01" && datea <= "2010-08-31"
    ) &&    EXISTS (
      SELECT * FROM avis nautral join voyageur
      WHERE 
        datea >= "2010-09-01" && datea <= "2010-09-31"
    ) &&    EXISTS (
      SELECT * FROM avis nautral join voyageur
      WHERE 
        datea >= "2010-10-01" && datea <= "2010-10-31"
    ) &&    EXISTS (
      SELECT * FROM avis nautral join voyageur
      WHERE 
        datea >= "2010-11-01" && datea <= "2010-11-31"
    ) &&    EXISTS (
      SELECT * FROM avis nautral join voyageur
      WHERE 
        datea >= "2010-12-01" && datea <= "2010-12-31"
    ))group by idUtilisateur having count(datea)>10;

11

 --Affichage note moyenne
    SELECT AVG(Note) FROM Avis NATURAL JOIN Etablissement
      WHERE idEtablissement = 42;
      
    --Affichage évaluation moyenne du prix
    SELECT AVG(NotePrix) FROM EvaluationPrix NATURAL JOIN Avis NATURAL JOIN Etablissement
      WHERE idEtablissement = 42;

12 le proprietaire 71 a deux etablissement (75 a 5 etablissement)

select nomE,adresse,idAvis,Note,dateA,texteA
	from avis natural join etablissement
	where idEtablissement in (
		select idEtablissement
		from proprietaire natural join etablissement
		where proprietaire.idEtablissement = etablissement.idEtablissement and idutilisateur=71
	);

13

--soit on sélectionne par ville, par exemple Paris :
    SELECT nomE 
    FROM Etablissement 
    WHERE adresse LIKE '%Paris%' and idEtablissement in (
    	select idEtablissement 
    		from proprietaire natural join etablissement 
    		where proprietaire.idEtablissement = etablissement.idEtablissement and idutilisateur!=75
    );
    
    --soit on sélectionne par type d'Etablissement et par ville :
    SELECT nomE 
    	FROM Etablissement NATURAL JOIN Restaurant 
    	WHERE adresse LIKE '%Paris%' and cuisine='chinois'and idEtablissement in (
    		select idEtablissement 
    			from proprietaire natural join etablissement
    			where proprietaire.idEtablissement = etablissement.idEtablissement and idutilisateur!=75
    	);

14

select Note,nomE,adresse,texteA 
	from avis natural join etablissement
	where idEtablissement in (
		select idEtablissement 
		from proprietaire natural join etablissement 
		where proprietaire.idEtablissement = etablissement.idEtablissement and idutilisateur=75
	)
	group by nomE;

15

select nomE,adresse 
	from avis a1 natural join etablissement
	where 
		exists (
			select*
				from avis a2 natural join etablissement 
              			where a2.note>='4' and a1.note>='4'
        	) 	
		and idEtablissement in (
			select idEtablissement 
    				from proprietaire natural join etablissement 
    				where proprietaire.idEtablissement = etablissement.idEtablissement and idutilisateur=75
    		)
    	group by nomE having count(*)>1;

16 PAS FINI proprietaire faisant la demande est le 73

--LE MIEUX le manque le tri en fonction de la note
select idEtablissement,idAvis,idUtilisateur,datea,note
	from avis a2 natural join voyageur v2 natural join etablissement t1
	where exists (
		select *
    			from avis a1 natural join voyageur v1 natural join etablissement t2 
    			where t1.idEtablissement = t2.idEtablissement and v1.idUtilisateur = v2.idUtilisateur and idEtablissement in (
    				select idEtablissement
    					from etablissement natural join proprietaire
    					where proprietaire.idUtilisateur =73
    				)
    				and datediff(a1.datea,a2.datea) between -730 and 730 
			group by idEtablissement  having count(*)>1);

17    

UPDATE Voyageur SET statut = 'or'
      WHERE idUtilisateur = 42;
    
18 

SET foreign_key_checks =0;
DELETE FROM avis WHERE idAvis='14';
DELETE FROM avis WHERE idAvis='89';
insert into avis values(14,3,"Je le conseil vivement pour une famille",'2013-01-04',58);
insert into avis values(89,2,"a part quelques petits defauts cest un sans faute",'2013-08-04',92);

19

--Soit on supprime un commentaire dont on a l'id :
    DELETE FROM CommentaireInsultant WHERE idCommentaire = 52;

--Soit on supprime tous les commentaires insultants d'un seul coup en effaçant toute la table (l'auto incrément se réinitialise automatiquement):
    TRUNCATE TABLE CommentaireInsultant;
    
--Soit on supprime tous les commentaires insultants d'un seul coup en effaçant toute la table :    
SET foreign_key_checks =0;
drop table if exists CommentaireInsultant;
    CREATE TABLE CommentaireInsultant(
        idCommentaire Int NOT NULL ,
        PRIMARY KEY (idCommentaire )
    )ENGINE=InnoDB;

20

select nom,Prenom from commentaireAvis natural join voyageur natural join utilisateur where etoiles>=4 group by(email) order by (nom) asc;

21

    DELETE FROM Voyageur
      WHERE (((SELECT COUNT(Etoiles) FROM CommentaireAvis
        WHERE (Etoiles < '2' AND idUtilisateur = 42))/(SELECT COUNT(Etoiles) FROM CommentaireAvis
          WHERE idUtilisateur = 42))*100) > '30';
    INSERT INTO Utilisateur VALUES (0, 'Jean_Kévin', 'BERTHELOT', 'Bob', 'bob-bert@free.fr', 'Mandres', 22, 'Basebook', 56);

22 

// repere si il y a une difference
select case when (
	select count(distinct(email))
		from voyageur natural join avis natural join utilisateur
	)
	!=
	(select count(distinct(localisation))
		from voyageur natural join avis natural join utilisateur
	)
	then 'tricheur'
	else 'ras'
	end;

// permet de connaitre les idUtilisateur utilisant la meme localisation
select idUtilisateur,localisation
	from utilisateur t1 natural join avis natural join voyageur
	where exists (
    		select *
    			from utilisateur t2 natural join avis natural join voyageur
    			where t1.localisation = t2.localisation
    			group by localisation
    			having count(*)>1
    	);

23

drop view if exists cinq;
create view cinq as                      
(select idEtablissement,avg(note) as diff
                     from etablissement natural join avis natural join restaurant 
                     group by idEtablissement)
                     union
                     (select idEtablissement,avg(note) as diff
                     from etablissement natural join avis natural join hotel 
                     group by idEtablissement)
                     union
                     (select idEtablissement,avg(note) as diff
                     from etablissement natural join avis natural join magasin 
                     group by idEtablissement);
select idEtablissement, max(diff) from cinq where diff=6 group by idEtablissement;

24

select email,nom,prenom
	from avis natural join voyageur natural join utilisateur natural join etablissement natural join restaurant
	where etoileoff>7 and email in(
		select email
			from avis natural join voyageur natural join utilisateur natural join etablissement natural join hotel
			where etoileoff>7
	)

//si la requete etait un restaurant OU un hotel
select nom,prenom,email
	from avis natural join voyageur natural join utilisateur natural join etablissement natural join restaurant
	where etoileoff>7
union 
select nom,prenom,email
	from avis natural join voyageur natural join utilisateur natural join etablissement natural join hotel
	where etoileoff>7;

25

drop view if exists quatre;
create view quatre as (
	select idEtablissement, abs(avg(note)-etoileoff) as diff 
		from avis natural join etablissement natural join restaurant natural join voyageur
		group by idEtablissement 
)
union
(select idEtablissement, abs(avg(note)-etoileoff) as diff
	from avis natural join etablissement natural join hotel natural join voyageur
	group by idEtablissement
);
select idEtablissement, max(diff) from quatre where diff=7 group by idEtablissement;


/* QUESTION 1 */
SELECT * FROM service;

/* QUESTION 2 */
SELECT prenom FROM patient;

/* QUESTION 3 */
SELECT telephone FROM patient WHERE prenom="antoine";

/* QUESTION 4 */
SELECT * FROM personnel WHERE id_personnel=1;

/* QUESTION 5 */
SELECT COUNT(*) AS nombre_de_patients FROM patient;

/* QUESTION 6 */
SELECT * FROM personnel WHERE salaire >1600;

/* QUESTION 7 */
SELECT COUNT(*) AS nb FROM chambre WHERE capacite>1;

/* QUESTION 8 */
SELECT prenom FROM patient WHERE sexe="f" ORDER BY prenom;

/* QUESTION 9 */
SELECT * FROM personnel ORDER BY date_naissance DESC LIMIT 1;

/* QUESTION 10 */
SELECT profession,ROUND(AVG(salaire),2) AS "salaire moyen" FROM personnel GROUP BY profession ORDER BY salaire ASC;

/* QUESTION 11 */
SELECT salaire*12 AS salaire_annuel FROM personnel WHERE id_personnel=13;

/* QUESTION 12 */
SELECT * FROM patient WHERE date_admission BETWEEN "2011-02-01" AND "2011-02-15";

/* QUESTION 13 */
SELECT prenom,id_service FROM personnel WHERE id_service=1;

/* QUESTION 14 */
SELECT id_chambre FROM association_patient_chambre WHERE id_patient IN(SELECT id_patient FROM patient WHERE prenom="elodie");

/* QUESTION 15 */
SELECT nom FROM service WHERE id_service IN(SELECT id_service FROM chambre WHERE id_chambre IN(SELECT id_chambre FROM association_patient_chambre WHERE id_patient IN( SELECT id_patient FROM patient WHERE prenom="elodie")));

/* QUESTION 16 */
SELECT s.nom, c.id_chambre, c.capacite FROM service s INNER JOIN chambre c ON s.id_service=c.id_service WHERE s.nom="neurologie";

/* QUESTION 17 */
SELECT p.prenom, p.id_patient, p.date_sortie,p.date_admission,a.id_chambre FROM patient p INNER JOIN association_patient_chambre a ON p.id_patient=a.id_patient WHERE date_admission BETWEEN "2011-02-01" AND "2011-02-15";

/* QUESTION 18 */


/* QUESTION 19 */

/* QUESTION 20 */

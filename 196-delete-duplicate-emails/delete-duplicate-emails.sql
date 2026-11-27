DELETE FROM Person
WHERE id IN
(SELECT P.id
FROM Person P, Person P2
WHERE P.email = P2.email
AND P.id>P2.id)
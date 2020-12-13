CREATE LOGIN  LisLogin WITH PASSWORD = 'Kode123!';

CREATE USER OldfruenLis for LOGIN LisLogin

GRANT SELECT ON RoomNeedCleaing to OldfruenLis
GRANT EXEC ON ISClean to OldfruenLis


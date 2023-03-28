--Postgresqlde postgis eklentisini eklemek için kullanılması gereken komut nedir?
Create extension postgis;

--Postgis versiyonu sorgulamak için kullanılması gereken komutu nedir?
Select postgis_version();

--SRID değerini sorgulamak için kullanılması gereken komut nedir?
Select st_srid(geom) from table_name;

--Kaç farklı SRID değeri olduğunu öğrenmek için kullanılması gereken komut nedir?
Select distinct(st_srid(geom)) from table_name;

--Bir geometrinin koordinatlarını başka bir koordinat sistemine dönüştürülmesi için kullanılması gereken komut nedir? (Koordinatı 4326'ya çevirin)
Select st_transform(geom, 4326) from table_name;


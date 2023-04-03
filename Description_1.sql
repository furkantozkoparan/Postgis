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

--Mevcut bir tabloya geometri sütunu eklemek için kullanılması gereken komut nedir?
SELECT AddGeometryColumn('public', 'mytable', 'geom', 4326, 'POINT', 2); 
(Select addgeometrycolumn ('schema_name', 'table_name', 'new_column_name', 'SRID', 'geometry_type', '2D-3D'))

--Mevcut tablodaki sütunun SRID değeri dönüştürülebilir. Örneğin: NYC Tablosundaki geom sütunu SRID değerinin 4326'ya dönüştürülmesi için gerekli komut nedir?
Select st_transform (geom, 4326) as new geom from nyc;
Select st_transform (donusturulecek_sutun, yenı_srid_degeri) as yeni_sutun_adı from tablo_adı;

create sequence banco_id;
create table banco (
    id number,
    nombre varchar2(255),
    constraint pk_banco primary key (id)
);

insert into banco (id, nombre) values(banco_id.nextval,'EL CRÉDITO HIPOTECARIO NACIONAL DE GUATEMALA');
insert into banco (id, nombre) values(banco_id.nextval,'INMOBILIARIO, S. A.');
insert into banco (id, nombre) values(banco_id.nextval,'DE LOS TRABAJADORES');
insert into banco (id, nombre) values(banco_id.nextval,'INDUSTRIAL, S. A.');
insert into banco (id, nombre) values(banco_id.nextval,'DE DESARROLLO RURAL, S. A.');
insert into banco (id, nombre) values(banco_id.nextval,'INTERNACIONAL, S. A.');
insert into banco (id, nombre) values(banco_id.nextval,'CITIBANK, N.A., SUCURSAL GUATEMALA');
insert into banco (id, nombre) values(banco_id.nextval,'VIVIBANCO, S. A.');
insert into banco (id, nombre) values(banco_id.nextval,'FICOHSA GUATEMALA, S. A.');
insert into banco (id, nombre) values(banco_id.nextval,'PROMERICA, S. A.');
insert into banco (id, nombre) values(banco_id.nextval,'DE ANTIGUA, S. A.');
insert into banco (id, nombre) values(banco_id.nextval,'DE AMÉRICA CENTRAL, S. A.');
insert into banco (id, nombre) values(banco_id.nextval,'AGROMERCANTIL DE GUATEMALA, S. A.');
insert into banco (id, nombre) values(banco_id.nextval,'G&T CONTINENTAL, S. A.');
insert into banco (id, nombre) values(banco_id.nextval,'DE CRÉDITO, S. A.');
insert into banco (id, nombre) values(banco_id.nextval,'AZTECA DE GUATEMALA, S. A.');
insert into banco (id, nombre) values(banco_id.nextval,'INV, S. A.');
commit;

create sequence banco_activo_id;
create table banco_activo (
    id number,
    banco_id number,
    valor number(38),
    fecha timestamp(6),
    constraint pk_banco_activo primary key (id),
    constraint fk_banco foreign key (banco_id)
    references banco (id)
);



CREATE TABLE "ACTIVO_CONSOLIDADO" (	
    "BANCO" VARCHAR2(128 BYTE),
    "JULIO_2019" NUMBER(38,0),
    "AGOSTO_2019" NUMBER(38,0), 
	"SEPTIEMBRE_2019" NUMBER(38,0), 
	"OCTUBRE_2019" NUMBER(38,0), 
	"NOVIEMBRE_2019" NUMBER(38,0), 
	"DICIEMBRE_2019" NUMBER(38,0), 
	"ENERO_2020" NUMBER(38,0), 
	"FEBRERO_2020" NUMBER(38,0), 
	"MARZO_2020" NUMBER(38,0), 
	"ABRIL_2020" NUMBER(38,0), 
	"MAYO_2020" NUMBER(38,0), 
	"JUNIO_2020" NUMBER(38,0), 
	"JULIO_2020" NUMBER(38,0)
);

Insert into ACTIVO_CONSOLIDADO (BANCO,JULIO_2019,AGOSTO_2019,SEPTIEMBRE_2019,OCTUBRE_2019,NOVIEMBRE_2019,DICIEMBRE_2019,ENERO_2020,FEBRERO_2020,MARZO_2020,ABRIL_2020,MAYO_2020,JUNIO_2020,JULIO_2020) values ('EL CRÉDITO HIPOTECARIO NACIONAL DE GUATEMALA',3767274,3762825,3770681,3863100,3919336,3971702,3982556,3929275,3909708,4078785,5713570,5728246,5374711);
Insert into ACTIVO_CONSOLIDADO (BANCO,JULIO_2019,AGOSTO_2019,SEPTIEMBRE_2019,OCTUBRE_2019,NOVIEMBRE_2019,DICIEMBRE_2019,ENERO_2020,FEBRERO_2020,MARZO_2020,ABRIL_2020,MAYO_2020,JUNIO_2020,JULIO_2020) values ('INMOBILIARIO, S. A.',1537183,1597990,1616983,1641024,1639219,1617647,1680521,1722992,1721523,1702176,1717110,1841951,1880192);
Insert into ACTIVO_CONSOLIDADO (BANCO,JULIO_2019,AGOSTO_2019,SEPTIEMBRE_2019,OCTUBRE_2019,NOVIEMBRE_2019,DICIEMBRE_2019,ENERO_2020,FEBRERO_2020,MARZO_2020,ABRIL_2020,MAYO_2020,JUNIO_2020,JULIO_2020) values ('DE LOS TRABAJADORES',25790924,26016425,26234351,26499810,26438435,26289390,26554435,26924434,26525511,26835448,27168368,27575062,27573137);
Insert into ACTIVO_CONSOLIDADO (BANCO,JULIO_2019,AGOSTO_2019,SEPTIEMBRE_2019,OCTUBRE_2019,NOVIEMBRE_2019,DICIEMBRE_2019,ENERO_2020,FEBRERO_2020,MARZO_2020,ABRIL_2020,MAYO_2020,JUNIO_2020,JULIO_2020) values ('INDUSTRIAL, S. A.',95028723,95688505,95895603,95361369,95888160,98036547,97403691,98193930,102293725,101911829,101047986,102051627,102437607);
Insert into ACTIVO_CONSOLIDADO (BANCO,JULIO_2019,AGOSTO_2019,SEPTIEMBRE_2019,OCTUBRE_2019,NOVIEMBRE_2019,DICIEMBRE_2019,ENERO_2020,FEBRERO_2020,MARZO_2020,ABRIL_2020,MAYO_2020,JUNIO_2020,JULIO_2020) values ('DE DESARROLLO RURAL, S. A.',71275059,71904180,72507057,72783125,72892269,74671544,74915265,75125863,75533691,76164072,76932063,79791131,80592750);
Insert into ACTIVO_CONSOLIDADO (BANCO,JULIO_2019,AGOSTO_2019,SEPTIEMBRE_2019,OCTUBRE_2019,NOVIEMBRE_2019,DICIEMBRE_2019,ENERO_2020,FEBRERO_2020,MARZO_2020,ABRIL_2020,MAYO_2020,JUNIO_2020,JULIO_2020) values ('INTERNACIONAL, S. A.',9072405,9091304,9042618,9288603,9435908,9594216,9686146,10040051,9931069,10726547,10228223,10499874,10533550);
Insert into ACTIVO_CONSOLIDADO (BANCO,JULIO_2019,AGOSTO_2019,SEPTIEMBRE_2019,OCTUBRE_2019,NOVIEMBRE_2019,DICIEMBRE_2019,ENERO_2020,FEBRERO_2020,MARZO_2020,ABRIL_2020,MAYO_2020,JUNIO_2020,JULIO_2020) values ('CITIBANK, N.A., SUCURSAL GUATEMALA',2445585,2216252,2145128,2272338,2716587,2499054,2437018,2453782,3405337,2600877,2921714,3408255,3518186);
Insert into ACTIVO_CONSOLIDADO (BANCO,JULIO_2019,AGOSTO_2019,SEPTIEMBRE_2019,OCTUBRE_2019,NOVIEMBRE_2019,DICIEMBRE_2019,ENERO_2020,FEBRERO_2020,MARZO_2020,ABRIL_2020,MAYO_2020,JUNIO_2020,JULIO_2020) values ('VIVIBANCO, S. A.',703190,717879,719409,737010,731769,736863,752545,747944,739450,728253,723639,721420,728939);
Insert into ACTIVO_CONSOLIDADO (BANCO,JULIO_2019,AGOSTO_2019,SEPTIEMBRE_2019,OCTUBRE_2019,NOVIEMBRE_2019,DICIEMBRE_2019,ENERO_2020,FEBRERO_2020,MARZO_2020,ABRIL_2020,MAYO_2020,JUNIO_2020,JULIO_2020) values ('FICOHSA GUATEMALA, S. A.',2357232,2409023,2460017,2363665,2530960,2659708,2479803,2434829,2677863,2697340,2685160,2634629,2642603);
Insert into ACTIVO_CONSOLIDADO (BANCO,JULIO_2019,AGOSTO_2019,SEPTIEMBRE_2019,OCTUBRE_2019,NOVIEMBRE_2019,DICIEMBRE_2019,ENERO_2020,FEBRERO_2020,MARZO_2020,ABRIL_2020,MAYO_2020,JUNIO_2020,JULIO_2020) values ('PROMERICA, S. A.',14012911,14099360,14275966,14277606,14338497,14428878,14893594,15239609,15491627,15654433,15983636,16212071,16373199);
Insert into ACTIVO_CONSOLIDADO (BANCO,JULIO_2019,AGOSTO_2019,SEPTIEMBRE_2019,OCTUBRE_2019,NOVIEMBRE_2019,DICIEMBRE_2019,ENERO_2020,FEBRERO_2020,MARZO_2020,ABRIL_2020,MAYO_2020,JUNIO_2020,JULIO_2020) values ('DE ANTIGUA, S. A.',1406156,1420172,1416395,1424007,1421846,1397295,1385590,1396485,1396008,1402769,1393239,1402499,1414456);
Insert into ACTIVO_CONSOLIDADO (BANCO,JULIO_2019,AGOSTO_2019,SEPTIEMBRE_2019,OCTUBRE_2019,NOVIEMBRE_2019,DICIEMBRE_2019,ENERO_2020,FEBRERO_2020,MARZO_2020,ABRIL_2020,MAYO_2020,JUNIO_2020,JULIO_2020) values ('DE AMÉRICA CENTRAL, S. A.',27672142,27516988,28243699,28822854,29057615,29949746,29814239,30082183,30042006,31016306,31803378,32977377,32812508);
Insert into ACTIVO_CONSOLIDADO (BANCO,JULIO_2019,AGOSTO_2019,SEPTIEMBRE_2019,OCTUBRE_2019,NOVIEMBRE_2019,DICIEMBRE_2019,ENERO_2020,FEBRERO_2020,MARZO_2020,ABRIL_2020,MAYO_2020,JUNIO_2020,JULIO_2020) values ('AGROMERCANTIL DE GUATEMALA, S. A.',26939592,27330994,27141339,27581710,28561479,28473891,29367036,29369594,30762085,30465040,30413863,30251429,30013330);
Insert into ACTIVO_CONSOLIDADO (BANCO,JULIO_2019,AGOSTO_2019,SEPTIEMBRE_2019,OCTUBRE_2019,NOVIEMBRE_2019,DICIEMBRE_2019,ENERO_2020,FEBRERO_2020,MARZO_2020,ABRIL_2020,MAYO_2020,JUNIO_2020,JULIO_2020) values ('G&T CONTINENTAL, S. A.',52611295,53511708,54218524,53104561,52631658,52532053,52237379,53246289,54691289,54821816,54911354,55161713,54956638);
Insert into ACTIVO_CONSOLIDADO (BANCO,JULIO_2019,AGOSTO_2019,SEPTIEMBRE_2019,OCTUBRE_2019,NOVIEMBRE_2019,DICIEMBRE_2019,ENERO_2020,FEBRERO_2020,MARZO_2020,ABRIL_2020,MAYO_2020,JUNIO_2020,JULIO_2020) values ('DE CRÉDITO, S. A.',765467,795860,780894,805810,0,0,0,0,0,0,0,0,0);
Insert into ACTIVO_CONSOLIDADO (BANCO,JULIO_2019,AGOSTO_2019,SEPTIEMBRE_2019,OCTUBRE_2019,NOVIEMBRE_2019,DICIEMBRE_2019,ENERO_2020,FEBRERO_2020,MARZO_2020,ABRIL_2020,MAYO_2020,JUNIO_2020,JULIO_2020) values ('AZTECA DE GUATEMALA, S. A.',1639743,1676311,1717090,1721256,1778004,1817976,1817216,1833361,1842027,1851650,1868622,1903221,1957528);
Insert into ACTIVO_CONSOLIDADO (BANCO,JULIO_2019,AGOSTO_2019,SEPTIEMBRE_2019,OCTUBRE_2019,NOVIEMBRE_2019,DICIEMBRE_2019,ENERO_2020,FEBRERO_2020,MARZO_2020,ABRIL_2020,MAYO_2020,JUNIO_2020,JULIO_2020) values ('INV, S. A.',430867,430076,436283,441511,447323,1007690,994627,1045967,996342,954767,929117,920440,945003);



declare 
    cursor activo is select * from activo_consolidado;
    activo_actual activo%rowtype;
    meses number;
    banco_actual number;
begin
    meses := 15;
    open activo;
    loop
        fetch activo into activo_actual;
        exit when activo%notfound;
        select id into banco_actual from banco where nombre = activo_actual.banco;
        insert into banco_activo(id,banco_id,valor,fecha) values(banco_activo_id.nextval,banco_actual,activo_actual.julio_2019, trunc(last_day(add_months(sysdate, (meses * -1)))));
        meses := meses - 1;
        select id into banco_actual from banco where nombre = activo_actual.banco;
        insert into banco_activo(id,banco_id,valor,fecha) values(banco_activo_id.nextval,banco_actual,activo_actual.agosto_2019, trunc(last_day(add_months(sysdate, (meses * -1)))));
        meses := meses - 1;
        select id into banco_actual from banco where nombre = activo_actual.banco;
        insert into banco_activo(id,banco_id,valor,fecha) values(banco_activo_id.nextval,banco_actual,activo_actual.septiembre_2019, trunc(last_day(add_months(sysdate, (meses * -1)))));
        meses := meses - 1;
        insert into banco_activo(id,banco_id,valor,fecha) values(banco_activo_id.nextval,banco_actual,activo_actual.octubre_2019, trunc(last_day(add_months(sysdate, (meses * -1)))));
        meses := meses - 1;
        insert into banco_activo(id,banco_id,valor,fecha) values(banco_activo_id.nextval,banco_actual,activo_actual.noviembre_2019, trunc(last_day(add_months(sysdate, (meses * -1)))));
        meses := meses - 1;
        insert into banco_activo(id,banco_id,valor,fecha) values(banco_activo_id.nextval,banco_actual,activo_actual.diciembre_2019, trunc(last_day(add_months(sysdate, (meses * -1)))));
        meses := meses - 1;
        insert into banco_activo(id,banco_id,valor,fecha) values(banco_activo_id.nextval,banco_actual,activo_actual.enero_2020, trunc(last_day(add_months(sysdate, (meses * -1)))));
        meses := meses - 1;
        insert into banco_activo(id,banco_id,valor,fecha) values(banco_activo_id.nextval,banco_actual,activo_actual.febrero_2020, trunc(last_day(add_months(sysdate, (meses * -1)))));
        meses := meses - 1;
        insert into banco_activo(id,banco_id,valor,fecha) values(banco_activo_id.nextval,banco_actual,activo_actual.marzo_2020, trunc(last_day(add_months(sysdate, (meses * -1)))));
        meses := meses - 1;
        insert into banco_activo(id,banco_id,valor,fecha) values(banco_activo_id.nextval,banco_actual,activo_actual.abril_2020, trunc(last_day(add_months(sysdate, (meses * -1)))));
        meses := meses - 1;
        insert into banco_activo(id,banco_id,valor,fecha) values(banco_activo_id.nextval,banco_actual,activo_actual.mayo_2020, trunc(last_day(add_months(sysdate, (meses * -1)))));
        meses := meses - 1;
        insert into banco_activo(id,banco_id,valor,fecha) values(banco_activo_id.nextval,banco_actual,activo_actual.junio_2020, trunc(last_day(add_months(sysdate, (meses * -1)))));
        meses := meses - 1;
        insert into banco_activo(id,banco_id,valor,fecha) values(banco_activo_id.nextval,banco_actual,activo_actual.julio_2020, trunc(last_day(add_months(sysdate, (meses * -1)))));
        meses := 15;
    end loop;
    commit;
end;
/



-- querys


-- Consulta 1

select * from (
select b.nombre, sum(a.valor) as Activo from banco_activo a
inner join banco b on a.banco_id = b.id
where a.fecha = trunc(last_day(add_months(sysdate, (12 * -1))))
group by b.nombre
order by sum(a.valor) desc
) where rownum < 6
;


-- Consulta 2

select * from (
select b.nombre, sum(a.valor) as Activo from banco_activo a
inner join banco b on a.banco_id = b.id
where a.fecha = trunc(last_day(add_months(sysdate, (8 * -1))))
group by b.nombre
order by sum(a.valor) asc
) where rownum < 6
;


-- Consulta 3

select * from (
select b.nombre, sum(a.valor) as Activo from banco_activo a
inner join banco b on a.banco_id = b.id
where a.fecha BETWEEN  trunc(last_day(add_months(sysdate, (15 * -1)))) and trunc(last_day(add_months(sysdate, (9 * -1))))
group by b.nombre
order by sum(a.valor) desc
) where rownum < 4
;


-- Consulta 4

select * from (
select b.nombre, sum(a.valor) as Activo from banco_activo a
inner join banco b on a.banco_id = b.id
group by b.nombre
order by sum(a.valor) desc
) where rownum < 2
;


-- sacar los meses a restar en las fechas * otra opción
select months_between(to_date('31/07/2019','DD/MM/YYYY'),last_day(sysdate)) from dual;



create or replace view anual_ranking as 
select select b.nombre as "PERFIL FINANCIERO",
(select rank from (
select banco_id,fecha, valor as total, rank() over (order by valor desc) as rank
from banco_activo
where fecha = trunc(last_day(add_months(sysdate, (-15))))
) where banco_id = b.id) as Julio,
(select rank from (
select banco_id,fecha, valor as total, rank() over (order by valor desc) as rank
from banco_activo
where fecha = trunc(last_day(add_months(sysdate, (-14))))
) where banco_id = b.id) as Agosto,
(select rank from (
select banco_id,fecha, valor as total, rank() over (order by valor desc) as rank
from banco_activo
where fecha = trunc(last_day(add_months(sysdate, (-13))))
) where banco_id = b.id) as Septiembre,
(select rank from (
select banco_id,fecha, valor as total, rank() over (order by valor desc) as rank
from banco_activo
where fecha = trunc(last_day(add_months(sysdate, (-12))))
) where banco_id = b.id) as Octubre,
(select rank from (
select banco_id,fecha, valor as total, rank() over (order by valor desc) as rank
from banco_activo
where fecha = trunc(last_day(add_months(sysdate, (-11))))
) where banco_id = b.id) as Noviembre,
(select rank from (
select banco_id,fecha, valor as total, rank() over (order by valor desc) as rank
from banco_activo
where fecha = trunc(last_day(add_months(sysdate, (-10))))
) where banco_id = b.id) as Diciembre,
(select rank from (
select banco_id,fecha, valor as total, rank() over (order by valor desc) as rank
from banco_activo
where fecha = trunc(last_day(add_months(sysdate, (-9))))
) where banco_id = b.id) as Enero,
(select rank from (
select banco_id,fecha, valor as total, rank() over (order by valor desc) as rank
from banco_activo
where fecha = trunc(last_day(add_months(sysdate, (-8))))
) where banco_id = b.id) as Febrero,
(select rank from (
select banco_id,fecha, valor as total, rank() over (order by valor desc) as rank
from banco_activo
where fecha = trunc(last_day(add_months(sysdate, (-7))))
) where banco_id = b.id) as Marzo,
(select rank from (
select banco_id,fecha, valor as total, rank() over (order by valor desc) as rank
from banco_activo
where fecha = trunc(last_day(add_months(sysdate, (-6))))
) where banco_id = b.id) as Abril,
(select rank from (
select banco_id,fecha, valor as total, rank() over (order by valor desc) as rank
from banco_activo
where fecha = trunc(last_day(add_months(sysdate, (-5))))
) where banco_id = b.id) as Mayo,
(select rank from (
select banco_id,fecha, valor as total, rank() over (order by valor desc) as rank
from banco_activo
where fecha = trunc(last_day(add_months(sysdate, (-4))))
) where banco_id = b.id) as Junio,
(select rank from (
select banco_id,fecha, valor as total, rank() over (order by valor desc) as rank
from banco_activo
where fecha = trunc(last_day(add_months(sysdate, (-3))))
) where banco_id = b.id) as Julio_2020
from banco b;

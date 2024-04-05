-- dims: all should have same counts except for req should count distinct

select count(*) from ASTV.hld_baseCandidate
select count(*) from    ASTV.etl_dCandidate
select count(*) from    xdw.ASTV.dCandidate

select count(*) from ASTV.hld_baserequisition
select count(*) from    ASTV.etl_drequisition
select count(*) from    xdw.ASTV.drequisition


select count(*) from ASTV.hld_baseengagement
select count(*) from    ASTV.etl_dengagement
select count(*) from    xdw.ASTV.dengagement


select count(*) from ASTV.hld_basevendor
select count(*) from    ASTV.etl_dvendor
select count(*) from    xdw.ASTV.dvendor



select count(*) from ASTV.hld_baseCandidate
select count(*) from    ASTV.etl_dCandidate
select count(*) from    xdw.ASTV.dCandidate



select count(*) from ASTV.hld_baseCandidate
select count(*) from    ASTV.etl_dCandidate
select count(*) from    xdw.ASTV.dCandidate

-- for facts

select count(*) from ASTV.hld_basefinancial
select count(*) from    ASTV.etl_ffinancial
select count(*) from    xdw.ASTV.ffinancial


select count(*) from ASTV.hld_basetimesheetactivity
select count(*) from    ASTV.etl_ftimesheetactivity
select count(*) from    xdw.ASTV.ftimesheetactivity

select count(*) from ASTV.hld_baseactivitysa
select count(*) from    ASTV.etl_factivitysa
select count(*) from    xdw.ASTV.factivitysa




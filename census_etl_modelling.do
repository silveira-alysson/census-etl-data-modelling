//Alysson de Oliveira Silveira
//Original 09May23 - from 2016 to 2020
//Updated version 12Feb24 - from 2009 to 2022
//Objetive: Merge Brazilian Higher Education Census Yearly Files

//Fields' Description:
/*
//Institutions Datasets

NU_ANO_CENSO  //year
NO_REGIAO_IES  //region_name
CO_REGIAO_IES  //region_id
NO_UF_IES  //state_name
SG_UF_IES  //state_abbrev
CO_UF_IES  //state_id
NO_MUNICIPIO_IES  //city_name
CO_MUNICIPIO_IES  //city_id
IN_CAPITAL_IES  //is_capital
NO_MESORREGIAO_IES  //mesoregion_name
CO_MESORREGIAO_IES  //mesoregion_id
NO_MICRORREGIAO_IES  //microregion_name
CO_MICRORREGIAO_IES  //microregion_id
TP_ORGANIZACAO_ACADEMICA  //inst_org_type
TP_CATEGORIA_ADMINISTRATIVA  //inst_admin_type
NO_MANTENEDORA  //parent_organization_name
CO_MANTENEDORA  //parent_organization_id
CO_IES  //institution_id
NO_IES  //institution_name
SG_IES  //institution_abbrev


QT_TEC_TOTAL  //qtt_staff

IN_ACESSO_PORTAL_CAPES  //access_capes
IN_ACESSO_OUTRAS_BASES  //access_other_databases          <= 2017
IN_ASSINA_OUTRA_BASE  //subscribe_other_databases        > 2017
IN_REPOSITORIO_INSTITUCIONAL  //inst_repository
IN_BUSCA_INTEGRADA  //integrated_search
IN_SERVICO_INTERNET  //internet_service
IN_PARTICIPA_REDE_SOCIAL  //social_media
IN_CATALOGO_ONLINE  //online_catalog
QT_PERIODICO_ELETRONICO  //eletronic_journals
QT_LIVRO_ELETRONICO  //qtt_ebooks



QT_DOC_TOTAL  //qtt_scholars
QT_DOC_EX_DOUT //qtt_scholars_PhD
QT_DOC_EX_INT //qtt_scholars_FT


//Course Datasets

QT_CURSO  //qtt_courses
QT_VG_TOTAL  //qtt_seats
QT_ING  //qtt_admitted
QT_MAT  //qtt_incoming
QT_CONC  //qtt_graduating
*/


//Import institution datasets

frames reset
//2009
cd "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Inputs\Institution Level"
import delimited "MICRODADOS_CADASTRO_IES_2009.CSV", case(upper) clear 
// rename fields to match most of other years' format
rename QT_DOCENTE_EXE QT_DOC_EXE
rename DOC_EX_DOUT QT_DOC_EX_DOUT
rename DOC_EX_INT QT_DOC_EX_INT
rename DOC_EX_INT_DE QT_DOC_EX_INT_DE
rename DOC_EX_0_29 QT_DOC_EX_0_29
rename DOC_EX_30_34 QT_DOC_EX_30_34 
rename DOC_EX_35_39 QT_DOC_EX_35_39 
rename DOC_EX_40_44  QT_DOC_EX_40_44 
rename DOC_EX_45_49 QT_DOC_EX_45_49 
rename DOC_EX_50_54 QT_DOC_EX_50_54 
rename DOC_EX_55_59 QT_DOC_EX_55_59 
rename DOC_EX_60_MAIS QT_DOC_EX_60_MAIS
keep NU_ANO_CENSO  NO_REGIAO_IES  CO_REGIAO_IES  NO_UF_IES  SG_UF_IES  CO_UF_IES  NO_MUNICIPIO_IES  CO_MUNICIPIO_IES  IN_CAPITAL_IES  NO_MESORREGIAO_IES  CO_MESORREGIAO_IES  NO_MICRORREGIAO_IES  CO_MICRORREGIAO_IES  TP_ORGANIZACAO_ACADEMICA  TP_CATEGORIA_ADMINISTRATIVA  NO_MANTENEDORA  CO_MANTENEDORA  CO_IES  NO_IES  SG_IES  QT_TEC_TOTAL  IN_ACESSO_PORTAL_CAPES  IN_ACESSO_OUTRAS_BASES  IN_ASSINA_OUTRA_BASE  IN_REPOSITORIO_INSTITUCIONAL  IN_BUSCA_INTEGRADA  IN_SERVICO_INTERNET  IN_PARTICIPA_REDE_SOCIAL  IN_CATALOGO_ONLINE  QT_PERIODICO_ELETRONICO  QT_LIVRO_ELETRONICO QT_TEC_TOTAL QT_TEC_SUPERIOR_FEM QT_TEC_SUPERIOR_MASC QT_TEC_ESPECIALIZACAO_FEM QT_TEC_ESPECIALIZACAO_MASC QT_TEC_MESTRADO_FEM QT_TEC_MESTRADO_MASC QT_TEC_DOUTORADO_FEM QT_TEC_DOUTORADO_MASC QT_DOC_EXE QT_DOC_EX_DOUT QT_DOC_EX_INT QT_DOC_EX_INT_DE QT_DOC_EX_0_29 QT_DOC_EX_30_34 QT_DOC_EX_35_39 QT_DOC_EX_40_44 QT_DOC_EX_45_49 QT_DOC_EX_50_54 QT_DOC_EX_55_59 QT_DOC_EX_60_MAIS


//2010
frame create temp
frame change temp
cd "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Inputs\Institution Level"
import delimited "MICRODADOS_CADASTRO_IES_2010.CSV", case(upper) clear 
keep NU_ANO_CENSO  NO_REGIAO_IES  CO_REGIAO_IES  NO_UF_IES  SG_UF_IES  CO_UF_IES  NO_MUNICIPIO_IES  CO_MUNICIPIO_IES  IN_CAPITAL_IES  NO_MESORREGIAO_IES  CO_MESORREGIAO_IES  NO_MICRORREGIAO_IES  CO_MICRORREGIAO_IES  TP_ORGANIZACAO_ACADEMICA  TP_CATEGORIA_ADMINISTRATIVA  NO_MANTENEDORA  CO_MANTENEDORA  CO_IES  NO_IES  SG_IES  QT_TEC_TOTAL  IN_ACESSO_PORTAL_CAPES  IN_ACESSO_OUTRAS_BASES  IN_ASSINA_OUTRA_BASE  IN_REPOSITORIO_INSTITUCIONAL  IN_BUSCA_INTEGRADA  IN_SERVICO_INTERNET  IN_PARTICIPA_REDE_SOCIAL  IN_CATALOGO_ONLINE  QT_PERIODICO_ELETRONICO  QT_LIVRO_ELETRONICO QT_TEC_TOTAL QT_TEC_SUPERIOR_FEM QT_TEC_SUPERIOR_MASC QT_TEC_ESPECIALIZACAO_FEM QT_TEC_ESPECIALIZACAO_MASC QT_TEC_MESTRADO_FEM QT_TEC_MESTRADO_MASC QT_TEC_DOUTORADO_FEM QT_TEC_DOUTORADO_MASC QT_DOC_EXE QT_DOC_EX_DOUT QT_DOC_EX_INT QT_DOC_EX_INT_DE QT_DOC_EX_0_29 QT_DOC_EX_30_34 QT_DOC_EX_35_39 QT_DOC_EX_40_44 QT_DOC_EX_45_49 QT_DOC_EX_50_54 QT_DOC_EX_55_59 QT_DOC_EX_60_MAIS
cd "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\"
save tempF.dta, replace
frame change default
append using tempF, force

//2011
frame change temp
cd "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Inputs\Institution Level"
import delimited "MICRODADOS_CADASTRO_IES_2011.CSV", case(upper) clear 
keep NU_ANO_CENSO  NO_REGIAO_IES  CO_REGIAO_IES  NO_UF_IES  SG_UF_IES  CO_UF_IES  NO_MUNICIPIO_IES  CO_MUNICIPIO_IES  IN_CAPITAL_IES  NO_MESORREGIAO_IES  CO_MESORREGIAO_IES  NO_MICRORREGIAO_IES  CO_MICRORREGIAO_IES  TP_ORGANIZACAO_ACADEMICA  TP_CATEGORIA_ADMINISTRATIVA  NO_MANTENEDORA  CO_MANTENEDORA  CO_IES  NO_IES  SG_IES  QT_TEC_TOTAL  IN_ACESSO_PORTAL_CAPES  IN_ACESSO_OUTRAS_BASES  IN_ASSINA_OUTRA_BASE  IN_REPOSITORIO_INSTITUCIONAL  IN_BUSCA_INTEGRADA  IN_SERVICO_INTERNET  IN_PARTICIPA_REDE_SOCIAL  IN_CATALOGO_ONLINE  QT_PERIODICO_ELETRONICO  QT_LIVRO_ELETRONICO QT_TEC_TOTAL QT_TEC_SUPERIOR_FEM QT_TEC_SUPERIOR_MASC QT_TEC_ESPECIALIZACAO_FEM QT_TEC_ESPECIALIZACAO_MASC QT_TEC_MESTRADO_FEM QT_TEC_MESTRADO_MASC QT_TEC_DOUTORADO_FEM QT_TEC_DOUTORADO_MASC QT_DOC_EXE QT_DOC_EX_DOUT QT_DOC_EX_INT QT_DOC_EX_INT_DE QT_DOC_EX_0_29 QT_DOC_EX_30_34 QT_DOC_EX_35_39 QT_DOC_EX_40_44 QT_DOC_EX_45_49 QT_DOC_EX_50_54 QT_DOC_EX_55_59 QT_DOC_EX_60_MAIS
cd "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\"
save tempF.dta, replace
frame change default
append using tempF, force

//2012
frame change temp
cd "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Inputs\Institution Level"
import delimited "MICRODADOS_CADASTRO_IES_2012.CSV", case(upper) clear 
keep NU_ANO_CENSO  NO_REGIAO_IES  CO_REGIAO_IES  NO_UF_IES  SG_UF_IES  CO_UF_IES  NO_MUNICIPIO_IES  CO_MUNICIPIO_IES  IN_CAPITAL_IES  NO_MESORREGIAO_IES  CO_MESORREGIAO_IES  NO_MICRORREGIAO_IES  CO_MICRORREGIAO_IES  TP_ORGANIZACAO_ACADEMICA  TP_CATEGORIA_ADMINISTRATIVA  NO_MANTENEDORA  CO_MANTENEDORA  CO_IES  NO_IES  SG_IES  QT_TEC_TOTAL  IN_ACESSO_PORTAL_CAPES  IN_ACESSO_OUTRAS_BASES  IN_ASSINA_OUTRA_BASE  IN_REPOSITORIO_INSTITUCIONAL  IN_BUSCA_INTEGRADA  IN_SERVICO_INTERNET  IN_PARTICIPA_REDE_SOCIAL  IN_CATALOGO_ONLINE  QT_PERIODICO_ELETRONICO  QT_LIVRO_ELETRONICO QT_TEC_TOTAL QT_TEC_SUPERIOR_FEM QT_TEC_SUPERIOR_MASC QT_TEC_ESPECIALIZACAO_FEM QT_TEC_ESPECIALIZACAO_MASC QT_TEC_MESTRADO_FEM QT_TEC_MESTRADO_MASC QT_TEC_DOUTORADO_FEM QT_TEC_DOUTORADO_MASC QT_DOC_EXE QT_DOC_EX_DOUT QT_DOC_EX_INT QT_DOC_EX_INT_DE QT_DOC_EX_0_29 QT_DOC_EX_30_34 QT_DOC_EX_35_39 QT_DOC_EX_40_44 QT_DOC_EX_45_49 QT_DOC_EX_50_54 QT_DOC_EX_55_59 QT_DOC_EX_60_MAIS
cd "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\"
save tempF.dta, replace
frame change default
append using tempF, force

//2013
frame change temp
cd "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Inputs\Institution Level"
import delimited "MICRODADOS_CADASTRO_IES_2013.CSV", case(upper) clear 
keep NU_ANO_CENSO  NO_REGIAO_IES  CO_REGIAO_IES  NO_UF_IES  SG_UF_IES  CO_UF_IES  NO_MUNICIPIO_IES  CO_MUNICIPIO_IES  IN_CAPITAL_IES  NO_MESORREGIAO_IES  CO_MESORREGIAO_IES  NO_MICRORREGIAO_IES  CO_MICRORREGIAO_IES  TP_ORGANIZACAO_ACADEMICA  TP_CATEGORIA_ADMINISTRATIVA  NO_MANTENEDORA  CO_MANTENEDORA  CO_IES  NO_IES  SG_IES  QT_TEC_TOTAL  IN_ACESSO_PORTAL_CAPES  IN_ACESSO_OUTRAS_BASES  IN_ASSINA_OUTRA_BASE  IN_REPOSITORIO_INSTITUCIONAL  IN_BUSCA_INTEGRADA  IN_SERVICO_INTERNET  IN_PARTICIPA_REDE_SOCIAL  IN_CATALOGO_ONLINE  QT_PERIODICO_ELETRONICO  QT_LIVRO_ELETRONICO QT_TEC_TOTAL QT_TEC_SUPERIOR_FEM QT_TEC_SUPERIOR_MASC QT_TEC_ESPECIALIZACAO_FEM QT_TEC_ESPECIALIZACAO_MASC QT_TEC_MESTRADO_FEM QT_TEC_MESTRADO_MASC QT_TEC_DOUTORADO_FEM QT_TEC_DOUTORADO_MASC QT_DOC_EXE QT_DOC_EX_DOUT QT_DOC_EX_INT QT_DOC_EX_INT_DE QT_DOC_EX_0_29 QT_DOC_EX_30_34 QT_DOC_EX_35_39 QT_DOC_EX_40_44 QT_DOC_EX_45_49 QT_DOC_EX_50_54 QT_DOC_EX_55_59 QT_DOC_EX_60_MAIS
cd "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\"
save tempF.dta, replace
frame change default
append using tempF, force

//2014
frame change temp
cd "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Inputs\Institution Level"
import delimited "MICRODADOS_CADASTRO_IES_2014.CSV", case(upper) clear 
keep NU_ANO_CENSO  NO_REGIAO_IES  CO_REGIAO_IES  NO_UF_IES  SG_UF_IES  CO_UF_IES  NO_MUNICIPIO_IES  CO_MUNICIPIO_IES  IN_CAPITAL_IES  NO_MESORREGIAO_IES  CO_MESORREGIAO_IES  NO_MICRORREGIAO_IES  CO_MICRORREGIAO_IES  TP_ORGANIZACAO_ACADEMICA  TP_CATEGORIA_ADMINISTRATIVA  NO_MANTENEDORA  CO_MANTENEDORA  CO_IES  NO_IES  SG_IES  QT_TEC_TOTAL  IN_ACESSO_PORTAL_CAPES  IN_ACESSO_OUTRAS_BASES  IN_ASSINA_OUTRA_BASE  IN_REPOSITORIO_INSTITUCIONAL  IN_BUSCA_INTEGRADA  IN_SERVICO_INTERNET  IN_PARTICIPA_REDE_SOCIAL  IN_CATALOGO_ONLINE  QT_PERIODICO_ELETRONICO  QT_LIVRO_ELETRONICO QT_TEC_TOTAL QT_TEC_SUPERIOR_FEM QT_TEC_SUPERIOR_MASC QT_TEC_ESPECIALIZACAO_FEM QT_TEC_ESPECIALIZACAO_MASC QT_TEC_MESTRADO_FEM QT_TEC_MESTRADO_MASC QT_TEC_DOUTORADO_FEM QT_TEC_DOUTORADO_MASC QT_DOC_EXE QT_DOC_EX_DOUT QT_DOC_EX_INT QT_DOC_EX_INT_DE QT_DOC_EX_0_29 QT_DOC_EX_30_34 QT_DOC_EX_35_39 QT_DOC_EX_40_44 QT_DOC_EX_45_49 QT_DOC_EX_50_54 QT_DOC_EX_55_59 QT_DOC_EX_60_MAIS
cd "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\"
save tempF.dta, replace
frame change default
append using tempF, force

//2015
frame change temp
cd "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Inputs\Institution Level"
import delimited "MICRODADOS_CADASTRO_IES_2015.CSV", case(upper) clear 
keep NU_ANO_CENSO  NO_REGIAO_IES  CO_REGIAO_IES  NO_UF_IES  SG_UF_IES  CO_UF_IES  NO_MUNICIPIO_IES  CO_MUNICIPIO_IES  IN_CAPITAL_IES  NO_MESORREGIAO_IES  CO_MESORREGIAO_IES  NO_MICRORREGIAO_IES  CO_MICRORREGIAO_IES  TP_ORGANIZACAO_ACADEMICA  TP_CATEGORIA_ADMINISTRATIVA  NO_MANTENEDORA  CO_MANTENEDORA  CO_IES  NO_IES  SG_IES  QT_TEC_TOTAL  IN_ACESSO_PORTAL_CAPES  IN_ACESSO_OUTRAS_BASES  IN_ASSINA_OUTRA_BASE  IN_REPOSITORIO_INSTITUCIONAL  IN_BUSCA_INTEGRADA  IN_SERVICO_INTERNET  IN_PARTICIPA_REDE_SOCIAL  IN_CATALOGO_ONLINE  QT_PERIODICO_ELETRONICO  QT_LIVRO_ELETRONICO QT_TEC_TOTAL QT_TEC_SUPERIOR_FEM QT_TEC_SUPERIOR_MASC QT_TEC_ESPECIALIZACAO_FEM QT_TEC_ESPECIALIZACAO_MASC QT_TEC_MESTRADO_FEM QT_TEC_MESTRADO_MASC QT_TEC_DOUTORADO_FEM QT_TEC_DOUTORADO_MASC QT_DOC_EXE QT_DOC_EX_DOUT QT_DOC_EX_INT QT_DOC_EX_INT_DE QT_DOC_EX_0_29 QT_DOC_EX_30_34 QT_DOC_EX_35_39 QT_DOC_EX_40_44 QT_DOC_EX_45_49 QT_DOC_EX_50_54 QT_DOC_EX_55_59 QT_DOC_EX_60_MAIS
cd "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\"
save tempF.dta, replace
frame change default
append using tempF, force


//2016
frame change temp
cd "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Inputs\Institution Level"
import delimited "MICRODADOS_CADASTRO_IES_2016.CSV", case(upper) clear 
keep NU_ANO_CENSO  NO_REGIAO_IES  CO_REGIAO_IES  NO_UF_IES  SG_UF_IES  CO_UF_IES  NO_MUNICIPIO_IES  CO_MUNICIPIO_IES  IN_CAPITAL_IES  NO_MESORREGIAO_IES  CO_MESORREGIAO_IES  NO_MICRORREGIAO_IES  CO_MICRORREGIAO_IES  TP_ORGANIZACAO_ACADEMICA  TP_CATEGORIA_ADMINISTRATIVA  NO_MANTENEDORA  CO_MANTENEDORA  CO_IES  NO_IES  SG_IES  QT_TEC_TOTAL  IN_ACESSO_PORTAL_CAPES  IN_ACESSO_OUTRAS_BASES  IN_ASSINA_OUTRA_BASE  IN_REPOSITORIO_INSTITUCIONAL  IN_BUSCA_INTEGRADA  IN_SERVICO_INTERNET  IN_PARTICIPA_REDE_SOCIAL  IN_CATALOGO_ONLINE  QT_PERIODICO_ELETRONICO  QT_LIVRO_ELETRONICO QT_TEC_TOTAL QT_TEC_SUPERIOR_FEM QT_TEC_SUPERIOR_MASC QT_TEC_ESPECIALIZACAO_FEM QT_TEC_ESPECIALIZACAO_MASC QT_TEC_MESTRADO_FEM QT_TEC_MESTRADO_MASC QT_TEC_DOUTORADO_FEM QT_TEC_DOUTORADO_MASC QT_DOC_EXE QT_DOC_EX_DOUT QT_DOC_EX_INT QT_DOC_EX_INT_DE QT_DOC_EX_0_29 QT_DOC_EX_30_34 QT_DOC_EX_35_39 QT_DOC_EX_40_44 QT_DOC_EX_45_49 QT_DOC_EX_50_54 QT_DOC_EX_55_59 QT_DOC_EX_60_MAIS
cd "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\"
save tempF.dta, replace
frame change default
append using tempF, force

//2017
frame change temp
cd "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Inputs\Institution Level"
import delimited "MICRODADOS_CADASTRO_IES_2017.CSV", case(upper) clear 
keep NU_ANO_CENSO  NO_REGIAO_IES  CO_REGIAO_IES  NO_UF_IES  SG_UF_IES  CO_UF_IES  NO_MUNICIPIO_IES  CO_MUNICIPIO_IES  IN_CAPITAL_IES  NO_MESORREGIAO_IES  CO_MESORREGIAO_IES  NO_MICRORREGIAO_IES  CO_MICRORREGIAO_IES  TP_ORGANIZACAO_ACADEMICA  TP_CATEGORIA_ADMINISTRATIVA  NO_MANTENEDORA  CO_MANTENEDORA  CO_IES  NO_IES  SG_IES  QT_TEC_TOTAL  IN_ACESSO_PORTAL_CAPES  IN_ACESSO_OUTRAS_BASES  IN_ASSINA_OUTRA_BASE  IN_REPOSITORIO_INSTITUCIONAL  IN_BUSCA_INTEGRADA  IN_SERVICO_INTERNET  IN_PARTICIPA_REDE_SOCIAL  IN_CATALOGO_ONLINE  QT_PERIODICO_ELETRONICO  QT_LIVRO_ELETRONICO QT_TEC_TOTAL QT_TEC_SUPERIOR_FEM QT_TEC_SUPERIOR_MASC QT_TEC_ESPECIALIZACAO_FEM QT_TEC_ESPECIALIZACAO_MASC QT_TEC_MESTRADO_FEM QT_TEC_MESTRADO_MASC QT_TEC_DOUTORADO_FEM QT_TEC_DOUTORADO_MASC QT_DOC_EXE QT_DOC_EX_DOUT QT_DOC_EX_INT QT_DOC_EX_INT_DE QT_DOC_EX_0_29 QT_DOC_EX_30_34 QT_DOC_EX_35_39 QT_DOC_EX_40_44 QT_DOC_EX_45_49 QT_DOC_EX_50_54 QT_DOC_EX_55_59 QT_DOC_EX_60_MAIS
cd "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\"
save tempF.dta, replace
frame change default
append using tempF, force

//2018
frame change temp
cd "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Inputs\Institution Level"
import delimited "MICRODADOS_CADASTRO_IES_2018.CSV", case(upper) clear 
keep NU_ANO_CENSO  NO_REGIAO_IES  CO_REGIAO_IES  NO_UF_IES  SG_UF_IES  CO_UF_IES  NO_MUNICIPIO_IES  CO_MUNICIPIO_IES  IN_CAPITAL_IES  NO_MESORREGIAO_IES  CO_MESORREGIAO_IES  NO_MICRORREGIAO_IES  CO_MICRORREGIAO_IES  TP_ORGANIZACAO_ACADEMICA  TP_CATEGORIA_ADMINISTRATIVA  NO_MANTENEDORA  CO_MANTENEDORA  CO_IES  NO_IES  SG_IES  QT_TEC_TOTAL  IN_ACESSO_PORTAL_CAPES  IN_ACESSO_OUTRAS_BASES  IN_ASSINA_OUTRA_BASE  IN_REPOSITORIO_INSTITUCIONAL  IN_BUSCA_INTEGRADA  IN_SERVICO_INTERNET  IN_PARTICIPA_REDE_SOCIAL  IN_CATALOGO_ONLINE  QT_PERIODICO_ELETRONICO  QT_LIVRO_ELETRONICO QT_TEC_TOTAL QT_TEC_SUPERIOR_FEM QT_TEC_SUPERIOR_MASC QT_TEC_ESPECIALIZACAO_FEM QT_TEC_ESPECIALIZACAO_MASC QT_TEC_MESTRADO_FEM QT_TEC_MESTRADO_MASC QT_TEC_DOUTORADO_FEM QT_TEC_DOUTORADO_MASC QT_DOC_EXE QT_DOC_EX_DOUT QT_DOC_EX_INT QT_DOC_EX_INT_DE QT_DOC_EX_0_29 QT_DOC_EX_30_34 QT_DOC_EX_35_39 QT_DOC_EX_40_44 QT_DOC_EX_45_49 QT_DOC_EX_50_54 QT_DOC_EX_55_59 QT_DOC_EX_60_MAIS
cd "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\"
save tempF.dta, replace
frame change default
append using tempF, force

//2019
frame change temp
cd "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Inputs\Institution Level"
import delimited "MICRODADOS_CADASTRO_IES_2019.CSV", case(upper) clear 
keep NU_ANO_CENSO  NO_REGIAO_IES  CO_REGIAO_IES  NO_UF_IES  SG_UF_IES  CO_UF_IES  NO_MUNICIPIO_IES  CO_MUNICIPIO_IES  IN_CAPITAL_IES  NO_MESORREGIAO_IES  CO_MESORREGIAO_IES  NO_MICRORREGIAO_IES  CO_MICRORREGIAO_IES  TP_ORGANIZACAO_ACADEMICA  TP_CATEGORIA_ADMINISTRATIVA  NO_MANTENEDORA  CO_MANTENEDORA  CO_IES  NO_IES  SG_IES  QT_TEC_TOTAL  IN_ACESSO_PORTAL_CAPES  IN_ACESSO_OUTRAS_BASES  IN_ASSINA_OUTRA_BASE  IN_REPOSITORIO_INSTITUCIONAL  IN_BUSCA_INTEGRADA  IN_SERVICO_INTERNET  IN_PARTICIPA_REDE_SOCIAL  IN_CATALOGO_ONLINE  QT_PERIODICO_ELETRONICO  QT_LIVRO_ELETRONICO QT_TEC_TOTAL QT_TEC_SUPERIOR_FEM QT_TEC_SUPERIOR_MASC QT_TEC_ESPECIALIZACAO_FEM QT_TEC_ESPECIALIZACAO_MASC QT_TEC_MESTRADO_FEM QT_TEC_MESTRADO_MASC QT_TEC_DOUTORADO_FEM QT_TEC_DOUTORADO_MASC QT_DOC_EXE QT_DOC_EX_DOUT QT_DOC_EX_INT QT_DOC_EX_INT_DE QT_DOC_EX_0_29 QT_DOC_EX_30_34 QT_DOC_EX_35_39 QT_DOC_EX_40_44 QT_DOC_EX_45_49 QT_DOC_EX_50_54 QT_DOC_EX_55_59 QT_DOC_EX_60_MAIS
cd "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\"
save tempF.dta, replace
frame change default
append using tempF, force

//2020
frame change temp
cd "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Inputs\Institution Level"
import delimited "MICRODADOS_CADASTRO_IES_2020.CSV", case(upper) clear 
keep NU_ANO_CENSO  NO_REGIAO_IES  CO_REGIAO_IES  NO_UF_IES  SG_UF_IES  CO_UF_IES  NO_MUNICIPIO_IES  CO_MUNICIPIO_IES  IN_CAPITAL_IES  NO_MESORREGIAO_IES  CO_MESORREGIAO_IES  NO_MICRORREGIAO_IES  CO_MICRORREGIAO_IES  TP_ORGANIZACAO_ACADEMICA  TP_CATEGORIA_ADMINISTRATIVA  NO_MANTENEDORA  CO_MANTENEDORA  CO_IES  NO_IES  SG_IES  QT_TEC_TOTAL  IN_ACESSO_PORTAL_CAPES  IN_ACESSO_OUTRAS_BASES  IN_ASSINA_OUTRA_BASE  IN_REPOSITORIO_INSTITUCIONAL  IN_BUSCA_INTEGRADA  IN_SERVICO_INTERNET  IN_PARTICIPA_REDE_SOCIAL  IN_CATALOGO_ONLINE  QT_PERIODICO_ELETRONICO  QT_LIVRO_ELETRONICO QT_TEC_TOTAL QT_TEC_SUPERIOR_FEM QT_TEC_SUPERIOR_MASC QT_TEC_ESPECIALIZACAO_FEM QT_TEC_ESPECIALIZACAO_MASC QT_TEC_MESTRADO_FEM QT_TEC_MESTRADO_MASC QT_TEC_DOUTORADO_FEM QT_TEC_DOUTORADO_MASC QT_DOC_EXE QT_DOC_EX_DOUT QT_DOC_EX_INT QT_DOC_EX_INT_DE QT_DOC_EX_0_29 QT_DOC_EX_30_34 QT_DOC_EX_35_39 QT_DOC_EX_40_44 QT_DOC_EX_45_49 QT_DOC_EX_50_54 QT_DOC_EX_55_59 QT_DOC_EX_60_MAIS
cd "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\"
save tempF.dta, replace
frame change default
append using tempF, force


//2021
frame change temp
cd "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Inputs\Institution Level"
import delimited "MICRODADOS_CADASTRO_IES_2021.CSV", case(upper) clear 
keep NU_ANO_CENSO  NO_REGIAO_IES  CO_REGIAO_IES  NO_UF_IES  SG_UF_IES  CO_UF_IES  NO_MUNICIPIO_IES  CO_MUNICIPIO_IES  IN_CAPITAL_IES  NO_MESORREGIAO_IES  CO_MESORREGIAO_IES  NO_MICRORREGIAO_IES  CO_MICRORREGIAO_IES  TP_ORGANIZACAO_ACADEMICA  TP_CATEGORIA_ADMINISTRATIVA  NO_MANTENEDORA  CO_MANTENEDORA  CO_IES  NO_IES  SG_IES  QT_TEC_TOTAL  IN_ACESSO_PORTAL_CAPES  IN_ACESSO_OUTRAS_BASES  IN_ASSINA_OUTRA_BASE  IN_REPOSITORIO_INSTITUCIONAL  IN_BUSCA_INTEGRADA  IN_SERVICO_INTERNET  IN_PARTICIPA_REDE_SOCIAL  IN_CATALOGO_ONLINE  QT_PERIODICO_ELETRONICO  QT_LIVRO_ELETRONICO QT_TEC_TOTAL QT_TEC_SUPERIOR_FEM QT_TEC_SUPERIOR_MASC QT_TEC_ESPECIALIZACAO_FEM QT_TEC_ESPECIALIZACAO_MASC QT_TEC_MESTRADO_FEM QT_TEC_MESTRADO_MASC QT_TEC_DOUTORADO_FEM QT_TEC_DOUTORADO_MASC QT_DOC_EXE QT_DOC_EX_DOUT QT_DOC_EX_INT QT_DOC_EX_INT_DE QT_DOC_EX_0_29 QT_DOC_EX_30_34 QT_DOC_EX_35_39 QT_DOC_EX_40_44 QT_DOC_EX_45_49 QT_DOC_EX_50_54 QT_DOC_EX_55_59 QT_DOC_EX_60_MAIS
cd "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\"
save tempF.dta, replace
frame change default
append using tempF, force

//2022
frame change temp
cd "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Inputs\Institution Level"
import delimited "MICRODADOS_CADASTRO_IES_2022.CSV", case(upper) clear 
keep NU_ANO_CENSO  NO_REGIAO_IES  CO_REGIAO_IES  NO_UF_IES  SG_UF_IES  CO_UF_IES  NO_MUNICIPIO_IES  CO_MUNICIPIO_IES  IN_CAPITAL_IES  NO_MESORREGIAO_IES  CO_MESORREGIAO_IES  NO_MICRORREGIAO_IES  CO_MICRORREGIAO_IES  TP_ORGANIZACAO_ACADEMICA  TP_CATEGORIA_ADMINISTRATIVA  NO_MANTENEDORA  CO_MANTENEDORA  CO_IES  NO_IES  SG_IES  QT_TEC_TOTAL  IN_ACESSO_PORTAL_CAPES  IN_ACESSO_OUTRAS_BASES  IN_ASSINA_OUTRA_BASE  IN_REPOSITORIO_INSTITUCIONAL  IN_BUSCA_INTEGRADA  IN_SERVICO_INTERNET  IN_PARTICIPA_REDE_SOCIAL  IN_CATALOGO_ONLINE  QT_PERIODICO_ELETRONICO  QT_LIVRO_ELETRONICO QT_TEC_TOTAL QT_TEC_SUPERIOR_FEM QT_TEC_SUPERIOR_MASC QT_TEC_ESPECIALIZACAO_FEM QT_TEC_ESPECIALIZACAO_MASC QT_TEC_MESTRADO_FEM QT_TEC_MESTRADO_MASC QT_TEC_DOUTORADO_FEM QT_TEC_DOUTORADO_MASC QT_DOC_EXE QT_DOC_EX_DOUT QT_DOC_EX_INT QT_DOC_EX_INT_DE QT_DOC_EX_0_29 QT_DOC_EX_30_34 QT_DOC_EX_35_39 QT_DOC_EX_40_44 QT_DOC_EX_45_49 QT_DOC_EX_50_54 QT_DOC_EX_55_59 QT_DOC_EX_60_MAIS
cd "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\"
save tempF.dta, replace
frame change default
append using tempF, force

save institutionConsolidated_2009_2022_12Feb24.dta, replace

use institutionConsolidated_2009_2022_12Feb24.dta, clear

//check for duplicates
duplicates list NU_ANO_CENSO CO_IES


//////////////////////////////////////////////////////////////////////////////////

//import course level datasets

frames reset

//2009
cd "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Inputs\Course Level"
import delimited "MICRODADOS_CADASTRO_CURSOS_2009.CSV", case(upper) clear 
keep NU_ANO_CENSO CO_IES QT_CURSO  QT_VG_TOTAL QT_VG_TOTAL_EAD  QT_INSCRITO_TOTAL QT_INSCRITO_TOTAL_EAD QT_ING  QT_MAT  QT_CONC 
cd "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\"
save tempF.dta, replace
frame change default
append using tempF, force

//2010
frame create temp
frame change temp
cd "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Inputs\Course Level"
import delimited "MICRODADOS_CADASTRO_CURSOS_2010.CSV", case(upper) clear 
keep NU_ANO_CENSO CO_IES QT_CURSO  QT_VG_TOTAL QT_VG_TOTAL_EAD  QT_INSCRITO_TOTAL QT_INSCRITO_TOTAL_EAD QT_ING  QT_MAT  QT_CONC 
cd "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\"
save tempF.dta, replace
frame change default
append using tempF, force

//2011
frame change temp
cd "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Inputs\Course Level"
import delimited "MICRODADOS_CADASTRO_CURSOS_2011.CSV", case(upper) clear 
keep NU_ANO_CENSO CO_IES QT_CURSO  QT_VG_TOTAL QT_VG_TOTAL_EAD  QT_INSCRITO_TOTAL QT_INSCRITO_TOTAL_EAD QT_ING  QT_MAT  QT_CONC 
cd "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\"
save tempF.dta, replace
frame change default
append using tempF, force

//2012
frame change temp
cd "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Inputs\Course Level"
import delimited "MICRODADOS_CADASTRO_CURSOS_2012.CSV", case(upper) clear 
keep NU_ANO_CENSO CO_IES QT_CURSO  QT_VG_TOTAL QT_VG_TOTAL_EAD  QT_INSCRITO_TOTAL QT_INSCRITO_TOTAL_EAD QT_ING  QT_MAT  QT_CONC 
cd "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\"
save tempF.dta, replace
frame change default
append using tempF, force

//2013
frame change temp
cd "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Inputs\Course Level"
import delimited "MICRODADOS_CADASTRO_CURSOS_2013.CSV", case(upper) clear 
keep NU_ANO_CENSO CO_IES QT_CURSO  QT_VG_TOTAL QT_VG_TOTAL_EAD  QT_INSCRITO_TOTAL QT_INSCRITO_TOTAL_EAD QT_ING  QT_MAT  QT_CONC 
cd "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\"
save tempF.dta, replace
frame change default
append using tempF, force

//2014
frame change temp
cd "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Inputs\Course Level"
import delimited "MICRODADOS_CADASTRO_CURSOS_2014.CSV", case(upper) clear 
keep NU_ANO_CENSO CO_IES QT_CURSO  QT_VG_TOTAL QT_VG_TOTAL_EAD  QT_INSCRITO_TOTAL QT_INSCRITO_TOTAL_EAD QT_ING  QT_MAT  QT_CONC 
cd "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\"
save tempF.dta, replace
frame change default
append using tempF, force

//2015
frame change temp
cd "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Inputs\Course Level"
import delimited "MICRODADOS_CADASTRO_CURSOS_2015.CSV", case(upper) clear 
keep NU_ANO_CENSO CO_IES QT_CURSO  QT_VG_TOTAL QT_VG_TOTAL_EAD  QT_INSCRITO_TOTAL QT_INSCRITO_TOTAL_EAD QT_ING  QT_MAT  QT_CONC 
cd "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\"
save tempF.dta, replace
frame change default
append using tempF, force


//2016
frame change temp
cd "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Inputs\Course Level"
import delimited "MICRODADOS_CADASTRO_CURSOS_2016.CSV", case(upper) clear 
keep NU_ANO_CENSO CO_IES QT_CURSO  QT_VG_TOTAL QT_VG_TOTAL_EAD  QT_INSCRITO_TOTAL QT_INSCRITO_TOTAL_EAD QT_ING  QT_MAT  QT_CONC 
cd "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\"
save tempF.dta, replace
frame change default
append using tempF, force

//2017
frame change temp
cd "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Inputs\Course Level"
import delimited "MICRODADOS_CADASTRO_CURSOS_2017.CSV", case(upper) clear 
keep NU_ANO_CENSO CO_IES QT_CURSO  QT_VG_TOTAL QT_VG_TOTAL_EAD  QT_INSCRITO_TOTAL QT_INSCRITO_TOTAL_EAD QT_ING  QT_MAT  QT_CONC 
cd "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\"
save tempF.dta, replace
frame change default
append using tempF, force

//2018
frame change temp
cd "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Inputs\Course Level"
import delimited "MICRODADOS_CADASTRO_CURSOS_2018.CSV", case(upper) clear 
keep NU_ANO_CENSO CO_IES QT_CURSO  QT_VG_TOTAL QT_VG_TOTAL_EAD  QT_INSCRITO_TOTAL QT_INSCRITO_TOTAL_EAD QT_ING  QT_MAT  QT_CONC   
cd "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\"
save tempF.dta, replace
frame change default
append using tempF, force

//2019
frame change temp
cd "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Inputs\Course Level"
import delimited "MICRODADOS_CADASTRO_CURSOS_2019.CSV", case(upper) clear 
keep NU_ANO_CENSO CO_IES QT_CURSO  QT_VG_TOTAL QT_VG_TOTAL_EAD  QT_INSCRITO_TOTAL QT_INSCRITO_TOTAL_EAD QT_ING  QT_MAT  QT_CONC  
cd "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\"
save tempF.dta, replace
frame change default
append using tempF, force

//2020
frame change temp
cd "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Inputs\Course Level"
import delimited "MICRODADOS_CADASTRO_CURSOS_2020.CSV", case(upper) clear  
keep NU_ANO_CENSO CO_IES QT_CURSO  QT_VG_TOTAL QT_VG_TOTAL_EAD  QT_INSCRITO_TOTAL QT_INSCRITO_TOTAL_EAD QT_ING  QT_MAT  QT_CONC   
cd "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\"
save tempF.dta, replace
frame change default
append using tempF, force

//2021
frame change temp
cd "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Inputs\Course Level"
import delimited "MICRODADOS_CADASTRO_CURSOS_2021.CSV", case(upper) clear 
keep NU_ANO_CENSO CO_IES QT_CURSO  QT_VG_TOTAL QT_VG_TOTAL_EAD  QT_INSCRITO_TOTAL QT_INSCRITO_TOTAL_EAD QT_ING  QT_MAT  QT_CONC  
cd "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\"
save tempF.dta, replace
frame change default
append using tempF, force

//2022
frame change temp
cd "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Inputs\Course Level"
import delimited "MICRODADOS_CADASTRO_CURSOS_2022.CSV", case(upper) clear
keep NU_ANO_CENSO CO_IES QT_CURSO  QT_VG_TOTAL QT_VG_TOTAL_EAD  QT_INSCRITO_TOTAL QT_INSCRITO_TOTAL_EAD QT_ING  QT_MAT  QT_CONC  
cd "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\"
save tempF.dta, replace
frame change default
append using tempF, force

save coursesConsolidated_2009_2022_12Feb24.dta, replace


//collapse course data at the institution level
collapse (sum)  QT_CURSO  QT_VG_TOTAL QT_VG_TOTAL_EAD  QT_INSCRITO_TOTAL QT_INSCRITO_TOTAL_EAD QT_ING  QT_MAT  QT_CONC, by(CO_IES NU_ANO_CENSO)
save coursesCollapsed_2009_2022_12Feb24.dta, replace


//merge institution and course datasets
frame create inst
frame change inst
use institutionConsolidated_2009_2022_12Feb24.dta, clear
merge 1:1 CO_IES NU_ANO_CENSO using coursesCollapsed_2009_2022_12Feb24.dta
drop _merge

save mergedInstCourses_2009_2022_12Feb24.dta, replace
// cd "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\"
// use mergedInstCourses_2009_2022_12Feb24.dta, clear

//summary statistics
tab NU_ANO_CENSO //census year
//34,222 university-year observations




//////////////////////////////////////////////////////////////////////////

//Import course directory to match the university id from Capes with the Census (cd_entidade_capes and CO_IES)

//This files contain the program/course code and the CO_IES, which is called cd_entidade_emec here
//import and append files
clear 
forvalues i = 2013(1)2022{
	preserve
	import delimited "C:\Users\alyss\Dropbox\Capes\Cursos\br-capes-colsucup-curso-`i'.csv", clear 
	keep an_base cd_entidade_capes cd_entidade_emec cd_programa_ies cd_curso_ppg
	save tempCourses.dta, replace
	restore
	append using tempCourses.dta
}	
	
//save
save courses_2013_2022_13Feb24.dta

//File was refined in Excel (deal with duplicates and NIs)
//"C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Inputs\Lookup\lookup_cd_entidade_co_ies_13Feb24.xlsx"
cd "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\"
import excel "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Inputs\Lookup\lookup_cd_entidade_co_ies_13Feb24.xlsx", sheet("FGV") firstrow clear
save lookup_FGV_13Feb24.dta, replace
import excel "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Inputs\Lookup\lookup_cd_entidade_co_ies_13Feb24.xlsx", sheet("DB_FINAL") firstrow clear
save lookupCO_IES_2009_2022_13Feb24.dta, replace


//import academic production datasets

//2004 - 2012
frames reset
cd "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Inputs\Production\"
import delimited "br-capes-col-prod-2004a2012-2018-08-01-bibliografica-artpe.csv", bindquote(strict) maxquotedrows(0) encoding(windows-1252) clear 

//keep data from 2009 onwards
keep if an_base >= 2009 //(464,664 observations deleted)

//focus only on complete papers and drop summaries/abstracts published in conferences and other outlets
drop if nm_natureza_producao == "RESUMO"  //(16,303 observations deleted)

//merge with courses dataset to retrieve de CO_IES (cd_entidade_emec) -- FGV FIRST
merge m:1 cd_programa_ies using "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\lookup_FGV_13Feb24.dta"
drop if _merge==2
drop _merge
//merge with courses dataset to retrieve de CO_IES (cd_entidade_emec) -- ALL BUT FGV
merge m:1 nm_entidade_ensino using "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\lookupCO_IES_2009_2022_13Feb24.dta"
//_merge == 1 > FGV
drop if _merge==2
//replace CO_IES if FGV
replace CO_IES = cd_entidade_emec if missing(CO_IES)
drop cd_entidade_emec _merge

//keep only necessary fields (that are available in other years)
keep an_base sg_entidade_ensino nm_entidade_ensino nm_producao cd_padrao_issn nm_classificacao_qualis CO_IES

//replace names to match following years
rename cd_padrao_issn cd_identificador_veiculo
rename nm_classificacao_qualis sg_estrato

//count publication per HEI (e.g., if a papers has two authors from different HEI, it should appear twice in the dataset. However, if more than one author is from the same HEI, the paper will only show once for that HEI.)
//Same paper names can appear in different outlets. Consider the unit of analysis as Year-HEI-Name_of_the_Article-Outlet (an_base-nm_entidade_ensino-nm_producao-cd_padrao_issn)
//Papers were showing up twice for the same institution because co-authors were from different programs (scholar and students are considered as different programs too). Dropped the collumns that were causing duplication
duplicates drop //(41,742 observations deleted)

//Duplicates are still possible if the names of the papers were stated differently for both authors. E.g., one without and the with with a dot at the end of the title
replace nm_producao = subinstr(nm_producao, ".", "",.)
duplicates drop //(11,230 observations deleted)
replace nm_producao = subinstr(nm_producao, "-", "",.)
duplicates drop //(176 observations deleted)
replace nm_producao = strtrim(nm_producao)
replace nm_producao = ustrtrim(nm_producao)
duplicates drop //(1,312 observations deleted)

//For some reason the journal category is also causing duplicates -- Journals have different rankings according to the field of the author's program
duplicates drop an_base sg_entidade_ensino nm_entidade_ensino nm_producao cd_identificador_veiculo, force  //(34,345 observations deleted)

//save
cd "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\"
save production_2004_2012_12Feb24_v1.dta, replace
//use production_2004_2012_12Feb24_v1.dta, clear


//2013 - 2016
cd "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Inputs\Production\"
import delimited "br-capes-colsucup-producao-2013a2016-2020-06-30-bibliografica-artpe.csv", bindquote(strict) encoding(windows-1252) clear 

//merge with courses dataset to retrieve de CO_IES (cd_entidade_emec) -- FGV FIRST
merge m:1 cd_programa_ies using "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\lookup_FGV_13Feb24.dta"
drop if _merge==2
drop _merge
//merge with courses dataset to retrieve de CO_IES (cd_entidade_emec) -- ALL BUT FGV
merge m:1 nm_entidade_ensino using "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\lookupCO_IES_2009_2022_13Feb24.dta"
//_merge == 1 > FGV
drop if _merge==2
//replace CO_IES if FGV
replace CO_IES = cd_entidade_emec if missing(CO_IES)
drop cd_entidade_emec _merge

//keep only necessary fields (that are available in other years)
keep an_base sg_entidade_ensino nm_entidade_ensino nm_producao cd_identificador_veiculo sg_estrato CO_IES

//drop duplicates
duplicates drop //(98,121 observations deleted)

//Duplicates are still possible if the names of the papers were stated differently for both authors. E.g., one without and the with with a dot at the end of the title
replace nm_producao = subinstr(nm_producao, ".", "",.)
duplicates drop //(5,874 observations deleted)
replace nm_producao = subinstr(nm_producao, "-", "",.)
duplicates drop //(215 observations deleted)
replace nm_producao = strtrim(nm_producao)
replace nm_producao = ustrtrim(nm_producao)
duplicates drop //(82 observations deleted)

//For some reason the journal category is also causing duplicates -- Journals have different rankings according to the field of the author's program
duplicates drop an_base sg_entidade_ensino nm_entidade_ensino nm_producao cd_identificador_veiculo, force //(65,932 observations deleted)

cd "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\"
save production_2013_2016_12Feb24_v1.dta, replace


/////////////PROCURAR O PERIODICO NOS DETALHES DA PRODUCAO - ESSA BASE NAO CONTEM O ISSN DO PERIODICO


//2017-2020
cd "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Inputs\Production\"
import delimited "br-capes-colsucup-producao-2017a2020-2022-06-22-bibliografica-artpe", bindquote(strict) encoding(windows-1252) clear 

//merge with courses dataset to retrieve de CO_IES (cd_entidade_emec) -- FGV FIRST
merge m:1 cd_programa_ies using "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\lookup_FGV_13Feb24.dta"
drop if _merge==2
drop _merge
//merge with courses dataset to retrieve de CO_IES (cd_entidade_emec) -- ALL BUT FGV
merge m:1 nm_entidade_ensino using "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\lookupCO_IES_2009_2022_13Feb24.dta"
//_merge == 1 > FGV
drop if _merge==2
//replace CO_IES if FGV
replace CO_IES = cd_entidade_emec if missing(CO_IES)
drop cd_entidade_emec _merge


//merge with production details dataset to extract the journal's ISSN
frame create details
frame change details
cd "C:\Users\alyss\Dropbox\Capes\Producao\"
import delimited "br-colsucup-prod-detalhe-bibliografica-2017a2020-2022-06-30-artpe.csv", bindquote(strict) encoding(windows-1252) clear 
gen cd_identificador_veiculo = substr(ds_issn, 2,9) if substr(ds_issn, 1,1) == "("
keep id_add_producao_intelectual cd_identificador_veiculo
cd "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\"
save lookup_articleID_JournalsISSN.dta, replace

frame change default
merge 1:1 id_add_producao_intelectual using "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\lookup_articleID_JournalsISSN.dta"

//keep only necessary fields (that are available in other years)
keep an_base sg_entidade_ensino nm_entidade_ensino nm_producao cd_identificador_veiculo CO_IES

//drop duplicates
duplicates drop //(248,036 observations deleted)


//Duplicates are still possible if the names of the papers were stated differently for both authors. E.g., one without and the with with a dot at the end of the title
replace nm_producao = subinstr(nm_producao, ".", "",.)
duplicates drop //(5,879 observations deleted)
replace nm_producao = subinstr(nm_producao, "-", "",.)
duplicates drop //(347 observations deleted)
replace nm_producao = strtrim(nm_producao)
replace nm_producao = ustrtrim(nm_producao)
duplicates drop //(117 observations deleted)


//For some reason the journal category is also causing duplicates -- Journals have different rankings according to the field of the author's program
duplicates drop an_base sg_entidade_ensino nm_entidade_ensino nm_producao cd_identificador_veiculo, force 


cd "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\"
save production_2017_2020_12Feb24_v1.dta, replace


//2021-2022
cd "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Inputs\Production\"
import excel "br-capes-colsucup-producao-2021a2024-2023-10-31-bibliografica-artpe.xlsx", sheet("BR-CAPES-COLSUCUP-PRODUCAO-2021") firstrow case(lower) clear 

//merge with courses dataset to retrieve de CO_IES (cd_entidade_emec) -- FGV FIRST
merge m:1 cd_programa_ies using "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\lookup_FGV_13Feb24.dta"
drop if _merge==2
drop _merge
//merge with courses dataset to retrieve de CO_IES (cd_entidade_emec) -- ALL BUT FGV
merge m:1 nm_entidade_ensino using "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\lookupCO_IES_2009_2022_13Feb24.dta"
//_merge == 1 > FGV
drop if _merge==2
//replace CO_IES if FGV
replace CO_IES = cd_entidade_emec if missing(CO_IES)
drop cd_entidade_emec _merge


//merge with production details dataset to extract the journal's ISSN
frame change details
cd "C:\Users\alyss\Dropbox\Capes\Producao\"
import excel "br-capes-colsucup-prod-detalhe-bibliografica-2021a2024-2023-10-31-artpe.xlsx", firstrow case(lower) clear
gen cd_identificador_veiculo = substr(ds_issn, 2,9) if substr(ds_issn, 1,1) == "("
keep id_add_producao_intelectual cd_identificador_veiculo
cd "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\"
save lookup_articleID_JournalsISSN_2021_2022.dta, replace

frame change default
merge 1:1 id_add_producao_intelectual using "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\lookup_articleID_JournalsISSN_2021_2022.dta"

//keep only necessary fields (that are available in other years)
keep an_base sg_entidade_ensino nm_entidade_ensino nm_producao cd_identificador_veiculo CO_IES


//Duplicates needs to be dropped as there is one row for each author-paper, which would lead to duplications on the publication count for the universities
//drop duplicates
duplicates drop //(140,525 observations deleted)
//Duplicates are still possible if the names of the papers were stated differently for both authors. E.g., one without and the with with a dot at the end of the title
replace nm_producao = subinstr(nm_producao, ".", "",.)
duplicates drop //(2,484 observations deleted)
replace nm_producao = subinstr(nm_producao, "-", "",.)
duplicates drop //(171 observations deleted)
replace nm_producao = strtrim(nm_producao)
replace nm_producao = ustrtrim(nm_producao)
duplicates drop //(36 observations deleted)


//For some reason the journal category is also causing duplicates -- Journals have different rankings according to the field of the author's program
duplicates drop an_base sg_entidade_ensino nm_entidade_ensino nm_producao cd_identificador_veiculo, force 

cd "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\"
save production_2021_2022_13Feb24_v1.dta, replace


/////////////// Append all publication datasets, merge with Qualis journals' classification and collapse by university-year

cd "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\"
use production_2021_2022_13Feb24_v1.dta, clear
append using production_2004_2012_12Feb24_v1.dta //2009-2012
append using production_2013_2016_12Feb24_v1.dta //2013-2016
append using production_2017_2020_12Feb24_v1.dta //2017-2020

//check for duplicates
duplicates list

drop if nm_entidade_ensino == ""

//save
save production_2009_2022_13Feb24_v1.dta, replace

//summary stats
tab an_base

//plot the evolution of institution-articles from 2009-2022
graph bar (count), over(an_base, lab(angle(45))) ytitle("Number of Institution-Articles") graphregion(col(white)) ylab(,angle(0) format(%9.0fc)) bar(1, lcolor(black) fcolor(white))

//the growth can be due an increase in number of papers and an increase in collaboration across institutions

//plot evolution of unique papers 2009-2022
preserve
keep an_base nm_producao cd_identificador_veiculo
duplicates drop
tab an_base
graph bar (count), over(an_base, lab(angle(45))) ytitle("Number of Unique Articles") graphregion(col(white)) ylab(,angle(0) format(%9.0fc)) bar(1, lcolor(black) fcolor(white))
restore


/////////////// generate single table with Qualis grade per year --keep the highest among all disciplines

//import 2010-2012
import excel "C:\Users\alyss\Dropbox\Capes\Classificaçao Qualis\classificações_publicadas_todas_as_areas_avaliacao_2010_2012.xlsx", sheet("classificações_publicadas_todas") firstrow case(lower) clear
//ignore disciplines and journal names 
drop áreadeavaliação título
//sort by grade
sort issn estrato
//keep highest grade
by issn: gen first = 1 if _n==1
drop if first != 1 
//summary stats
tab estrato


cd "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\"
gen year = 2009
forvalues i = 2010(1)2012{
	preserve
	keep if year == 2009
	quietly replace year = `i'
	quietly save tmpfil0, replace
	restore
	append using tmpfil0
}

//save
save qualis_grade_2009_2012.dta, replace



//import 2013-2016
import excel "C:\Users\alyss\Dropbox\Capes\Classificaçao Qualis\classificações_publicadas_todas_as_areas_avaliacao_2013_2016.xlsx", sheet("classificações_publicadas_todas") firstrow case(lower) clear
//ignore disciplines and journal names 
drop áreadeavaliação título
//sort by grade
sort issn estrato
//keep highest grade
by issn: gen first = 1 if _n==1
drop if first != 1 
drop if missing(issn)
//summary stats
tab estrato


cd "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\"
gen year = 2013
forvalues i = 2014(1)2016{
	preserve
	keep if year == 2013
	quietly replace year = `i'
	quietly save tmpfil0, replace
	restore
	append using tmpfil0
}

//save
save qualis_grade_2013_2016.dta, replace


//import 2017-2020
import excel "C:\Users\alyss\Dropbox\Capes\Classificaçao Qualis\classificações_publicadas_todas_as_areas_avaliacao_2017_2020.xlsx", firstrow case(lower) clear
//ignore disciplines and journal names 
drop áreadeavaliação título
//sort by grade
sort issn estrato
//keep highest grade
by issn: gen first = 1 if _n==1
drop if first != 1 
drop if missing(issn)
//summary stats
tab estrato


cd "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\"
gen year = 2017
forvalues i = 2018(1)2022{
	preserve
	keep if year == 2017
	quietly replace year = `i'
	quietly save tmpfil0, replace
	restore
	append using tmpfil0
}

//save
save qualis_grade_2017_2022.dta, replace


////append all qualis
use qualis_grade_2017_2022.dta, clear
append using qualis_grade_2013_2016.dta
append using qualis_grade_2009_2012.dta
drop first
order year issn estrato
sort issn year estrato

//rename to match production datasets
rename year an_base
rename issn cd_identificador_veiculo

//save
save qualis_grade_2009_2022.dta, replace


///////// Merge production file and the qualis grades
//import production file
use production_2009_2022_13Feb24_v1.dta, clear
merge m:1 an_base cd_identificador_veiculo using qualis_grade_2009_2022.dta

//drop observations that are only in using (journals in which there were no publications in a given year)
drop if _merge == 2

//_merge == 1 means that either the journal was missing or the journal was not 'indexed' by Qualis
replace estrato = "NI" if _merge==1
drop if nm_entidade_ensino == ""

//drop old qualis grade, as it was dependent on the are
drop sg_estrato

//drop _merge
drop _merge

//correct C grade (remove trailing space)
replace estrato = "C" if estrato == "C "

//save
save production_2009_2022_withQualis_13Feb24_v1.dta, replace
//use production_2009_2022_withQualis_13Feb24_v1.dta, clear

//summary statistics
tab estrato
tab estrato an_base


//unique articles
preserve
keep an_base nm_producao cd_identificador_veiculo estrato
duplicates drop 
tab estrato
tab estrato an_base
restore


//////////Aggregate at the institution level
//generate flags for the Qualis strata
gen A1 = (estrato=="A1")
gen A2 = (estrato=="A2")
gen A3 = (estrato=="A3")
gen A4 = (estrato=="A4")
gen B1 = (estrato=="B1")
gen B2 = (estrato=="B2")
gen B3 = (estrato=="B3")
gen B4 = (estrato=="B4")
gen B5 = (estrato=="B5")
gen C = (estrato=="C")
gen NI = (estrato=="NI")

//generate publication count
gen pubCount = 1

//collapse
replace CO_IES = "NA" if CO_IES == "NI"
collapse (sum) pubCount A1 A2 A3 A4 B1 B2 B3 B4 B5 C NI, by(an_base CO_IES)

//change field name to match census datasets
rename an_base NU_ANO_CENSO

//drop observations from institutions without CO_IES 
//These are mostly hospitals, research centers, government agencies, and other institutions that are not universities
drop if CO_IES == "NA"

//chanage CO_IES to integer
destring CO_IES, replace

save collpased_production_2009_2022_withQualis_13Feb24_v1.dta, replace
use collpased_production_2009_2022_withQualis_13Feb24_v1.dta, clear

//summary stats -- number of publishing universities
tab an_base
graph bar (count), over(an_base, lab(angle(45))) ytitle("Number of Institutions") graphregion(col(white)) ylab(,angle(0) format(%9.0fc)) bar(1, lcolor(black) fcolor(white))


//merge institutionCourse and production datasets
frames reset
cd "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\"
use mergedInstCourses_2009_2022_12Feb24.dta, clear
merge m:1 NU_ANO_CENSO CO_IES using collpased_production_2009_2022_withQualis_13Feb24_v1.dta

//     Result                      Number of obs
//     -----------------------------------------
//     Not matched                        29,908
//         from master                    29,835  (_merge==1)
//         from using                         73  (_merge==2)
//
//     Matched                             4,387  (_merge==3)
//     -----------------------------------------


//reasons for the high volume of unmatched dataset (1) many institutions have not published in journals [_merge == 1]  and (2) some organizations that published are not universities (e.g., centers, institutes, government branches, military); missing data in the census dataset[_merge == 2]
drop if _merge==2

//replace missing values with zeros
replace pubCount = 0 if missing(pubCount)
replace A1 = 0 if missing(A1)
replace A2 = 0 if missing(A2)
replace A3= 0 if missing(A3)
replace A4 = 0 if missing(A4)
replace B1 = 0 if missing(B1)
replace B2 = 0 if missing(B2)
replace B3 = 0 if missing(B3)
replace B4 = 0 if missing(B4)
replace B5 = 0 if missing(B5)
replace C = 0 if missing(C)
replace NI= 0 if missing(NI)

gen qtt_indexed_articles = A1 + A2 + A3 + A4 + B1 + B2 + B3 + B4 + B5 + C
gen qtt_A_articles = A1 + A2 + A3 + A4
gen qtt_A123_articles = A1 + A2 + A3
gen qtt_B_articles = B1 + B2 + B3 + B4 + B5
gen qtt_C_articles = C
gen qtt_non_indexed = NI
gen qtt_all_but_A = B1 + B2 + B3 + B4 + B5 + C + NI



/// translate variable names
rename NU_ANO_CENSO year
rename NO_REGIAO_IES region_name
rename CO_REGIAO_IES region_id
rename NO_UF_IES state_name
rename SG_UF_IES state_abbrev
rename CO_UF_IES state_id
rename NO_MUNICIPIO_IES city_name
rename CO_MUNICIPIO_IES city_id
rename IN_CAPITAL_IES yes_capital
rename NO_MESORREGIAO_IES mesoregion_name
rename CO_MESORREGIAO_IES mesoregion_id
rename NO_MICRORREGIAO_IES microregion_name
rename CO_MICRORREGIAO_IES microregion_id
rename NO_MANTENEDORA parent_organization_name
rename CO_MANTENEDORA parent_organization_id
rename TP_CATEGORIA_ADMINISTRATIVA type_admistrative_organization
rename TP_ORGANIZACAO_ACADEMICA type_academic_organization
rename CO_IES university_id
rename NO_IES university_name
rename SG_IES university_abbrev
rename QT_TEC_TOTAL qtt_staff
rename IN_ACESSO_PORTAL_CAPES access_capes_db
rename IN_REPOSITORIO_INSTITUCIONAL institutional_repository
rename IN_BUSCA_INTEGRADA integrated_search
rename IN_SERVICO_INTERNET internet_service
rename IN_PARTICIPA_REDE_SOCIAL social_media
rename IN_CATALOGO_ONLINE online_catalog
rename QT_PERIODICO_ELETRONICO qtt_electronic_journals
rename QT_LIVRO_ELETRONICO qtt_ebooks
rename QT_DOC_EXE qtt_scholars_active
rename QT_DOC_EX_DOUT qtt_scholars_PhD
rename QT_DOC_EX_INT qtt_scholars_fulltime
rename QT_DOC_EX_INT_DE qtt_scholars_fulltime_exclusive
rename QT_VG_TOTAL_EAD  qtt_seats_online_courses
rename QT_INSCRITO_TOTAL  qtt_applications
rename QT_INSCRITO_TOTAL_EAD  qtt_applications_online_courses
rename QT_DOC_EX_0_29 qtt_scholars_0_29
rename QT_DOC_EX_30_34 qtt_scholars_30_34
rename QT_DOC_EX_35_39 qtt_scholars_35_39
rename QT_DOC_EX_40_44 qtt_scholars_40_44
rename QT_DOC_EX_45_49 qtt_scholars_45_49
rename QT_DOC_EX_50_54 qtt_scholars_50_54
rename QT_DOC_EX_55_59 qtt_scholars_55_59
rename QT_DOC_EX_60_MAIS qtt_scholars_60_plus
rename QT_CURSO qtt_courses
rename QT_VG_TOTAL qtt_seats
rename QT_ING qtt_incoming
rename QT_MAT qtt_enrolled
rename QT_CONC qtt_graduating
rename pubCount qtt_articles

//generate staff columns
gen qtt_staff_bachelors = QT_TEC_SUPERIOR_FEM + QT_TEC_SUPERIOR_MASC 
gen qtt_staff_degree = QT_TEC_ESPECIALIZACAO_FEM + QT_TEC_ESPECIALIZACAO_MASC 
gen qtt_staff_master = QT_TEC_MESTRADO_FEM + QT_TEC_MESTRADO_MASC 
gen qtt_staff_phd = QT_TEC_DOUTORADO_FEM + QT_TEC_DOUTORADO_MASC 
drop QT_TEC_SUPERIOR_FEM QT_TEC_SUPERIOR_MASC QT_TEC_ESPECIALIZACAO_FEM QT_TEC_ESPECIALIZACAO_MASC QT_TEC_MESTRADO_FEM QT_TEC_MESTRADO_MASC QT_TEC_DOUTORADO_FEM QT_TEC_DOUTORADO_MASC


//merge IN_ACESSO_OUTRAS_BASES and IN_ASSINA_OUTRA_BASE
gen access_other_databases = IN_ACESSO_OUTRAS_BASES + IN_ASSINA_OUTRA_BASE
drop IN_ACESSO_OUTRAS_BASES IN_ASSINA_OUTRA_BASE

//generate var for access to any databases
gen access_any_databases = access_capes_db + access_other_databases
replace access_any_databases  = 1 if access_any_databases ==2

//generate variable for public hei
gen public_hei = (type_admistrative_organization==1 | type_admistrative_organization==2 | type_admistrative_organization==3)

//generate variable for universities
gen yes_university = (type_academic_organization==1)

//generate other variables
gen phd_proportion = qtt_scholars_PhD/qtt_scholars_active
gen fulltime_exclus_proportion = qtt_scholars_fulltime_exclusive/qtt_scholars_active
gen total_personnel = qtt_scholars_active + qtt_staff
gen staff_proportion = qtt_staff/total_personnel

//generate variables for young and experieced scholars
gen young_scholars = qtt_scholars_0_29 + qtt_scholars_30_34 + qtt_scholars_35_39
//gen mid_career = qtt_scholars_40_44 + qtt_scholars_45_49 + qtt_scholars_50_54 
gen experienced_scholars = qtt_scholars_40_44 + qtt_scholars_45_49 + qtt_scholars_50_54 + qtt_scholars_55_59 + qtt_scholars_60_plus

//generate proportion of scholar according to their experiece
gen proportion_young = young_scholars/qtt_scholars_active
//gen proportion_mid = mid_career/qtt_scholars_active
gen proportion_experienced = experienced_scholars/qtt_scholars_active


//replace outliear with 2016 values (Universidade de Santo Amaro - reported 111111112 books and journals in 2015)
gen e_journals = qtt_electronic_journals
gen e_books = qtt_ebooks
replace e_journals = 1738 if university_id == 375 & year == 2015
replace e_books = 4000 if university_id == 375 & year == 2015

save mergedInstCoursesAcademicProduction_2009_2022_22Feb24_v4.dta, replace


//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//DATA CLEANING SPECIFIC FOR THIS ANALYSIS


//////////////////////////////////Keep only research-oriented institutions
//use programs dataset from CAPES. It may generate some zeros in the article count

//generate list of universities with graduate programs
use "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\lookup_FGV_13Feb24.dta", clear
rename cd_entidade_emec CO_IES
keep CO_IES
append using "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\lookupCO_IES_2009_2022_13Feb24.dta"
keep CO_IES
rename CO_IES university_id
drop if university_id == "NI"
destring university_id, replace
duplicates drop
save institutionsWithGraduatePrograms_2013_2022_21Feb24.dta, replace


//merge list of schools with graduate programs -- keep only such schools
frames reset
cd "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\"
use mergedInstCoursesAcademicProduction_2009_2022_22Feb24_v4.dta, clear
merge m:1 university_id using institutionsWithGraduatePrograms_2013_2022_21Feb24.dta, gen(research_uni)
keep if research_uni == 3
drop _merge research_uni

//keep data from 2015 onwards
keep if year >= 2015

save mergedInstCoursesAcademicProduction_2009_2022_20Mar24_v5.dta


/////////////////////////////////////////////////////////////////////////////////import scholars dataset
frames reset

//2013
cd "C:\Users\alyss\Dropbox\Capes\Docentes\"
import excel "br-capes-colsucup-docente-2013-2023-08-01", firstrow case(lower) clear
tostring cd_conceito_programa, replace
tostring cd_entidade_capes, replace
tostring cd_entidade_emec, replace
tostring cd_area_basica_titulacao, replace
save "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\scholars_2013_2022_20Mar24_v1.dta", replace

//2014-to-2022

foreach i in "br-capes-colsucup-docente-2014-2023-08-01" "br-capes-colsucup-docente-2015-2023-08-01" "br-capes-colsucup-docente-2016-2021-03-01" "br-capes-colsucup-docente-2017-2021-11-10" "br-capes-colsucup-docente-2018-2021-11-10" "br-capes-colsucup-docente-2019-2021-11-10" "br-capes-colsucup-docente-2020-2021-11-10" "br-capes-colsucup-docente-2021-2023-11-30" "br-capes-colsucup-docente-2022-2023-11-30"{
	import excel `i', firstrow case(lower) clear
	tostring cd_conceito_programa, replace
	tostring cd_entidade_capes, replace
	tostring cd_entidade_emec, replace
	tostring cd_area_basica_titulacao, replace
	save "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\temp_scholar.dta", replace
	
	use "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\scholars_2013_2022_20Mar24_v1.dta",clear
	append using "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\temp_scholar.dta"
	save "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\scholars_2013_2022_20Mar24_v1.dta", replace
}

use "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\scholars_2013_2022_20Mar24_v1.dta", clear

//merge with courses dataset to retrieve de CO_IES (cd_entidade_emec) -- FGV FIRST
merge m:1 cd_programa_ies using "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\lookup_FGV_13Feb24.dta", force
drop if _merge==2
drop _merge
//merge with courses dataset to retrieve de CO_IES (cd_entidade_emec) -- ALL BUT FGV
merge m:1 nm_entidade_ensino using "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\lookupCO_IES_2009_2022_13Feb24.dta", force
//_merge == 1 > FGV
drop if _merge==2
//replace CO_IES if FGV
replace CO_IES = cd_entidade_emec if missing(CO_IES)
drop cd_entidade_emec _merge
rename CO_IES university_id

save "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\scholars_2013_2022_20Mar24_v2.dta", replace


//////// Prepare data for PAPER1 - University level analysis
use "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\scholars_2013_2022_20Mar24_v2.dta", clear

//keep only PhDs (99.2% of the population)
keep if in_doutor == "S"

//calculate age
gen age = an_base - an_nascimento_docente
gen tenure = an_base - an_titulacao

//rename variables
rename id_pessoa qtt_phds
rename an_base year

//deal with errors (age < tenure and negative tenure)
drop if tenure < 0
drop if tenure >= age
drop if an_nascimento_docente == 1900
drop if an_nascimento_docente == 2000
drop if an_titulacao - an_nascimento_docente < 25
drop if university_id == ""
drop if university_id == "."
drop if university_id == "NI"
destring university_id, replace

//generate fields
gen tenure_0_4 = (tenure <= 4)
gen tenure_0_5 = (tenure <= 5)
gen tenure_0_6 = (tenure <= 6)
gen tenure_0_7 = (tenure <= 7)
gen tenure_0_8 = (tenure <= 8)
gen tenure_0_9 = (tenure <= 9)
gen tenure_8_14 = (tenure >= 8 & tenure <= 14)
gen tenure_15_21 = (tenure >= 15 & tenure <= 21)
gen tenure_22_28 = (tenure >= 22 & tenure <= 28)
gen tenure_29_35 = (tenure >= 29 & tenure <= 35)
gen tenure_36plus = (tenure >= 36)

//collapse data by university-year  ////////////////////////////////////////////////////////////////////////////////
collapse (sum) age tenure tenure_0_4 tenure_0_5 tenure_0_6 tenure_0_7 tenure_0_8 tenure_0_9 tenure_8_14 tenure_15_21 tenure_22_28 tenure_29_35 tenure_36plus (count) qtt_phds, by(university_id year)

//generate metrics
gen avg_age = age/qtt_phds
gen avg_tenure = tenure/qtt_phds


save "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\scholars_universityLevel_2013_2022_20Mar24_v2.dta", replace

////merge main dataset with scholars dataset
frames reset
cd "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\"
use mergedInstCoursesAcademicProduction_2009_2022_20Mar24_v5.dta, clear
merge m:1 university_id year using scholars_universityLevel_2013_2022_20Mar24_v2.dta, gen(scholarsCapes)

//327 university-year did not match. Only 30 published papers. All are schools from FGV that I could not find in the CAPES database
keep if scholarsCapes == 3
drop scholarsCapes 

save mergedInstCoursesAcademicProductionScholars_2009_2022_20Mar24_v5.dta, replace




/////////////////////////////////////////////////////////////////////////////// import patents dataset

frames reset

//2013-2016
cd "C:\Users\alyss\Dropbox\Capes\Producao Patente"
import excel "br-capes-colsucup-producao-2013a2016-2017-11-01-tecnica-patente", firstrow case(lower) clear

save "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\patents_2013_2022_20Mar24_v1.dta", replace

//2017-2020
import excel "br-capes-colsucup-producao-2017a2020-2022-06-22-tecnica-patente", firstrow case(lower) clear
save "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\patents_temp.dta", replace

use "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\patents_2013_2022_20Mar24_v1.dta", replace
append using "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\patents_temp.dta"
save "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\patents_2013_2022_20Mar24_v1.dta", replace

//2021-2022
import excel "br-capes-colsucup-producao-2021a2024-2023-10-31-tecnica-patente", firstrow case(lower) clear
save "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\patents_temp.dta", replace

use "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\patents_2013_2022_20Mar24_v1.dta", replace
append using "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\patents_temp.dta"
save "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\patents_2013_2022_20Mar24_v1.dta", replace



//merge with courses dataset to retrieve de CO_IES (cd_entidade_emec) -- FGV FIRST

use "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\patents_2013_2022_20Mar24_v1.dta", clear

merge m:1 cd_programa_ies using "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\lookup_FGV_13Feb24.dta", force
drop if _merge==2
drop _merge
//merge with courses dataset to retrieve de CO_IES (cd_entidade_emec) -- ALL BUT FGV
merge m:1 nm_entidade_ensino using "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\lookupCO_IES_2009_2022_13Feb24.dta", force
//_merge == 1 > FGV
drop if _merge==2
//replace CO_IES if FGV
replace CO_IES = cd_entidade_emec if missing(CO_IES)
drop cd_entidade_emec _merge
rename CO_IES university_id
rename an_base year

///aggregate at university-year level
collapse (count) id_producao_intelectual, by(university_id year)
rename id_producao_intelectual patents
drop if university_id == "NI"
drop if university_id == ""
drop if university_id == "."

destring university_id, replace

save "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\finalPatents_2013_2022_20Mar24_v1.dta", replace


//merge with main dataset
cd "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\"
use mergedInstCoursesAcademicProductionScholars_2009_2022_20Mar24_v5.dta, clear
merge 1:1 university_id year using "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\finalPatents_2013_2022_20Mar24_v1.dta"
//drop patents from non research universities
drop if _merge==2
replace patents = 0 if missing(patents)
drop _merge

save mergedInstCoursesAcademicProductionScholarsPatents_2009_2022_20Mar24_v6, replace

/////////////////////////////////////////////////////////////////////////import published books dataset

frames reset

//2013-2016
cd "C:\Users\alyss\Dropbox\Capes\Producao Livros"
import excel "br-capes-colsucup-producao-2013a2016-2017-11-01-bibliografica-livro", firstrow case(lower) clear

save "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\books_2013_2022_20Mar24_v1.dta", replace

//2017-2020
import excel "br-capes-colsucup-producao-2017a2020-2022-06-22-bibliografica-livro", firstrow case(lower) clear
save "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\livros_temp.dta", replace

use "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\books_2013_2022_20Mar24_v1.dta", replace
append using "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\livros_temp.dta"
save "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\books_2013_2022_20Mar24_v1.dta", replace

//2021-2022
import excel "br-capes-colsucup-producao-2021a2024-2023-10-31-bibliografica-livro", firstrow case(lower) clear
save "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\livros_temp.dta", replace

use "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\books_2013_2022_20Mar24_v1.dta", replace
append using "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\livros_temp.dta"
save "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\books_2013_2022_20Mar24_v1.dta", replace


//merge with courses dataset to retrieve de CO_IES (cd_entidade_emec) -- FGV FIRST
use "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\books_2013_2022_20Mar24_v1.dta", clear
merge m:1 cd_programa_ies using "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\lookup_FGV_13Feb24.dta", force
drop if _merge==2
drop _merge
//merge with courses dataset to retrieve de CO_IES (cd_entidade_emec) -- ALL BUT FGV
merge m:1 nm_entidade_ensino using "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\lookupCO_IES_2009_2022_13Feb24.dta", force
//_merge == 1 > FGV
drop if _merge==2
//replace CO_IES if FGV
replace CO_IES = cd_entidade_emec if missing(CO_IES)
drop cd_entidade_emec _merge
rename CO_IES university_id
rename an_base year

///aggregate at university-year level
collapse (count) id_producao_intelectual, by(university_id year)
rename id_producao_intelectual prod_books
drop if university_id == "NI"
drop if university_id == ""
drop if university_id == "."

destring university_id, replace

save "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\finalBooks_2013_2022_20Mar24_v1.dta", replace	


//merge with main dataset
cd "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\"
use mergedInstCoursesAcademicProductionScholarsPatents_2009_2022_20Mar24_v6.dta, clear
merge 1:1 university_id year using "C:\Users\alyss\Dropbox\Microdados CENSUP and CAPES\Intermediate\finalBooks_2013_2022_20Mar24_v1.dta"
//drop books from non research universities
drop if _merge==2
replace prod_books = 0 if missing(prod_books)
drop _merge

save mergedInstCoursesAcademicProductionScholarsPatentsBooks_2009_2022_20Mar24_v7, replace

# <Analysis has been ommitted>
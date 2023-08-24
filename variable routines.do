***An�lise inicial***
tab1 _all
rename q1_data_resposta data_resp
recode q2_hora_resposta 2=1 1=0
rename q2_hora_resposta turno_resp
rename q3_idade idade
rename q4_uf uf
rename q5_regi�o_pa�s regiao
rename q6_sexo sexo
rename q7_orienta��o_sexual sexual
rename q8_identifica��o_g�nero genero
rename q9_estado_civil civil
rename q10_filhos filho
rename q11_conv�vio convivio1
rename q11a_conv�vio convivio2
rename q12_categoria_profissional prof1
rename q12a_categoria_profissional prof2
rename q13_tempo_de_atua��o temptrab
rename q14_n�mero_v�nculos nvinculos
rename q15_tipo_v�nculo tpvinc1
rename q15a_tipo_v�nculo tpvinc2
rename q16_ambiente_de_trabalho ambtrab1
rename q16a_ambiente_de_trabalho ambtrab2
rename q17_turno turno
rename q18_carga_hor�ria ch
rename q18a_carga_hor�ria ch2
rename q19_renda_mensal renda
rename q20_assist�ncia_covid covid_assis
rename q21_setores_covid covid_setor
rename q22_diagnosticado_covid covid
rename q23_manuten��o_carga_hor�ria covid_ch
rename q24_diagn�stico_tmc tmc
rename q25_tmc_diagnosticado tmc_diag
rename q25a_tmc_diagnosticado tmc_diag2
rename q26_afastamento_tmc tmc_afast
rename q27_causa_afastamento tmc_causa_afast
rename q28_autoavalia��o_sm autoavasm1
rename q28a_autoavalia��o_sm autoavasm2
recode sexo 2=0
recode civil 2=0
recode tmc 2=1 1=0
recode covid 2=1 1=0
xtile idade5=idade, nq (5)
xtile idade4=idade, nq (4)
recode filho 1=0 2=1 3=2
***abaixo sugiro remover categoria 2 = ., pois pode gerar confus�o nas an�lises (2: � t�cnico e enfermeiro ao mesmo tempo)
gen prof3 = prof2
recode prof3 2=.
****************************
gen temptrab2 = temptrab
recode temptrab2 1/2=1 3=2 4=3 5/6=4
gen nvinculos2= nvinculos
recode nvinculos2 1=1 2=2 3/7=3
gen ch3=ch2
recode ch3 1=1 2=2 3/5=3
gen renda2=renda
recode renda2 1/2=1 3/4=2 5/6=3
recode covid_assis 2=1 1=0
recode tmc_afast 2=1 1=0
recode covid_setor 2=1 1=0
recode covid_ch 1=2 2=0 3=1
gen covid_ch2=covid_ch
recode covid_ch2 0/1=0 2=1



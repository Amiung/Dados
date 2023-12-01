# Diretório
#setwd("~/Rafael_Estudo/PUC/CTG/Relatório Agosto/Eólica")
setwd("C:/Users/amiun/OneDrive/Área de Trabalho/Anderson/Doutorado/Ninja_Renewables")

# Pacotes
install.packages("zoo")
install.packages("curl")
install.packages("stringr")
install.packages("dplyr")
install.packages("openxlsx")
{library(curl)
library(stringr)
library(dplyr)
library(zoo)
library(openxlsx)}

# Chamando Funções do Ninja Automator baixadas pra nossa máquina
source('Funções.R')


# Token
#token = 'c6e3b995bb356bbe5ca16f429196b01c62ce64f5' #gmail
#token = '60955b0fa1d089a88174c2c726a258805e2c5228' #uff
#token = 'e58a7c26f790bb2501b61f8f3796950a509d82b6' #hotmail
token = '013463f52ea710be562e4b5267e36776ec339ae7' #amiung@aluno.puc-rio.br
h = new_handle()
handle_setheaders(h, 'Authorization'=paste('Token', token))



# Coordenadas e Parametros
latitude = -13.8606
longitude = -42.65722
altura = 80 
turbina = 'GE+1.6'
Potencia = 30400


# Coleta anual dos dados de Vento
{
  dados1980 <- ninja_get_wind(lat=latitude, lon=longitude, from='1980-01-01', to='1980-12-31', capacity=Potencia, height=altura, turbine=turbina) 
  dados1981 <- ninja_get_wind(lat=latitude, lon=longitude, from='1981-01-01', to='1981-12-31', capacity=Potencia,height=altura, turbine=turbina) 
  dados1982 <- ninja_get_wind(lat=latitude, lon=longitude, from='1982-01-01', to='1982-12-31', capacity=Potencia,height=altura, turbine=turbina) 
  dados1983 <- ninja_get_wind(lat=latitude, lon=longitude, from='1983-01-01', to='1983-12-31', capacity=Potencia,height=altura, turbine=turbina) 
  dados1984 <- ninja_get_wind(lat=latitude, lon=longitude, from='1984-01-01', to='1984-12-31', capacity=Potencia,height=altura, turbine=turbina) 
  dados1985 <- ninja_get_wind(lat=latitude, lon=longitude, from='1985-01-01', to='1985-12-31', capacity=Potencia,height=altura, turbine=turbina) 
  dados1986 <- ninja_get_wind(lat=latitude, lon=longitude, from='1986-01-01', to='1986-12-31', capacity=Potencia,height=altura, turbine=turbina) 
  dados1987 <- ninja_get_wind(lat=latitude, lon=longitude, from='1987-01-01', to='1987-12-31', capacity=Potencia,height=altura, turbine=turbina) 
  dados1988 <- ninja_get_wind(lat=latitude, lon=longitude, from='1988-01-01', to='1988-12-31', capacity=Potencia,height=altura, turbine=turbina) 
  dados1989 <- ninja_get_wind(lat=latitude, lon=longitude, from='1989-01-01', to='1989-12-31', capacity=Potencia,height=altura, turbine=turbina) 
  dados1990 <- ninja_get_wind(lat=latitude, lon=longitude, from='1990-01-01', to='1990-12-31', capacity=Potencia,height=altura, turbine=turbina) 
  dados1991 <- ninja_get_wind(lat=latitude, lon=longitude, from='1991-01-01', to='1991-12-31', capacity=Potencia,height=altura, turbine=turbina) 
  dados1992 <- ninja_get_wind(lat=latitude, lon=longitude, from='1992-01-01', to='1992-12-31', capacity=Potencia,height=altura, turbine=turbina) 
  dados1993 <- ninja_get_wind(lat=latitude, lon=longitude, from='1993-01-01', to='1993-12-31', capacity=Potencia,height=altura, turbine=turbina) 
  dados1994 <- ninja_get_wind(lat=latitude, lon=longitude, from='1994-01-01', to='1994-12-31', capacity=Potencia,height=altura, turbine=turbina) 
  dados1995 <- ninja_get_wind(lat=latitude, lon=longitude, from='1995-01-01', to='1995-12-31', capacity=Potencia,height=altura, turbine=turbina) 
  dados1996 <- ninja_get_wind(lat=latitude, lon=longitude, from='1996-01-01', to='1996-12-31', capacity=Potencia,height=altura, turbine=turbina) 
  dados1997 <- ninja_get_wind(lat=latitude, lon=longitude, from='1997-01-01', to='1997-12-31', capacity=Potencia,height=altura, turbine=turbina) 
  dados1998 <- ninja_get_wind(lat=latitude, lon=longitude, from='1998-01-01', to='1998-12-31', capacity=Potencia,height=altura, turbine=turbina) 
  dados1999 <- ninja_get_wind(lat=latitude, lon=longitude, from='1999-01-01', to='1999-12-31', capacity=Potencia,height=altura, turbine=turbina) 
  dados2000 <- ninja_get_wind(lat=latitude, lon=longitude, from='2000-01-01', to='2000-12-31', capacity=Potencia,height=altura, turbine=turbina) 
  dados2001 <- ninja_get_wind(lat=latitude, lon=longitude, from='2001-01-01', to='2001-12-31', capacity=Potencia,height=altura, turbine=turbina) 
  dados2002 <- ninja_get_wind(lat=latitude, lon=longitude, from='2002-01-01', to='2002-12-31', capacity=Potencia,height=altura, turbine=turbina) 
  dados2003 <- ninja_get_wind(lat=latitude, lon=longitude, from='2003-01-01', to='2003-12-31', capacity=Potencia,height=altura, turbine=turbina) 
  dados2004 <- ninja_get_wind(lat=latitude, lon=longitude, from='2004-01-01', to='2004-12-31', capacity=Potencia,height=altura, turbine=turbina) 
  dados2005 <- ninja_get_wind(lat=latitude, lon=longitude, from='2005-01-01', to='2005-12-31', capacity=Potencia,height=altura, turbine=turbina) 
  dados2006 <- ninja_get_wind(lat=latitude, lon=longitude, from='2006-01-01', to='2006-12-31', capacity=Potencia,height=altura, turbine=turbina) 
  dados2007 <- ninja_get_wind(lat=latitude, lon=longitude, from='2007-01-01', to='2007-12-31', capacity=Potencia,height=altura, turbine=turbina) 
  dados2008 <- ninja_get_wind(lat=latitude, lon=longitude, from='2008-01-01', to='2008-12-31', capacity=Potencia,height=altura, turbine=turbina) 
  dados2009 <- ninja_get_wind(lat=latitude, lon=longitude, from='2009-01-01', to='2009-12-31', capacity=Potencia,height=altura, turbine=turbina) 
  dados2010 <- ninja_get_wind(lat=latitude, lon=longitude, from='2010-01-01', to='2010-12-31', capacity=Potencia,height=altura, turbine=turbina) 
  dados2011 <- ninja_get_wind(lat=latitude, lon=longitude, from='2011-01-01', to='2011-12-31', capacity=Potencia,height=altura, turbine=turbina) 
  dados2012 <- ninja_get_wind(lat=latitude, lon=longitude, from='2012-01-01', to='2012-12-31', capacity=Potencia,height=altura, turbine=turbina) 
  dados2013 <- ninja_get_wind(lat=latitude, lon=longitude, from='2013-01-01', to='2013-12-31', capacity=Potencia,height=altura, turbine=turbina) 
  dados2014 <- ninja_get_wind(lat=latitude, lon=longitude, from='2014-01-01', to='2014-12-31', capacity=Potencia,height=altura, turbine=turbina) 
  dados2015 <- ninja_get_wind(lat=latitude, lon=longitude, from='2015-01-01', to='2015-12-31', capacity=Potencia,height=altura, turbine=turbina) 
  dados2016 <- ninja_get_wind(lat=latitude, lon=longitude, from='2016-01-01', to='2016-12-31', capacity=Potencia,height=altura, turbine=turbina) 
  dados2017 <- ninja_get_wind(lat=latitude, lon=longitude, from='2017-01-01', to='2017-12-31', capacity=Potencia,height=altura, turbine=turbina) 
  dados2018 <- ninja_get_wind(lat=latitude, lon=longitude, from='2018-01-01', to='2018-12-31', capacity=Potencia,height=altura, turbine=turbina) 
  dados2019 <- ninja_get_wind(lat=latitude, lon=longitude, from='2019-01-01', to='2019-12-31', capacity=Potencia,height=altura, turbine=turbina) 
  dados2020 <- ninja_get_wind(lat=latitude, lon=longitude, from='2020-01-01', to='2020-12-31', capacity=Potencia,height=altura, turbine=turbina) 
  dados2021 <- ninja_get_wind(lat=latitude, lon=longitude, from='2021-01-01', to='2021-12-31', capacity=Potencia,height=altura, turbine=turbina) 
  dados2022 <- ninja_get_wind(lat=latitude, lon=longitude, from='2022-01-01', to='2022-12-31', capacity=Potencia,height=altura, turbine=turbina) 
}



# Juntando
dados <- rbind(dados1980,dados1981,dados1982,dados1983,dados1984,dados1985,dados1986,dados1987,dados1988,dados1989,
               dados1990,dados1991,dados1992,dados1993,dados1994,dados1995,dados1996,dados1997,dados1998,dados1999,
               dados2000,dados2001,dados2002,dados2003,dados2004,dados2005,dados2006,dados2007,dados2008,dados2009,
               dados2010,dados2011,dados2012,dados2013,dados2014,dados2015,dados2016,dados2017,dados2018,dados2019,
               dados2020,dados2021,dados2022)

dados_ori <- dados


# Função para Tratamento
# Velocidade do Vento
Tratamento <- function(dados_vel){
  dados <- dados[,c(1,3)]
  dados <- na.omit(dados)
  dados <- rename(dados, Data = colnames(dados)[1])
  dados$Data <- str_sub(dados$Data,end = 7)
  dados <- rename(dados, Vento = colnames(dados)[2])
  dados <- dados %>% group_by(Data) %>% summarise(Vento = mean(Vento,na.rm=T))
  dados$Data <- as.Date(as.yearmon(dados$Data))
  return(dados)
}

# Tratando
dados <- Tratamento(dados)


# Salvando
write.xlsx(dados,"Igapora_Vel.xlsx")

dados <- dados_ori

# Geração
Tratamento <- function(dados){
  dados <- dados[,c(1,2)]
  dados <- na.omit(dados)
  dados <- rename(dados, Data = colnames(dados)[1])
  dados$Data <- str_sub(dados$Data,end = 7)
  dados <- rename(dados, Geração = colnames(dados)[2])
  dados <- dados %>% group_by(Data) %>% summarise(Geração = mean(Geração,na.rm=T))
  dados$Data <- as.Date(as.yearmon(dados$Data))
  return(dados)
}

# Tratando
dados <- Tratamento(dados)


# Salvando
write.xlsx(dados,"Igapora_ger.xlsx")





 


















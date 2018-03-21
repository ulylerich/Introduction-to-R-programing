?str
animals <- c("cat","mouse")
animals <- c(2,3,4,5)
animals <= 4
download.file("https://ndownloader.figshare.com/files/2292169","portal_data_joined.csv")
surveys <- read.csv("portal_data_joined.csv", na.strings = c(""))
#lubridate for modifying date
install.packages("lubridate")
library(lubridate)
my_date <- ymd("2015-02-01")
#working with date using ymd
ymd(paste(surveys$year,surveys$month,surveys$day,sep = "-"))
surveys[("date")] <- ymd(paste(surveys$year,surveys$month,surveys$day,sep = "-"))
str(surveys)
head(surveys,10)
#using tidyverse package
install.packages("tidyverse")
library(tidyverse)
#read fnction under tidyverse
surveys <- readr::read_csv("portal_data_joined.csv")
surveys
dplyr::select(.data = surveys,species_id,weight)
#filter date in the data
dplyr::filter(surveys,year == 1995)
#nested function
select(filter(surveys, year == 1995),species_id,weight)
#similar function to nested
surveys %>%
  filter(year==1995) %>% 
  select(species_id,weight) %>% 
  #filter na from data set
  filter(!is.na(weight))
#example using filter
surveys %>% 
  filter(year<1995) %>% 
  select(year,sex,weight)
#mutate
#convert to g to kg and create new column
surveys %>% 
  mutate(weight_kg = weight/1000,
         weight_log_kg = log(weight_kg))

surveys %>% 
  mutate(hindfoot_half = hindfoot_length/2) %>% 
  select(species_id,hindfoot_half) %>% 
  filter(!is.na(hindfoot_half),hindfoot_half<30) 

surveys
dplyr::n_distinct(surveys$species_id)
#group by() examples and find the mean
surveys %>% 
  filter(!is.na(weight)) %>% 
  group_by(species_id) %>% 
  summarize(ave_weight = mean(weight)
        
surveys %>% 
  group_by(species_id) %>% 
  tally()

survey_gw <-  surveys %>%
  group_by(species_id,plot_id) %>% 
  summarise(ave_weight = mean(weight, na.rm = T))
# filter na from the dataset
survey2 = surveys %>% 
  filter(!is.na(sex),
         !is.na(hindfoot_length),
         !is.na(weight))
sp_count <-  survey2 %>% 
  group_by(species_id) %>% 
  tally() %>% 
  filter(n>50)
# filter species_id from within the sp_count 
survey_complete <- survey2 %>% 
  filter((species_id %in% sp_count$species_id ))

dir.create("data_output")
readr::write_csv(survey_complete,path = "data_output/survey_complete.csv")




  
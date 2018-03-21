surveys_complete = read_csv("data_output/survey_complete.csv")
surveys_complete

#data visualization with ggplot
ggplot(surveys_complete,aes(x = weight, y = hindfoot_length)) + 
  geom_point(alpha = 0.5,aes(color = species_id)) #alpha is used to control transparency

ggplot(surveys_complete,aes(x = species_id, y = hindfoot_length, color = as.factor(plot_id))) + 
  geom_jitter(aplpha = 0.5) +
  geom_boxplot()

# group by with tidyverse package
yearly_count = surveys_complete %>% 
  group_by(year,species_id) %>% 
  tally()

# graph with ggpot
ggplot(yearly_count,aes(x = year, y = n,color = species_id))+
  geom_line() +
  facet_wrap(~species_id) + # use face_wrap to seperate the species in each graph
  theme_bw() + # make background white
  theme(legend.position = "none",axis.text.x = element_text(angle = 60, vjust = 0.5))# remove legend from the graph
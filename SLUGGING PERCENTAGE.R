data <- read.csv("stats (1).csv")

data %>%
  filter(!is.na(slg_percent),
         !is.na(launch_angle_avg),
         !is.na(exit_velocity_avg),
          b_total_pa >=100,
         slg_percent >=.200,
         launch_angle_avg <=30)

## checking data to see how many players have launch angle avg over 30
data_check <- read.csv("stats (1).csv") %>%
  filter(launch_angle_avg > 30)
  view(data_check)

## viewing color options for my charts
display.brewer.all()

data$launch_angle_range <- cut(data$launch_angle_avg, breaks = c(0,5,10,15,20,25,30,Inf))

slugging_by_launch <- aggregate(data$slg_percent, by = list(data$launch_angle_range), FUN = mean)
## Bar chart of Average slugging percentage by launch angle ratio
ggplot(slugging_by_launch, aes(x = Group.1, y = x, fill = Group.1)) +
  geom_bar(stat = "identity") +
  xlab("Launch Angle Range") +
  ylab("Average Slugging Percentage") +
  ggtitle("Average Slugging Percentage by Launch Angle Range") +
  theme(plot.title = element_text(hjust = 0.5))

# Create new variable for exit velocity range
data$exit_velocity_range <- cut(data$exit_velocity_avg, breaks = c(0, 80, 85, 90, 95, 100, 105, 110, Inf))

# Calculate average slugging percentage for each exit velocity range
slugging_by_exit_velocity <- aggregate(data$slg_percent, by = list(data$exit_velocity_range), FUN = mean)

# Create bar chart of average slugging percentage by exit velocity range
ggplot(slugging_by_exit_velocity, aes(x = Group.1, y = x, fill = Group.1)) +
  geom_bar(stat = "identity") +
  xlab("Exit Velocity Range") +
  ylab("Average Slugging Percentage") +
  ggtitle("Average Slugging Percentage by Exit Velocity Range") +
  theme(plot.title = element_text(hjust = 0.5))

## Obviously e have outliers over 30, need to adjust accordingly

## Scatterplot
ggplot(data, aes(x = launch_angle_avg, y = slg_percent)) + 
  geom_point(alpha = 0.5) + 
  labs(x = "Launch Angle",
       y = "Slugging Percentage",
       title = "Relationship between Launch Angle and Slugging Percentage")

data$exit_velocity_range <- cut(data$exit_velocity_avg, breaks = c(0, 80, 85, 90, 95, 100, 105, Inf))
data$launch_angle_range <- cut(data$launch_angle_avg, breaks = c(0,5,10,15,20,25,30,Inf))

# Calculate average slugging percentage for each launch angle range and exit velocity range
slugging_by_launch_exit <- aggregate(data$slg_percent, by = list(data$launch_angle_range, data$exit_velocity_range), FUN = mean)


# Create bar chart of average slugging percentage by launch angle range and exit velocity range
ggplot(slugging_by_launch_exit, aes(x = Group.1, y = x, fill = Group.2)) +
  geom_bar(stat = "identity", position = position_dodge(width = 0.9)) +
  xlab("Launch Angle Range") +
  ylab("Average Slugging Percentage") +
  ggtitle("Average Slugging Percentage by Launch Angle and Exit Velocity Range") +
  theme(plot.title = element_text(hjust = 0.5)) 

    
## Regressions 
SLG <- lm(slg_percent ~ launch_angle_avg + batting_avg +exit_velocity_avg,data=data)
summary(SLG)
## test for multicollinearity - None
vif(SLG)

## Another regression to test most significant hit on slugging pct
Homerun_test <-lm(slg_percent ~ b_single+b_double+b_triple+b_home_run,data=data)
summary(Homerun_test)
## results show homerun is statistically the biggest factor in deciding SLG %


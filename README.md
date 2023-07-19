# SLG
Impact of Launch Angle on Slugging % in the MLB
Launch Angle and Slugging Percentage
Introduction
	In Major League Baseball, data analysis is king. Front offices and team managers are constantly using various statistical analysis techniques to give their team a better chance to win. Since the early 2000’s, teams have put emphasis on the value of slugging percentage as well as on base percentage. In this paper, I will investigate the impact of launch angle on slugging percentage. Why may that be important? Launch angle may be a direct result of a player’s swing mechanics. If launch angle has a positive relationship with slugging percentage, it may be optimal for a player to adjust their swing mechanics to produce a higher average launch angle, thus increasing their slugging percentage. There are already examples of players making major adjustments to their swing and reaping benefits, such as Justin Turner. Slugging percentage is undoubtedly crucial to a team’s success, but the question I want to answer is how important launch angle is to slugging percentage.
Background and Literature Review

	In 2002, members of the Oakland Athletics front office changed the way baseball would be played for the rest of time. Using a data analysis technique called “sabermetrics” at the time, the Athletics immediately began a 20-game win streak, tied for fifth longest to date. While unheard of at the time, data analysis is now used in every inning of Major League Baseball. Since, organizations have long left small ball and moved towards maximizing slugging percentage to win games. The goal of this paper is to analyze the relationship between launch angle and slugging percentage to see if the fly-ball revolution is worthwhile. 

Hakes and Sauer (Hakes and Sauer) evaluate the “Moneyball Hypothesis” and investigate how productive this revolution was. In their studies, they found that 78.7 percent of variation in win percentage can be explained by both team’s slugging percentage. If slugging percentage does indeed decide wins and losses, it adds substantial importance to my study of launch angle’s impact on slugging percentage.

Kato and Yanai (Kato and Yanai) aimed to disprove the theory that hitting fly balls instead of grounders would improve batting statistics in Nippon Professional Baseball. They used official game data on speed, launch angle, batting results, and the in-play batting average and slugging percentage of both ground balls and fly-balls. The data is from the 2019 NPB season on all official games between twelve teams. They used their own equation for in-play batting average as well as slugging percentage. They then used Kolmogorov-Smirnov tests, Mann-Whitney U tests, and t-tests along with other forms of graphical analysis. One of the main findings was that fly balls have a higher in-play slugging percentage than ground balls of the same exit velocity, suggesting the pro-fly ball ideology should be applied to the NPB as it is the MLB.

Lopez and Matthews (Lopez and Matthews) conducted a research analysis paper on slugging percentage, which I used as my dependent variable. Using 9 years of data from the MLB, this paper used multiple regressions analysis to analyze the importance of slugging percentage on a team’s success in the Major League. They first compared slugging and team success, then included multiple control variables such as OBP (on base percentage) and ERA (earned run average). They concluded slugging has a highly positive correlation with team success and should be used by both analysts and scouts. 

Gary Koop's paper, "Comparing the Performance of Baseball Players: A Multiple-Output Approach," (Koop) uses a statistical model that includes slugging percentage to evaluate the performance of baseball players. The model employs a multiple-output approach that enables a more accurate assessment of players. Koop uses the Bayesian vector autoregression model and the hierarchical prior model. They utilize slugging percentage to create a comprehensive evaluation of a player. The analysis of the model suggests that slugging percentage is an essential statistic to consider when evaluating player performance.
Data and Methodology
The data I used was official statcast data for Major League Baseball that can be found at baseballsavant.com. For the purposes of my analysis, I chose to use player batting stats for the completed 2022 MLB season. I then filtered the data to include each player’s name, slugging percentage, batting average, launch angle average, and exit velocity average for the given year. The data set I downloaded I included various other variables, but those named are the only ones I ended up using in my analysis. I then filtered the data to only include players with two hundred at-bats or more, represented by “b_ab” in the data set.


Equations:
Slugging\_Percent=β_1  Launch\_Angle\_AVG

Slugging\_Percent=β_1  Launch\_Angle\_AVG+β_2  Exit\_Velocity\_AVG+β_3  Batting\_AVG+ ε
Slugging\_Percent=β_1  Launch\_Angle\_AVG+β_2  Exit\_Velocity\_AVG+β_3  Batting\_AVG+Exit_sq+ ε

Where Launch_Angle_AVG is defined as how high, in degrees, a ball was hit by a batter.
Exit_Velocity_AVG is defined as how fast, in miles per hour, a ball was hit by a batter.
Batting_Average is defined as the number of hits a batter has divided by their number of at bats.
 Slugging_Percent is defined as a weighted average of a player’s mix of singles, doubles, triples, and home runs.

	The key independent variable is a player’s average launch angle off the bat, making β_1  
the coefficient of interest. Regression (2) will be my equation of focus. Equation (3) allows for the nonlinearity of exit velocity. 
 
Results
	Full summary statistics are shown in Table 2 in the appendix. Table 1 shows all regression outputs. Column 1 shows a linear regression with slugging percentage as the dependent variable and launch angle average as the independent. In column 2, my full regression is shown that includes exit velocity (measured in miles per hour) and batting average as control variables. Column 3 represents column 2, except allowing for non-linearity in the relationship of exit velocity and slugging percentage. It is important to note that our dependent variable slugging percentage is not a percentage in its true form. It is a calculation based on a player’s home runs, triples, doubles, and singles. So, I will not be expressing any changes in the dependent variable as a percent change, though the name of the variable may imply that is the case. No signs of multicollinearity were present in these regressions.

	In column 1, the coefficient .003 represents the increase in slugging percentage for every 1 degree increase in a player’s launch angle average. In column 2, with control variables included, this coefficient increases to .005. For example, in this case, if a player’s average launch angle is 20 degrees, they can expect a slugging percentage .1 higher than a person with a 0-degree launch angle. The .013 coefficient for exit velocity represents a .013 increase in slugging percentage for every mile per hour increase in exit velocity average. The coefficient for batting average, 1.405, is the number we can multiply a player’s batting average by to see the impact on slugging percentage. Launch angle average and exit velocity average were not correlated with batting average. Batting average was used as a control for a player’s skill level by how often they get hits. In the second column, the R-squared of .736 shows that 73.6 percent of variation in slugging percentage can be explained by these three variables. In column 3, allowing for exit velocity to be non-linear increases our R-squared value to .742. Though the coefficient for exit velocity is negative, you must include exit velocity squared to understand the relationship. There is increasing returns to scale for slugging percentage at higher exit velocities, and lower exit velocities will result in a decrease in slugging percentage. I found including other independent variables would put the regression at risk of multicollinearity.

	To ensure this regression equation was accurate enough to draw conclusions from, I tested it against my data set. The equation is as follows:

Slg\_Percent=-1.205
+ .005*Launch\_Angle\_AVG
+.013*Exit\_Velocity\_AVG
+1.405*Batting\_AVG
+ ε
	I tested the accuracy of the equation by taking the mean and minimum from my predicted outcome versus the player’s actual slugging percentage for the year 2022. The results were a mean difference of .026 between a player’s actual slugging percentage and predicted slugging percentage. I deemed this accurate enough to draw conclusions from, while still imperfect and limited due to the variables I focused on.

	In the Table 2 marked in the appendix, the 80-90 miles per hour exit velocity range is in blue, and black represents all exit velocities 90 miles per hour or faster. On the Y-axis is Average Slugging Percentage, and on the X-axis is Launch Angle Ranges represented as 0-5 degrees, 5-10 degrees, 10-15 degrees, and 15 degrees or higher. We see the highest average slugging percentage in the (15,Inf) range, with the higher exit velocity range resulting in a higher slugging percentage.

Conclusion

	I found that launch angle is statistically significant and has a positive relationship with slugging percentage. As the launch angle increases, slugging percentage will increase. My equation shows that for every degree increase in launch angle, slugging percentage will increase by .005. Using exit velocity and batting average as control variables, 74.2 percent of the variation in slugging percentage can be explained. This study was conducted using player averages over the course of a season, so the output suggests an increase of slugging percentage, on average, based on what serves a player best on season’s average. The maximum launch angle in my data set was 25, so I can only suggest launch angle has a positive correlation with slugging percentage to this point. It is reasonable to assume that at a certain point, too high of a launch angle would result in a lower slugging percentage.

Limitations

	If data of launch angle and exit velocity were available on a batted ball basis, it would be more clear what launch angle is ideal for a player. In this study, I investigated what average launch angle would serve a player best over the course of a season. There are many factors in baseball that couldn’t be accounted for. A player’s speed, strength of opponent, field dimensions, weather, pitcher faced, right-hand or left-handed pitcher, swing mechanics, and where a hitter is in the lineup could have an impact on the value of launch angle average’s effect on slugging percentage. Pitch type and speed have a significant impact on a player’s launch angle and exit velocity, and that could not be controlled for. It is within reason to assume some of these components would improve the model.


Appendix


Table 1: Regression Output


	Dependent variable:
	
	slg_percent
	(1)	(2)	(3)

Launch Angle	0.003***	0.005***	0.005***
	(0.001)	(0.0004)	(0.0004)
			
Exit Velocity		0.013***	-0.128***
		(0.001)	(0.048)
			
Exit Velocity Sq			0.001***
			(0.0003)
			
Batting Average		1.405***	1.390***
		(0.064)	(0.063)
			
Constant	0.365***	-1.205***	5.057**
	(0.010)	(0.077)	(2.126)
			

Observations	346	346	346
R2	0.036	0.736	0.742
Adjusted R2	0.033	0.734	0.739
Residual Std. Error	0.066 (df = 344)	0.035 (df = 342)	0.034 (df = 341)
F Statistic	12.895*** (df = 1; 344)	317.684*** (df = 3; 342)	245.789*** (df = 4; 341)

Note:	*p<0.1; **p<0.05; ***p<0.01

 

Table 3: Summary Statistics

Statistic	N	Mean	St. Dev.	Min	Max

slg_percent	346	0.398	0.067	0.241	0.686
launch_angle_avg	346	12.691	4.919	-1.900	25.000
exit_velocity_avg	346	88.687	2.143	82.100	95.900
batting_avg	346	0.245	0.031	0.144	0.326
exit_sq	346	7,869.962	380.495	6,740.410	9,196.8




Works Cited:
“Baseball Savant: Trending MLB Players, Statcast and Visualizations.” Baseballsavant.com, https://baseballsavant.mlb.com/. 
Hakes, Jahn Karl, and Raymond D. Sauer. “An Economic Evaluation of the Moneyball Hypothesis.” SSRN Electronic Journal, 2005, https://doi.org/10.2139/ssrn.618401. 
Kato, Mamiko, and Toshimasa Yanai. “Launch Fly Balls for Better Batting Statistics: Applicability of ‘Fly-Ball Revolution’ to Japan’s Professional Baseball League.” International Journal of Performance Analysis in Sport, vol. 22, no. 3, 2022, pp. 437–453., https://doi.org/10.1080/24748668.2022.2075302. 
Koop, Gary. “Comparing the Performance of Baseball Players.” Journal of the American Statistical Association, vol. 97, no. 459, 2002, pp. 710–720., https://doi.org/10.1198/016214502388618456. 
Lopez, Michael J., and Gregory J. Matthews. "The Importance of Slugging Percentage in the Major Leagues: A Multiple Regression Analysis." Journal of Quantitative Analysis in Sports, vol. 7, no. 3, 2011, article 6.
McBeath, Michael K., et al. “How Baseball Outfielders Determine Where to Run to Catch Fly Balls.” Science, vol. 268, no. 5210, 1995, pp. 569–573., https://doi.org/10.1126/science.7725104
VanDerwerken, Douglas. “Slugging Percentage Is Not a Percentage—and Why That Matters.” The American Statistician, vol. 75, no. 2, 2019, pp. 124–127., https://doi.org/10.1080/00031305.2018.1564698 


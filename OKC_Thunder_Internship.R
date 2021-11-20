# Samuel Warg
# OKC Thunder Data Science & Solutions Technical Assessment

library(tidyverse)

C3 <- subset(shots_data, (x > 22 & y <= 7.8) | (x < -22 & y <= 7.8))
ggplot(C3, aes(x = x, y = y, color = team)) + geom_point() + xlim(-26, 26) + ylim(-4, 30)
# Creates subset containing all shots taken in C3 zone, with a graph to confirm the subset.

NC3 <- subset(shots_data, y > sqrt(abs(23.75^2 - x^2)) & y > 7.8)
ggplot(NC3, aes(x = x, y = y, color = team)) + geom_point() + xlim(-26, 26) + ylim(-4, 30)
# Creates subset containing all shots taken in NC3 zone, with a graph to confirm the subset.

PT2 <- subset(shots_data, (x >= -22 & x <= 22 & y <= sqrt(abs(23.75^2 - x^2))))
ggplot(PT2, aes(x = x, y = y, color = team)) + geom_point() + xlim(-26, 26) + ylim(-4, 30)
# Creates subset containing all shots taken in 2PT zone, with a graph to confirm the subset.

ATotalShots <- nrow(subset(shots_data, team=="Team A"))
BTotalShots <- nrow(subset(shots_data, team=="Team B"))
# Calculates total shots taken by each team.

AShotsPT2 <- nrow(subset(PT2, team=="Team A")) / ATotalShots
AShotsPT2
# Calculates total shots taken by team A in the 2PT zone.

AShotsNC3 <- nrow(subset(NC3, team=="Team A")) / ATotalShots
AShotsNC3
# Calculates total shots taken by team A in the NC3 zone.

AShotsC3 <- nrow(subset(C3, team=="Team A")) / ATotalShots
AShotsC3
# Calculates total shots taken by team A in the C3 zone.

BShotsPT2 <- nrow(subset(PT2, team=="Team B")) / BTotalShots
BShotsPT2
# Calculates total shots taken by team B in the 2PT zone.

BShotsNC3 <- nrow(subset(NC3, team=="Team B")) / BTotalShots
BShotsNC3
# Calculates total shots taken by team B in the NC3 zone.

BShotsC3 <- nrow(subset(C3, team=="Team B")) / BTotalShots
BShotsC3
# Calculates total shots taken by team B in the C3 zone.

A_FGM_PT2 <- nrow(subset(PT2, team=="Team A" & fgmade=="1"))
A_FGM_NC3 <- nrow(subset(NC3, team=="Team A" & fgmade=="1"))
A_FGM_C3 <- nrow(subset(C3, team=="Team A" & fgmade=="1"))
# Calculates FGM by team A in each of the 3 zones.

B_FGM_PT2 <- nrow(subset(PT2, team=="Team B" & fgmade=="1"))
B_FGM_NC3 <- nrow(subset(NC3, team=="Team B" & fgmade=="1"))
B_FGM_C3 <- nrow(subset(C3, team=="Team B" & fgmade=="1"))
# Calculates FGM by team B in each of the 3 zones.

A_FGA_PT2 <- nrow(subset(PT2, team=="Team A"))
A_FGA_NC3 <- nrow(subset(NC3, team=="Team A"))
A_FGA_C3 <- nrow(subset(C3, team=="Team A"))
# Calculates FGA by team A in each of the 3 zones.

B_FGA_PT2 <- nrow(subset(PT2, team=="Team B"))
B_FGA_NC3 <- nrow(subset(NC3, team=="Team B"))
B_FGA_C3 <- nrow(subset(C3, team=="Team B"))
# Calculates FGA by team B in each of the 3 zones.

A_eFG_PT2 <- (A_FGM_PT2 + (0.5*0)) / A_FGA_PT2
A_eFG_PT2  
# Calculates eFG% of team A in the 2PT zone.

A_eFG_NC3 <- (A_FGM_NC3 + (0.5*A_FGM_NC3)) / A_FGA_NC3
A_eFG_NC3  
# Calculates eFG% of team A in the NC3 zone.

A_eFG_C3 <- (A_FGM_C3 + (0.5*A_FGM_C3)) / A_FGA_C3
A_eFG_C3  
# Calculates eFG% of team A in the C3 zone.

B_eFG_PT2 <- (B_FGM_PT2 + (0.5*0)) / B_FGA_PT2
B_eFG_PT2 
# Calculates eFG% of team B in the 2PT zone.

B_eFG_NC3 <- (B_FGM_NC3 + (0.5*0)) / B_FGA_NC3
B_eFG_NC3 
# Calculates eFG% of team B in the NC3 zone.

B_eFG_C3 <- (B_FGM_C3 + (0.5*0)) / B_FGA_C3
B_eFG_C3 
# Calculates eFG% of team B in the C3 zone.

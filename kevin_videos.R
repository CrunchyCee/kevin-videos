## Kevin's like to dislike ratio
# always using signif leve 0.05

# Ho: mu of minecraft dislikes is equal to mu of non-minecraft dislikes
# Ha: mu of minecraft dislikes is greater than mu of non-minecraft dislikes

# all most recent 23 videos (since he started updating again)
likes = c(1672,2237,1210,942,1136,1651,876,820,715,862,785,1338,1470,757,550,
          471,591,960,330,407,871,411,640)
dislikes = c(11,11,6,4,8,3,3,13,2,5,6,4,7,8,2,4,1,1,0,3,13,4,9)
total = likes + dislikes

# most recent minecraft videos
minecraft.likes = c(871,411,640)
minecraft.dislikes = c(13,4,9)
total.minecraft = minecraft.likes + minecraft.dislikes

# most recent non-minecraft videos
else.likes = c(1672,2237,1210,942,1136,1651,876,820,715,862,785,1338,1470,757,550,
               471,591,960,330,407)
else.dislikes = c(11,11,6,4,8,3,3,13,2,5,6,4,7,8,2,4,1,1,0,3)
else.total = else.likes + else.dislikes

# test normality of population
shapiro.test(likes)
shapiro.test(dislikes)
shapiro.test(total)

# F-test for variability between minecraft vs else
var.test(minecraft.likes,else.likes) # equal variance
var.test(minecraft.dislikes,else.dislikes) # equal variance

# t-test to compare groups
t.test(minecraft.likes,else.likes,var.equal=TRUE)
t.test(minecraft.dislikes,else.dislikes,alternative="greater",var.equal=TRUE)

# conclusion: dislikes from minecraft videos are not significantly greater than dislikes
# from all other videos

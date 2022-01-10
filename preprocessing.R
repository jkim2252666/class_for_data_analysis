### Before the next class begins, copy these codes and paste them into your R script. See whether and how they work.
### Note: you will often see # in front of each statement. R will recognize the statement is not a code when it runs into #.
### To see the code results, put your cursor onto your target code.
### and then you can hit "Run" or hit "Enter" holding a control key.

## simple calculation--
1+2
a<-1+2
a+2
b<-3
a+b
log(10) ## the base of log is e, which is Euler's constant. It is called natural log.
log10(10) ## the base is 10.
pi

# Let's assume that there are 4 firms named A, B, C, D and their net incomes are $90, $80, $70, and $100, respectively.
# Plus, each firm spent $4, $4, $2, and $6, respectively for marketing.
# Plus, each firm's stock price is $110, $130, $150, $100
# Make a table that has three variables for firm name, net income, and marketing exp. 

name<-c("A","B","C","D")
ni<-c(90,80,70,100)
exp<-c(4,4,2,6)
stock<-c(110,130,150,100)
ni/exp
round(ni/exp,digits=2)

## graphical analysis
barplot(ni~name)
pie(ni,name)
plot(exp,ni)
abline(lm(ni~exp))

### let's make a table that has four variables of name, net income, marketing exp, and stock price
table<-cbind(name,ni,exp,stock)
str(table)
table<-data.frame(table)
View(table)

## Let's think about major league baseball.
## list names, list home runs, list batting average
## c() here c mean concatenate. So you can make a vector consisting of multipe data.  

name<-c("Marte","Harrison","Freese","Jaso","Cervelli",
        "Polanco","McCutchen","Mercer","Kang")
HR<-c(9,4,13,8,1,22,24,11,21)
AVG<-c(0.311,0.283,0.27,0.268,0.264,0.258,0.256,0.256,0.255)

## combind the three columns into a new table called "pit" (pit stands for pittsburgh)
pit<-cbind(name,HR,AVG)

## display the table in pit
pit

## descriptive statistics
mean(AVG)
median(AVG)
summary(AVG)
fivenum(AVG)
var(AVG)

## correlation
cor(HR,AVG)

## graphical analysis
plot(HR,AVG)
abline(lm(AVG~HR))
pie (HR,labels=name)

## breaking down datum into element
Team_name<-c("Atlanta Braves","Baltimore Orioles","Boston Red Sox")
c<-substr(Team_name,7,9)
c
d<-substr(Team_name,2,nchar(Team_name)-3)
d

## making a table having two variables
player<-c("ZaB-A","XaB-B","SaB-C","TaB-D","UaB-E","KaB-F")
AVG<-c(0.315,0.257,0.266,0.198,0.227,0.305)
e<-data.frame(player,AVG)

## string management: See how player's names change.
gsub("-","",e$player)
gsub("*\\-","",e$player)
gsub(".\\-","",e$player)
gsub("..\\-","",e$player)
gsub("...\\-","",e$player)
gsub(".*\\-","",e$player)

## end ---


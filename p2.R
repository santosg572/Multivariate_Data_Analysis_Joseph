del = .5
x1 = 5
x2 = 10

me = 7.5
sd1 = .5

x = seq(x1, x2, del)

d = dnorm(x, mean=me, sd = sd1)

cat('valores de x: ', x, '\n')
cat('valores de densidad: ', d, '\n')

y = round(3*10*d+3)

cat('valores de conteos: ', y, '\n')

#plot(x, y)

val = 1/(sd1*sqrt(2*pi))

print(val)

#text(me, val, '+')

yy =c()

np1 = length(x)


for (i in 1:np1){
 x1 = x[i]
 nx = y[i]
 xx = rep(x1, nx)
 yy = c(yy, xx)
}


cat('frecuencias credas: ', yy, '\n')

hist(yy, ylim=c(0,30))

points(x, y)


me = mean(yy)
sd1 = sd(yy)

cat ('media frecuencias generadas= ', me, '\n')
cat ('sd frecuencias generadas: ', sd1, '\n')


y0 = dnorm(me, mean=me, sd=sd1)
x = seq(5, 10, .1)

dd = dnorm(x, mean=me, sd=sd1)

print(dd)

yy = y0*sd1*sqrt(2*pi)*dd

points(x, yy, type='l')







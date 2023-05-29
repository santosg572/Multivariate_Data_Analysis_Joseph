datos = read.csv('HBATred.csv', header=T)

print(str(datos))

attach(datos)

print(x6)

x = seq(5,10,.1)

d = dnorm(x, mean(x6), sd(x6))

h = hist(x6, ylim=c(0,20))

suma = sum(h$counts)

val = suma/(sd(x6)*sqrt(2*pi))

points(x, val*d, type='l')





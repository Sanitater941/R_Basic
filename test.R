favorite.season <- c('WINTER','SUMMER','SPRING','SUMMER','SUMMER',
                     'FALL','FALL','SUMMER','SPRING','SPRING','TABLE','ASEIO')
ds <- table(favorite.season)
colors = c('red','green','blue','yellow','white','black')
barplot(ds, main = 'favorite season',col=colors)
pie(ds, main = 'favorite season',col=colors)

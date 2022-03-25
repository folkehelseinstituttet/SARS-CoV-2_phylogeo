#Given a result output, whether if it belongs to a group size that is larger than one.
#Naively calculate the importation weight by the local group size
#E.G: If the group size is 2, then it is +0.5 importations, and +0.5 local transmissions.
#E.G: IF the group size is 30 then it is +1/30 importation and + 29/30 local transmissions


#Load metadata:
library(data.table)
dat1 = fread("~/Dropbox/Covid/metadata_samples/metadata_import_export_2021-02-03.tsv")
dat2 = fread("~/Dropbox/Covid/High_resolution_B.1.1.7_build/nextstrain__metadata.tsv")
sum(Covid19_tree_norway$tip.label %in% dat1$Strain)
length(Covid19_tree_norway$tip.label)
Covid19_tree_norway$tip.label %in% dat2$Strain

importations=c()
local_transmissions=c()
date=c()
for(i in 1:length(norwegian_tips)){
  tip = norwegian_tips[i]
  date_new = decimal_date(dat1$`Collection Data`[which(dat1$Strain==tip)])
  if(length(date_new)==0) next
  print(tip)
  group_no= which(lapply(Result$Taxa_names, FUN=function(x) tip%in%x)==T)
  #group_no = as.numeric(gsub(".*?([0-9]+).*", "\\1", x))
  group_size = Result$Lineage_sizes[group_no]
  importations = c(importations,1/group_size)
  local_transmissions = c(local_transmissions, 1-1/group_size)
  date_new = decimal_date(dat1$`Collection Data`[which(dat1$Strain==tip)])
  date = c(date,date_new)
}

plot(date,importations)
date_sorted = sort.int(date,decreasing = F,index.return = T)
importations_sorted=importations[date_sorted$ix]
local_tranmissions_sorted=local_transmissions[date_sorted$ix]

plot(date_sorted$x,cumsum(importations[date_sorted$ix]))
plot(date_sorted$x,cumsum(local_tranmissions_sorted))

weeks = seq(range(date_sorted$x)[1],range(date_sorted$x)[2], by=1/52)
t1 = table(cut(date_sorted$x, breaks=weeks))

weekly_importations = c()
weekly_local_tranmissions = c()
j = 1
for(i in 1:length(as.numeric(t1))) {
  n = print(as.numeric(t1)[i])
  weekly_importations = c(weekly_importations,sum(importations_sorted[j:(j+n-1)]))
  weekly_local_tranmissions = c(weekly_local_tranmissions,sum(local_tranmissions_sorted[j:(j+n-1)]))
  j = j+n
}

library(ggplot2)
library(viridis)
sum_cases = weekly_importations+weekly_local_tranmissions
data = data.frame(dates = as.Date(date_decimal(c(weeks[-length(weeks)],weeks[-length(weeks)]))),
                  fraction=c(weekly_importations/sum_cases,weekly_local_tranmissions/sum_cases),
                  group=c(rep("Importation",length(weeks[-1])),
                  rep("Local_tranmissions",length(weeks[-1]))))

pdf("~/Dropbox/Covid/Phylogeo/Relative_load_importation_local_transmission.pdf",width=10,height=10)
g1 = ggplot(data=data, aes(x=dates, y=fraction, fill=group)) + 
  geom_area(alpha=0.6 , size=1, colour="black")+
  theme_bw()+scale_fill_brewer(palette="Set1")+
  scale_x_date(date_breaks="2 week")+
  theme(axis.text.x=element_text(angle=60, hjust=1))+
  ylab("#Relative load of importation versus local transmission")+xlab("")
g1
dev.off()

#Load death data for comparison
deaths = read.csv(file = "~/Dropbox/Covid/deaths_total_fhi.txt")
data$dates
diff(deaths$deaths,lag=-1)
deaths_sort=sort.int(decimal_date(as.Date(deaths$date)),index.return = T)
deaths_sort$ix
deaths=deaths[deaths_sort$ix,]

library(gridExtra)
g2 = ggplot()+geom_line(aes(x=as.Date(deaths$date)[-1],y=diff(deaths$deaths)))+
  scale_x_date(date_breaks="2 week")+theme_bw()+theme(axis.text.x=element_text(angle=45, hjust=1))+ylab("Deaths")+xlab("time")
g2

g3=ggplot()+geom_line(aes(x=as.Date(date_decimal(weeks))[-length(weeks)],y=weekly_importations))+
  scale_x_date(date_breaks="2 week")+theme_bw()+theme(axis.text.x=element_text(angle=45, hjust=1))+ylab("Importation")+xlab("time")
g4=ggplot()+geom_line(aes(x=as.Date(date_decimal(weeks))[-length(weeks)],y=weekly_local_tranmissions))+
  scale_x_date(date_breaks="2 week")+theme_bw()+theme(axis.text.x=element_text(angle=45, hjust=1))+ylab("Local Transmission")+xlab("time")

pdf("~/Dropbox/Covid/Phylogeo/Figure_for_comparison.pdf",width=20,height=10)
grid.arrange(grobs=list(g1,g2,g3,g4),layout_matrix=rbind(c(1,1),c(2,2),c(3,4)))
dev.off()

plot(weeks[-length(weeks)],weekly_importations/sum_cases, type="l", ylim=c(0,1))
lines(weeks[-length(weeks)],weekly_local_tranmissions/sum_cases, type="l", col="red")

norwegian_tips[which((norwegian_tips%in%dat1$Strain)==F)]
#listmissing = Covid19_tree_norway$tip.label[(Covid19_tree_norway$tip.label %in% dat1$Strain)==F]

#write.table(listmissing, file="~/Dropbox/Covid/metadata_samples/missing.txt", row.names = F, quote=F)

#Mangler metadata paa disse
norwegian_tips[which((norwegian_tips%in%dat1$Strain)==F)]
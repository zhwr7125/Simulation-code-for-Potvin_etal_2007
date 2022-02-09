theta<-c(1.25,0.95)
cv<-c(10,20,30,40,50,60,70,80,90,100)
sigma<-sqrt(log((cv/100)^2+1))
N1=c(12,24,36,48,60)

#iteration=20
n.sim=2


generate_dat<-function(SS){
  final_dat<-matrix(0,0,ncol=SS+4)
  for (mean in theta){
    for (sd in sigma){
        set.seed(mean*sd*SS)
        dat<-rnorm(n.sim*SS,mean=mean,sd=sd)
        dat<-as.data.frame(matrix(dat,nrow=n.sim))
        dat$theta<-mean
        dat$sigma<-sd
        dat$seed<-mean*sd*SS
        final_dat<-rbind(final_dat,dat)
    }
  }
  return(final_dat)
}

final_dat<-lapply(N1,generate_dat)
names(final_dat)<-paste0("N1_",N1)

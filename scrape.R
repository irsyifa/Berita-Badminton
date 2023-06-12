
#Scraping

remove_space <- function(str){str_replace_all(str, '\\s+', ' ')}
library(rvest)
library(tidyverse)
library(mongolite)

url<-"https://www.bolasport.com/tag/bulu-tangkis"
berita<-read_html(url)


link<-berita %>% html_nodes(".news-list__details") %>% html_nodes("a")
link<-link[seq(2,length(link),2)] %>% html_attr("href")



tabel<-data.frame(judul=0,tanggal=0,penulis=0,editor=0, sumber=0,berita=0,link_berita=0)
for (i in 1:length(link)){
  url1<-read_html(link[i])
  tabel[i,1]<-url1 %>% html_nodes(".read__title") %>% html_text2()
  tabel[i,2]<-url1 %>% html_nodes(".read__time") %>% html_text2()
  tabel[i,3]<-url1 %>% html_node(".read__author") %>% html_text2()
  tabel[i,3]<-gsub("By ","",tabel[i,3])
  tabel[i,3]<-gsub("[[:punct:]]","",tabel[i,3])
  tabel[i,3]<-gsub("[[:space:]]*$","",tabel[i,3])
  tabel[i,4]<-url1 %>% html_node(".artikel_credits")%>% html_table()%>% select(-c(1,2))%>%slice(1)
  tabel[i,5]<-url1 %>% html_node(".artikel_credits")%>% html_table()%>% select(-c(1,2))%>%slice(2)
  tabel[i,6]<-paste(url1%>%html_node(".read__right.read__keyword")%>%html_nodes("p")%>%html_text2()%>%remove_space(),collapse = "")
  tabel[i,7]<-link[i]
}
tabel



tabel<-as.data.frame(tabel)
col_names<-c("Judul Berita","Tanggal | Waktu Terbit","Penulis",'Editor',"Sumber","Berita","Link Berita")
names(tabel)<-col_names
tabel



message("Connect to Mongo Cloud")
atlas <- mongo(
  collection = Sys.getenv("ATLAS_BERITA"),
  db         = Sys.getenv("ATLAS_DB"),
  url        = Sys.getenv("ATLAS_URL")
)


atlas$insert(tabel)

atlas$disconnect()



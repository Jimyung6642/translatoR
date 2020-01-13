# google api
# https://cloud.google.com/translate/docs/quickstart?hl=ko&refresh=1%29%2C
# download json file with api key, install and initialize google cloud sdk
# https://cloud.google.com/sdk/docs/authorizing 
# make service account and authorize

install.packages("googleLanguageR")
install.packages("digest")

library(googleLanguageR)

getwd()

##API setting
GL_AUTH="C:/Users/AJOU_MED/Documents/testtrans/testtrans-4f4bc2c6e289.json"
gl_auth("C:/Users/AJOU_MED/Documents/testtrans/testtrans-4f4bc2c6e289.json")

test <- read.csv("C:/Users/AJOU_MED/Documents/testtrans/test.csv", stringsAsFactors = FALSE)

testDf<-data.frame(conceptSynonym= test$conceptSynonym,
                   transResult=NA
)

# test dataset
x<-testDf[c(1:10),]

x$transResult<-gl_translate(as.character(x$conceptSynonym),
                            target="en",
                            format = c("text"),
                            model = c("base"))


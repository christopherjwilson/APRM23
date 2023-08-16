filenames <- list.files("C:\\Users\\wilso\\Documents\\GitHub\\glossary\\docs\\_defs", full.names = T)

terms <- list.files("C:\\Users\\wilso\\Documents\\GitHub\\glossary\\docs\\_defs")

ldf <- lapply(filenames, readLines)
ldf2<- do.call(rbind.data.frame, ldf)

path <- "C:\\Users\\wilso\\Documents\\GitHub\\glossary\\docs\\_defs"

glossary <- as.data.frame(cbind(terms,ldf2))
colnames(glossary) <- c("term","def")

library(dplyr)

glossary<-glossary %>% mutate(item = paste0(term,": |\n  ",def, "\n"))

write.table(glossary$item, file = "glossary.yml", sep = "",
            row.names = FALSE, col.names = F, quote = FALSE)


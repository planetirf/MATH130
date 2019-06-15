x <- list.files("notes/", pattern='*.Rmd|*.md', full.names=TRUE)

x <- x[!grepl("_notes", x)]

files <- x[c(1,2,4)]

  
for(i in 1:length(files)){
  rmarkdown::render(files[i], output_format=c('html_document', 'pdf_document'))
}


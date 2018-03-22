library(magick); 
library(magrittr)


strFiles = list.files(path = ".", pattern = paste0("*.png"), full.names = TRUE) 
#strFiles = list.files(pattern = paste0("*.png"), full.names = TRUE) 
strFiles

for( strImage in strFiles) {
  img <- image_read(strImage)
  image_info(img) %>% print
  image_write(img, format = "jpeg", quality=100)
 
}
image_convert(manual[1], "png", 8)
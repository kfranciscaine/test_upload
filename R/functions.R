#creer une fonction /donner un nom pour telechrarger un fichier 
download_data <- function () {
  
  dest_fich <- "data/coralfishglobal.csv"
  
  if (  file.exists(dest_fich) ) 
    
    {
    
    
  } 
  
  else {
    
    download.file(url = "https://raw.githubusercontent.com/giovannistrona/fish_coral/master/coralfishglobal.csv",
                  destfile = dest_fich) 
    
       }#f/else 

  }#end of download_data

#creer une fonction de moyenne
moyenne <- function (valeurs) {
  
  somme <- sum(valeurs)
  
  moy <- somme / length(valeurs)
  
  return(moy)
  
  
} #end of moyenne 


#creer une fonction pour nettoyer la donnée ( transformation du donnée brute)
clean_data <- function () {
  
  
  dest_fich <- "data/coralfishglobal.csv"
  
  d <- read.csv(dest_fich)
  
  d_clean <- d[, c("lat", "lon", "cor_diversity", "fish_sp_div")]
  
  names(d_clean)[3] <- c("cor_gen_div")
  
 
  write.csv (d_clean, file = "outputs/clean_data.csv", 
            row.names = FALSE)
  
  
}#end of clean_data


plot_hist <- function (taxon) {
  
  #taxon is "coral" or "fish"
  # taxon <- "coral"
  
  #fichier de destination de donnée clean
  dat_fich <- "outputs/clean_data.csv"
  
  #lire le fichier
  dat <- read.csv(file = dat_fich)
  

  
  #faire histogramme et le sauvegarder dans un fichier png puis le fermer
  if (taxon == "coral") {
    
    png(filename = "outputs/hist_coral.png")
    
    hist(dat$cor_gen_div, 
         main = "Distributions of coral genera number",
         xlab = "")
    

    }#f/taxon coral 
 
   if (taxon == "fish") {
     
    png(filename = "outputs/hist_fish.png")
    
    hist(dat$fish_sp_div, 
         main = "Distributions of fish species number",
         xlab = "") 
    
  
      }#f/taxon coral

  dev.off()
  

} #end of plot_hist


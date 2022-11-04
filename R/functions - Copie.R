#creer une fonction /donner un nom pour telechrarger un fichier 
download_data <- function () {
  
  dest_fich <- "data/coralfishglobal.csv"
  
  if (  file.exists(dest_fish) ) {
    
    
  } else {
    
    download.file(url = "https://raw.githubusercontent.com/giovannistrona/fish_coral/master/coralfishglobal.csv",
                  destfile = dest_fish) 
    
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
  
  write.csv (d_clean, file = "outputs/clean_data.csv", 
            row.names = FALSE)
  
  
}#end of clean_data





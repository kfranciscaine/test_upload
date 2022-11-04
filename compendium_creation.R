#creat directory (répertoire)
dir.create("data")
dir.create("analyses")
dir.create("R")
dir.create("outputs")

#package usethis is to creat  file (pour fabriquer le fichier DESCRIPTION)
install.packages("usethis")

#creat an DESCRITPION file
usethis::use_description(check_name = FALSE)

#install renv and use it to install the dependencies (packages) 
#listed in the DESCRIPTION file
install.packages("renv")

#initiliser renv pour le projet de recherche
#lister les packages dans un fichier renv.lock(JSON)

#renv::init() une seule fois par projet!!!

renv::install()

renv::status()

#ampidirina anaty lockfile
renv::snapshot()

#si je veux transmettre mon environnement de packages
#je transmet mon fichier renv.lock
#' mysaveall
#' @description Cette fonction est creee pour améliorer legerement save.image.
#' elle ajoutera la date d'export au nom du fichier
#' @author Lewis Hounkpevi
#' @param name nom de mon fichier
#' @return sauvegarder une image
#' @examples
#' a <- c("a", "b", "c")
#' b <- c(1, 2, 3)
#' mysaveall()
#' @export

mysaveall <- function(name = "sauvegarde_") {
  save.image(paste(name,  "_", Sys.Date(), ".RData", sep = ""))
}

#' mysave
#'
#' @description Cette fonction est créée pour améliorer légèrement save.
#' elle ajoutera la date d'export au nom du fichier
#' @author  Lewis Hounkpevi
#' @param ... citer des objets R comme dans save
#' @param name nom du fichier Rdata
#' @return sauvegarder le ficher
#' @examples
#' a <- c("a", "b", "c")
#' b <- c(1, 2, 3)
#' mysave(a, b, name = "sauvegarde")
#' @export

mysave <- function (..., name) {

  save (..., file = paste(name, "_", Sys.Date(),  ".RData", sep = "")
        )
}

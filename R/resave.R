


#' resave
#'
#' @param ... les objets à resauvegarder
#' @param list maintenir ce parametre comme tel
#' @param file l'ancienne sauvegarde
#' @importFrom stackoverflow copyEnv
#' @author Stackoverflow
#'
#'
#' @export
#'

#'
#'
resave <- function (..., list = character(), file)
{
    e <- new.env()
    load(file, e)
    list <- union(list, as.character(substitute((...)))[-1L])
    copyEnv(parent.frame(), e, list)
    save(list = ls(e, all.names = TRUE), envir = e, file = file)
}

#' exportxlsx
#' @description Pour exporter un fichier il fallait deux arguments obligatoires
#' Avec cette fonction, il n'en faut plus qu'une : le nom de l'objet.
#' celui ci devient le nom du fichier à la sortie assorti de la date d'export
#' @author Lewis Hounkpevi
#' @param p le nom du ficher à exporter
#' @param sheetName nom de l'onglet
#' @param col.names maintenair le header
#' @param row.names maitenir le row name
#' @import openxlsx
#' @return l'objet exporté
#' @examples
#' a <- iris
#' exportxlsx(a)
#' @export
#'

exportxlsx <- function (p, sheetName = "Feuil1",
                        col.names = T, row.names = F){
  oldOpt <- options()
  Sys.setenv("R_ZIPCMD" = "C:/Rtools/bin/zip.exe")
  options(openxlsx.date.format = "dd/MM/yyyy")
  openxlsx::write.xlsx(p, (paste(deparse(substitute(p)), "_",
                                 Sys.Date(), ".xlsx", sep = "")),
                       sheetName = sheetName,
                       col.names = col.names,
                       row.names = row.names)
}

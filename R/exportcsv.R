#' exportcsv
#' @description Pour exporter un fichier il fallait deux arguments obligatoires
#' Avec cette fonction, il n'en faut plus qu'une : le nom de l'objet.
#' celui ci devient le nom du fichier à la sortie assorti de la date d'export
#' @author Lewis Hounkpevi
#' @param p le fichier à exporter
#' @param append booleen
#' @param quote booleen
#' @param sep separateur
#' @param eol je sais pas
#' @param na les valeurs de na
#' @param dec decimal des nombres
#' @param row.names booleen
#' @param col.names booleen
#' @param qmethod je sais pas
#' @param fileEncoding encoding
#'
#'
#' @return un fichier en csv
#' @examples
#' a <- iris
#' exportcsv(a)
#' @export
#'
#'
exportcsv <- function(p, append = FALSE, quote = TRUE, sep = ";", eol = "\n",

                      na = "NA", dec = ",", row.names = FALSE,
                      col.names = TRUE, qmethod = c("escape", "double"),
                      fileEncoding = "UTF-8") {

  oldOpt <- options()
  options(csv.date.format="dd/MM/yyyy")
  write.table(p, (paste(deparse(substitute(p)), "_",
                        Sys.Date(),
                        ".csv", sep = "")),
              append = append, quote = quote, sep = sep,
              eol = eol, na = na, dec = dec, row.names = row.names,
              col.names = col.names, qmethod = qmethod,
              fileEncoding = fileEncoding)
}

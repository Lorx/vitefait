# Recuperer les anciens packages

# a <- installed.packages()
#
# saveRDS(a, "a.RDS")

# a <- readRDS("a.RDS")

#' Chargement des packages en mettant a jour R
#'
#' @param df la liste des packages a installer. idealement a recuperer avec df <- installed.packages()
#' @importFrom utils install.packages installed.packages write.table
#' @examples
#' df <- installed.packages()
#' chargepackage(df)
#' @export
#'
#'
chargepackage <- function(df) {
NEED <- as.character(df[,1])
inst <- NEED %in% installed.packages()
if(length(NEED[!inst]) > 0) install.packages(NEED[!inst])
}




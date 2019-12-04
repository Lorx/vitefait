#' doublons
#'
#' @description A l'ensemble de la table d'origine, elle crée une variable Nbre_doublons qui
#' précise le nombre de doulons existants pour les variables choisies
#'
#' @param df la table
#' @param ... lister les variables sur lesquelles on cherche les doublons
#' @import dplyr
#'
#' @return la table des doublons avec l'ensemble des observations en doublon
#' @examples
#' df <- flights
#' a <- doublons(df, origin, dest, time_hour)
#' a
#'
#' @export
#'

#'
#'
#'
doublons <- function(df,...) {
 df %>%
  count(...) %>%
  filter(n > 1) %>%
  left_join(df) %>%
  rename(Nbre_doublons = n)
}

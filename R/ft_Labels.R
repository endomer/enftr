#' Asigna etiquetas de datos a las variables especificadas
#'
#' `r lifecycle::badge("experimental")`
#'
#' @param tbl [data.frame]: Conexión a base de datos o dataframe con los datos
#' @param vars [character]: Si especificado, solo se asignaran las etiquetas a esas variables.
#'
#' @return Los datos introducidos en el argumento \code{tbl} pero con etiquetas de datos
#'
#' @details
#'   Esta función permite asignar etiquetas de datos a las variables de un data.frame
#'   o equivalente, a partir del diccionario de la encuesta.
#'
#' @seealso
#'   Etiquetas de datos \code{vignette("labels", package = "endomer")}
#'
#' @export
#'
#' @examples
#' \dontrun{
#'   enft <- data.frame(S2_P8 = c(1, 2))
#'   str(enft)
#'   str(ft_setLabels(enft))
#'}
ft_setLabels <- function(tbl, vars = NULL) {
  endomer::setLabels(tbl, vars, enftr::dict)
}



#' Utiliza las etiquetas de datos de una variable
#'
#' `r lifecycle::badge("experimental")`
#'
#' @param tbl [data.frame]: Conexión a base de datos o dataframe con los datos
#' @param vars [character]: Si especificado, solo se asignaran las etiquetas a esas variables.
#'
#' @return Los datos suministrados en el argumento \code{tbl}, pero en lugar de
#'   valores utilizando las etiquetas de datos correspondientes
#'
#' @seealso
#'   Etiquetas de datos \code{vignette("labels", package = "endomer")}
#'
#' @export
#'
#' @examples
#' \dontrun{
#'   enft <- data.frame(S2_P8 = c(1, 2))
#'   enft
#'   ft_useLabels(enft)
#'}
ft_useLabels <- function(tbl, vars = NULL) {
  endomer::useLabels(tbl, vars, enftr::dict)
}


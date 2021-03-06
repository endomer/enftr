#' Año
#'
#' `r lifecycle::badge("stable")`
#' 
#'   Crea la variable año.
#'
#' @param tbl [data.frame]: Conexión a base de datos o dataframe con los datos
#'
#' @return Los datos suministrados en el input \code{tbl} con la variable \code{ano} 
#'   adicionada.
#'   
#' @export
#'
#' @examples
#'   (enft <- data.frame(EFT_PERIODO = "1/2016"))
#'   ft_compute_ano(enft)
ft_compute_ano <- function(tbl){
  EFT_PERIODO <- NULL
  if(ft_version(tbl) == 2){
    tbl %>% 
      dplyr::mutate(
        ano = stringr::str_sub(EFT_PERIODO, 3, 6)
      )
  }
}
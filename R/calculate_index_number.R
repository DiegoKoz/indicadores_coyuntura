#' función para calcular números índice
#'
#' @param serie vector con la serie
#' @param fecha vector con fechas
#' @param fecha_base período base.
#'
#' @export
#'
generar_indice <- function(serie,fecha, fecha_base){

  valor_base <- serie[which(fecha==fecha_base)]
  (serie/valor_base)
}

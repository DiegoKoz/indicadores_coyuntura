#' Función para leer las tablas de bea
#'
#' @param path el nombre del directorio donde se encuentra la tabla
#'
#' @export


leer_tablas_bea <- function(path){

  read_csv(path,
           col_types = cols(Line = col_skip()),
           skip_empty_rows = T, skip = 4) %>%
    rename(sector = X2) %>%
    mutate_all(.funs = ~na_if(.x,'---')) %>%
    filter(!is.na(sector))
}

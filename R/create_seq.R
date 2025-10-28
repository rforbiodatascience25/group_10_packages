#' Sequence creator
#'
#' Creates a DNA sequence of any specified length
#'
#' @param gene_size The length of the required DNA sequence
#'
#' @returns A DNA sequence of the specified length
#'
#' @export
#' @examples
#' create_seq(50)
create_seq <- function(gene_size){
  nuc_list <- sample(c("A", "T", "G", "C"), size = gene_size, replace = TRUE)
  dna_seq <- paste0(nuc_list, collapse = "")
  return(dna_seq)
 }

#' Translation function
#'
#' @param codons A character vector of RNA codons (each a 3-letter string, e.g., "AUG", "UUU").
#'
#' @returns A character string representing the translated amino acid sequence (one-letter code).
#' @export
translate <- function(codons){
  protein <- paste0(codon_table[codons], collapse = "")
  return(protein)
}

#' Transcription
#'
#'Substitute T with U
#'
#' @param dna_seq dna sequence
#'
#' @returns substitutes T with U in a given dna seq to generate rna seq
#' @export

transcription <- function(dna_seq){
  rna_seq <- gsub("T", "U", dna_seq)
  return(rna_seq)
}

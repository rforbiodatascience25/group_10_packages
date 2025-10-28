#' Transcription
#'
#' Convert a DNA sequence to RNA by replacing thymine (T) with uracil (U).
#'
#' @param dna_seq dna sequence
#'
#' @returns Substitutes T with U in a given dna seq to generate rna seq
#' @export
#' @examples
#' transcription("ATGCTTAGGCTA")

transcription <- function(dna_seq){
  rna_seq <- gsub("T", "U", dna_seq)
  return(rna_seq)
}

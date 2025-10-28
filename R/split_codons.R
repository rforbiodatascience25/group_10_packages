#It splits a DNA or RNA sequence into 3-letter chunks (codons) starting from a chosen position.

#' Split a nucleotide sequence into codons
#'
#' @param sequence A character string representing a DNA or RNA sequence.
#' @param start An integer indicating the starting position (1, 2, or 3) for reading codons. Default is 1.
#'
#' @returns A character vector containing 3-letter codons from the input sequence.
#' @export
#'
#' @examples split_codons("ATGCGATAA")
#' split_codons("AUGCGAUAA", start = 2)


split_codons <- function(sequence, start = 1) {
  n <- nchar(sequence)
  codons <- substring(sequence,
                      first = seq(from = start, to = n - 2, by = 3),
                      last = seq(from = start + 2, to = n, by = 3))
  return(codons)
}

#' Plot aa frenquencies in a seq function
#'
#' @param protein_seq Any protein seq
#' @import ggplot2
#' @import stringr
#'
#' @importFrom ggplot2 ggplot aes geom_col theme_bw theme
#' @importFrom stringr str_split boundary str_count
#' @returns frenquency plot
#' @export

aa_frequencies <- function(protein_seq){
  unique_aa <- protein_seq |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |>
    unique()

  counts <- sapply(unique_aa, function(amino_acid) stringr::str_count(string = protein_seq, pattern =  amino_acid)) |>
    as.data.frame()

  colnames(counts) <- c("Counts")
  counts[["protein_seq"]] <- rownames(counts)

  freq_plot <- counts |>
    ggplot2::ggplot(ggplot2::aes(x = protein_seq, y = Counts, fill = protein_seq)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  return(freq_plot)
}

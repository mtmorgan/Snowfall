#' Start a conversation
#'
#' This function will produce a friendly (or other) greeting, useful in
#' starting conversations.
#'
#' @param who character(1) Name of person to be greeted.
#'
#' @param how character(1) (optional). How is the person to be greeted. Options
#'     include "shout", "whisper", or "asis".
#'
#' @return A character(1) vector containing the appropriate greeting.
#'
#' @examples
#' hi("Martin")
#' \dontrun{
#'     hi("Martin", "whisper")
#' }
#'
#' @export
hi <- function(who, how=c("shout", "whisper", "asis")) {
    stopifnot(is_scalar_character(who))

    how <- match.arg(how)

    fun <- switch(how,
        shout=toupper, whisper=tolower, asis=identity
    )
    paste("hi", fun(who), "how are you?")
}

is_scalar_character <- function(x) {
    is.character(x) && length(x) == 1 &&
        !anyNA(x) && nzchar(x)
}

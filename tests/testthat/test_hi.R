test_that("hi() only accepts appropriate 'who'", {
    expect_equal(hi("Martin"), "hi MARTIN how are you?")
})

test_that("hi() only accepts appropriate 'how'", {
    expect_equal(
        hi("Martin", how="whisper"),
        "hi martin how are you?"
    )
    expect_equal(
        hi("MarTin", how="asis"),
        "hi MarTin how are you?"
    )
    expect_error(hi("Martin", how="loud"))
})

test_that("is_scalar_character works", {
    expect_true(is_scalar_character("foo"))
    expect_false(is_scalar_character(123))
    expect_false(is_scalar_character(c("foo", "bar")))
    expect_false(is_scalar_character(NA_character_))
    expect_false(is_scalar_character(""))
})

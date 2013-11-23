context("test Rucharet")

test_that("Hannanum test", {
          expect_equal(detectEncoding("검색엔진 개발자 모임. 그룹 스터디 하자!"),"UTF-8")
})




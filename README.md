Ruchardet
=========

An R port of http://code.google.com/p/uchardet/ library 

### Install 


```r
library(devtools)

install_github("Ruchardet", "haven-jeon")
```



### Example


```r
library(Ruchardet)
```

```
## Loading required package: Rcpp
## Loading required package: testthat
```

```r

nm <- "전희원입니다"
benc <- detectEncoding(nm)
benc
```

```
## [1] "UTF-8"
```

```r
nme <- iconv(nm, benc, "CP949")
detectEncoding(c(nm, nme))
```

```
## [1] "UTF-8"  "EUC-KR"
```

```r

# detection of unknown file encoding
unknown <- file.path(system.file("tests", package = "Ruchardet"), "shift_jis.txt")
read.table(unknown, fileEncoding = detectFileEncoding(unknown))
```

```
##                                                                                                                   V1
## 1 日本語日本語日本語日本語日本語日本語日本語日本語日本語日本語日本語日本語日本語日本語日本語日本語日本語日本語日本語
```


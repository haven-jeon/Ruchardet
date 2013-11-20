Ruchardet
=========

An R port of http://code.google.com/p/uchardet/ library 

### Install 

```r
library(devtools)

install_github('Ruchardet', 'haven-jeon')
```


### Example

```r
R > library(Ruchardet)
Loading required package: Rcpp
R > getCharEncoding('전희원입니다')
[1] "UTF-8"
R > iconv('전희원입니다. ', 'UTF-8', 'CP949')
[1] "\xc0\xfc\xc8\xf1\xbf\xf8\xc0Դϴ\xd9. "
R > ch <- iconv('전희원입니다. ', 'UTF-8', 'CP949')
R > getCharEncoding(ch)
[1] "EUC-KR"
```


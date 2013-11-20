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
R >  nm <- '전희원입니다'
R > benc <- detectEncoding(nm)
R > benc
[1] "UTF-8"
R > nme <- iconv(nm, benc, "CP949")
R > detectEncoding(c(nm, nme))
[1] "UTF-8"  "EUC-KR"
```


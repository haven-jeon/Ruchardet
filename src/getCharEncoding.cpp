#include <Rcpp.h>
#include <string.h>
#include "uchardet/uchardet.h"


extern "C"  SEXP getCharEncoding(SEXP chars){
  Rcpp::StringVector charssv(chars);
  int inputsize = charssv.size();

  uchardet_t encoding_detector = uchardet_new();
  
  Rcpp::CharacterVector ouputs(inputsize);

  for(int i = 0; i< inputsize; i++){  
    uchardet_handle_data(encoding_detector, charssv[i], strlen(charssv[i]));  
    uchardet_data_end(encoding_detector);
    ouputs[i]  = uchardet_get_charset(encoding_detector);
    uchardet_reset(encoding_detector);
  }
  uchardet_delete(encoding_detector);

  return ouputs;
} 



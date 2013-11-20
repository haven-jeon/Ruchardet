#include <Rcpp.h>
#include <string.h>
#include <uchardet/uchardet.h>

using namespace Rcpp;




//' detect encoding of input string
//' @param str input string
//' @return string of encoding 
//' @references \url{https://code.google.com/p/uchardet/}
// [[Rcpp::export]]
CharacterVector detectEncoding(StringVector str){
  int inputsize = str.size();

  uchardet_t encoding_detector = uchardet_new();
  
  CharacterVector ouputs(inputsize);

  for(int i = 0; i< inputsize; i++){  
    uchardet_handle_data(encoding_detector, str[i], strlen(str[i]));  
    uchardet_data_end(encoding_detector);
    ouputs[i]  = uchardet_get_charset(encoding_detector);
    uchardet_reset(encoding_detector);
  }
  uchardet_delete(encoding_detector);

  return ouputs;
} 



// This file was generated by Rcpp::compileAttributes
// Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

#include <Rcpp.h>

using namespace Rcpp;

// devPPTX_
bool devPPTX_(std::string file, std::string bg_, int width, int height, double offx, double offy, int pointsize, std::string fontname_serif, std::string fontname_sans, std::string fontname_mono, std::string fontname_symbol, bool editable);
RcppExport SEXP ReporteRs_devPPTX_(SEXP fileSEXP, SEXP bg_SEXP, SEXP widthSEXP, SEXP heightSEXP, SEXP offxSEXP, SEXP offySEXP, SEXP pointsizeSEXP, SEXP fontname_serifSEXP, SEXP fontname_sansSEXP, SEXP fontname_monoSEXP, SEXP fontname_symbolSEXP, SEXP editableSEXP) {
BEGIN_RCPP
    Rcpp::RObject __result;
    Rcpp::RNGScope __rngScope;
    Rcpp::traits::input_parameter< std::string >::type file(fileSEXP);
    Rcpp::traits::input_parameter< std::string >::type bg_(bg_SEXP);
    Rcpp::traits::input_parameter< int >::type width(widthSEXP);
    Rcpp::traits::input_parameter< int >::type height(heightSEXP);
    Rcpp::traits::input_parameter< double >::type offx(offxSEXP);
    Rcpp::traits::input_parameter< double >::type offy(offySEXP);
    Rcpp::traits::input_parameter< int >::type pointsize(pointsizeSEXP);
    Rcpp::traits::input_parameter< std::string >::type fontname_serif(fontname_serifSEXP);
    Rcpp::traits::input_parameter< std::string >::type fontname_sans(fontname_sansSEXP);
    Rcpp::traits::input_parameter< std::string >::type fontname_mono(fontname_monoSEXP);
    Rcpp::traits::input_parameter< std::string >::type fontname_symbol(fontname_symbolSEXP);
    Rcpp::traits::input_parameter< bool >::type editable(editableSEXP);
    __result = Rcpp::wrap(devPPTX_(file, bg_, width, height, offx, offy, pointsize, fontname_serif, fontname_sans, fontname_mono, fontname_symbol, editable));
    return __result;
END_RCPP
}

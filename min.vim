" ======================================================================
" File: min.vim
" Author: zyprex
" Description: minify html css js, save 20% size
" Usage: execute command ':so min.vim'
" Last Modified: January 14, 2021
" ======================================================================
"#1 remove space wrap around sentence
%s/\(^\s\+\|\s\+$\)/
"#2 clear /*...*/
while (1)
  try
    /^\s*\/\*/,/^\s*\*\//s/.*
  catch /^Vim\%((\a\+)\)\=:E/ "all vim error
    echo v:exception
    break
  endtry
endwhile
"#3 clear //...
%s/^\/\/.*/
"#4 remove space between symbol
"%s/\s*\(&&\|||\|%\|?\|!\|:\|=\|+\|,\|;\|}\|{\|)\|(\|\]\|\[\)\s*/\1/
%s/" "/SPACESTRINGRP1/
%s/"  "/SPACESTRINGRP2/
%s/\s*\(\W\)\s*/\1/
"#4.1 special case
%s/SPACESTRINGRP1/" "/
%s/SPACESTRINGRP2/"  "/
%s/\(#s\|#l\|#eph\|body\)\*/\1 \*/
%s/and(/and (/
"#5 remove linefeed
%s/\n/

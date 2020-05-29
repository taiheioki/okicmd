#!/usr/bin/env perl
@default_executed_files = ('okicmd.tex');

$log_wrap = 4096;
ensure_path('max_print_line', $log_wrap);

$pdf_mode = 1;
$pdflatex = 'pdflatex -file-line-error -halt-on-error -interaction=nonstopmode -synctex=1 %O %S';

push @generated_exts, '%R-cnltx.code';

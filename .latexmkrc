# 固定使用 XeLaTeX，并将 main.tex 设为默认入口。
$pdf_mode = 5;
$xelatex = 'xelatex -interaction=nonstopmode -halt-on-error %O %S';
@default_files = ('main.tex');

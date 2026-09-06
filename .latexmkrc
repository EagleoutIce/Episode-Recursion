# Build configuration for latexmk (replaces the former sltx setup).
# All LaTeX packages that are not part of TeX Live live in ./lib as git
# submodules, so they have to be visible to kpathsea.
ensure_path('TEXINPUTS', './lib//');

$pdf_mode          = 1;
$pdf_update_method = 1;
$postscript_mode   = 0;
$dvi_mode          = 0;
$max_repeat        = 12;

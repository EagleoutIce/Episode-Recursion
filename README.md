# Episode Recursion

[![made-with-latex](https://img.shields.io/badge/Made%20with-LaTeX-1f425f.svg)](https://www.latex-project.org/) [![generate-slides](https://github.com/EagleoutIce/Episode-Recursion/actions/workflows/compile.yaml/badge.svg)](https://github.com/EagleoutIce/Episode-Recursion/actions/workflows/compile.yaml)

Slides for a minor presentation on recursion in Java :)
* Animated Version ([here](https://media.githubusercontent.com/media/EagleoutIce/Episode-Recursion/gh-pages/rekursion.pdf) or [here](https://github.com/EagleoutIce/Episode-Recursion/blob/gh-pages/rekursion.pdf))
* Not-Animated Version (with enough extra slides to follow the original animations: [here](https://media.githubusercontent.com/media/EagleoutIce/Episode-Recursion/gh-pages/noanim_rekursion.pdf) or [here](https://github.com/EagleoutIce/Episode-Recursion/blob/gh-pages/noanim_rekursion.pdf))

[<img src="https://github.com/EagleoutIce/Episode-Recursion/blob/gh-pages/preview-01.png?raw=true" width="650"/>](https://media.githubusercontent.com/media/EagleoutIce/Episode-Recursion/gh-pages/noanim_rekursion.pdf)

## Building

The presentation no longer relies on `sltx` or the `lithie-util`/LILLY bundle.
All non-CTAN packages are pulled in as git submodules below [`lib`](lib):

| Submodule | Repository | Provides |
| --------- | ---------- | -------- |
| `lib/beamer-themes` | [EagleoutIce/beamer-themes](https://github.com/EagleoutIce/beamer-themes) | the `dividing-lines` beamer theme |
| `lib/color-palettes` | [EagleoutIce/color-palettes](https://github.com/EagleoutIce/color-palettes) | `color-palettes` and `tikz-palettes` |
| `lib/sopra-collection` | [EagleoutIce/sopra-collection](https://github.com/EagleoutIce/sopra-collection) | `sopra-listings` (the `plainjava` listings) |
| `lib/tikzpingus` | [EagleoutIce/tikzpingus](https://github.com/EagleoutIce/tikzpingus) | the penguins |
| `lib/fancyqr` | [EagleoutIce/fancyqr](https://github.com/EagleoutIce/fancyqr) | the qr-code on the outro slide |

Everything else (`algorithm2e`, `biblatex`, `montserrat`, `fontawesome`, …) comes
from a regular TeX Live installation.

```shell
git clone --recurse-submodules https://github.com/EagleoutIce/Episode-Recursion
cd Episode-Recursion
make            # or: latexmk -pdf rekursion.tex
```

[`.latexmkrc`](.latexmkrc) adds `./lib` to `TEXINPUTS`, so the submodule copies
take precedence over any version that may already be installed in TeX Live.

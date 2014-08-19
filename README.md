# Unofficial LaTeX class for European curricula 2013

The eu­ropecv2013 class is an un­of­fi­cial LaTeX im­ple­men­ta­tion of the July 2013 model for cur­ric­ula vi­tae (the "Europass CV") as rec­om­mended by the Euro­pean Com­mis­sion.

## How to install on *nix
```sh
mkdir -p ~/texmf/tex/latex/
cd ~/texmf/tex/latex/
git clone https://github.com/leinardi/europecv2013.git
```

## License
This is a derived work under the terms of the LaTeX project public license (LPPL). It is based on version 2014-06-27 of europecv.cls which is part of the europecv package by Nicola Vitacolonna. A copy of europecv, including the unmodified version of europecv.cls is available  from http://www.ctan.org/tex-archive/macros/latex/contrib/europecv. europecv2013.cls is part of the included archive europecv2013.tar.gz which is released under the LPPL.

## Known issues
* For now it only supports English and Italian languages (I need to find the time to translate the new strings into the other languages).
* "Personal information" should be uppercase. I can't make `\uppercase`, `\MakeUppercase` and `\MakeTextUppercase` to work with strings defined in the .def files.

## TODO
* take a look at `fontawesome`and evaluate its use in place of bitmap images (thanks to @Manuel from tex.stackexchange.com for the suggestion)

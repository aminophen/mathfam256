# mathfam256

LaTeX2e kernel 2015/01/01 increased the upper limit of math alphabets from 16
to 256 for XeTeX/LuaTeX. Also, pLaTeX2e kernel 2016/11/29 introduced the similar
change for e-pTeX/e-upTeX. However, the upper limit for math symbol families
remains unchanged, so only 16 symbol fonts are available.

This package increases the upper limit of math symbols from 16 (LaTeX2e default)
to 256, using `\omath...` primitives. These primitives are originally introduced
in Omega, and are currently available in the followings:

- e-pTeX/e-upTeX (Japanese TeX engine)
- Aleph (successor of Omega)

## Supported formats

The package mathfam256.sty works on the following formats:

- pLaTeX (run on e-pTeX)
- upLaTeX (run on e-upTeX)
- lamed (run on Aleph)

All of these are enabled in TeX Live by default.

## Repository

This package is maintained on GitHub:
  https://github.com/aminophen/mathfam256

## License

To be determined...

## Release Date

$RELEASEDATE

Hironobu Yamashita

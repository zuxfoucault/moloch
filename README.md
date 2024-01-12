## Moloch

Moloch is a simple Beamer theme suitable for anyone to use. It is
a fork of the [Moloch Theme](https://github.com/matze/mtheme).
I created the fork mainly to fix some outstanding issues
to Moloch, since the theme is no longer actively maintained.
I also wanted to simplify some of the code, for instance no longer hard-code
the use of the Fira Sans font and introduce subtitles for frames.

Have a look at the [demo slides][] to see how the theme looks.

## Installation

A CTAN release is planned, but for now you can install the theme manually from source. You need a working LaTeX installation with `l3build` installed. Then just follow these steps:

1. Clone the repository: `git clone https://github.com/jolars/moloch.git`
2. Install the package: `l3build install`

## Usage

The following code shows a minimal example of a Beamer presentation using
Moloch.

```latex
\documentclass{beamer}
\usetheme{moloch}
\title{A minimal example}
\date{\today}
\author{Matthias Vogelgesang}
\institute{Centre for Modern Beamer Themes}
\begin{document}
  \maketitle
  \section{First Section}
  \begin{frame}{First Frame}
    Hello, world!
  \end{frame}
\end{document}
```

## License

The theme itself is licensed under a [Creative Commons Attribution-ShareAlike
4.0 International License](http://creativecommons.org/licenses/by-sa/4.0/). This
means that if you change the theme and re-distribute it, you _must_ retain the
copyright notice header and license it under the same CC-BY-SA license. This
does not affect the presentation that you create with the theme.

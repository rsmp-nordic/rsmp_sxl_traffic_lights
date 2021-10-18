# RSMP Signal Exchange List (SXL) for Traffic Light Controllers
This repository contains the official RSMP SXL for traffic light controllers
and is also used to coordinate the development of the SXL.
The repository is maintained by [RSMP Nordic](https://rsmp-nordic.org)

## SXL

* [View the SXL online](https://rsmp-nordic.org/rsmp_specifications/rsmp_sxl_traffic_lights/1.1)
* [View the SXL as a PDF](https://github.com/rsmp-nordic/rsmp_sxl_traffic_lights/releases/download/1.1/sxl-tlc-1.1.pdf)

## Appendices

Chapter 3 and beyond of the [SXL document](http://rsmp-nordic.org/rsmp_specifications/rsmp_sxl_traffic_lights/1.0.15)
contains all appendices.

Including:

- Chapter 3: Definition of signal groups status (S0001)
- Chapter 4: Traffic counting requirements (S0201-S0208)
- Chapter 5: Coordination between traffic light controllers
- Chapter 6: Examples of all alarms, statuses and commands:

## FAQ

Please see the [faq](faq.md) for frequently asked questions.

## Generating the specification from source

Requirements:

- Sphinx: https://www.sphinx-doc.org
- LaTeX (and pdflatex, and various LaTeX packages)
- Mscgen: http://www.mcternan.me.uk/mscgen/
- Inkscape

On Ubuntu:

```
# apt-get install python3-sphinx texlive texlive-latex-extra \
  texlive-humanities mscgen librsvg2-bin latexmk sphinx \
  python3-sphinx-rtd-theme
# snap install inkscape
```

On Arch:

```
# pacman -S python-sphinx texlive-most texlive-latexextra texlive-humanities \
  inkscape librsvg python-sphinx_rtd_theme
$ git clone https://aur.archlinux.org/mscgen.git
$ cd mscgen; makepkg -sri
```

Then:

```
$ make latexpdf # For generating pdf
$ make html # For generating a hierarchy of html pages
$ make singlehtml # For generating a single html page
```


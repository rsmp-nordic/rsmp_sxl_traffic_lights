# RSMP Signal Exchange List (SXL) for Traffic Light Controllers
This repository contains the official RSMP SXL for traffic light controllers
and is also used to coordinate the development of the SXL.
The repository is maintained by [RSMP Nordic](https://rsmp-nordic.org)

## SXL

The SXL can be viewed here: https://rsmp-nordic.org/specification/#traffic-light-controller-sxl

## Appendices

Chapter 3 and beyond of the contains all appendices.

Including:

- Chapter 3: Definition of signal groups status (S0001)
- Chapter 4: Traffic counting requirements (S0201-S0208)
- Chapter 5: Coordination between traffic light controllers
- Chapter 6: Multiple supervisors
- Chapter 7: Security codes
- Chapter 8: Examples of all alarms, statuses and commands:

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
  python3-sphinx-rtd-theme inkscape
```

Then:

```
$ make latexpdf # For generating pdf
$ make html # For generating a hierarchy of html pages
$ make singlehtml # For generating a single html page
```


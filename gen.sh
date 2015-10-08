export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
rst2html5 --jquery --reveal-js --reveal-js-opts theme=black,transition=convex --pretty-print-code --pretty-print-code-opts langs=clj --stylesheet-path=slides.css missing-python.rst > missing-python-reveal.html

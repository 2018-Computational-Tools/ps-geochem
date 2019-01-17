# tools for active package development

all: index weathering_pset_student_1

index:
	Rscript -e "rmarkdown::render('index.Rmd', output_dir = 'docs')"

weathering_pset_student_1:
	Rscript -e "rmarkdown::render('weathering_pset_student_1.Rmd', output_dir = 'docs')"

# convert RMarkdown files to ipynb:
# run 'make notebooks'
# adjust the name of the python virtual environment as needed
py_venv := class
nb_files := $(patsubst %.Rmd,%.ipynb,$(wildcard *.Rmd))

notebooks: install $(nb_files)

install:
	source activate $(py_venv) && pip install ipyrmd

%.ipynb: %.Rmd
	source activate $(py_venv) && ipyrmd $<
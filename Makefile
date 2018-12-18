# tools for active package development

all: index weathering_pset_student_1

index:
	Rscript -e "rmarkdown::render('index.Rmd', output_dir = 'docs')"

weathering_pset_student_1:
	Rscript -e "rmarkdown::render('weathering_pset_student_1.Rmd', output_dir = 'docs')"
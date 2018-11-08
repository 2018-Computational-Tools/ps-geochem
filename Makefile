# tools for active package development

all: index weathering_pset

index:
	Rscript -e "rmarkdown::render('index.Rmd', output_dir = 'docs')"

weathering_pset:
	Rscript -e "rmarkdown::render('weathering_pset.Rmd', output_dir = 'docs')"
################################################################################
#Startup

library(ape)
library(phytools)
library(Rphylopars)

phylo <- read.tree(file = "./TT5b2_phylogeny_for_complexity_reconstruction.nwk")

comp_data <- read.csv(file = "./TT4b2_Phylopars_input.csv", row.names = 1)

######################################################
#Impute Missing Tips

Imputed <- phylopars(trait_data = comp_data, tree = phylo, pheno_error = TRUE, phylo_correlated = FALSE, pheno_correlated = TRUE)

######################################################``
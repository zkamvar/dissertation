**Function**        **Description**
------------------- ----------------------------------------------------------------------------------------------------------
**Import/Export**   
`getfile`           Provides a quick GUI to grab files for import
`read.genalex`      Read *GenAlEx* formatted csv files to a genind object
`genind2genalex`    Converts genind objects to *GenAlEx* formatted csv files
**Manipulation**    
`missingno`         Handles missing data
`clonecorrect`      Clone censors at a specified population hierarchy
`informloci`        Detects and removes phylogenetically uninformative loci.
`popsub`            Subsets genind objects by population
`shufflepop`        Shuffles genotypes at each locus using four different shuffling algorithms (details in table \@ref(tab:poppr3))
`splitcombine`      Manipulates population hierarchy
**Analysis**        
`bruvo.boot`        Produces dendrograms with bootstrap support based on Bruvo's distance
`bruvo.dist`        Calculates Bruvo's distance
`diss.dist`         Calculates the percent allelic dissimilarity
`ia`                Calculates the index of association
`mlg`               Calculates the number of multilocus genotypes
`mlg.crosspop`      Finds all multilocus genotypes that cross populations
`mlg.table`         Returns a table of populations by multilocus genotypes
`mlg.vector`        Returns a vector of a numeric multilocus genotype assignment for each individual
`poppr`             Returns a diversity table by population
`poppr.all`         Returns a diversity table by population for all compatible files specified
**Visualization**   
`greycurve`         Helper to determine the appropriate parameters for adjusting the grey level for msn functions
`bruvo.msn`         Produces minimum spanning networks based off Bruvo's distance colored by population
`poppr.msn`         Produces a minimum spanning network for any pairwise distance matrix related to the data

Table: (\#tab:poppr1) List of functions found in *poppr* and short descriptions.

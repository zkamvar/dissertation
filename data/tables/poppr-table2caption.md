Summary table shown as it would appear in the R console
produced by the `poppr()` function with 999 permutations to calculate $I_A$ and
$\bar{r}_d$ p-values from the `Aeut` data set in \textit{poppr} from
[@grunwald2003analysis]. `N`: census size, `MLG`: multilocus genotypes, `eMLG`:
expected MLG based on rarefaction, `SE`: standard error from rarefaction, `H`:
Shannon-Wiener Index, `G`: Stoddart and Taylor's Index, `Hexp`: Nei 1978
Expected Heterozygosity, `E.5`: Evenness ($E_5$), `Ia`: $I_A$, `p.Ia`: p-value
for $I_A$, `rbarD`: $\bar{r}_d$, `p.rD`: p-value for $\bar{r}_d$. Table was
obtained with the following code: `library(poppr); data(Aeut); poppr(Aeut,
sample = 999)`.

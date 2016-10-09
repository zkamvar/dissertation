  -------------- ------- ------- ---------- --------- --------- ---------- --------- --------- ---------- --------- --------- ---------
       Pop          N     MLG       eMLG       SE         H         G        Hexp       E.5        Ia       p.Ia     rbarD      p.rD 
      Athena       97     70       65.981     1.246     4.063     42.193     0.986     0.721     2.906      0.001    0.072      0.001 
   "Mt. Vernon"    90     50       50.000     0.000     3.668     28.723     0.976     0.726     13.302     0.001    0.282      0.001 
      Total        187    119      68.453     2.989     4.558     68.972     0.991     0.720     14.371     0.001    0.271      0.001 
  -------------- ------- ------- ---------- --------- --------- ---------- --------- --------- ---------- --------- --------- ---------

  Table: (\#tab:poppr2) Summary table shown as it would appear in the R
  console produced by the  poppr()  function with 999 permutations to
  calculate $I_A$ and $\bar{r}_d$ p-values from the  Aeut  data set in
  \textit{poppr} from [@Grunwald:2003]. `N`: census size, `MLG`:
  multilocus genotypes, `eMLG`: expected MLG based on rarefaction, `SE`:
  standard error from rarefaction, `H`: Shannon-Wiener Index, `G`:
  Stoddart and Taylor’s Index, `Hexp`: Nei 1978 Expected Heterozygosity,
  `E.5`: Evenness ($E_5$), `Ia`: $I_A$, `p.Ia`: p-value for $I_A$,
  `rbarD`: $\bar{r}_d$, `p.rD`: p-value for $\bar{r}_d$. Table was
  obtained with the following code:
  `library(poppr); data(Aeut); poppr(Aeut, sample = 999)`.


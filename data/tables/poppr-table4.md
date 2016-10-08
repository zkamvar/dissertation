  Method/Index                                              Citation                                Function(s) in *poppr*
  ---------------------------- ------------------------------------------------------------------ ------------------------
  Expected MLG (rarefaction)     [@hurlbert1971nonconcept], [@heck1975explicit] (for std. err.)                  `poppr()`
  $H$                                              [@shannon2001mathematical]                                    `poppr()`
  $G$                                               [@stoddart1988genotypic]                                     `poppr()`
  $H_{exp}$                                               [@Nei:1978]                                            `poppr()`
  $E_{5}$                       [@Grunwald:2006; @pielou1975ecological; @ludwig1988statistical]                  `poppr()`
  $I_A$/$\bar{r}_d$             [@Brown:1980; @Smith:1993] ($I_A$), [@Agapow:2001] ($\bar{r}_d$)                    `ia()`
                                                                                                                 `poppr()`
  Clone correction                [@milgroom1996recombination; @Grunwald:2003; @Grunwald:2006]            `clonecorrect()`
                                                                                                                 `poppr()`
  Minimum Spanning Networks                                [@igraph]                                         `poppr.msn()`
                                                                                                             `bruvo.msn()`
  Bruvo's Distance                                       [@Bruvo:2004]                                      `bruvo.dist()`
                                                                                                             `bruvo.msn()`
                                                                                                            `bruvo.boot()`
  Bootstrapping                                              [@ape]                                         `bruvo.boot()`
  Neighbor Joining                                           [@ape]                                         `bruvo.boot()`
  UPGMA                                                   [@phangorn]                                       `bruvo.boot()`


Table: (\#tab:poppr4) Citation of methods and indices implemented in *poppr*
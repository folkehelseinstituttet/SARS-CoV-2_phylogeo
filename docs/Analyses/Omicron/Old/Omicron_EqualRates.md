SARS-CoV-2 Omicron variant: All samples equal - rates in/out Norway
================
20/12/2021

Phylogeographic mapping

The analyses take a dated phylogeny exported from NextStrain as a
starting point for quantifying imports and local transmission of
Sars-CoV-2 Omicron variant in Norway. Each isolate is assigned to one of
two binary categories: “Norway” or “Rest of the world (RoW)”. The output
is presented in Fig.1 and ancestral character estimation performed on
the dated phylogeny.

![Test](Omicron_EqualRates_files/figure-gfm/unnamed-chunk-1-1.png)

##### Fig. 1. Omicron phylogeny colored by binary geographic mappings (Norway, rest of the world \[RoW\]).

Quantifying introductions and local transmission

Below is a visualization of the size of each transmission lineage
detected in Norway.

![](Omicron_EqualRates_files/figure-gfm/unnamed-chunk-2-1.png)<!-- -->

##### Fig. 2. Omicron transmission lineage sizes in Norway. G denotes the number assigned to each lineage, S denotes the size of the lineage and TMRCA denotes the age of the lineage.

##### Table 1. Estimated number of infections in Norway resulting from import and local transmission based on the phylogeographic analyses in Figure 1.

|                    |    2.5% |     50% |   97.5% |
|:-------------------|--------:|--------:|--------:|
| Import             | 19.0000 | 20.5000 | 21.0000 |
| Local transmission | 34.0000 | 34.5000 | 36.0000 |
| Import / Total     |  0.3455 |  0.3727 |  0.3818 |

Next, we estimate the fraction of introductions relative to local
transmission over time. In these and subsequent analyses it is important
to keep detection lag into account (see
<https://science.sciencemag.org/content/371/6530/708>). There will
always be a delay between the introduction and detection, which varies
from case to case. In the figures below, the last four weeks prior to
the time of sampling of the most recent included isolate is shaded to
indicate that estimates in this period is highly uncertain.

![](Omicron_EqualRates_files/figure-gfm/unnamed-chunk-5-1.png)<!-- -->

##### Fig. 3. Relative quantification of infection source (new introduction / import vs local transmission). Grey shading indicates that inferences in this period (last 4 weeks) are uncertain due to detection lag.

The same output is visualized as absolute numbers in Fig. 3 below. It
should be noted that absolute estimates will be significantly shaped by
sampling density.

![](Omicron_EqualRates_files/figure-gfm/unnamed-chunk-7-1.png)<!-- -->

##### Fig. 4. Absolute quantification of imports and local transmission events. Grey shading indicates that inferences in this period (last 4 weeks) are uncertain due to detection lag.

Perhaps the most interesting aspect of quantifying introductions, is to
investigate the fate of the introduced viruses. Mandatory testing at the
border and/or mandatory quaranteens etc will obviously have a bearing on
the fate of new introductions from abroad. The plot below visualizes the
number of infections in Norway resulting from each identified virus
import event over time, stratified by inferred TMRCA of each introduced
lineage.

![](Omicron_EqualRates_files/figure-gfm/unnamed-chunk-8-1.png)<!-- -->

##### Fig. 5. Transmission lineage sizes as a function of time of introduction. “TMRCA” = time of most recent common ancestor. Grey shading indicates that inferences in this period (last 4 weeks) are uncertain due to detection lag.

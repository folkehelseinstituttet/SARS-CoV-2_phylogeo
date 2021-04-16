Results - B.1.1.7, “UK variant”
================
14/8/2021

Phylogeographic mapping

The analyses take a dated phylogeny exported from NextStrain as a
starting point for quantifying imports and local transmission of
Sars-CoV-2 B.1.1.7 in Norway. Each isolate is assigned to one of two
binary categories: “Norway” or “Rest of the world (RoW)”. The output is
presented in Fig.1 and ancestral character estimation performed on the
dated phylogeny.

![Test](UK_results_files/figure-gfm/unnamed-chunk-1-1.png)

##### Fig. 1. B.1.1.7 phylogeny colored by binary geographic mappings (Norway, rest of the world \[RoW\]).

Quantifying introductions and local transmission

##### Table 1. Estimated number of infections in Norway resulting from import and local transmission based on the phylogeographic analyses in Figure 1.

|                    |     2.5% |       50% |     97.5% |
|:-------------------|---------:|----------:|----------:|
| Import             |  213.000 |  215.0000 |  219.6000 |
| Local transmission | 1406.400 | 1411.0000 | 1413.0000 |
| Import / Total     |    0.131 |    0.1322 |    0.1351 |

Next, we estimate the fraction of introductions relative to local
transmission over time. In these and subsequent analyses it is important
to keep detection lag into account (see
<https://science.sciencemag.org/content/371/6530/708>). There will
always be a delay between the introduction and detection, which varies
from case to case. In the figures below, the last four weeks prior to
the time of sampling of the most recent included isolate is shaded to
indicate that estimates in this period is highly uncertain.

![](UK_results_files/figure-gfm/unnamed-chunk-5-1.png)<!-- -->

##### Fig. 2. Relative quantification of infection source (new introduction / import vs local transmission).

The same output is visualized as absolute numbers in Fig. 3 below. It
should be noted that absolute estimates will be significantly shaped by
sampling density.

![](UK_results_files/figure-gfm/unnamed-chunk-7-1.png)<!-- -->

##### Fig. 3. Absolute quantification of imports and local transmission events.

Perhaps the most interesting aspect of quantifying introductions, is to
investigate the fate of individual inferred imports. Mandatory testing
at the border and/or mandatory quaranteens etc will obviously have a
bearing on the fate of newly introduced infections from abroad. The plot
below visualizes the number of infections in Norway resulting from each
individual import over time, stratified by inferred TMRCA of each
introduced lineage.

![](UK_results_files/figure-gfm/unnamed-chunk-8-1.png)<!-- -->

##### Fig. 4. Transmission lineage sizes as a function of time of introduction. “TMRCA” = time of most recent common ancestor.

# SARS-CoV-2 - analyser av importer og lokal transmisjon av varianter av særlig interesse

## Bakgrunn & metoder

Utgangspunktet for alle analysene er daterte trær eksportert fra NextStrain, offentlig tilgjengelig her: https://nextstrain.org/groups/niph/ncov/

For hver av virusvariantene inkluderer disse analysene til en hver tid alle norske sekvenserte genomer som har blitt lastet opp til GISAID, samt et større antall sekvenser fra resten av verden for å kontekstualisere de norske sekvensene. I praksis tar det et par uker fra en prøve flagger positivt til den er sekvensert og ligger på GISAID, så det vil alltid være en viss forsinkelse i analysene i forhold til øyeblikksbildet akkurat nå. 

Målet med analysene presentert her er å gjennomføre formelle fylogeografiske analyser og deretter formelt oppsummere resultatene fra disse. Analysene er informative mtp trender over noe lengre tid og kan være nyttige for eksempel for å estimere effekten av tiltak relatert til reiserestriksjoner, grensekontroll og reisekaranteneregler. 

Da sekvenseringsaktiviteten er ekstremt varierende fra land til land i Europa og resten av verden bruker vi kun to geografiske kategorier: “Norge” og “resten av verden”. Det vil alltid være er en forsinkelse (“detection lag”) fra en import til denne smitter videre og/eller detekteres. I tillegg, som nevnt over, tar det noe tid fra en prøve blir registrert som positiv til den er sekvensert og inkorporert i analysene. Derfor er tallfesting av importer og lokal transmisjon i den siste fire-ukers perioden av analysene ikke pålitelig, og skravert i grått i figurene som inngår i rapportene her.

Konseptuelt kan de fylogeografiske metodene best forstås som at man tilegner geografisk lokasjon til alle noder og tupper treet. Tuppene er kjent, da disse representerer faktisk isolater med kjent lokasjon. Basert på geografisk opprinnelse til alle enkeltisolater, genetiske distanser og tidsinformasjon kodet i treet, samt den underliggende modellen, avleder algoritmen om noder (noder tilsvarer infererte, ikke-observerte “forfedre”) bakover i treet tilhører den ene eller andre geografiske kategorien. I praksis her, om disse eksisterte i Norge eller utenfor Norge. Om vi for eksempel har et isolat fra Norge, så vil dette bli inferert som en import hvis den umiddelbare noden (ikke observert) oppstrøms i treet er inferert å ha eksistert utenfor Norge. Om oppstrømsnoden også blir inferert å ha eksistert i Norge, vil isolatet være et resultat av smitte i Norge.

## ANALYSENE ER I HOVEDSAK INFORMATIVE FOR Å FÅ ET OVERBLIKK OVER ENDRINGER I IMPORTMØNSTRE OVER TID, OG ER DÅRLIG EGNET FOR Å TREKKE KONKLUSJONER OM ENKELTIMPORTER OG TIDSPUNKTET FOR DISSE. SPESIELT I TIDLIG FASE AV EN VARIANT-BØLGE KAN ROBUSTHET VÆRE BEGRENSET DA DET ER LITE DATA OG LITE DIVERGENS MELLOM OBSERVERTE SEKVENSER.

## Fra og med 13 desember 2021 oppdateres analyser av Delta og Omicron.

## Analyse av Delta variant
https://github.com/folkehelseinstituttet/SARS-CoV-2_phylogeo/blob/main/Delta_equal_rates.md

## Analyse av Omicron variant (obs, som følge av lite data og divergens, bør infererte importhendelser tolkes med forsiktighet)
https://github.com/folkehelseinstituttet/SARS-CoV-2_phylogeo/blob/main/Omicron_EqualRates.md



## ytterligere kontekst

For Delta varianten har vi tidligere antatt at at raten av import til Norge er 3x høyere enn eksport ut av Norge. Dette var basert på følgende: Skandinavia og Europa er regionene som er tettest knyttet til Norge når det gjelder reisevirksomhet. Europa har hatt ca 10x flere dødsfall per innbygger enn vi har hatt i Norge gjennom pandemien, inkludert siste 2 uker (per 26.08.2021), se https://github.com/folkehelseinstituttet/SARS-CoV-2_phylogeo/blob/main/Europe_deaths_prev14days_2021-08-26.csv. Skandinavia som helhet har hatt ca 1.3x flere dødsfall enn Norge alene sise 2 uker. Antall dødsfall per innbygger fra Covid-19 kan antas å korrelere sterkt med smittetrykk. Basert på tallene i Europa som helhet og Skandinavia, har vi i våre modeller gjort den forenklede antagelsen at importraten av Delta virus er 3x høyere inn til Norge enn eksportraten ut. For mange deler av verden er det reelle smittetrykket ukjent. Vi har derfor brukt 3x estimatet (basert på tall fra Europa og Skandinavia) for hele verden (RoW). 

Fra og med desember 2021, antar vi at byrden av Delta virus er relativt lik i Norge og landene vi er tettest knyttet til i form av reiseaktivitet. I analysene settes derfor importrate lik eksportrate. I praksis ser vi at endring av disse forutsetningene har begrenset effekt på estimatene.

For Omicron som per nå er i tidlig fase og i større grad importdrevet er det mer uklart hva som er riktig parametrisering her. Per nå settes importrate til å være 3x eksportrate.




###

### ELDRE ANALYSER (OPPDATERES IKKE):


Vi har lagt følgende forenklende antagelse til grunn for dise analyser:

For B.1.1.7 (Alpha variant) har vi antatt at at raten av import til Norge er 10x høyere enn eksport ut av Norge. Dette er basert på følgende: Europa er den regionen som er tettest knyttet til Norge når det gjelder reisevirksomhet. Europa har hatt ca 10x flere dødsfall per innbygger enn vi har hatt i Norge gjennom pandemien. Vi antar derfor at smittetrykk/insidens har vært 10x høyere i resten av Europa enn i Norge, noe som igjen kan antas å føre til at reisende til Norge fra Europa har hatt 10x høyere sannsynlighet for å være smittet med SARS-CoV-2 enn reisende motsatt vei. For enkelte andre deler av verden er det reelle smittetrykket ukjent. Vi har derfor gjort den forenklede antagelsen at smittetrykket i resten av verden tilsvarer Europa. For B.1.351 (Beta variant) er transisjonsrate estimert direkte fra dataene.


## Analyse av B.1.1.7 Alpha variant
https://github.com/folkehelseinstituttet/SARS-CoV-2_phylogeo/blob/main/UK_results.md

## Analyse av B.1.351 Beta variant
https://github.com/folkehelseinstituttet/SARS-CoV-2_phylogeo/blob/main/Southafrican_results.md

## Komparativ analyse av B.1.1.7 (Alpha variant) og B.1.617.2 (Delta variant)
https://github.com/folkehelseinstituttet/SARS-CoV-2_phylogeo/blob/main/alpha_vs_delta.md


## Delta analyser der importrate er satt til å være 5x høyere enn eksportrate ligger her:
https://github.com/folkehelseinstituttet/SARS-CoV-2_phylogeo/blob/main/Delta_5x_in_vs_out.md
https://github.com/folkehelseinstituttet/SARS-CoV-2_phylogeo/blob/main/Delta_lineage_sizes_5xFixedRateIn.txt


# SARS-CoV-2 - analyser av importer og lokal transmisjon av varianter av særlig interesse

## Bakgrunn & metoder

Utgangspunktet for alle analysene er daterte trær eksportert fra NextStrain, offentlig tilgjengelig her: https://nextstrain.org/groups/niph/ncov/

For hver av virusvariantene inkluderer disse analysene til en hver tid alle norske sekvenserte genomer som har blitt lastet opp til GISAID, samt et større antall sekvenser fra resten av verden for å kontekstualisere de norske sekvensene. I praksis tar det et par uker fra en prøve flagger positivt til den er sekvensert og ligger på GISAID, så det vil alltid være en viss forsinkelse i analysene i forhold til øyeblikksbildet akkurat nå. 

Målet med analysene presentert her er å gjennomføre formelle fylogeografiske analyser og deretter formelt oppsummere resultatene fra disse. Analysene er informative mtp trender over noe lengre tid og kan være nyttige for eksempel for å estimere effekten av tiltak relatert til reiserestriksjoner, grensekontroll og reisekaranteneregler. 

Da sekvenseringsaktiviteten er ekstremt varierende fra land til land i Europa og resten av verden bruker vi kun to geografiske kategorier: “Norge” og “resten av verden”. Det vil alltid være er en forsinkelse (“detection lag”) fra en import til denne smitter videre og/eller detekteres. I tillegg, som nevnt over, tar det noe tid fra en prøve blir registrert som positiv til den er sekvensert og inkorporert i analysene. Derfor er tallfesting av importer og lokal transmisjon i den siste fire-ukers perioden av analysene ikke pålitelig, og skravert i grått i figurene som inngår i rapportene her.

Konseptuelt kan de fylogeografiske metodene best forstås som at man tilegner geografisk lokasjon til alle noder og tupper treet. Tuppene er kjent, da disse representerer faktisk isolater med kjent lokasjon. Basert på geografisk opprinnelse til alle enkeltisolater, genetiske distanser og tidsinformasjon kodet i treet, samt den underliggende modellen, avleder algoritmen om noder (noder tilsvarer infererte, ikke-observerte “forfedre”) bakover i treet tilhører den ene eller andre geografiske kategorien. I praksis her, om disse eksisterte i Norge eller utenfor Norge. Om vi for eksempel har et isolat fra Norge, så vil dette bli inferert som en import hvis den umiddelbare noden (ikke observert) oppstrøms i treet er inferert å ha eksistert utenfor Norge. Om oppstrømsnoden også blir inferert å ha eksistert i Norge, vil isolatet være et resultat av smitte i Norge.

Vi har lagt følgende forenklende antagelse til grunn for våre analyser:

For B.1.1.7 (UK variant) har vi antatt at at raten av import til Norge er 10x høyere enn eksport ut av Norge. Dette er basert på følgende: Europa er den regionen som er tettest knyttet til Norge når det gjelder reisevirksomhet. Europa har hatt ca 10x flere dødsfall per innbygger enn vi har hatt i Norge gjennom pandemien. Vi antar derfor at smittetrykk/insidens har vært 10x høyere i resten av Europa enn i Norge, noe som igjen kan antas å føre til at reisende til Norge fra Europa har hatt 10x høyere sannsynlighet for å være smittet med SARS-CoV-2 enn reisende motsatt vei. For enkelte andre deler av verden er det reelle smittetrykket ukjent. Vi har derfor gjort den forenklede antagelsen at smittetrykket i resten av verden tilsvarer Europa. For B.1.351 (Sør Afrika variant) og B.1.525 er transisjonsrate estimert direkte fra dataene.

### Resultatene fra analysene er tilgjengelige her:

## Analyse av UK-variant -B.1.1.7
https://github.com/magnusnosnes/Nextstrain_modeling/blob/main/UK_results.md
## Analyse av Sør-Afrika-variant -B.1.351
https://github.com/magnusnosnes/Nextstrain_modeling/blob/main/Southafrican_results.md
## Analyse av B.1.525. Variant med flere av de samme endringene som de engelske, sør-afrikanske og brasilianske virusvariantene
https://github.com/magnusnosnes/Nextstrain_modeling/blob/main/B1-525_results.md
## Global build
TBD


# SARS-CoV-2 - Import-analyse UK- og Sør Afrika variant

## Bakgrunn & metoder

Utgangspunktet for alle analysene er daterte trær eksportert fra NextStrain, offentlig tilgjengelig her: https://nextstrain.org/groups/niph/ncov/

For hver av virusvariantene inkluderer disse analysene alle norske sekvenserte genomer (per 7 april), samt et større antall sekvenser fra resten av verden for å kontekstualisere de norske sekvensene. 

Målet med analysene presentert her er å gjennomføre formelle fylogeografiske analyser og deretter formelt oppsummere resultatene fra disse. Vi har brukt en maximum likelihood metode for å rekonstruere de fylogeografiske historiene.
Da sekvenseringsaktiviteten er ekstremt varierende fra land til land i Europa og resten av verden bruker vi kun to geografiske kategorier: “Norge” og “resten av verden”. Det vil alltid være er en forsinkelse (“detection lag”) fra en import til denne smitter videre og/eller detekteres. Derfor er tallfesting av importer og lokal transmisjon i den siste perioden av analysene ikke pålitelig, og skravert i grått i figurene under (siste 4 uker). 

Isolasjonsdato for siste inkluderte isolater er henholdsvis 22 mars for “UK variant”/B.1.1.7 og 10 mars for “Sør Afrika variant”/B.1.351. 

Konseptuelt kan de fylogeografiske metodene best forstås som at man tilegner geografisk lokasjon til alle noder og tupper treet. Tuppene er kjent, da disse representerer faktisk isolater med kjent lokasjon. Basert på geografisk opprinnelse til alle enkeltisolater, genetiske distanser og tidsinformasjon kodet i treet, samt den underliggende modellen, avleder algoritmen om noder (noder tilsvarer infererte, ikke-observerte “forfedre”) bakover i treet tilhører den ene eller andre geografiske kategorien. I praksis her, om disse eksisterte i Norge eller utenfor Norge. Om vi for eksempel har et isolat fra Norge, så vil dette bli inferert som en import hvis den umiddelbare noden (ikke observert) oppstrøms i treet er inferert å ha eksistert utenfor Norge. Om oppstrømsnoden også blir inferert å ha eksistert i Norge, vil isolatet være et resultat av smitte i Norge.

Vi har lagt følgende forenklende antagelse til grunn for våre analyser:

For B.1.1.7 (UK variant) har vi antatt at at raten av import til Norge er 10x høyere enn eksport ut av Norge. Dette er basert på følgende: Europa er den regionen som er tettest knyttet til Norge når det gjelder reisevirksomhet. Europa har hatt ca 10x flere dødsfall per innbygger enn vi har hatt i Norge gjennom pandemien. Vi antar derfor at smittetrykk/insidens har vært 10x høyere i resten av Europa enn i Norge, noe som igjen kan antas å føre til at reisende til Norge fra Europa har hatt 10x høyere sannsynlighet for å være smittet med SARS-CoV-2 enn reisende motsatt vei. For enkelte andre deler av verden er det reelle smittetrykket ukjent. Vi har derfor gjort den forenklede antagelsen at smittetrykket i resten av verden tilsvarer Europa. For B.1.351 (Sør Afrika variant) er transisjonsrate estimert direkte fra dataene.

### The analysis for the UK variant and South African variant can be viewed by accessing the follwing files
## UK-variant analysis
https://github.com/magnusnosnes/Nextstrain_modeling/blob/main/UK_results.md
## South-African-variant analysis
https://github.com/magnusnosnes/Nextstrain_modeling/blob/main/Southafrican_results.md





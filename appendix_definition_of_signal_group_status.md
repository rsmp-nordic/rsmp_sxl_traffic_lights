Appendix - definition of signal groups status
=============================================

Signal groups status (S0001) is defined as a text string where each character represents the current status for each signal group.
Each character has the following definition:

|-------|-------------------------------------------|-----------------------|------------|------------|
| ASCII | Definition                                | Output                | Green req. | Definition |
|-------|-------------------------------------------|-----------------------|------------|------------|
| a     | disabled                                  | Dark                  | -          |            |
| b     | manual control to dark                    | Dark                  | -          |            |
| c     | manual control to flashing yellow         | Yellow flash          | -          |            |
| d     | manual control to flashing red            | Red flash             | -          |            |
| e     | start-up interval 1                       | Dark or yellow flash  | -          |            |
| f     | start-up interval 2                       | Veh: yellow, Ped: red | -          |            |
| g     | start-up interval 3                       | Red                   | -          |            |
| h     | manual control to red                     | Red                   | -          |            |
| A     | red rest without start order              | Red                   | N          | Signalgruppen får inte  ges grönbehov (grönbehovet hålls tillbaka) utan att en startorder ges från ? |
| B     | red rest                                  | Red                   | N          | Signalgruppen har inget grönbehov. |
| C     | red rest with privilege measurement       | Red                   | N          | Signalgruppen har inget grönbehov men kan bli grön när att andra signalgrupper i samma fas är på väg att bli gröna (signalgruppstatus G/0) eller är gröna (signalgruppstatus 1/2/3/4/5). Ett sent inkommet grönbehov när andra signalgrupper är gröna enligt ovan resulterar i en växling till grönt. |
| D     | red with reservation                      | Red                   | Y/N        | Signalgruppen är bortprioriterad |
| E     | red with request and without start order  | Red                   | Y          |            |
| F     | red with request                          | Red                   | Y          | Signalgruppen väntar på att fienliga signalgruppers signalgrupsstatus 1/2/3/4/5 ska upphöra. |
| G     | Red with start in own stage               | Red                   | Y          | Signalgruppen väntar på att fienliga signalgruppers signalgrupsstatus 6/7/8/9/N/O/P ska upphöra. |
| 0     | red-yellow                                | Red/Yellow            | Y          |            |
| 1     | minimum green                             | Green                 | Y          | Den kortaste tid som får visas för respektive signalgrupp, denna tid får inte avkortas. |
| 2     | max. minimum green                        | Green                 | Y/N        | Signalgruppstatus "Min grönt" ska kunna utökas med en trafikstyrd variabel del upp till ett maximum "Max. min-grönt". Om en eller flera detektorlogiker är programmerade att förlänga signalgruppstatus "Max. min-grönt" utökar detektorlogikerna den min gröna tiden om de är aktiva under röd signalbild. Signalgruppsstatus "Max. mingrönt" ska valbart kunna avkortas eller ej vid prioritering. |
| 3     | maximum green (extension)                 | Green                 | Y          | Signalgruppen ska kunna utöka sin grönvisning genom förlängning från t.ex. detektorlogiker. När signalgruppen har grönbehov och status mingrönt är slut ska signalgruppen fortsätta sin grönvisning i status maxgrönt. Maxgrönt ska mätas parallellt med mingrönt upp till ett maximum "Max grönt". Signalgruppsstatus "Max grönt" ska valbart kunna avkortas eller ej vid prioritering. |
| 4     | green rest                                | Green                 | N          | En signalgrupp fortsätter sin grönvisning p.g.a. att en eller flera signalgrupp/er i samma fasbild har mer grönbehov (signalgrupsstatus 1/2/3), Signalgruppen har ingen fientlighet. Den väntar på att växlas bort av  vilolägesfunktionen. |
| 5     | green passive                             | Green                 | N          | En signalgrupp fortsätter sin grönvisning p.g.a. att annan eller andra signalgrupper i samma fasbild har mer grönbehov (signalgrupsstatus 1/2/3). Signalgruppen har fientlighet. Den väntar på att växlas bort av kommande fientlig(a) signalgrupp(er). |
| 6     | fixed past-end-green                      | Green                 | Y/N        | När signalgruppen fått order om att växla till rött ska den kunna fortsätta vara grön i en inställbar fast tid. |
| 7     | extra green according to intergreen times | Green                 | Y/N        | Signalgrupper kvarstannar i grönt så länge som det går enligt de fientligheter som ska bli gröna. |
| 8     | variable past-end-green                   | Green                 | Y          | När signalgruppen fått order om att växla till rött ska den kunna fortsätta vara grön under en trafikstyrt variabel tid. (O-funktion). Signalgruppsstatus "Variabel fråntid" ska valbart kunna avkortas eller ej vid prioritering. |
| 9     | flashing green                            | Green                 | Y/N        |            |
| N     | fixed yellow or yellow-green              | Yellow                | Y/N        |            |
| O     | variable yellow or yellow-green           | Yellow                | Y          | Signalgruppsstatus "Fast gul" kan utökas med en trafikstyrt variabel del "Variabelt gult", signalgruppstatuset förlängs vanligtvis av detektorlogiker. (V-funktion) |
| P     | variable red                              | Red                   | Y          | Den fasta rödtiden/spärrtiden ska kunna utökas med en trafikstyrt variabel del. Den mäts oftast parallellt med den fasta innebärande att den måste vara längre för att få någon effekt. (R-funktion) |
|-------|-------------------------------------------|--------------------------------------------------


# Films_database_project
Autorzy: Wojciech Batko, Małgorzata Drąg\
Projekt 'Baza filmów i seriali'

## Założenia projektu
Celem projektu jest stworzenie serwisu ułatwiającego wyszukiwanie danych dotyczących produkcji filmowych, serialowych i osób z nimi związanych.
Baza może zostać użyta przez aplikacje, portale zajmujące się ocenami filmowymi, gromadzeniem informacji o filmach, serialach i postaciach kina. Podstawowymi założeniami projektu jest prostota i dbanie o to, żeby w bazie było jak najmniej zduplikowanych rekordów. 

## Schemat pielęgnacji bazy danych
Z roku na rok powstają kolejne produkcje filmowe i serialowe, więc z racji dużego nagromadzenia danych w bazie, nie możemy pozwolić sobie, żeby dane zostały utracone.
To wiązało by się z ponownym wprowadzaniem rekordów do bazy, co może być utrudnione ze względu na ich ilość i powiązania.
Z tego powodu zalecane jest tworzenie kopii zapasowej w okresach, kiedy ilosć wprowadzanych danych do systemu będzie odpowiednio duża.
Oprócz tego należy robić pełną kopię 1 raz w tygodniu.

## Diagram ER
Na diagramie znajduję sie graficzna reprezentacja zależności pomiędzy tabelami w naszej bazie.
![img.png](img.png)

## Schemat bazy danych
![img_2.png](img_2.png)

## Spis tabel
1. User_table
2. Production_statistics
3. Streaming_platforms
4. Movies
5. Series
6. Staff_description
7. Staff
8. Roles
9. Soundtracks
10. Cinemas
11. Production_availability
12. Production_awards
13. Award_ceremonies
14. Screening_rooms
15. People
16. Person_awards
17. Screenings
18. Productions
```sql

```
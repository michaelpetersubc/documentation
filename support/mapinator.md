## Mapinator

The Mapinator Project collects placement outcomes for graduates who registered on econjobmarket.org.  The data is 
available in a public database.  This database is used to drive the interactive application at [https://sage.microeconomics.ca](https:/sage.microeconomics.ca)  which displays a world map that shows the academic trading 'network'.

The most immediate use of this data is for academic advising.  Students who are contemplating going to grad school can see detailed reports of placements by different universities that they are considering attending.  Universities can see how their own phd program compares to other comparable departments.

Using some more detailed theory and econometrics, it is possible to do things like estimate the relative value to a student to the various degree programs they might be considering.

The data also makes it possible to provide insights into trading networks more broadly.

The mapinator classification partitions the set of universities according to their placements.  Two universities in the same partition element of this classification will have similar placement and hiring histories. The way this classification is constructed is described in [this paper](https://montoya.econ.ubc.ca/papers/markets/markets_estimation.pdf).  

The classification gives an alternative description of the trading network to the one given in the mapinator world map.  The best way to show what the classificationd does it just to illustrate with the adjacency matrix that was estimated the research paper described above.

|                                   | **Tier 1** | **Tier 2** | **Tier 3** | **Tier 4** | **Tier 5** | **Row Totals** |
|----------------------------------:|-----------:|-----------:|-----------:|-----------:|-----------:|---------------:|
| TYPE 1 (20 insts)                 | 1194       | 338        | 172        | 43         | 4          | 1751           |
| TYPE 2 (58 insts)                 | 950        | 853        | 314        | 91         | 10         | 2218           |
| TYPE 3 (180 insts)                | 1073       | 1381       | 986        | 146        | 34         | 3620           |
| TYPE 4 (334 insts)                | 270        | 506        | 451        | 409        | 33         | 1669           |
| TYPE 5 (522 insts)                | 0          | 42         | 53         | 28         | 163        | 286            |
| Public Sector (152 insts)         | 568        | 545        | 285        | 57         | 23         | 1478           |
| Private Sector (227 insts)        | 777        | 441        | 230        | 55         | 26         | 1529           |
| Postdocs (598 insts)              | 86         | 130        | 135        | 56         | 27         | 434            |
| Lecturers (413 insts)             | 34         | 59         | 69         | 41         | 48         | 251            |
| Unmatched (1 insts)               | 367        | 599        | 752        | 413        | 341        | 2472           |
| Other Groups (38 insts)           | 210        | 165        | 83         | 32         | 9          | 499            |
| Teaching Universities (642 insts) | 240        | 377        | 420        | 159        | 69         | 1265           |
| Column Totals                     | 5769       | 5436       | 3950       | 1530       | 787        | 17472          |

The rows represent groups of hiring insitutions.  Along the row the cells represent the number of graduates that the hiring institutions in the row hired from graduates from institutions in the corresponding column.

To view the classification in detail, go to [https://support.econjobmarket.org/universities](https://support.econjobmarket.org/universities).  By clicking on the university name you'll be able to see a breakdown of their placement and hiring results.  The detailed description also provides quantile measures for both hiring and placement values to show where the university stands within the tier that is was placed.  Again for details, see the paper linked just before the table.

If you want to read the theory on which the classification is based, it is at [https://montoya.econ.ubc.ca/papers/markets/markets.pdf](https://montoya.econ.ubc.ca/papers/markets/markets.pdf).

Much more information about the project is collected in the [mapinator github repository](https://github.com/michaelpetersubc/mapinator/tree/master).  

The [mapinator_readme](https://github.com/michaelpetersubc/mapinator/blob/master/mapinator_readme/mapinator_readme.md) gives a descriptive overview of the data and the people who created it.  The api directory gives instructions on how to access the public database programmatically.

The files in the estimation directory are out of date and probably don't work.  The branch `run_id_5` contains the code and data associated with the estimates presented above.
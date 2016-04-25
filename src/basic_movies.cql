// Creating people

CREATE  (nTomHanks : Person : Actor { name: "Tom Hanks", born: 1956 }),
        (nHugoWeaving : Person : Actor { name: "Hugo Weaving", born: 1960 }),
        (nLanaWachowski : Person: Director { name: "Lana Wachowski", born: 1965 }),

// Creating the movies

        (nMatrix : Movie { title: "The Matrix", released: 1999 }),
        (nCloudAtlas : Movie { title: "Cloud Atlas", released: 2012 }),

// Creating the relationships

        (nTomHanks) - [ :ACTED_IN { role: "Zachcry" } ] -> (nCloudAtlas),
        (nHugoWeaving) - [ :ACTED_IN { role: "Bill Smoke" } ] -> (nCloudAtlas),
        (nHugoWeaving) - [ :ACTED_IN { role: "Agent Smith" } ] -> (nMatrix),
        (nLanaWachowski) - [ :DIRECTED ] -> (nMatrix),
        (nLanaWachowski) - [ :DIRECTED ] -> (nCloudAtlas)

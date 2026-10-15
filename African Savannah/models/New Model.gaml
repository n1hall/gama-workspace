/**
* Name: NewModel
* Based on the internal empty template. 
* Author: Lenovo
* Tags: 
*/


model NewModel

/* Insert your model definition here */

global {
    init {
        create lions number: 20;
        create zebras number: 20;
    }
}

species lions skills: [moving] {
    reflex walk {
        do wander;
    }

    reflex kill_zebras {
        ask zebras at_distance 3 {
            do die;
        }
    }

    aspect base {
        draw circle(3) color: #orange;
    }
}

species zebras skills: [moving] {
    reflex walk {
        do wander;
    }

    aspect base {
        draw triangle(2) color: #grey;
    }
}

grid grass width: 50 height: 50 {
    float biomass <- rnd(10.0);
    rgb color <- rgb(0, int(biomass * 25), 0) update: rgb(0, int(biomass * 25), 0);

    reflex grow {
        biomass <- biomass + 0.1;
    }
}

experiment main type: gui {
    output {
        display map {
            grid grass;
            species lions aspect: base;
            species zebras aspect: base;
        }
    }
}
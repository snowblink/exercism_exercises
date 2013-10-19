function DNA(nucleotideSequence){
    "use strict";

    this.count = function(char){
        return nucleotideSequence.split(char).length - 1;
    };

    this.nucleotideCounts = {
        A: this.count('A'),
        T: this.count('T'),
        C: this.count('C'),
        G: this.count('G')
    };
}

module.exports = DNA;

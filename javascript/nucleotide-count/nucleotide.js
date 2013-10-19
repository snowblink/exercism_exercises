function DNA(nucleotideSequence){
    "use strict";

    var nucleotideCountOf = function(char){
        // return nucleotideSequence.split(char).length - 1;
        return 0;
    };

    this.nucleotideCounts = {
        A: nucleotideCountOf('A'),
        T: nucleotideCountOf('T'),
        C: nucleotideCountOf('C'),
        G: nucleotideCountOf('G')
    };

}

module.exports = DNA;

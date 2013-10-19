function DNA(nucleotideSequence){
    "use strict";

    this.count = function(nucleotide){
        if (validNucleotide(nucleotide)){
            return nucleotideSequence.split(nucleotide).length - 1;
        } else {
            throw "Invalid Nucleotide";
        }
    };

    this.nucleotideCounts = {
        A: this.count('A'),
        T: this.count('T'),
        C: this.count('C'),
        G: this.count('G')
    };
}

validNucleotide = function(nucleotide){
    return nucleotide.match(/[ATCGU]/);
};

module.exports = DNA;

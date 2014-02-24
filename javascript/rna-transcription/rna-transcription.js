// * `G` -> `C`
// * `C` -> `G`
// * `T` -> `A`
// * `A` -> `U`

function toRna(dna){
    var dna_to_rna = {
        'G': 'C',
        'C': 'G',
        'A': 'U',
        'T': 'A'
    };

    return dna.replace(/./g, function(x){
        return dna_to_rna[x];
    });
}

module.exports = toRna;

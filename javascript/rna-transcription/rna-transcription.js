// * `G` -> `C`
// * `C` -> `G`
// * `T` -> `A`
// * `A` -> `U`

function toRna(dna){
    return dna.replace(/./g, function(x){
        if (x == 'G')
            return 'C';
        else if (x == 'C')
            return 'G';
        else if (x == 'A')
            return 'U';
        else if (x == 'T')
            return 'A';
    });
}

module.exports = toRna;

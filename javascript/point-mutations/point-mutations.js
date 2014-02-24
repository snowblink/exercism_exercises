var DNA = function(strand){
    "use strict";

    this.hammingDistance = function(other_strand){
        var result = 0;
        if (strand === other_strand) {
            result = 0;
        } else {
            for(var i=0; i<shorter_strand_length(strand, other_strand); i++){
                if (strand.charAt(i) != other_strand.charAt(i)){
                    result += 1;
                }
            }
        }
        return result;
    };


    var shorter_strand_length = function(a,b){
        if (a.length < b.length){
            return a.length;
        } else {
            return b.length;
        }
    };

};


module.exports = DNA;

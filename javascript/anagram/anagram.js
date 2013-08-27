function Anagram(subject){
    "use strict";

    this.match = function(possibleAnagrams){
        return possibleAnagrams.filter(function(currentAnagram){
            return (isAnagramOf(currentAnagram, subject));
        });
    };

    var isAnagramOf = function(a, b){
        if (a == b){
            return false;
        } else {
            return normalizeString(a) == normalizeString(b);
        }
    };

    var normalizeString = function(string){
        return string.toLowerCase().split('').sort().join('');
    };
}

module.exports = Anagram;

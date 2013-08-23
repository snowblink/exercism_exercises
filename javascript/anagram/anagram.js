function Anagram(subject){
    "use strict";

    this.match = function(possible_anagrams){
        return possible_anagrams.reduce(function(memo, current_anagram){
            if (isAnagramOf(current_anagram, subject) === true){
                memo.push(current_anagram);
            }
            return memo;
        }, []);
    };

    var isAnagramOf = function(a, b){
        if (a == b){
            return false;
        } else {
            return a.toLowerCase().split('').sort().join('') == b.toLowerCase().split('').sort().join('');
        }
    };
}

module.exports = Anagram;

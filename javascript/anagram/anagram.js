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
        var result = a.toLowerCase().split('').sort() == b.toLowerCase().split('').sort();
        return result;
    };
}

module.exports = Anagram;

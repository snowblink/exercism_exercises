function Anagram(subject){
    "use strict";

    this.match = function(possibleAnagrams) {
        return possibleAnagrams.filter(function(currentAnagram){
            return (areAnagramFriends(currentAnagram, subject));
        });
    };

    var areAnagramFriends = function(a, b) {
        return (a != b) && (normalizeString(a) == normalizeString(b));
    };

    var normalizeString = function(string) {
        return string.toLowerCase().split('').sort().join('');
    };
}

module.exports = Anagram;

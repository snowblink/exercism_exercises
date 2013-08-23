function Words(sentence) {
    "use strict";

    var foundWords = sentence.toLowerCase().match(/\w+/g);

    this.count = foundWords.reduce(function(memo, current){
        memo[current] = memo[current] || 0;
        memo[current] += 1;

        return memo;
    }, {});
}

module.exports = Words;

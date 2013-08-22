function Words(words) {
    "use strict";

    var findWords = words.match(/\w+/g);

    this.count = findWords.reduce(function(memo, current){
        current = current.toLowerCase();

        memo[current] = memo[current] || 0;
        memo[current] += 1;

        return memo;
    }, {});
}

module.exports = Words;

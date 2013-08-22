function Words(words) {
    this.count = count(findWords(words));
}

var count = function(words){

    return words.reduce(function(memo, current){
        current = current.toLowerCase();

        memo[current] = memo[current] || 0
        memo[current] += 1;

        return memo;
    }, {});

};

var findWords = function(words){
    return words.match(/\w+/g);
};

module.exports = Words;

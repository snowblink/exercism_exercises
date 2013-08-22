function Words(words) {
    this.findWords = words.match(/\w+/g);

    this.count = this.findWords.reduce(function(memo, current){
        current = current.toLowerCase();

        memo[current] = memo[current] || 0
        memo[current] += 1;

        return memo;
    }, {});
};

module.exports = Words;

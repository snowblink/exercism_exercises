function Words(words) {
    this.count = count(findWords(words));
}

var count = function(words){

    return words.reduce(function(memo, current){
        current = current.toLowerCase();
        if (memo[current] == undefined){
            memo[current] = 1;
        } else {
            memo[current] += 1;
        }
        return memo;
    }, {});

};

var findWords = function(words){
    return words.match(/\w+/g);
};

module.exports = Words;

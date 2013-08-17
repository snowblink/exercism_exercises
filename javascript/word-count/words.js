function Words(words) {
    this.words = words_as_array(words);
    this.count = count(this.words)
}

count = function(words){
    var result = {};

    for (var i=0; i < words.length; i++){
        var word = words[i];
        if (result[word] == undefined)
            result[word] = 1;
        else
            result[word] +=1;

    }
    return result;
};

words_as_array = function(words){
    return words.split(' ');
};

module.exports = Words;
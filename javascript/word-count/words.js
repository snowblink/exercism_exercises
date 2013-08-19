function Words(words) {
    this.count = count(findWords(words));
}

count = function(words){
    var result = {};

    for (var i=0; i < words.length; i++){
        var word = words[i].toLowerCase();
        if (word){ // ignore empty strings
            if (result[word] == undefined)
                result[word] = 1;
            else
                result[word] +=1;
        }

    }
    return result;
};

findWords = function(words){
    return words.match(/\w+/g);
};

module.exports = Words;

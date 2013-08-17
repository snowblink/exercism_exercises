function Words(words) {
    this.count = count(words_as_array(remove_punctuation(words)));
}

count = function(words){
    var result = {};

    for (var i=0; i < words.length; i++){
        var word = words[i];
        if (word){ // ignore empty strings
            if (result[word] == undefined)
                result[word] = 1;
            else
                result[word] +=1;
        }

    }
    return result;
};

words_as_array = function(words){
    return words.split(/\s+/);
};

remove_punctuation = function(words){
    return words.replace(/[^ A-Za-z0-9]/g, ' ')
}

module.exports = Words;
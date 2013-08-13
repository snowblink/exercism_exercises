var Bob = function(){
  this.hey = function(noise){
    if (noise.toUpperCase() == noise) {
      return "Woah, chill out!";
    } else if (noise.match(/\?$/)) {
      return "Sure.";
    } else {
      return "Whatever.";
    }
  }
}

module.exports = Bob;
as yet unclassified
normalizeUrl: anUrlString
	self shouldBeImplemented.
"	
Path.prototype.normalizeUrl = function (url){
      var parts = /((?:http[s]?:)?\/\/)?(.*)?/.exec(url);
      parts[2] = parts[2].replace(/[\\\/]+/g, '/');
      return (typeof parts[1] !== 'undefined')? parts[1] + parts[2] : parts[2];
    };"

// Cookie code
function createCookie(name,value,days) {
    if (days) {
        var date = new Date();
        date.setTime(date.getTime() + (days*24*60*60*1000));
        var expires = "; expires=" + date.toUTCString();
    }
    else var expires = "";
    document.cookie = name + "=" + value + expires + "; path=/";
}

function readCookie(name) {
    var nameEQ = name + "=";
    var ca = document.cookie.split(';');
    for(var i=0;i < ca.length;i++) {
        var c = ca[i];
        while (c.charAt(0)==' ') c = c.substring(1,c.length);
        if (c.indexOf(nameEQ) == 0) return c.substring(nameEQ.length,c.length);
    }
    return null;
}

random = readCookie('mkrawall')

if (random == null)
{
    random = Math.floor(Math.random() * 4) + 1, 180
    createCookie('mkrawall', random)
}

// pull in desired CSS/SASS files
require('./css/index.scss');

// inject bundled Elm app into div#main

var Elm = require('../src/Main');
Elm.Main.embed(document.getElementById('main'), {
    random: parseInt(random, 10)
});

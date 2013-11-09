jshint src/rockshot.js || { exit 1; }
uglifyjs src/superagent.js src/firebase.js src/rockshot.js -o rockshot.min.js || { exit 1; }
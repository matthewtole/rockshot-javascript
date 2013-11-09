jshint src/rockshot.js || { exit 1; }
uglifyjs src/rockshot.js -o rockshot.min.js || { exit 1; }
uglifyjs src/firebase.js src/rockshot.js -o rockshot-with-firebase.min.js || { exit 1; }
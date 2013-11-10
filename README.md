# RockShot // JavaScript Library

This is the PebbleKit JS library that allows you to use RockShot in your Pebble app or watchface that uses PebbleKit JS.

## Installation

The first stage is to include the library in your existing JavaScript code. 

If you're using your own concatenation / minification process you can use the uncompressed sources file ```src/rockshot.js``` and ```src/firebase.js```.

Otherwise, the best option is to copy and paste the contents of ```rockshot-with-firebase.min.js``` to the top of your ```pebble-js-app.js``` file.

#### Don't Forget

You'll also need to integrate the RockShot Pebble library into your app/watchface code. See the [rockshot-pebble repository](https://github.com/smallstoneapps/rockshot-pebble) for details.


## Usage

Simply call ```RockShot.init``` and pass in your app's UUID. 

*Don't put it in the Pebble ready event, RockShot will handle that itself.*

    RockShot.init("2a3352d5-2d44-437f-9652-98464640aea1");
    

If you want to trigger a screenshot from your JS code, you can use the ```captureSingle``` function.

    RockShot.captureSingle();
    
RockShot handles incoming app messages by itself, but if you want to check to see if an app message will be / has been handled by RockShot, you can call this helper function:

    RockShot.isValidPayload(e.payload);
    
This will return ```true``` if the incoming payload is for RockShot, and ```false``` otherwise.

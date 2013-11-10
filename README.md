# RockShot // JavaScript Library

This is the PebbleKit JS library that allows you to use RockShot in your Pebble app or watchface that uses PebbleKit JS.

#### RockShot and AppSync

At the moment RockShot and AppSync don't play nice together at the moment. You can still trigger screenshot requests from your Pebble watch code, but you can't trigger them from your JS code or the web interface. 

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

## Web Interface

The RockShot JavaScript library automatically uploads your screenshots to the web, and there's a handy website for viewing and requesting screenshots. 

You can find the RockShot Web Interface at http://rockshot.pblweb.com/

In the future more features will be added, primarily to bring it to the same level of functionality as the RockShot Android app.

# Simple project that should demonstrate how Qt Android Services (Qt5.7) works #

## What have I done ##
* Created a custom activity (MyCustomAppActivity.java)
* Created a custom service (MyCustomAppActivity.java)
* Changed AndroidManifest.xml so that the custom activity/service gets used
* Changed AndroidManifest.xml and enabled background_running for service
* used "android.app.arguments" in AndroidManifest.xml to distuingish between Service and Application

## What's not working yet ##
* the onCreate() of my custom activity gets called (I added a log message and can see the log message also in my logs). 
  In the onCreate() of my custom activity I start my custom service. However my custom service gets never created (I put a log message in the onCreate
  of my custom service and that one gets never printed out). 

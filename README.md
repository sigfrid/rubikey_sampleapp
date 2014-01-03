# Rubikey Sample App

Rubikey Sample App is a quick [Sinatra](http://www.sinatrarb.com/) app to check [YubiKey](http://www.yubico.com/products/yubikey-hardware/) OTP against [YubiCloud](http://www.yubico.com/products/services-software/yubicloud/) suing [Rubikey](https://github.com/sigfrid/rubikey) gem. 

**The app requires Ruby 2.1+**

## Installation
```
   git clone git@github.com:sigfrid/rubikey_sampleapp.git
   cd rubikey_sampleapp
   bundle
   rackup 
```

The app is accesisble at ```localshot:9292```.

## Usage

To work properly before firing up the app you must create ```api-credential.yml``` with the following:
```
api_id: 'YOUR YUBIKEY API ID'
api_key: 'YOUR YUBIKEY API KEY '
```
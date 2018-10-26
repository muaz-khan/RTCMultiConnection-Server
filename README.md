<a href="https://www.rtcmulticonnection.org/"><img src="https://i.imgur.com/MFfRBSM.png" /></a>

## RTCMultiConnection Socket.io Server

[![npm](https://img.shields.io/npm/v/rtcmulticonnection-server.svg)](https://npmjs.org/package/rtcmulticonnection-server) [![downloads](https://img.shields.io/npm/dm/rtcmulticonnection-server.svg)](https://npmjs.org/package/rtcmulticonnection-server)

```sh
npm install rtcmulticonnection-server
```

Now install dependencies: (required only if you're running outside RTCMultiConnection main repository)

```sh
mkdir node_modules
npm install
```

Now run the server: (required only if you're running outside RTCMultiConnection main repository)

```sh
npm start

# or
node server
```

### How to Use?

```javascript
require('rtcmulticonnection-server')();
```

Or

```javascript
require('rtcmulticonnection-server')({
    config: 'config.json',
    logs: 'logs.json'
});
```

Or

```javascript
function resolveURL(url) {
    var isWin = !!process.platform.match(/^win/);
    if (!isWin) return url;
    return url.replace(/\//g, '\\');
}

require('rtcmulticonnection-server')({
    config: __dirname + resolveURL('/config.json'),
    logs: __dirname + resolveURL('/logs.json')
});
```

**Please check RTCMultiConnection main repository for demos:**

* https://github.com/muaz-khan/RTCMultiConnection

## `config.json`

`config.json` is a JSON file.

```json
{
  "socketURL": "/",
  "dirPath": "../RTCMultiConnection/",
  "homePage": "/demos/index.html",
  "socketMessageEvent": "RTCMultiConnection-Message",
  "socketCustomEvent": "RTCMultiConnection-Custom-Message",
  "port": "9001",
  "enableLogs": "true",
  "autoRebootServerOnFailure": "true",
  "isUseHTTPs": "false",
  "sslKey": "./fake-keys/privatekey.pem",
  "sslCert": "./fake-keys/certificate.pem",
  "sslCabundle": "",
  "adminUserName": "username",
  "adminPassword": "password"
}
```

**PFX** on windows? i.e. **SSL on windows**:

```json
{
  "isUseHTTPs": "true",
  "sslKey": "/ssl/server.pfx"
}
```

`dirPath` is recommended to be an absolute path. However relative paths are also accepted. `dirPath` stands for HTML directory path.

```json
{
  "dirPath": "/var/www/html/"
}
```

Keep `dirPath` empty to force same directory:

```json
{
  "dirPath": ""
}
```

## License

[RTCMultiConnection Socket.io Server](https://github.com/muaz-khan/RTCMultiConnection-Server) is released under [MIT licence](https://github.com/muaz-khan/RTCMultiConnection/blob/master/LICENSE.md) . Copyright (c) [Muaz Khan](https://MuazKhan.com/).

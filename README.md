<a href="https://www.rtcmulticonnection.org/"><img src="https://i.imgur.com/MFfRBSM.png" /></a>

## RTCMultiConnection Socket.io Server

[![npm](https://img.shields.io/npm/v/rtcmulticonnection-server.svg)](https://npmjs.org/package/rtcmulticonnection-server) [![downloads](https://img.shields.io/npm/dm/rtcmulticonnection-server.svg)](https://npmjs.org/package/rtcmulticonnection-server)

```sh
npm install rtcmulticonnection-server
```

### How to Use?

```javascript
require('rtcmulticonnection-server')();
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

## License

[RTCMultiConnection Socket.io Server](https://github.com/muaz-khan/RTCMultiConnection-Server) is released under [MIT licence](https://github.com/muaz-khan/RTCMultiConnection/blob/master/LICENSE.md) . Copyright (c) [Muaz Khan](https://MuazKhan.com/).

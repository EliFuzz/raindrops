<h1 align="center">💧 R A I N D R O P S</h1>
<p align="center">Rain plugins</p>

## Usage

Filename structure:

```shell
[plugin name].[time][period][notification].sh

    plugin name - the name of the plugin
    time - numeric time
    period - time period (s - seconds, m - minutes, h - hours, d - days)
    notificaton - notification toggle

    examples:
        withNotification.5sn.sh - runs every 5 seconds and sends notificaiton if new messages appeared
        withoutNotification.5s.sh - runs every 5 seconds without notification
```

## LICENSE

[![GitHub](https://img.shields.io/github/license/mashape/apistatus.svg)](https://github.com/EliFuzz/raindrops/blob/master/LICENSE)

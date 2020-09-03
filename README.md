# Exchange Rates BitBar
This is a command line script and a BitBar plugin for showing exchange rates of currencies in your menu bar. It uses [exchange](https://github.com/makiftutuncu/exchange) to get its data.

<img alt="screenshot" src="https://github.com/makiftutuncu/exchange-bitbar/raw/master/Screenshot.png" />

## Dependencies
This script requires following to run
- curl - https://curl.haxx.se
- jq - https://stedolan.github.io/jq

You can install them with Homebrew using

```
brew install curl jq
```

## Installation for Bitbar
Download [exchange-rates.5m.sh](https://github.com/makiftutuncu/exchange-bitbar/raw/master/exchange-rates.5m.sh), put it into your BitBar plugin directory and make it executable.

## Configuration for BitBar
Open `exchange-rates.5m.sh` in your favorite text editor to edit `CURRENCY_PAIRS` array. By default, it is set to show `USD-TRY` and `EUR-TRY` exchange rates.

## Running the Script on Its Own
The script can also run without BitBar, as a CLI tool. Just run `exchange-rates.sh`. It requires `--source` and `--target` parameters.

## Contributing
All contributions are welcome. Please feel free to send a pull request. Thank you.

## License
Exchange Rates BitBar is licensed with [MIT License](LICENSE.md).

# skipop.sh
Generic right button mash script for Linux.

If for some reason you need to consistently press the right arrow key button a specific amount of times, this bash script is for you!

## Usage
Clone this repository into a directory of your choosing and make the script executable (`chmod a+x /path/to/skipop.sh`).
Then you can run it using `/path/to/skipop.sh [<num>]`

> `<num>` *(optional)*: **The amount of times the right arrow key is pressed.** If no value is passed, the default is `18`.

### Examples
`skipop.sh` - presses right 18 times \
`skipop.sh 27` - presses right 27 times \
`skipop.sh 3` - presses right 3 times

## Dependencies
**If running Wayland**: `ydotool`

**If running Xorg**: `xdotool`

If you don't know what display server you have, `skipop.sh` will automatically tell you which one you need if you try running the script.

## Future Plans
* Option for any key, not just the right arrow
* PKGBUILD for AUR

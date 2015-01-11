## Overview

This is a lean bootstrap template which intends to keep JavaScript authoring out
of the Script Editor application.

Insert your application logic into `Main.js`. This file is evaluated entirely by
`Main.app`. The outermost scope in `Main.js` is the effective global scope.

Run your `Main.js` code by opening `Main.app` via the Finder or from terminal
using `open Main.app`. The latter is useful for editor or file system watcher
integration.

Invoke the `log()` global method to log to the Script Editor console and
`system.log`. The log method supports N arguments. Each argument is converted to
a JS primitive. All log messages are prefixed with the name of the application.
Use this string for filtering Console and `system.log` messages.

```
# tail -F /var/log/system.log | egrep "(Main.app:)"
```

## Tips

* Call `log.clear()` in your near the head of your `Main.js` to clear
the terminal output on each run.
* `Main.app` and `Main.js` can be renamed as long as the file extensions stay
`.app` and `.js`.
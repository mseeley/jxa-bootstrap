// Run your `Main.js` code by opening `Main.app` via the Finder or from terminal
// using `open Main.app`. The latter is useful for editor or file system watcher
// integration.

// Call `log.clear();` if you prefer a clean log between run.
log.clear();

// Tail logs in Console.app or Terminal.app. For the latter try:
// # tail -F /var/log/system.log | egrep "(Main.app:)"
log('At the tone the time will be: ' + Date.now());

// Show a simple notification. Access the interface docs from:
// Script Editor > Window > Library > StandardAdditions
App = Application.currentApplication();
App.includeStandardAdditions = true;
app.displayNotification(
  'This notification will dismiss automatically',
  { withTitle: 'Welcome to jxa-bootstrap' }
);
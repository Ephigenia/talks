Example demoing evil scripts in a compromised package. The compromised package does not evil things but opens a notification window with the username the node process is running in.

    npm link ../compromised-package

Ignore scripts:

    npm link --ignore-scripts ../compromised-package
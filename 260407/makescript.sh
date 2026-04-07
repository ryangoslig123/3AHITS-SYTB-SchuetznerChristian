#!/bin/bash
FILE = $1
echo "#!/bin/env sh" > $FILE.sh
echo "echo \"$FILE Skript\"" >> $FILE.sh
chmod +x $FILE.sh
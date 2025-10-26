#!/usr/bin/env bash

cd /factorio || exit 1

if [[ -f /factorio/saves/save.zip ]]; then
	echo "Savegame exists .."
else
	echo "Creating savegame .."
	/factorio/bin/x64/factorio --create /factorio/saves/save.zip
fi

/factorio/bin/x64/factorio --start-server /factorio/saves/save.zip

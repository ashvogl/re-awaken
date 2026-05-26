#!/bin/bash
ob login --email $OBSIDIAN_EMAIL --password $OBSIDIAN_PASSWORD &
wait $!
ob sync-setup --vault Illustris --path illustris --password $VAULT_PASSWORD
ob sync-config --path illustris --mode mirror-remote --device-name site-auto
ob sync --path illustris
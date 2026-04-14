ball_datum="2027-01-16"

# aktuelles datum in sekunden seit epoch
heute=$(date +%s)

# ball datum in sekunden seit epoch
ball=$(date -d "$ball_datum" +%s)

# differenz in sekunden umrechnen
diff=$((ball - heute))

# sekunden in tage umrechnen
tage=$((diff / 86400))

echo "Es sind noch $tage Tage bis zum HTL Ball ($ball_datum)"
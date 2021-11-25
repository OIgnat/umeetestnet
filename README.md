# Autodelegate script for Umee

**1. Edit autodelegate.sh file** by replacing values containing capitals to your own values. Current chain is 'umee-betanet-v5'\
**2. Add permission to autodelegate.sh** by running 'chmod +x autodelegate.sh'\
**3. Setup scheduled task** for running this script by running 'crontab -e'. There you can add the last line like:\
    */1 * * * * PATH_TO_AUTODELEGATE


PRAYER_URL="https://api.aladhan.com/v1/timingsByAddress/31-03-2024?address=Dubai,UAE&method=8"
#PWD="`PWD`"
MY_PRAYER_OUTPUT_DIR="`pwd`/output_prayer_times"
mkdir -p $MY_PRAYER_OUTPUT_FILE
MY_PRAYER_OUTPUT_FILE="`printf $`MY_PRAYER_OUTPUT_DIR/prayer_times_script.log"

wget -o $MY_PRAYER_OUTPUT_FILE "https://api.aladhan.com/v1/timingsByAddress/31-03-2024?address=Dubai,UAE&method=8"
#wget "$PRAYER_URL"



# Reference URL
# !!!!!!!!!!!!!!¡¡!!!!!!!!!!!!!!!!!!!!!
#https://aladhan.com/prayer-times-api
# https://api.aladhan.com/v1/timingsByAddress/31-03-2024?address=Dubai,UAE&method=8
# !!!!!!!!!!!!!!¡¡!!!!!!!!!!!!!!!!!!!!!

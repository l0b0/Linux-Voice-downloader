# Linux Voice downloader
Download PDFs for your favourite Linux magazine.

## Usage

Download all Linux Voice issues you have access to into the *current directory*:

    /path/to/linux-voice-downloader.sh SUBSCRIBER_NUMBER EMAIL_ADDRESS

Don't worry about getting exit code 8 as long as the last line of output is `0 redirections exceeded.` This is just the simplest way to ensure the script terminates after downloading all the existing PDFs.

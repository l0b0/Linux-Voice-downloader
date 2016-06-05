# Linux Voice downloader
Download PDFs for your favourite Linux magazine.

## Usage

Before using this script you need to do two manual steps to deal with old URLs:

- Download issues [1](https://subs.linuxvoice.com/wp-content/uploads/2014/02/Linux-Voice-Issue-001.pdf), [2](https://subs.linuxvoice.com/wp-content/uploads/2014/03/Linux-Voice-Issue-002-PDF-Hyperlinks.pdf), [3](https://subs.linuxvoice.com/wp-content/uploads/Linux-Voice-Issue-003.pdf) and [5](https://subs.linuxvoice.com/wp-content/uploads/2014/06/Linux-Voice-Issue-005.pdf).
- Rename issue 2: `mv Linux-Voice-Issue-002{-PDF-Hyperlinks,}.pdf`

Download all [Linux Voice issues](https://subs.linuxvoice.com/) you have access to into the *current directory*:

    /path/to/linux-voice-downloader.sh SUBSCRIBER_NUMBER EMAIL_ADDRESS

Don't worry about getting exit code 8 as long as the last line of output is `0 redirections exceeded.` This is just the simplest way to ensure the script terminates after downloading all the existing PDFs.

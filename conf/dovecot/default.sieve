require ["imap4flags","fileinto"];

if header :contains ["X-Spam"] "Yes"
{
    addflag "\\Seen";
    fileinto "Junk";
}


# connects to exchangeonline 
Connect-ExchangeOnline

# To Add View permissions to a mailbox you need to specify the User calendar Email as Identity and the user that should have view permissions to the others users Calendar:
Add-MailboxFolderPermission -Identity user1@domain.com:\calendar -user user2@domain.com -AccessRights Reviewer -SendNotificationToUser $true

# To View the Current permissions configured for a mailbox use the following command, replacing the email under the identity property:
Get-MailboxFolderPermission -Identity example.user@domain.com:\calendar
#This is a quick email script we use to blast the various people who need to know about Patching
#Eventually it would be nice to make it pretty with PSWriteHTML but for now this is good enough.

$Date = Get-Date -UFormat "%B-%Y"
$SmtpServer = 'WhateverYourSMTPServeris'
$EmailFrom = 'no-reply@domain.com'
$EmailTo = 'PeopleWhoWantToKnowAboutPatching@domain.com'
$EmailSubject = "$Date Windows Server Patching"
$body = 'Hello All,<br> The Windows Server environment will be updated on Saturday Between 1 A.M. and 11 P.M. Local Machine time. <br>There will be a brief interuption in services while they restart to complete patching. <br>List of patches to be installed is available here: <a href="https://support.microsoft.com/en-us/topic/windows-10-and-windows-server-2016-update-history-4acfbc84-a290-1b54-536a-1c0430e9f3fd">(Server 2016)</a> <a href="https://support.microsoft.com/en-us/topic/windows-10-and-windows-server-2019-update-history-725fc2e1-4443-6831-a5ca-51ff5cbcb059">(Server 2019)</a> <a href="https://support.microsoft.com/en-gb/topic/windows-server-2022-update-history-e1caa597-00c5-4ab9-9f3e-8212fe80b2ee">(Server 2022)</a> <br>You can check the <a href="https://LinkToInventoryReport">windows server inventory</a> for the list of servers being patched. <br> There is a report for all of the patches pending on all of the servers available <a href="https://LinkToPendingPatchReport"> here </a>'

Send-MailMessage -From $EmailFrom  -To $EmailTo -Subject $EmailSubject -BodyAsHtml -Body $body -SmtpServer $SmtpServer
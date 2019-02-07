#CSV file has column Users and Phone
$PhoneCSVPath = "\\corp.com\fileshare\Phone.csv"

#Import CSV File
$PhoneCSV = Import-CSV -Path $PhoneCSVPath
#Apply phone number to each user
Foreach ($User in $PhoneCSV)
{
$Phone = $($User.Phone)
$Name = $($User.User)
Set-ADUser -Identity $Name -OfficePhone $Phone
}
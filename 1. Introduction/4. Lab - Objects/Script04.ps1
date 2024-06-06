# Custom Object

$Powershell=[PSCustomObject]@{
    Id = 1
    Name = "Yll"
    LastName = "Dibrani"
    Age = 22
}

$Powershell

"Id is type of " + $Powershell.Id.GetType()

"The users Id with name " + $Powershell.Name + " is " + $Powershell.Id + "'n"

$PowershellList = @(
    [PSCustomObject]@{
        Id = 1
        Name = "Yll"
        LastName = "Dibrani"
        Age = 22
    },
    [PSCustomObject]@{
        Id = 2
        Name = "Powershell"
        LastName = "User"
        Age = 32
    }
)
$PowershellList

'Executing foreach loop'

foreach ($PowershellList in $PowershellList) {
    $PowershellList.Id
    $PowershellList.Name
    $PowershellList.Age
}
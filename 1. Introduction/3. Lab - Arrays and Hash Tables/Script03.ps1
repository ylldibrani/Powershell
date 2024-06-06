$PowershellCourse='Server1','Server2','Server3'

$PowershellCourse

$PowershellCourse2 = @(
    'Server1',
    'Server2',
    'Server3'
)

$PowershellCourse2

'This is an hash table'

$ServerNames = @{
    DevelopmentEnv = 'Server1Dev'
    TestEnv = 'Server2'
    ProductionEnv = 'Server3'
}

$ServerNames.DevelopmentEnv

$ServerNames['DevelopmentEnv']

$ServerNames.Add('Stage', 'Server4Stage')

$ServerNames
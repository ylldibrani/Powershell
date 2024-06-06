$CustomNumbner = 19

if ($CustomNumbner -ge 20) {
    "Greater or equal to 20"
}
else {
    "Less than 20"
}

# while statement


$i = 1
while ($i -le 10) {
    $i
    ++$i
}

# for statement

for ($x = 1;$x -le 10; ++$x) {
    $x
}

# foreach statement - check 4. Lab - Objects for execution

$List = "Name" , "LastName" , "Age"

foreach ($List in $List)
{
    $List
}
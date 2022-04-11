$data=(Get-Content .\Data\SeriesReport-20220410163154_54276e.csv | ConvertFrom-Csv)

$results=@()

foreach($d in $data)
{
    $results += [PSCustomObject] @{Month = ("{0} Jan" -f $d.Year);Number=$d.Jan}
    $results += [PSCustomObject] @{Month = ("{0} Frb" -f $d.Year);Number=$d.Feb}
    $results += [PSCustomObject] @{Month = ("{0} Mar" -f $d.Year);Number=$d.Mar}
    $results += [PSCustomObject] @{Month = ("{0} Apr" -f $d.Year);Number=$d.Apr}
    $results += [PSCustomObject] @{Month = ("{0} May" -f $d.Year);Number=$d.May}
    $results += [PSCustomObject] @{Month = ("{0} June" -f $d.Year);Number=$d.Jun}
    $results += [PSCustomObject] @{Month = ("{0} Jul" -f $d.Year);Number=$d.Jul}
    $results += [PSCustomObject] @{Month = ("{0} Aug" -f $d.Year);Number=$d.Aug}
    $results += [PSCustomObject] @{Month = ("{0} Sep" -f $d.Year);Number=$d.Sep}
    $results += [PSCustomObject] @{Month = ("{0} Oct" -f $d.Year);Number=$d.Oct}
    $results += [PSCustomObject] @{Month = ("{0} Nov" -f $d.Year);Number=$d.Nov}
    $results += [PSCustomObject] @{Month = ("{0} Dec" -f $d.Year);Number=$d.Dec}
}

$results | Out-GridView

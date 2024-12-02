Ryota Aoki Assignment 1

write a content in a CSV file.

1 
# Correct file path with filename
$csvFilePath = "/Users/ryotaaoki/Desktop/Vanier College/intro web enviromentt/block 1/Ryota Aoki Assignment 1/Ryota Aoki Assignment 1.csv"

# Data to write
$data = @(
    [PSCustomObject]@{ name = "hi"; discription = "don't settle"; system = "sight"; redundant = "dumb"; }
    [PSCustomObject]@{ name = "hello"; discription = "why not"; system = "settle"; redundant = "setttle"; }
    [PSCustomObject]@{ name = "this"; discription = "just fail"; system = "why?"; redundant = "settle";}
)

# Export data to CSV
$data | Export-Csv -Path $csvFilePath -NoTypeInformation

Write-Host "Data successfully written to $csvFilePath"

2 reads the CSV file, retrieves specific values, and e.g hello

# Define the file path to the CSV
$csvFilePath = "/Users/ryotaaoki/Desktop/Vanier College/intro web enviromentt/block 1/Ryota Aoki Assignment 1/Ryota Aoki Assignment 1.csv"

# Import the CSV file
$data = Import-Csv -Path $csvFilePath

# Filter rows where the "name" column equals "hello"
$filteredData = $data | Where-Object { $_.name -eq "hello" }

# Define the file path to the CSV
$csvFilePath = "/Users/ryotaaoki/Desktop/Vanier College/intro web enviromentt/block 1/Ryota Aoki Assignment 1/Ryota Aoki Assignment 1.csv"

# Import the CSV file
$data = Import-Csv -Path $csvFilePath

# Filter rows where the "name" column equals "hello"
$filteredData = $data | Where-Object { $_.name -eq "hello" }

# Display the filtered data
if ($filteredData) {
    Write-Host "Found the following records for 'hello':"
    $filteredData | Format-Table -AutoSize
} else {
    Write-Host "No records found for 'hello'."
}
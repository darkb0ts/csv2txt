# CSV to TXT Converter

This is a simple Go program that converts a CSV file to a TXT file by extracting the first column of each row.

## Features

- Reads a CSV file provided as a command-line argument.
- Creates a TXT file with the same base name as the CSV file.
- Writes the first column of each row from the CSV file to the TXT file.
- Skips the header row if the first column contains the word "identifier".

## Requirements

- Go 1.16 or higher

## Installation

### Option 1: Download Binary

1. Download the precompiled binary for your operating system from the [Releases](https://github.com/darkb0ts/csv2txt) page.
2. Extract the binary to your desired location.
3. Run the binary from the command line.

### Option 2: Build from Source

1. Clone the repository:
    ```bash
    https://github.com/darkb0ts/csv2txt.git
    cd csv2txt
    ```

2. Build the project:
    ```bash
    go build -o csv2txt.go
    ```

## Usage

1. Run the executable with the path to your CSV file as an argument:
    ```bash
    ./csv2txt path/to/yourfile.csv
    ```

2. The program will create a TXT file in the same directory with the same base name as the CSV file. For example, if the CSV file is `data.csv`, the TXT file will be `data.txt`.

## Example

Given a CSV file `example.csv` with the following content:
```
identifier,name,age
1,John Doe,30
2,Jane Smith,25
3,Bob Johnson,22
```

Running the program:
```bash
./csv-to-txt-converter example.csv
```

Will create a `example.txt` file with the following content:
```
1
2
3
```

## Error Handling

The program handles the following errors:
- Missing CSV file path argument.
- Error opening the CSV file.
- Error reading the CSV file.
- Error creating the output TXT file.
- Error writing to the output TXT file.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

Feel free to customize this README further to suit your needs.

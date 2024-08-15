# PDF Compression Script

This script scans a specified directory for PDF files and compresses them using Ghostscript on a Linux system. The compressed PDFs are saved in a separate subdirectory.

## Features

- **Batch Compression:** Automatically compresses all PDF files in a folder.
- **Customizable Output:** Compressed files are saved in a separate `compressed` folder within the original directory.
- **Multiple Compression Levels:** Uses the `/screen` preset by default, with options to customize.

## Prerequisites

- **Ghostscript:** Ensure that Ghostscript is installed on your system. You can install it using the following command:

  ```bash
  sudo apt-get install ghostscript
  ```

## Usage

1. **Clone or Download the Script:**

   Save the script as `compress_pdfs.sh` or any name you prefer.

2. **Edit the Script:**

   Open the script in a text editor and replace the path in the `PDF_DIR` variable with the path to your folder containing PDF files.

   ```bash
   PDF_DIR="/path/to/your/pdf/folder"
   ```

3. **Make the Script Executable:**

   Run the following command to give the script execute permissions:

   ```bash
   chmod +x compress_pdfs.sh
   ```

4. **Run the Script:**

   Execute the script with:

   ```bash
   ./compress_pdfs.sh
   ```

   The script will scan the specified directory for PDF files, compress them, and save the compressed versions in a subdirectory named `compressed`.

## Customization

The script uses the `/screen` preset for compression by default, which is suitable for on-screen viewing. If you want to change the compression level, modify the `-dPDFSETTINGS` option in the script:

- `/screen`: Low resolution, suitable for screen-view only.
- `/ebook`: Medium resolution, suitable for eBooks.
- `/printer`: High resolution, suitable for printing.
- `/prepress`: High quality, suitable for prepress.

Example:

```bash
gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook \
   -dNOPAUSE -dQUIET -dBATCH -sOutputFile="$output_pdf" "$pdf"
```

## Troubleshooting

- **Ghostscript Not Installed:** If you encounter a "command not found" error, ensure that Ghostscript is installed and properly configured in your system's PATH.
- **File Not Found:** Make sure the `PDF_DIR` variable is correctly set to the directory containing your PDF files.

## License

This script is released under the MIT License. You are free to use, modify, and distribute it.

---

**Author:** Joseph Gakah  
**Date:** August 2024

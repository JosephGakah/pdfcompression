#!/bin/bash

# Define the directory containing the PDF files
PDF_DIR="/path/to/your/pdf/folder"

# Define the output directory for compressed PDFs
OUTPUT_DIR="$PDF_DIR/compressed"

# Create the output directory if it doesn't exist
mkdir -p "$OUTPUT_DIR"

# Loop through all PDF files in the directory
for pdf in "$PDF_DIR"/*.pdf; do
    # Get the filename without extension
    filename=$(basename "$pdf" .pdf)
    
    # Define the output file path
    output_pdf="$OUTPUT_DIR/${filename}_compressed.pdf"
    
    # Compress the PDF using Ghostscript
    gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/screen \
       -dNOPAUSE -dQUIET -dBATCH -sOutputFile="$output_pdf" "$pdf"
    
    echo "Compressed $pdf -> $output_pdf"
done

echo "PDF compression complete!"


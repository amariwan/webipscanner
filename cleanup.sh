echo "Cleaning xml folder..."
rm -rf xml/*
echo "Cleaning notes folder..."
rm -rf notes/*
echo "Cleaning PDFs..."
rm -rf dashboard/static/*.pdf
echo "Removing token..."
rm -rf token.sha256

#!/bin/bash

# Log analysis script for specific log file with colored output

# ANSI color codes
RED='\033[0;31m'  # Red color
NC='\033[0m'      # No color

# Check if log file argument is provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 <log_file>"
    exit 1
fi

LOG_FILE="$1"

# Check if the file exists
if [ ! -f "$LOG_FILE" ]; then
    echo -e "${RED}Error: Log file '$LOG_FILE' not found.${NC}"
    exit 1
fi

# Example: Search for error patterns and display in terminal with color
echo -e "${RED}Error messages in log file '$LOG_FILE':${NC}"
grep --color=always "ERROR" "$LOG_FILE"

# Example: Count occurrences of specific patterns
# (Optional: Uncomment and customize if needed)
# grep -c "pattern" "$LOG_FILE"

# No summary report or cleanup needed in this version

echo "Analysis completed."

#!/bin/bash

BASE_XCODE_DIR="${HOME}/Library/Developer/Xcode"

### TEMPLATES ###

TEMPLATES_XCODE_DIR="${BASE_XCODE_DIR}/Templates"
FILE_TEMPLATES_XCODE_DIR="${TEMPLATES_XCODE_DIR}/File Templates"
TEMPLATES_FOLDER_NAME="Templates"

echo "Starting installation of templates."

# Check if templates dir exists
if [ ! -d "${TEMPLATES_XCODE_DIR}" ]; then
  echo "Creating Templates directory, because it didn't exist."
  mkdir "${TEMPLATES_XCODE_DIR}"
fi

# Check if file templates dir exists
if [ ! -d "${FILE_TEMPLATES_XCODE_DIR}" ]; then
  echo "Creating File Templates directory, because it didn't exist."
  mkdir "${FILE_TEMPLATES_XCODE_DIR}"
fi

# Check if templates exist
if [ -d "${FILE_TEMPLATES_XCODE_DIR}/${TEMPLATES_FOLDER_NAME}" ]; then
  echo "Deleting previous ${TEMPLATES_FOLDER_NAME} directory."
  rm -rf "${FILE_TEMPLATES_XCODE_DIR}/${TEMPLATES_FOLDER_NAME}"
fi

# Copy the files
echo "Copying template files."
cp -r "${TEMPLATES_FOLDER_NAME}" "${FILE_TEMPLATES_XCODE_DIR}/"
echo "Templates installation done."


### SNIPPETS ###

USER_DATA_XCODE_DIR="${BASE_XCODE_DIR}/UserData"
CODE_SNIPPETS_XCODE_DIR="${USER_DATA_XCODE_DIR}/CodeSnippets"
SNIPPETS_FOLDER_NAME="Snippets"

echo "Starting installation of Snippets."

# Check if user data dir exists
if [ ! -d "${USER_DATA_XCODE_DIR}" ]; then
  echo "Creating UserData directory, because it didn't exist."
  mkdir "${USER_DATA_XCODE_DIR}"
fi

# Check if code snippets dir exists
if [ ! -d "${CODE_SNIPPETS_XCODE_DIR}" ]; then
  echo "Creating CodeSnippets directory, because it didn't exist."
  mkdir "${CODE_SNIPPETS_XCODE_DIR}"
fi

# Copy the files
echo "Copying Snippets files."
cp -r "${SNIPPETS_FOLDER_NAME}/." "${CODE_SNIPPETS_XCODE_DIR}/"
echo "Snippets installation done."


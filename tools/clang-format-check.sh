#!/bin/bash

clang-format -style=file -output-replacements-xml $(git ls-files | grep '\.cc\|\.h$') | grep -c "<replacement "

if [ $? -ne 1 ]
then
	echo "There are some style issues. Please run clang-format on your files."
	exit 1;
fi

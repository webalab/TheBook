#!/bin/bash

# TextMate Project variables. Add to the tmproject vars to use the default compile scripts.
# TM_FLEX_FILE_SPECS 	src/TheBook.mxml
# TM_FLEX_OUTPUT 		deploy/TheBook.swf

echo "<h2>TheBook Custom Compile</h2>";
echo "<code> Started @ `date "+%H:%M:%S"`</code><br />";

"mxmlc" \
	-sp+="$TM_AS3_LIB_PATH" \
	-file-specs="src/TheBook.mxml" \
	-o="deploy/TheBook.swf" 2>&1 | "$TM_BUNDLE_SUPPORT/bin/parse_mxmlc_out.rb";

# if [ "$?" == "0" ]
# 	then
# 	open "deploy/TheBook.html";
# fi

exit 206;

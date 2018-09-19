#!/bin/bash
echo ==============CSS ERRORS===============
echo ==============CSS ERRORS===============
echo 
stylelint ./**/*.css 
CSS="$?"
echo 
echo ==============CSS ERRORS===============
echo ==============CSS ERRORS===============
echo 
echo 
echo ==============JS ERRORS===============
echo ==============JS ERRORS===============
echo 
eslint .
JS="$?"
echo 
echo ==============JS ERRORS===============
echo ==============JS ERRORS===============
echo 
echo 
echo ==============HTML ERRORS===============
echo ==============HTML ERRORS===============
echo 
htmllint {*.html,./**/*.html}
HTML="$?"
echo 
echo ==============HTML ERRORS===============
echo ==============HTML ERRORS===============
echo 

if [ $CSS -eq 0 ] && [ $JS -eq 0 ] && [ $HTML -eq 0 ]
then
echo "YAY WE DID IT"
else
echo "FAILURES"
exit 1
fi


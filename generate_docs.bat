if not defined in_subprocess (cmd /k set in_subprocess=y ^& %0 %*) & exit )

C:\msys64\usr\bin\bash.exe "./generate_docs.sh"
:: C:\msys64\usr\bin\bash.exe "./push.sh"
ldoc .



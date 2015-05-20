find /usr/local/include/ -name "*.h" -o -name "*.hpp" -o -name "*.c" -o -name "*.cc" -o -name "*.cpp" -o -name "*.cu" -o -name "*.cuh" > cscope.files
cscope -bkq -i cscope.files
ctags -R `cat cscope.files`


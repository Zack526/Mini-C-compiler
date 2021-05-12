rm -f test/*.asm
dune exec bin/main.exe try codegen > /dev/null;

for testfile in ./test/*.mc;
do
	path="${testfile%.*}";
	raw_fname="${path##*\/}";
	echo "---------- $raw_fname ----------";
	java -jar ./test/Mars4_5.jar "$path.asm" > "$path.test"
	diff "$path.test" "./test/ans/$raw_fname.ans"
done

rm ./test/*.test

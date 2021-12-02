objects = first.o
executable = dest/first

$(executable) : $(objects) dest/
	gcc -o $(executable) $(objects)

dest/ :
	mkdir dest

first.o :
	gcc -c first.c 

clean :
	rm $(executable) $(objects)

show_header_path :
	gcc -H -c first.c

show_makefile_sample :
	gcc -M -c first.c


# ===出力例===
# #include <...> の探索はここから始まります:
# usr/lib/gcc/x86_64-redhat-linux/8/include
# /usr/local/include
# /usr/include
show_search_header_tree :
	gcc -v -c first.c

run :
	./$(executable)

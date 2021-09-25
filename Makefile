all: httpd client
LIBS = -pthread -O0#-lsocket  gcc新版本用pthread. 老版本用lpthread
httpd: httpd.c
	gcc  -g -W -Wall $(LIBS) -o $@ $<

client: simpleclient.c
	gcc  -W -Wall -o $@ $<
clean:
	rm httpd


#    Makefile有三个非常有用的变量。分别是$@，$^，$<代表的意义分别是：

#    $@--目标文件，$^--所有的依赖文件，$<--第一个依赖文件。Makefile有三个非常有用的变量。分别是$@，$^，$<代表的意义分别是：

#    $@--目标文件，$^--所有的依赖文件，$<--第一个依赖文件。


# 这东西就是生成方式的简写.  gcc  加命令 再加-o 然后加$@ $< 即可.
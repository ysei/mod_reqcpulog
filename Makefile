##
##  Makefile -- Build procedure for sample reqcpulog Apache module
##  Autogenerated via ``apxs -n reqcpulog -g''.
##

builddir=.
top_srcdir=/etc/httpd
top_builddir=/usr/lib/httpd
include /usr/lib/httpd/build/special.mk

#   the used tools
APXS=apxs
APACHECTL=apachectl

#   additional defines, includes and libraries
#DEFS=-Dmy_define=my_value
#INCLUDES=-Imy/include/dir
#LIBS=-Lmy/lib/dir -lmylib

#   the default target
all: local-shared-build

#   install the shared object file into Apache 
install: install-modules-yes

#   cleanup
clean:
	-rm -f mod_reqcpulog.o mod_reqcpulog.lo mod_reqcpulog.slo mod_reqcpulog.la 

#   simple test
test: reload
	lynx -mime_header http://localhost/reqcpulog

#   install and activate shared object by reloading Apache to
#   force a reload of the shared object file
reload: install restart

#   the general Apache start/restart/stop
#   procedures
start:
	$(APACHECTL) start
restart:
	$(APACHECTL) restart
stop:
	$(APACHECTL) stop

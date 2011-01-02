mod_reqcpulog.la: mod_reqcpulog.slo
	$(SH_LINK) -rpath $(libexecdir) -module -avoid-version  mod_reqcpulog.lo
DISTCLEAN_TARGETS = modules.mk
shared =  mod_reqcpulog.la

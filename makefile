VLOG	=	ncverilog
SRC	=	RA2SH.v\
		fifo1.v\
		rptr_empty.v\
		sync_r2w.v\
		sync_w2r.v\
		wptr_full.v\
		testbench.v

TIME	=	+nospecify +notimeingchecks

VLOGARG	=	+access+r

TEPFILE	=	*.log	\
		ncverilog.key	\
		nWaveLog	\
		INCA_libs
DBFILE	=       *.fsdb  *.vcd   *.bak
RM	=	-rm	-rf

all :: sim

sim :
	$(VLOG)	$(SRC)	$(TIME)	$(VLOGARG)

clean :
	$(RM)	$(TMPFILE)

veryclean :
	$(RM)	$(TMPFILE)	$(DBFILE)

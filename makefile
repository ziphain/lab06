VLOG	=	ncverilog
SRC	=	RA2SH.v\
		fifo1.v\
		rptr_empty.v\
		sync_r2w.v\
		sync_w2r.v\
		wptr_full.v\
		testbench.v

SRC_syn	=	RA2SH.v\
		fifo_syn.v\
		testbench.v

TIME	=	+nospecify +notimeingchecks

VLOGARG	=	+access+r

TEPFILE	=	*.log	\
		ncverilog.key	\
		nWaveLog	\
		INCA_libs
DBFILE	=       *.fsdb  *.vcd   *.bak
RM	=	-rm	-rf

CellLib = /theda21_2/CBDK_IC_Contest/cur/Verilog/tsmc13.v
TIMESCALE = +nctimscale+1ns/1ps

all :: sim

sim :
	$(VLOG)	$(SRC) $(VLOGARG)

syn:
	$(VLOG)	$(SRC)	$(CellLib)	$(VLOGARG)	$(TIMESCALE)

clean :
	$(RM)	$(TMPFILE)

veryclean :
	$(RM)	$(TMPFILE)	$(DBFILE)

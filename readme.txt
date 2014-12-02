在根目錄下，若想再synthesis一次，由於已經將步驟寫成tcl，直接用：
$ dc_shell-t -f fifo.tcl

若想執行RTL simulation，使用的是testbench.v:
$ make

若想執行synthesis的simulation，使用的是testbench_syn.v:
$ make syn

執行nWave時，可載入:
1. fifo.fsdb - RTL後的simulation結果
2. fifo_syn.fsdb - synthesis後的simulation結果
其中兩者皆可載入signal.rc之信號線組合


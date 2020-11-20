timeout --foreground 900s ./test/hftest/hftest.py --driver=fvp --out out/reference/aem_v8a_fvp_clang --out_initrd out/reference/aem_v8a_fvp_vm_clang --log out/reference/kokoro_log arch_test

timeout --foreground 40s 
/home/dafu/Lab/fvp/Base_RevC_AEMv8A_pkg/models/Linux64_GCC-6.4/FVP_Base_RevC-2xAEMv8A 
-C pctl.startup=0.0.0.0 
-C bp.secure_memory=0 
-C cluster0.NUM_CORES=4 
-C cluster1.NUM_CORES=4 
-C cache_state_modelled=0 
-C bp.vis.disable_visualisation=true 
-C bp.vis.rate_limit-enable=false 
-C bp.terminal_0.start_telnet=false 
-C bp.terminal_1.start_telnet=false 
-C bp.terminal_2.start_telnet=false 
-C bp.terminal_3.start_telnet=false 
-C bp.pl011_uart0.untimed_fifos=1 
-C bp.pl011_uart0.unbuffered_output=1 
-C bp.pl011_uart0.out_file=out/reference/kokoro_log/arch_test/json.uart0.log 
-C bp.pl011_uart1.out_file=out/reference/kokoro_log/arch_test/json.uart1.log 
-C cluster0.cpu0.RVBAR=0x04020000 
-C cluster0.cpu1.RVBAR=0x04020000 
-C cluster0.cpu2.RVBAR=0x04020000 
-C cluster0.cpu3.RVBAR=0x04020000 
-C cluster1.cpu0.RVBAR=0x04020000 
-C cluster1.cpu1.RVBAR=0x04020000 
-C cluster1.cpu2.RVBAR=0x04020000 
-C cluster1.cpu3.RVBAR=0x04020000 
--data cluster0.cpu0=/home/dafu/Lab/hafnium/prebuilts/linux-aarch64/arm-trusted-firmware/fvp/bl31.bin@0x04020000 
--data cluster0.cpu0=out/reference/kokoro_log/arch_test/json.dtb@0x82000000 
--data cluster0.cpu0=out/reference/aem_v8a_fvp_clang/arch_test.bin@0x80000000 
-C bp.ve_sysregs.mmbSiteDefault=0 
-C bp.ve_sysregs.exit_on_shutdown=1


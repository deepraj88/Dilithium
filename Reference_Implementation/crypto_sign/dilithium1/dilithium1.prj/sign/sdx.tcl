# ==============================================================
# File generated on Mon Jan 06 07:23:53 EST 2020
# Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
# SW Build 2405991 on Thu Dec  6 23:36:41 MST 2018
# IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
# ==============================================================
add_files -tb ../../newtest_sign.c -cflags { -Wno-unknown-pragmas}
add_files sign.c
add_files rounding.c
add_files rng.c
add_files reduce.c
add_files polyvec.c
add_files poly.c
add_files packing.c
add_files ntt.c
add_files fips202.c
add_files aes.c
set_part xc7a200tfbg676-2
create_clock -name default -period 10
config_interface -clock_enable=0
config_interface -expose_global=1
config_interface -m_axi_addr64=0
config_interface -m_axi_offset=off
config_interface -register_io=off
config_interface -trim_dangling_port=0
set_directive_inline load64 
set_directive_inline store64 
set_directive_allocation keccak_absorb keccak_absorb -limit 1 -type function
set_directive_inline keccak_absorb 
set_directive_allocation keccak_squeezeblocks keccak_squeezeblocks -limit 1 -type function
set_directive_inline keccak_squeezeblocks 
set_directive_allocation shake128_absorb shake128_absorb -limit 1 -type function
set_directive_inline shake128_absorb 
set_directive_allocation shake256_absorb shake256_absorb -limit 1 -type function
set_directive_inline shake256_absorb 
set_directive_allocation shake256 shake256 -limit 1 -type function
set_directive_inline shake256 
set_directive_unroll load64/load64_label0 -factor 64
set_directive_unroll store64/store64_label1 -factor 64
set_directive_pipeline poly_add/poly_add_label6 
set_directive_pipeline poly_sub/poly_sub_label8 
set_directive_pipeline poly_shiftl/poly_shiftl_label9 
set_directive_pipeline poly_uniform/poly_uniform_label10 
set_directive_pipeline rej_eta/rej_eta_label7 
set_directive_pipeline rej_gamma1m1/rej_gamma1m1_label11 
set_directive_pipeline polyeta_pack/polyeta_pack_label12 
set_directive_pipeline polyt0_pack/polyt0_pack_label13 
set_directive_pipeline polyt0_unpack/polyt0_unpack_label14 
set_directive_pipeline polyeta_unpack/polyeta_unpack_label15 
set_directive_pipeline polyt1_pack/polyt1_pack_label16 
set_directive_pipeline polyz_pack/polyz_pack_label17 
set_directive_pipeline polyw1_pack/polyw1_pack_label18 
set_directive_unroll ntt/ntt_label2 -factor 64
set_directive_unroll invntt_frominvmont/invntt_frominvmont_label3 -factor 64
set_directive_unroll ntt/ntt_label32 -factor 64
set_directive_unroll polyvecl_freeze/polyvecl_freeze_label19 -factor 64
set_directive_unroll polyvecl_add/polyvecl_add_label20 -factor 64
set_directive_unroll polyvecl_ntt/polyvecl_ntt_label21 -factor 64
set_directive_unroll polyvecl_pointwise_acc_invmontgomery/polyvecl_pointwise_acc_invmontgomery_label4 -factor 64
set_directive_unroll polyvecl_chknorm/polyvecl_chknorm_label22 -factor 64
set_directive_unroll polyveck_freeze/polyveck_freeze_label23 -factor 64
set_directive_unroll polyveck_add/polyveck_add_label24 -factor 64
set_directive_unroll polyveck_sub/polyveck_sub_label25 -factor 64
set_directive_unroll polyveck_shiftl/polyveck_shiftl_label26 -factor 64
set_directive_unroll polyveck_ntt/polyveck_ntt_label27 -factor 64
set_directive_unroll polyveck_invntt_montgomery/polyveck_invntt_montgomery_label28 -factor 64
set_directive_unroll polyveck_chknorm/polyveck_chknorm_label29 -factor 64
set_directive_unroll polyveck_power2round/polyveck_power2round_label30 -factor 64
set_directive_unroll polyveck_use_hint/polyveck_use_hint_label31 -factor 64

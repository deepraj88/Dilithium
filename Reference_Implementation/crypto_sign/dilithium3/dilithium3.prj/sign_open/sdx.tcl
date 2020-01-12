# ==============================================================
# File generated on Sun Dec 29 18:32:44 EST 2019
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
set_directive_allocation shake256_squeezeblocks shake256_squeezeblocks -limit 1 -type function
set_directive_inline shake256_squeezeblocks 
set_directive_unroll load64/load64_label29 -factor 128
set_directive_unroll store64/store64_label30 -factor 128
set_directive_unroll ntt/ntt_label31 -factor 128
set_directive_unroll ntt/ntt_label58 -factor 128
set_directive_unroll invntt_frominvmont/invntt_frominvmont_label32 -factor 128
set_directive_unroll polyvecl_freeze/polyvecl_freeze_label49 -factor 128
set_directive_unroll polyvecl_add/polyvecl_add_label50 -factor 128
set_directive_unroll polyvecl_ntt/polyvecl_ntt_label51 -factor 128
set_directive_unroll polyvecl_pointwise_acc_invmontgomery/polyvecl_pointwise_acc_invmontgomery_label36 -factor 128
set_directive_unroll polyvecl_chknorm/polyvecl_chknorm_label52 -factor 128
set_directive_unroll polyveck_freeze/polyveck_freeze_label53 -factor 128
set_directive_unroll polyveck_add/polyveck_add_label57 -factor 128
set_directive_unroll polyveck_chknorm/polyveck_chknorm_label54 -factor 128
set_directive_unroll polyveck_power2round/polyveck_power2round_label55 -factor 128
set_directive_unroll polyveck_use_hint/polyveck_use_hint_label56 -factor 128
set_directive_pipeline poly_add/poly_add_label34 
set_directive_pipeline poly_sub/poly_sub_label38 
set_directive_pipeline poly_shiftl/poly_shiftl_label39 
set_directive_pipeline poly_uniform/poly_uniform_label40 
set_directive_pipeline rej_eta/rej_eta_label35 
set_directive_pipeline rej_gamma1m1/rej_gamma1m1_label41 
set_directive_pipeline polyeta_pack/polyeta_pack_label42 
set_directive_pipeline polyeta_unpack/polyeta_unpack_label43 
set_directive_pipeline polyt1_pack/polyt1_pack_label44 
set_directive_pipeline polyt0_pack/polyt0_pack_label45 
set_directive_pipeline polyt0_unpack/polyt0_unpack_label46 
set_directive_pipeline polyz_pack/polyz_pack_label47 
set_directive_pipeline polyw1_pack/polyw1_pack_label48 

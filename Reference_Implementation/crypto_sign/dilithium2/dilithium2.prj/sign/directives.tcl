############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_inline "load64"
set_directive_inline "store64"
set_directive_allocation -limit 1 -type function "keccak_absorb" keccak_absorb
set_directive_inline "keccak_absorb"
set_directive_allocation -limit 1 -type function "keccak_squeezeblocks" keccak_squeezeblocks
set_directive_inline "keccak_squeezeblocks"
set_directive_allocation -limit 1 -type function "shake128_absorb" shake128_absorb
set_directive_inline "shake128_absorb"
set_directive_allocation -limit 1 -type function "shake256_absorb" shake256_absorb
set_directive_inline "shake256_absorb"
set_directive_allocation -limit 1 -type function "shake256_squeezeblocks" shake256_squeezeblocks
set_directive_inline "shake256_squeezeblocks"
set_directive_unroll -factor 1 "load64/load64_label0"
set_directive_unroll -factor 1 "store64/store64_label1"
set_directive_unroll -factor 1 "ntt/ntt_label8"
set_directive_unroll -factor 1 "ntt/ntt_label2"
set_directive_unroll -factor 1 "invntt_frominvmont/invntt_frominvmont_label3"
set_directive_unroll -factor 1 "polyvecl_freeze/polyvecl_freeze_label9"
set_directive_unroll -factor 1 "polyvecl_add/polyvecl_add_label10"
set_directive_unroll -factor 1 "polyvecl_ntt/polyvecl_ntt_label11"
set_directive_unroll -factor 1 "polyvecl_pointwise_acc_invmontgomery/polyvecl_pointwise_acc_invmontgomery_label4"
set_directive_unroll -factor 1 "polyvecl_chknorm/polyvecl_chknorm_label12"
set_directive_unroll -factor 1 "polyveck_freeze/polyveck_freeze_label13"
set_directive_unroll -factor 1 "polyveck_add/polyveck_add_label14"
set_directive_unroll -factor 1 "polyveck_chknorm/polyveck_chknorm_label15"
set_directive_unroll -factor 1 "polyveck_power2round/polyveck_power2round_label16"
set_directive_unroll -factor 1 "polyveck_use_hint/polyveck_use_hint_label17"
set_directive_pipeline "poly_add/poly_add_label6"
set_directive_pipeline "poly_sub/poly_sub_label18"
set_directive_pipeline "poly_shiftl/poly_shiftl_label19"
set_directive_pipeline "poly_uniform/poly_uniform_label20"
set_directive_pipeline "rej_eta/rej_eta_label7"
set_directive_pipeline "rej_gamma1m1/rej_gamma1m1_label21"
set_directive_pipeline "polyeta_pack/polyeta_pack_label22"
set_directive_pipeline "polyeta_unpack/polyeta_unpack_label23"
set_directive_pipeline "polyt1_pack/polyt1_pack_label24"
set_directive_pipeline "polyt0_pack/polyt0_pack_label25"
set_directive_pipeline "polyt0_unpack/polyt0_unpack_label26"
set_directive_pipeline "polyz_pack/polyz_pack_label27"
set_directive_pipeline "polyw1_pack/polyw1_pack_label28"

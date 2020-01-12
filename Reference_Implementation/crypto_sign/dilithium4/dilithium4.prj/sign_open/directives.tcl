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
set_directive_unroll -factor 1 "load64/load64_label59"
set_directive_unroll -factor 1 "store64/store64_label60"
set_directive_unroll -factor 1 "ntt/ntt_label61"
set_directive_unroll -factor 1 "ntt/ntt_label62"
set_directive_unroll -factor 1 "invntt_frominvmont/invntt_frominvmont_label63"
set_directive_unroll -factor 1 "polyvecl_freeze/polyvecl_freeze_label64"
set_directive_unroll -factor 1 "polyvecl_add/polyvecl_add_label65"
set_directive_unroll -factor 1 "polyvecl_ntt/polyvecl_ntt_label66"
set_directive_unroll -factor 1 "polyvecl_pointwise_acc_invmontgomery/polyvecl_pointwise_acc_invmontgomery_label67"
set_directive_unroll -factor 1 "polyvecl_chknorm/polyvecl_chknorm_label68"
set_directive_unroll -factor 1 "polyveck_freeze/polyveck_freeze_label69"
set_directive_unroll -factor 1 "polyveck_add/polyveck_add_label70"
set_directive_unroll -factor 1 "polyveck_chknorm/polyveck_chknorm_label71"
set_directive_unroll -factor 1 "polyveck_power2round/polyveck_power2round_label72"
set_directive_unroll -factor 1 "polyveck_use_hint/polyveck_use_hint_label73"
set_directive_pipeline "poly_add/poly_add_label74"
set_directive_pipeline "poly_sub/poly_sub_label75"
set_directive_pipeline "poly_shiftl/poly_shiftl_label76"
set_directive_pipeline "poly_uniform/poly_uniform_label77"
set_directive_pipeline "rej_eta/rej_eta_label78"
set_directive_pipeline "rej_gamma1m1/rej_gamma1m1_label79"
set_directive_pipeline "polyeta_pack/polyeta_pack_label80"
set_directive_pipeline "polyeta_unpack/polyeta_unpack_label81"
set_directive_pipeline "polyt1_pack/polyt1_pack_label82"
set_directive_pipeline "polyt0_pack/polyt0_pack_label83"
set_directive_pipeline "polyt0_unpack/polyt0_unpack_label84"
set_directive_pipeline "polyz_pack/polyz_pack_label85"
set_directive_pipeline "polyw1_pack/polyw1_pack_label86"

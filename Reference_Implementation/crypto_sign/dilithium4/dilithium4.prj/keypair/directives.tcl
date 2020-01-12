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
set_directive_allocation -limit 1 -type function "shake128_squeezeblocks" shake128_squeezeblocks
set_directive_inline "shake128_squeezeblocks"
set_directive_allocation -limit 1 -type function "shake256_absorb" shake256_absorb
set_directive_inline "shake256_absorb"
set_directive_allocation -limit 1 -type function "shake256" shake256
set_directive_inline "shake256"
set_directive_unroll -factor 1 "ntt/ntt_label62"
set_directive_pipeline "ntt/ntt_label62"
set_directive_unroll -factor 1 "invntt_frominvmont/invntt_frominvmont_label63"
set_directive_pipeline "invntt_frominvmont/invntt_frominvmont_label63"
set_directive_unroll -factor 1 "polyvecl_pointwise_acc_invmontgomery/polyvecl_pointwise_acc_invmontgomery_label67"
set_directive_pipeline "polyvecl_pointwise_acc_invmontgomery/polyvecl_pointwise_acc_invmontgomery_label67"
set_directive_unroll -factor 1 "poly_freeze/poly_freeze_label87"
set_directive_pipeline "poly_freeze/poly_freeze_label87"
set_directive_pipeline "poly_add/poly_add_label74"
set_directive_unroll -factor 1 "poly_add/poly_add_label74"
set_directive_pipeline "rej_eta/rej_eta_label78"

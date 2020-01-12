############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_allocation -limit 1 -type function "keccak_absorb" keccak_absorb
set_directive_inline "keccak_absorb"
set_directive_allocation -limit 1 -type function "keccak_squeezeblocks" keccak_squeezeblocks
set_directive_inline "keccak_squeezeblocks"
set_directive_allocation -limit 1 -type function "shake128_absorb" shake128_absorb
set_directive_inline "shake128_absorb"
set_directive_allocation -limit 1 -type function "shake256_absorb" shake256_absorb
set_directive_inline "shake256_absorb"
set_directive_allocation -limit 1 -type function "shake256" shake256
set_directive_inline "shake256"
set_directive_inline "load64"
set_directive_inline "store64"
set_directive_unroll -factor 128 "load64/load64_label0"
set_directive_unroll -factor 128 "store64/store64_label1"
set_directive_unroll -factor 128 "ntt/ntt_label2"
set_directive_unroll -factor 128 "invntt_frominvmont/invntt_frominvmont_label3"
set_directive_unroll -factor 128 "polyvecl_pointwise_acc_invmontgomery/polyvecl_pointwise_acc_invmontgomery_label4"
set_directive_unroll -factor 128 "poly_freeze/poly_freeze_label5"
set_directive_unroll -factor 128 "poly_add/poly_add_label6"

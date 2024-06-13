#!/usr/bin/env bash

MAKE_FOLDER=./tensorflow/lite/micro/tools/make
DL_FOLDER=$MAKE_FOLDER/downloads

# Download files
make -C $MAKE_FOLDER TENSORFLOW_ROOT=`pwd`/

# Copy the files we need
mkdir -p third_party_static/flatbuffers
mkdir -p third_party_static/gemmlowp
mkdir -p third_party_static/ruy/ruy
mkdir -p third_party_static/kissfft

cp $DL_FOLDER/flatbuffers/LICENSE third_party_static/flatbuffers/LICENSE
cp -r $DL_FOLDER/flatbuffers/include third_party_static/flatbuffers/include

cp $DL_FOLDER/gemmlowp/LICENSE third_party_static/gemmlowp/LICENSE
cp -r $DL_FOLDER/gemmlowp/fixedpoint third_party_static/gemmlowp/fixedpoint
cp -r $DL_FOLDER/gemmlowp/internal third_party_static/gemmlowp/internal

cp $DL_FOLDER/ruy/LICENSE third_party_static/ruy/LICENSE
cp -r $DL_FOLDER/ruy/ruy/profiler third_party_static/ruy/ruy/profiler

cp $DL_FOLDER/kissfft/COPYING third_party_static/kissfft/COPYING
cp $DL_FOLDER/kissfft/_kiss_fft_guts.h third_party_static/kissfft/_kiss_fft_guts.h
cp $DL_FOLDER/kissfft/kiss_fft.c third_party_static/kissfft/kiss_fft.c
cp $DL_FOLDER/kissfft/kiss_fft.h  third_party_static/kissfft/kiss_fft.h
cp $DL_FOLDER/kissfft/kissfft.hh third_party_static/kissfft/kissfft.hh
cp -r $DL_FOLDER/kissfft/tools third_party_static/kissfft/tools

git add third_party_static
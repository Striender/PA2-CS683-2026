#!/bin/bash

if [ "$#" -eq 2 ]; then
    ./build_champsim.sh hashed_perceptron no $1 no no no no no lru lru lru $2 lru lru lru lru 1 no
else
    echo
    echo "======================================================================="
    echo " ERROR: Invalid number of arguments supplied."
    echo "======================================================================="
    echo
    echo "Usage: ./build.sh <L1d Prefetcher> <L2 Replacement Policy>"
    echo
    echo "L1d Prefetchers:"
    echo "  1) IP Stride"
    echo "  2) PA2 Prefetcher"
    echo "  3) No Prefetcher"
    echo
    echo "L2 Replacement Policies:"
    echo "  1) LRU"
    echo "  2) DCLIP"
    echo
    echo "Example:"
    echo "  ./build.sh ip_stride lru"
    echo
    echo "======================================================================="
fi

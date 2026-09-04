<p align="center">
  <h1 align="center"> ChampSim </h1>
  <p> ChampSim is a trace-based simulator for a microarchitecture study. You can sign up to the public mailing list by sending an empty mail to champsim+subscribe@googlegroups.com. Traces for the 3rd Data Prefetching Championship (DPC-3) can be found from here (https://dpc3.compas.cs.stonybrook.edu/?SW_IS). A set of traces used for the 2nd Cache Replacement Championship (CRC-2) can be found from this link. (http://bit.ly/2t2nkUj) <p>
</p>

# Clone ChampSim repository
```
git clone https://github.com/Striender/PA2-CS683-2026.git
```

# Compile

ChampSim takes 2 parameters: L1D prefetcher, L2 replacement policy. 
For example, `./build.sh no lru` builds a single-core processor with hashed preceptron branch predictor, no L1 data prefetchers, and the baseline LRU replacement policy for the L2.
```
$ ./build.sh bimodal no lru 

$ ./build.sh ${L1D_PREFETCHER} ${L2C_REPLACEMENT}
```

# Run simulation

./[BINARY] -warmup_instructions [N_WARM] -simulation_instructions [N_SIM] -traces [TRACE_DIR]/[TRACE]
$ ./champsim-no -warmup_instructions 50000000 -simulation_instructions 50000000 -traces ../traces/trace1.champsimtrace.xz

${BINARY}: ChampSim binary compiled by "build_champsim.sh" (champsim_no)
${N_WARM}: number of instructions for warmup (25 million)
${N_SIM}:  number of instructinos for detailed simulation (25 million)
${TRACE_DIR}: directory where the trace is located (../traces/)
${TRACE}: trace name (trace1.champsimtrace.xz)


# Evaluate Simulation

ChampSim measures the IPC (Instruction Per Cycle) value as a performance metric. <br>
There are some other useful metrics printed out at the end of simulation. <br>


# Steps to download gcc version 7 in ubuntu

sudo apt update
sudo add-apt-repository ppa:ubuntu-toolchain-r/test
vim /etc/apt/sources.list or sudo nano /etc/apt/sources.list
Update the last line with "deb [arch=amd64] http://archive.ubuntu.com/ubuntu focal main universe"
sudo add-apt-repository ppa:ubuntu-toolchain-r/test
sudo apt-get install gcc-7
sudo apt-get install g++-7
sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-7 0
sudo update-alternatives --install /us/bin/gcc gcc /ust/bin/gcc-7 0

--In case the GCC and G++ is already present in /usr/bin (run ./gcc-7 -v in /usr/bin), install the alternative and set it using

sudo update-alternatives --config g++
sudo update-alternatives --config gcc

Good luck and be a champion! <br>

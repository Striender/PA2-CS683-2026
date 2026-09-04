# ChampSim

ChampSim is a trace-based simulator for microarchitecture research.

Useful trace links:
- Traces (Access through LDAP ID): https://drive.google.com/drive/folders/1zYchkn-M1auZp_l5wRkIzAcDYPkNtW3H?usp=sharing
- ChampSim wiki: https://champsim.github.io/ChampSim/master/index.html

## Clone the repository

```bash
git clone https://github.com/Striender/PA2-CS683-2026.git
```

## Compile

To make things simple, you are only need specify two parameters: L1D prefetcher and L2C replacement policy.

For example, `./build_champsim.sh no lru` builds a single-core processor with a hashed perceptron branch predictor, no L1D data prefetcher, and the baseline LRU replacement policy for the L2C.

```bash
./build_champsim.sh bimodal no lru

./build_champsim.sh ${L1D_PREFETCHER} ${L2C_REPLACEMENT}
```

## Run simulation

```bash
./[BINARY] -warmup_instructions [N_WARM] -simulation_instructions [N_SIM] -traces [TRACE_DIR]/[TRACE]
./champsim-no -warmup_instructions 50000000 -simulation_instructions 50000000 -traces ../traces/trace1.champsimtrace.xz
```

Where:
- `${BINARY}`: ChampSim binary compiled by `build_champsim.sh` (for example, `champsim-no`)
- `${N_WARM}`: number of instructions for warmup (50 million)
- `${N_SIM}`: number of instructions for detailed simulation (50 million)
- `${TRACE_DIR}`: directory containing the trace (for example, `../traces/`)
- `${TRACE}`: trace name (for example, `trace1.champsimtrace.xz`)

## Evaluate the simulation

ChampSim measures IPC (instructions per cycle) as its main performance metric. There are also other useful metrics printed at the end of each simulation.

## Install GCC 7 on Ubuntu

```bash
sudo apt update
sudo add-apt-repository ppa:ubuntu-toolchain-r/test
vim /etc/apt/sources.list
```

Update the last line with:

```bash
deb [arch=amd64] http://archive.ubuntu.com/ubuntu focal main universe
```

Then run:

```bash
sudo add-apt-repository ppa:ubuntu-toolchain-r/test
sudo apt-get install gcc-7
sudo apt-get install g++-7
sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-7 0
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-7 0
```

If GCC and G++ are already present in `/usr/bin`, install the alternatives and set them using:

```bash
sudo update-alternatives --config g++
sudo update-alternatives --config gcc
```



# FPGA Implementation and Interfacing

> A collection of FPGA designs, testbenches, and interfacing experiments used to validate and demonstrate hardware implementations of digital circuits.

---

## Table of contents

- [Overview](#overview)  
- [Quickstart](#quickstart)  
- [Repository contents](#repository-contents)  
- [How to run on FPGA](#how-to-run-on-fpga)  
- [Interfacing experiments](#interfacing-experiments)  
- [Usage with related projects](#usage-with-related-projects)  
- [License](#license)  
- [Contact / Acknowledgements](#contact--acknowledgements)

---

## Overview

This repository contains FPGA-based implementations of sequential and combinational logic circuits, along with examples of how to interface them with external devices. It was developed as part of a broader project on [**Digital IC Functionality Duplication Using Neural Networks**](https://github.com/Anjanamb/Digital-IC-Functionality-Duplication-Using-NN), complementing simulation and dataset repositories by providing hardware validation.

---

## Quickstart

1. Clone the repository:
```bash
git clone https://github.com/Anjanamb/FPGA-Implementation-and-interfacing.git
cd FPGA-Implementation-and-interfacing
```

2. Open the design files (`.bdf`, `.vhd`) in **Intel Quartus Prime**.

3. Compile the project and upload to a supported FPGA board (e.g., Intel/Altera DE-series).

4. Run the interfacing experiment as described in the relevant folder.

---

## Repository contents

```
FPGA-Implementation-and-interfacing/
├─ Quartus_Projects/      # FPGA design projects (schematics, VHDL)
├─ Testbenches/           # Simulation testbenches for validation
├─ Interfacing/           # Examples interfacing FPGA with external devices
├─ Docs/                  # Notes, schematics, pin assignments, and setup guides
└─ README.md
```

- **Quartus_Projects/** – source FPGA projects, including `.bdf` schematics and VHDL modules.  
- **Testbenches/** – simulation testbenches for functional validation before FPGA deployment.  
- **Interfacing/** – GPIO, LED, switch, seven-segment display, and peripheral interfacing examples.  
- **Docs/** – pin mappings, hardware setup, and experiment notes.

---

## How to run on FPGA

1. Install [Intel Quartus Prime](https://www.intel.com/content/www/us/en/software/programmable/quartus-prime/overview.html).  
2. Open a project from `Quartus_Projects/`.  
3. Set correct **FPGA board model** and **pin assignments** (see `Docs/`).  
4. Compile the design and program the FPGA.  
5. Verify using physical inputs (switches, buttons) and outputs (LEDs, seven-segment, etc.).

---

## Interfacing experiments

This repo includes simple FPGA-to-peripheral interfacing experiments such as:

- **Switches → LEDs** (basic I/O validation)  
- **Counters on seven-segment displays**  
- **Shift registers with button inputs**  
- **Clock dividers for timing signals**  
- (Optional) UART / external communication setups

---

## Usage with related projects

This repository complements:

- [Sequential-Logic-Datasets-with-Designs](https://github.com/Anjanamb/Sequential-Logic-Datasets-with-Designs) – provides simulation datasets.  
- [Digital-IC-Functionality-Duplication-Using-NN](https://github.com/Anjanamb/Digital-IC-Functionality-Duplication-Using-NN) – trains neural networks to duplicate digital IC functionality.  

Together, these projects form a complete flow: **design → dataset → neural network model → FPGA hardware validation**.

---

## License

MIT License – free to use and modify. Please cite the repository if used in research or coursework.

---

## Contact / Acknowledgements

Author: **Anjana Bandara** (GitHub: [Anjanamb](https://github.com/Anjanamb))

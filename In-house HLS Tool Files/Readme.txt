The HLS Benchmarks in the form of high level description (transfer function) and it associated intermediate representation (IR) as CDFG/DFG is provided in the "HLS Benchmarks.pdf", also publicly available in: 
https://www.anirban-sengupta.com/HLS%20Benchmarks%20Details.pdf
The relevant research paper citations, where the high level description (transfer function) and it associated intermediate representation (IR) as CDFG/DFG is described, is also present in the PDF file.
**************************************************************************
**HLS Framework/Tool**
**************************************************************************
The in-house HLS Tool is designed in a modular fashion, implemented as three modules (currently independent modules but the integration of the modules is a work in progress for our in-house HLS tool). Subsequently this will be publicly relased. The three major modules are: 

(a) HLS Front End: This is performed using our HLS HLT Tool. The Tool requires java development kit (jdk) installed for executing the HLS HLT tool. The HLS HLT Tool converts a raw DFG into a processed/transformed DFG (i.e. intermediate representation (IR)) using a set of structural compiler transformation techniques such as THT, LU, LICM, ROE etc (adopted from the references below). 


(b) HLS Middle End: This is performed using our PSO-DSE tool that exploits particle swarm optimization (PSO) based design space exploration process for exploring optimized hardware IP design architecture based on area/power-delay tradeoff. The Tool requires java development kit (jdk) installed for executing the tool.

-- A. Sengupta, D. Roy "Protecting an Intellectual Property Core during Architectural Synthesis using High-Level Transformation Based Obfuscation" IET Electronics Letters, Volume: 53, Issue: 13, June 2017, pp. 849 - 851.    
-- A. Sengupta, V. Kumar Mishra, "Swarm Intelligence Driven Simultaneous Adaptive Exploration of Datapath and Loop Unrolling Factor during Area-Performance Tradeoff ", Proceedings of 13th IEEE Computer Society Annual International Symposium on VLSI (ISVLSI), Florida, USA, July 2014, pp. 106 112 (DOUBLE BLIND REVIEW).
-- A. Sengupta, D. Roy, S. Mohanty, Peter Corcoran "DSP Design Protection in CE through Algorithmic Transformation Based Structural Obfuscation", IEEE Transactions on Consumer Electronics, Volume 63, Issue 4, November 2017, pp: 467 - 476. 

Note: The jdk can be downloaded and installed from the following: https://javadl.oracle.com/webapps/download/AutoDL?BundleId=253194_f7fe8e644f724108bdb54139381e29a7


(c) HLS Back End: This module is responsible for accepting the processed DFG from HLS HLT tool and explored architecture from PSO-DSE tool for performing scheduling, resource allocation, binding, register allocation and datapath generation etc. This is implemented using our HLS register allocation engine module (source code provided). These steps of HLS are performed using the algorithms described in the following works:

-- A. Sengupta, S. P. Mohanty "High-Level Synthesis of Digital Circuits in the Nanoscale, Mobile Electronics Era", IET Book: Nano-CMOS and Post-CMOS Electronics: Circuits and Design, Book Chapter, e-ISBN: 9781785610004, pp: 219 - 261. Available at: https://doi.org/10.1049/PBCS030E_ch8.          
 
-- A. Sengupta et al., "A High Level Synthesis design flow with a novel approach for Efficient Design Space Exploration in case of multi parametric optimization objective", Elsevier Microelectronics Reliability, Vol. 50 (3), 2010, pp. 424-437.

-- A. Sengupta, S. Bhadauria, S. Mohanty "Embedding Low Cost Optimal Watermark During High Level Synthesis for Reusable IP Core Protection", Proc. of 48th IEEE Int'l Symposium on Circuits & Systems (ISCAS), Montreal, May 2016, pp. 974 - 977.

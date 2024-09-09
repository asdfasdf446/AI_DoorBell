# AI_DoorBell

## What is AI DoorBell? (Project Vision and Introduction)

AI DoorBell, as the name suggests, leverages an embedded deployment of large models to enable autonomous doorbell responses. It can automatically handle tasks for the homeowner such as receiving guests, accepting deliveries, and alerting against potential intruders. The embedded system deploys a model with relatively small parameters, allowing it to function offline while remembering basic household information to provide basic automated responses. For example, if the homeowner informs the system in advance that no one is home, it can instruct the delivery person to leave packages in a designated spot. Similarly, if the homeowner informs the system of an expected visitor and provides details, the doorbell can automatically link with the electronic lock to open the door and let the guest in. For situations where it cannot make a decision, the doorbell can call the homeowner through an IoT SIM card.

When connected to the internet, the doorbell can collaborate with a larger model in the home gateway or at the network base station (using edge computing). It can then perform more intelligent actions, such as periodically recording people passing by the door and comparing this data with the neighborhood database to detect suspicious individuals, thereby helping maintain community security. It can also link with other AI doorbells to monitor residents' movements and determine which facilities in the community may need maintenance, among other tasks.

## Project Architecture

The project consists of several components, including an AI chip dedicated to deploying large models, a large model trained for specific scenarios, firmware developed for specific use cases (independent doorbells do not use a dedicated operating system to save resources; instead, the large model is deployed as firmware), and embedded hardware such as cameras, microphones, and Ethernet. This is an initial concept, and adjustments will be made based on actual conditions in later stages.

- **AI Chip**: Based on NVIDIA's open-source RTL, modifications to NVDLA will be made, with initial experiments deployed on Xilinx FPGAs for prototype validation. Future custom development may be pursued as needed.
  
- **Large Model**: Custom-built from Facebook's open-source large models, initially developing only the smallest model to enable basic functionality in offline mode. Further custom development may be considered later.

- **Embedded System**: Initially based on the Raspberry Pi development board, with future designs to follow mainstream doorbell PCB layouts.

- **Firmware**: Developed independently to maximize compatibility with the large model.

## Current Challenges and Planned Solutions

The primary challenge is cost. Even for the smallest large model—let's take a 7B parameter model as an example—it may require tens of gigabytes of storage and RAM. Excluding the AI chip and other embedded costs, the flash and RAM alone may cost hundreds of dollars, which is unacceptable for small embedded devices and mass deployment. Therefore, this project will initially be a laboratory product to verify technical feasibility. However, I boldly predict that future technological developments will enable this project to be realized. Here are some speculative points:

- **Ongoing optimization of large models**: Further optimize the parameters and algorithms of large models to reduce their size while maintaining current intelligence levels.

- **Creating a dedicated AI SoC**: Currently, large models reside in flash memory and are transferred to DDR for operation. This essentially duplicates memory usage. I predict that new components will be developed that combine the low cost of flash memory with the speed of DDR, allowing large models to use a single storage unit for both purposes. (Though I believe "in-memory computing" will eventually be realized, the Von Neumann architecture is likely to remain for some time.) This will involve packaging technology that integrates storage units with processing units and a central control unit, resulting in an AI SoC that offers sufficient performance at low cost.

- **Short-term speculation on DDR and flash memory integration**: Design a custom circuit similar to an FPGA for the AI model itself. This would eliminate the need for separate storage while accommodating updates and iterations of large models. It would also support computation tasks, though this would require expertise in large models, RTL design, and FPGA for top-level architecture design. I plan to try this part myself.

## How to Contribute My Work?

Currently, this work is conducted independently by me, and no team workflow has been developed at this stage.



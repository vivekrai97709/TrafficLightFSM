# Traffic Light Controller FSM

## Overview

This project implements a Finite State Machine (FSM) for a two-road traffic light control system. The controller cycles through four predefined states representing different traffic light combinations.

## FSM Type

Moore State Machine

## States

| State | Road A | Road B |
| ----- | ------ | ------ |
| S0    | Green  | Red    |
| S1    | Yellow | Red    |
| S2    | Red    | Green  |
| S3    | Red    | Yellow |

## State Diagram

```text
S0 → S1 → S2 → S3 → S0
```

## Inputs

| Signal | Width | Description       |
| ------ | ----- | ----------------- |
| clk    | 1     | System clock      |
| rst    | 1     | Active-high reset |

## Outputs

| Signal |
| ------ |
| AG     |
| AY     |
| AR     |
| BG     |
| BY     |
| BR     |

## FSM Architecture

1. State Register
2. Next-State Logic
3. Output Logic

## Simulation Results

The FSM correctly cycles through all traffic light states and returns to the initial state after completing a full sequence.

## Concepts Learned

* Finite State Machines
* State Encoding
* Moore Machine Design
* Sequential Control Logic
* State Transitions

## Applications

Traffic management systems, protocol controllers, UART controllers, CPU control units, and embedded systems.

## Author

Vivek Rai

// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xkarastuba_mul.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XKarastuba_mul_CfgInitialize(XKarastuba_mul *InstancePtr, XKarastuba_mul_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Axilites_BaseAddress = ConfigPtr->Axilites_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XKarastuba_mul_Start(XKarastuba_mul *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKarastuba_mul_ReadReg(InstancePtr->Axilites_BaseAddress, XKARASTUBA_MUL_AXILITES_ADDR_AP_CTRL) & 0x80;
    XKarastuba_mul_WriteReg(InstancePtr->Axilites_BaseAddress, XKARASTUBA_MUL_AXILITES_ADDR_AP_CTRL, Data | 0x01);
}

u32 XKarastuba_mul_IsDone(XKarastuba_mul *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKarastuba_mul_ReadReg(InstancePtr->Axilites_BaseAddress, XKARASTUBA_MUL_AXILITES_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XKarastuba_mul_IsIdle(XKarastuba_mul *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKarastuba_mul_ReadReg(InstancePtr->Axilites_BaseAddress, XKARASTUBA_MUL_AXILITES_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XKarastuba_mul_IsReady(XKarastuba_mul *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKarastuba_mul_ReadReg(InstancePtr->Axilites_BaseAddress, XKARASTUBA_MUL_AXILITES_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XKarastuba_mul_EnableAutoRestart(XKarastuba_mul *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKarastuba_mul_WriteReg(InstancePtr->Axilites_BaseAddress, XKARASTUBA_MUL_AXILITES_ADDR_AP_CTRL, 0x80);
}

void XKarastuba_mul_DisableAutoRestart(XKarastuba_mul *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKarastuba_mul_WriteReg(InstancePtr->Axilites_BaseAddress, XKARASTUBA_MUL_AXILITES_ADDR_AP_CTRL, 0);
}

void XKarastuba_mul_InterruptGlobalEnable(XKarastuba_mul *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKarastuba_mul_WriteReg(InstancePtr->Axilites_BaseAddress, XKARASTUBA_MUL_AXILITES_ADDR_GIE, 1);
}

void XKarastuba_mul_InterruptGlobalDisable(XKarastuba_mul *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKarastuba_mul_WriteReg(InstancePtr->Axilites_BaseAddress, XKARASTUBA_MUL_AXILITES_ADDR_GIE, 0);
}

void XKarastuba_mul_InterruptEnable(XKarastuba_mul *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XKarastuba_mul_ReadReg(InstancePtr->Axilites_BaseAddress, XKARASTUBA_MUL_AXILITES_ADDR_IER);
    XKarastuba_mul_WriteReg(InstancePtr->Axilites_BaseAddress, XKARASTUBA_MUL_AXILITES_ADDR_IER, Register | Mask);
}

void XKarastuba_mul_InterruptDisable(XKarastuba_mul *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XKarastuba_mul_ReadReg(InstancePtr->Axilites_BaseAddress, XKARASTUBA_MUL_AXILITES_ADDR_IER);
    XKarastuba_mul_WriteReg(InstancePtr->Axilites_BaseAddress, XKARASTUBA_MUL_AXILITES_ADDR_IER, Register & (~Mask));
}

void XKarastuba_mul_InterruptClear(XKarastuba_mul *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKarastuba_mul_WriteReg(InstancePtr->Axilites_BaseAddress, XKARASTUBA_MUL_AXILITES_ADDR_ISR, Mask);
}

u32 XKarastuba_mul_InterruptGetEnabled(XKarastuba_mul *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XKarastuba_mul_ReadReg(InstancePtr->Axilites_BaseAddress, XKARASTUBA_MUL_AXILITES_ADDR_IER);
}

u32 XKarastuba_mul_InterruptGetStatus(XKarastuba_mul *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XKarastuba_mul_ReadReg(InstancePtr->Axilites_BaseAddress, XKARASTUBA_MUL_AXILITES_ADDR_ISR);
}


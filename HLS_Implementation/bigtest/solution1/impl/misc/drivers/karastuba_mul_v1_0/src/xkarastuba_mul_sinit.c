// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xkarastuba_mul.h"

extern XKarastuba_mul_Config XKarastuba_mul_ConfigTable[];

XKarastuba_mul_Config *XKarastuba_mul_LookupConfig(u16 DeviceId) {
	XKarastuba_mul_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XKARASTUBA_MUL_NUM_INSTANCES; Index++) {
		if (XKarastuba_mul_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XKarastuba_mul_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XKarastuba_mul_Initialize(XKarastuba_mul *InstancePtr, u16 DeviceId) {
	XKarastuba_mul_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XKarastuba_mul_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XKarastuba_mul_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif


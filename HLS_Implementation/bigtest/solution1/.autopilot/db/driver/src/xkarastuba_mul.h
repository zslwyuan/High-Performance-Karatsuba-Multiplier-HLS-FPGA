// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XKARASTUBA_MUL_H
#define XKARASTUBA_MUL_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xkarastuba_mul_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Axilites_BaseAddress;
} XKarastuba_mul_Config;
#endif

typedef struct {
    u32 Axilites_BaseAddress;
    u32 IsReady;
} XKarastuba_mul;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XKarastuba_mul_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XKarastuba_mul_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XKarastuba_mul_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XKarastuba_mul_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XKarastuba_mul_Initialize(XKarastuba_mul *InstancePtr, u16 DeviceId);
XKarastuba_mul_Config* XKarastuba_mul_LookupConfig(u16 DeviceId);
int XKarastuba_mul_CfgInitialize(XKarastuba_mul *InstancePtr, XKarastuba_mul_Config *ConfigPtr);
#else
int XKarastuba_mul_Initialize(XKarastuba_mul *InstancePtr, const char* InstanceName);
int XKarastuba_mul_Release(XKarastuba_mul *InstancePtr);
#endif

void XKarastuba_mul_Start(XKarastuba_mul *InstancePtr);
u32 XKarastuba_mul_IsDone(XKarastuba_mul *InstancePtr);
u32 XKarastuba_mul_IsIdle(XKarastuba_mul *InstancePtr);
u32 XKarastuba_mul_IsReady(XKarastuba_mul *InstancePtr);
void XKarastuba_mul_EnableAutoRestart(XKarastuba_mul *InstancePtr);
void XKarastuba_mul_DisableAutoRestart(XKarastuba_mul *InstancePtr);


void XKarastuba_mul_InterruptGlobalEnable(XKarastuba_mul *InstancePtr);
void XKarastuba_mul_InterruptGlobalDisable(XKarastuba_mul *InstancePtr);
void XKarastuba_mul_InterruptEnable(XKarastuba_mul *InstancePtr, u32 Mask);
void XKarastuba_mul_InterruptDisable(XKarastuba_mul *InstancePtr, u32 Mask);
void XKarastuba_mul_InterruptClear(XKarastuba_mul *InstancePtr, u32 Mask);
u32 XKarastuba_mul_InterruptGetEnabled(XKarastuba_mul *InstancePtr);
u32 XKarastuba_mul_InterruptGetStatus(XKarastuba_mul *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif

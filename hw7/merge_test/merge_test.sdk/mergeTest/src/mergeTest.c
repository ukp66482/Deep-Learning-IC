/*
 * mergeTest.c
 *
 *  Created on: Apr 22, 2025
 *      Author: kartg
 */


#include "xparameters.h"
#include "merge.h"
#include "xil_io.h"

int main(){
	u32 a[] = {32,25,16,9,6,5,1};
	u32 b[] = {20,12,10,7,5,3};
    u32 c[13];
    u32 Status;
    for(int i=0;i<7;i++){
    	MERGE_mWriteReg(XPAR_MERGE_0_S00_AXI_BASEADDR, 0xC, a[i]);
    }
    for(int i=0;i<6;i++){
    	MERGE_mWriteReg(XPAR_MERGE_0_S00_AXI_BASEADDR, 0x10, b[i]);
    }

    MERGE_mWriteReg(XPAR_MERGE_0_S00_AXI_BASEADDR, 0x0, 0x1);

    Status = MERGE_mReadReg(XPAR_MERGE_0_S00_AXI_BASEADDR, 0x4);

    while(!Status)
        Status = MERGE_mReadReg(XPAR_MERGE_0_S00_AXI_BASEADDR, 0x4);

    for(int i=0;i<13;i++){
        c[i] =MERGE_mReadReg(XPAR_MERGE_0_S00_AXI_BASEADDR, 0x8);
        xil_printf("%d\n\r",c[i]);
    }

    return 0;
}

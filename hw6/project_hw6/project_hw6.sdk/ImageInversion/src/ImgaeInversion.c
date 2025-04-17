#include <stdlib.h>
#include "xil_types.h" //u8 type
#include "xuartps.h" //UART device
#include "xparameters.h" //device ID
#include "sleep.h"

#define BAUDRATE 115200
#define IMAGESIZE 512*512
#define HEADERSIZE 1080
#define FILESIZE IMAGESIZE + HEADERSIZE

int main(){
	u8 *imageData;
	u32 recvBytes = 0;
	u32 totalRecvBytes = 0;
	u32 transmittedBytes = 0;
	u32 totaltransmittedBytes = 0;
	s32 status;
	imageData = malloc(sizeof(u8) * IMAGESIZE + HEADERSIZE);

	XUartPs_Config *myUartConfig;
	XUartPs myUart;
	myUartConfig = XUartPs_LookupConfig(XPAR_PS7_UART_0_DEVICE_ID);
	status = XUartPs_CfgInitialize(&myUart, myUartConfig, myUartConfig->BaseAddress);
	if(status != XST_SUCCESS){
		print("UART Initialization FAIL!!");
	}

	status = XUartPs_SetBaudRate(&myUart, BAUDRATE);
	if(status != XST_SUCCESS){
			print("Baud rate Initialization FAIL!!");
	}

	//Data transfer from Computer to DDR
	while(totalRecvBytes < FILESIZE){
		recvBytes = XUartPs_Recv(&myUart, (u8*)&imageData[totalRecvBytes], 100);
		totalRecvBytes += recvBytes;
	}

	//Read Data from DDR, process it, store back in DDR
	for(int i = HEADERSIZE; i < FILESIZE; i++){
		imageData[i] = 255 - imageData[i];
	}
	//Send Data to the Computer
	while(totaltransmittedBytes  < FILESIZE){
		transmittedBytes = XUartPs_Send(&myUart, (u8*)&imageData[totaltransmittedBytes], 1);
		totaltransmittedBytes += transmittedBytes;
		usleep(2000);
	}
	return 0;
}

#include <stdio.h>
#include "xparameters.h"
#include "platform.h"
#include "xil_printf.h"
#include "xil_cache.h"
#include "xil_io.h"
#include "xil_mmu.h"
#include "xbasic_types.h"
#include "sleep.h"
#include "xil_exception.h"
#include "xscugic.h"

/**************************************DEFINICIONI DIO *******************************************/

#define A 20 //dimenzije Pekmena
//dimenzije pravougaonika (koji cine poligon):
#define A_PRAV1 50
#define B_PRAV1 80
#define A_PRAV2 40
#define B_PRAV2 80

//pocetne koordinate Pekmena i pravougaonika(poligona)
#define X_PAC 0
#define Y_PAC 0

#define X_PRAV1 50
#define Y_PRAV1 50

#define X_PRAV2 200
#define Y_PRAV2 50

//bazne adrese za AXI GPIO
#define SWITCH_BASEADDR 0x41200000
#define BUTTON_BASEADDR 0x41210000
#define LED_BASEADDR 0x41220000

//definisanja potrebna za tajmer
#define TIMER_BASEADDR XPAR_AXI_TIMER_0_BASEADDR
#define TIMER_INTERRUPT_ID XPAR_FABRIC_AXI_TIMER_0_INTERRUPT_INTR
#define INTC_DEVICE_ID XPAR_PS7_SCUGIC_0_DEVICE_ID
#define XIL_AXI_TIMER_TCSR_OFFSET 0x0
#define XIL_AXI_TIMER_TLR_OFFSET 0x4
#define XIL_AXI_TIMER_TCR_OFFSET 0x8
#define XIL_AXI_TIMER_CSR_ENABLE_ALL_MASK 0x00000400
#define XIL_AXI_TIMER_CSR_ENABLE_PWM_MASK 0x00000200
#define XIL_AXI_TIMER_CSR_INT_OCCURED_MASK 0x00000100
#define XIL_AXI_TIMER_CSR_ENABLE_TMR_MASK 0x00000080
#define XIL_AXI_TIMER_CSR_ENABLE_INT_MASK 0x00000040
#define XIL_AXI_TIMER_CSR_LOAD_MASK 0x00000020
#define XIL_AXI_TIMER_CSR_AUTO_RELOAD_MASK 0x00000010
#define XIL_AXI_TIMER_CSR_EXT_GENERATE_MASK 0x00000004
#define XIL_AXI_TIMER_CSR_DOWN_COUNT_MASK 0x00000002


//definisanje R,G,B komponenti potrebnih za VGA
#define CRVENA 0xF800
#define PLAVA 0x1F
#define ZELENA 0x7E0


//Protofunkcija koja printuje na VGA Pekmena
void printPekmena(volatile u16 x, volatile u16 y, u16 boja);


//Protofunkcija koja printuje na VGA pravougaonike, kao ulazne parametre prima njihove koordinate, boju i dimenzije
void printPoligona(u16 x, u16 y, u16 boja, u16 dimA, u16 dimB);

/*
 * 	 funkcija bez povratne vrijednosti koja printuje na VGA bijele tacke koje Pekmen jede
 * 			ukoliko je tacka pojedena u globalnom nizu
 * 			tacka_je_prebrisana[] se setuje pozicija rezervisana za tacku na 1, te se preko prostora gdje je do
 * 			tada bila ta tacka ispisuje na VGA crni kvadrat.
 * 			setovanje se vrsi kako bi se ispis crnog kvadrata desio samo jednom (u suprotnom Pekmen treperi
 * 			put kad predje preko pozicije dotadasnje bijele tacke). Kao ulazne parametre prima x i y koordinatu bijele tacke, kao i status tačke (da li je tačka pojedena i da li je pojedena već jednom(prebrisana));
 */
void printTacke(u16 x, u16 y, u8 *pojedena, u8 *prebrisana);

//Protofunkcija koja vraca 1 ukoliko se koordinate kvadrata i pravougaonika preklope(sudar se desi), u suprotnom vrati 0

u8 Sudar(u16 x_k, u16 y_k, u16 a_k, u16 x_p, u16 y_p, u16 a_p, u16 b_p);

//Protofunkcija koja ispisuje sve tacke
void printSveTacke();

//funkcije za upravljanje tajmerom
u32 Setup_Interrupt(u32 DeviceId, Xil_InterruptHandler Handler, u32 interrupt_ID);
void Timer_Interrupt_Handler();
static void Setup_And_Start_Timer(unsigned int milliseconds);

//promjenljive potrebne za pracenje statusa ledovki, tastera i switcheva
int switches = 0;
int buttons = 0;
int leds = 0;

// Maska jedne bijele tacke (kruga) - crna(0x0000) i bijela(xFFFF) 
//Realizovano preko 2D matrice, moguca je realizacija i preko strukture
u16 bijela_tacka[12][12] = {
						{0x0000,0x0000,0x0000,0x0000,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0x0000,0x0000,0x0000,0x0000},
						{0x0000,0x0000,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0x0000,0x0000},
						{0x0000,0x0000,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0x0000},
						{0x0000,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0X0000},
						{0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF},
						{0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF},
						{0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF},
						{0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF},
						{0x0000,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0x0000},
						{0x0000,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0x0000},
						{0x0000,0x0000,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0x0000,0x0000},
						{0x0000,0x0000,0x0000,0x0000,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0x0000,0x0000,0x0000,0x0000},
						};

// x i y koordinate koje predstavljaju pozicije bijelih tacaka
u16 pozicije_tacaka[15][2] = {
						{25, 25},
						{32, 145},
						{42, 215},
						{123, 25},
						{132, 145},
						{142, 215},
						{260, 29},
						{280, 134},
						{290, 200},
						{200, 169},
						{120, 189},
						{220, 200},
						{200, 10},
						{60, 20},
						{220, 30}
						};

/*niz koji u sebi sadrzi informaciju o tome je li odredjena tacka pojedena ili nije
 0-nije pojedena, 1-pojedena je */
	u8 status_tacaka[15] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};

/* tacka je prebrisana ukoliko je pekmen pojeo i ona tada postaje crni kvadrat
 * kako bismo u prekidnoj rutini izbjegli da se stalno smjenjuje ispis crnog kvadrata i Pekmena preko njega
 * (sto izaziva "igranje" slike) uvodimo jos jedan statusni niz gdje 0 znaci da tacka jos nije pojedena
 * i da jos nije prebrisana (ovo je kljucno za slucaj kada je pojedena tacka i jos uvijek nismo prebrisali bijelu tacku 
 * sto treba samo jednom uraditi jer u suprotnom imamo gorenavedeni problem. Kada se to obavi u ovaj niz na poziciju rezervisanu za tu
 * tacku se upisuje 1 i crni kvadrat se vise ne ispisuje na tu poziciju
 */
u8 tacka_je_prebrisana[15] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};

volatile u16 y = Y_PAC;
volatile u16 x = X_PAC;
volatile u8 broj_pojedenih_tacaka = 0;


/**************************************IMPLEMENTACIONI DIO *******************************************/

int main()
{
	int status;
	int data;
	init_platform();

	print("VGA pokrenut\n\r");
	Xil_DCacheDisable();
	Xil_ICacheDisable();
	status = Setup_Interrupt(INTC_DEVICE_ID, (Xil_InterruptHandler)Timer_Interrupt_Handler, TIMER_INTERRUPT_ID);

	while(1)
	{

		Setup_And_Start_Timer(5);

		//Clear interrupt flag
		data = Xil_In32(TIMER_BASEADDR + XIL_AXI_TIMER_TCSR_OFFSET);
		Xil_Out32(TIMER_BASEADDR + XIL_AXI_TIMER_TCSR_OFFSET, (data | XIL_AXI_TIMER_CSR_INT_OCCURED_MASK));

		// Disable timer
		//data = Xil_In32(TIMER_BASEADDR + XIL_AXI_TIMER_TCSR_OFFSET);
		//Xil_Out32(TIMER_BASEADDR + XIL_AXI_TIMER_TCSR_OFFSET, data & ~(XIL_AXI_TIMER_CSR_ENABLE_TMR_MASK));

		usleep(50000);//sleep potreban da se kretanje Pekmena dovoljno dobro vidi
	}
	cleanup_platform();

	return 0;
}

void printPekmena(volatile u16 x, volatile u16 y, u16 boja)
{
	for(volatile u16 j = y; j < y + A; j++)
	{
		for(volatile u16 i = x; i < x + A; i++)
		{
			Xil_Out16(XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + (j*320+i)*2, (u16)boja);
		}
	}
}

void printPoligona(u16 x, u16 y, u16 boja, u16 dimA, u16 dimB)
{
	for(u16 j = y; j < y + dimB; j++)
	{
		for(u16 i = x; i < x + dimA; i++)
		{
			Xil_Out16(XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + (j*320+i)*2, CRVENA);
		}
	}
}

void printTacke(u16 x, u16 y, u8 *pojedena, u8 *prebrisana)
{
	if(!*(pojedena)){
		for(u16 j = y; j < y + 12; j++)
		{
			for(u16 i = x; i < x + 12; i++)
			{
				Xil_Out16(XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + (j*320+i)*2, (bijela_tacka[i - x][j - y] & (CRVENA | PLAVA | ZELENA)));
			}
		}
	}
	else
	{
		if(!*(prebrisana))
		{
			*prebrisana = 1;
			for(u16 j = y; j < y + 12; j++)
			{
				for(u16 i = x; i < x + 12; i++)
				{
					Xil_Out16(XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + (j*320+i)*2, 0);
				}
			}
		}
	}
}

void printSveTacke()
{
	u8 i;
	for(i = 0; i < 15; i++)
	{
		printTacke(pozicije_tacaka[i][0], pozicije_tacaka[i][1], status_tacaka + i, tacka_je_prebrisana + i);
	}
}

u8 Sudar(u16 x_k, u16 y_k, u16 a_k, u16 x_p, u16 y_p, u16 a_p, u16 b_p)
{
	u8 ima_sudara = 0;
	if(((x_k > x_p - a_k) && (x_k < x_p + a_p)) && ((y_k > y_p - a_k) && (y_k < y_p + b_p)))
	{
		ima_sudara = 1;
	}

	return ima_sudara;
}

void kolizijaSTackom(u16 x_k, u16 y_k, u16 a_k, u16 a_p, u16 b_p)
{
	u8 i;
	for(i = 0; i < 15; i++)
	{
		if(Sudar(x_k, y_k, a_k, pozicije_tacaka[i][0], pozicije_tacaka[i][1], a_p, b_p))
		{
			if(!*(status_tacaka + i)){
				*(status_tacaka + i) = 1;
				broj_pojedenih_tacaka++;
			}
		}
	}
}


u32 Setup_Interrupt(u32 DeviceId, Xil_InterruptHandler Handler, u32 interrupt_ID)
{
	XScuGic_Config *IntcConfig;
	XScuGic INTCInst;
	int status;
	// Extracts informations about processor core based on its ID, and they are used to setup interrupts
	IntcConfig = XScuGic_LookupConfig(DeviceId);
	// Initializes processor registers using information extracted in the previous step
	status = XScuGic_CfgInitialize(&INTCInst, IntcConfig, IntcConfig->CpuBaseAddress);
	if(status != XST_SUCCESS) return XST_FAILURE;
	status = XScuGic_SelfTest(&INTCInst);
	if (status != XST_SUCCESS) return XST_FAILURE;
	// Connect Timer Handler And Enable Interrupt
	// The processor can have multiple interrupt sources, and we must setup trigger and priority
	// for the our interrupt. For this we are using interrupt ID.
	XScuGic_SetPriorityTriggerType(&INTCInst, interrupt_ID, 0xA8, 3);
	// Connects out interrupt with the appropriate ISR (Handler)
	status = XScuGic_Connect(&INTCInst, interrupt_ID, Handler, (void *)&INTCInst);
	if(status != XST_SUCCESS) return XST_FAILURE;
	// Enable interrupt for out device
	XScuGic_Enable(&INTCInst, interrupt_ID);
	//Two lines bellow enable exeptions
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT, (Xil_ExceptionHandler)XScuGic_InterruptHandler,&INTCInst);
	Xil_ExceptionEnable();
	return XST_SUCCESS;
}



// Prekidna rutina tajmera
void Timer_Interrupt_Handler()
{
	u16 boja = 0;
	switches = Xil_In32(SWITCH_BASEADDR);

	{
		if(switches&0x1)
		{
			boja |= CRVENA;
			printPekmena(x, y, boja);
		}else
		{
			boja &= ~CRVENA;
			printPekmena(x, y, boja);
		}

		if(switches&0x2)
		{
			boja |= ZELENA;
			printPekmena(x, y, boja);
		}
		else
		{
			boja &= ~ZELENA;
			printPekmena(x, y, boja);
		}

		if(switches&0x4)
		{
			boja |= PLAVA;
			printPekmena(x, y, boja);
		}
		else
		{
			boja &= ~PLAVA;
			printPekmena(x, y, boja);
		}
	}

	printPoligona(X_PRAV1, Y_PRAV1, CRVENA, A_PRAV1, B_PRAV1);
	printPoligona(X_PRAV2, Y_PRAV2, CRVENA, A_PRAV2, B_PRAV2);

	printSveTacke();

	Xil_Out32(LED_BASEADDR, broj_pojedenih_tacaka);

	buttons = Xil_In32(BUTTON_BASEADDR);
	{
			if(buttons&0x1)
			{
				if(x <= (319 - A - 1))
				{
					if((!Sudar(x + 1, y, A, X_PRAV1, Y_PRAV1, A_PRAV1, B_PRAV1)) && (!Sudar(x + 1, y, A, X_PRAV2, Y_PRAV2, A_PRAV2, B_PRAV2)))
					{
						printPekmena(x, y, 0);
						x+=1;
						kolizijaSTackom(x, y, A, 12, 12);
						printPekmena(x, y, boja);
					}
				}
			}

			if(buttons&0x2)
			{
				if(y >= 1)
				{
					if((!Sudar(x, y - 1, A, X_PRAV1, Y_PRAV1, A_PRAV1, B_PRAV1)) && (!Sudar(x, y - 1, A, X_PRAV2, Y_PRAV2, A_PRAV2, B_PRAV2)))
					{
						printPekmena(x, y, 0);
						y-=1;
						kolizijaSTackom(x, y, A, 12, 12);
						printPekmena(x, y, boja);
					}
				}
			}

			if(buttons&0x4)
			{
				if(y <= (239 - A - 1))
				{
					if((!Sudar(x, y + 1, A, X_PRAV1, Y_PRAV1, A_PRAV1, B_PRAV1)) && (!Sudar(x, y + 1, A, X_PRAV2, Y_PRAV2, A_PRAV2, B_PRAV2)))
					{
						printPekmena(x, y, 0);
						y+=1;
						kolizijaSTackom(x, y, A, 12, 12);
						printPekmena(x, y, boja);
					}
				}
			}

			if(buttons&0x8)
			{
				if(x >= 1)
				{
					if((!Sudar(x - 1, y, A, X_PRAV1, Y_PRAV1, A_PRAV1, B_PRAV1)) && (!Sudar(x - 1, y, A, X_PRAV2, Y_PRAV2, A_PRAV2, B_PRAV2)))
					{
						printPekmena(x, y, 0);
						x--;
						kolizijaSTackom(x, y, A, 12, 12);
						printPekmena(x, y, boja);
					}
				}
			}
		}

	return;
}

static void Setup_And_Start_Timer(unsigned int milliseconds)
{
	// Disable Timer Counter
	unsigned int timer_load;
	unsigned int zero = 0;
	unsigned int data = 0;
	// Line bellow is true if timer is working on 100MHz
	timer_load = zero - milliseconds*100000;
	// Disable timer/counter while configuration is in progress
	data = Xil_In32(TIMER_BASEADDR + XIL_AXI_TIMER_TCSR_OFFSET);
	Xil_Out32(TIMER_BASEADDR + XIL_AXI_TIMER_TCSR_OFFSET, (data & ~(XIL_AXI_TIMER_CSR_ENABLE_TMR_MASK)));
	// Set initial value in load register
	Xil_Out32(TIMER_BASEADDR + XIL_AXI_TIMER_TLR_OFFSET, timer_load);
	// Load initial value into counter from load register
	data = Xil_In32(TIMER_BASEADDR + XIL_AXI_TIMER_TCSR_OFFSET);
	Xil_Out32(TIMER_BASEADDR + XIL_AXI_TIMER_TCSR_OFFSET, (data | XIL_AXI_TIMER_CSR_LOAD_MASK));
	// Set LOAD0 bit from the previous step to zero
	data = Xil_In32(TIMER_BASEADDR + XIL_AXI_TIMER_TCSR_OFFSET);
	Xil_Out32(TIMER_BASEADDR + XIL_AXI_TIMER_TCSR_OFFSET, (data & ~(XIL_AXI_TIMER_CSR_LOAD_MASK)));
	// Enable interrupts and autoreload, reset should be zero
	Xil_Out32(TIMER_BASEADDR + XIL_AXI_TIMER_TCSR_OFFSET, (XIL_AXI_TIMER_CSR_ENABLE_INT_MASK | XIL_AXI_TIMER_CSR_AUTO_RELOAD_MASK));
	// Start Timer by setting enable signal
	data = Xil_In32(TIMER_BASEADDR + XIL_AXI_TIMER_TCSR_OFFSET);
	Xil_Out32(TIMER_BASEADDR + XIL_AXI_TIMER_TCSR_OFFSET, (data | XIL_AXI_TIMER_CSR_ENABLE_TMR_MASK));
}






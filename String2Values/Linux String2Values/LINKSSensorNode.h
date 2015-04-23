
#ifndef LINKSSensorNode_H
#define LINKSSensorNode_H

#include <string>
#include <string.h>
#include <iostream>
#include "serialib.h"


const int ASCII2NUM = 48;

class LINKSSensorNode
{
	static const char PIR_TOGGLE = 'p';
	static const char USONIC_TOGGLE = 'u';
	static const char START = '~';
	static const char END = '*';
	static const char OFF = 'Z';

	//indices for num_devices in constructor
	static const int IDX_USONIC = 0;
	static const int IDX_PIR = 1;
	static const int IDX_LASER = 2;
	static const int stringSize = 100;
	std::string nodeLocation;
	int nodeBaud;
	serialib Serial;   //class instantiation of serial lib
	
public:
	//pointers for holding sensor data after it is parsed from string
	int size_usonic;
	float * usonic;
	int size_laser;
	float * laser;
	int size_pir;
	int * pir;
	bool statePIR;
	bool stateUSONIC;
	int Ret;
	//function for refreshing the latest sensor data. note normally this function would have
	//no input argument and would interface with serialib directly to get the new string.
	int refresh();

	int togglePIR();	//sends 'P' to toggle pir

	int toggleUsonic();	//sends 'U' to toggle usonic

	//function to print sensor values
	void printstatus(void);

	//constructor
	LINKSSensorNode(std::string loc, int baud, int num_devices[], int num_devices_size);
};




#endif

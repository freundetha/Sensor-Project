/*
Example code to convert a given string (eventually to be obtained from serialib class and sensor
node microcontroller) into a set of doubles for each sensor.
*/

#include "LINKSSensorNode.h"
#include <stdio.h>
#include <string>
#include <iostream>

//test strings. Obviously this would come from the microcontroller
int num_usonic_node0 = 8;
int num_pir_node0 = 8;
int num_laser_node0 = 0;


int main()
{

int count = 0;


	
	int num_devices_node0[] = { num_usonic_node0, num_pir_node0, num_laser_node0 };
	int num_devices_node0_size = 3;
	//4 PIR, 4 usonic, 1 laser, in order, similar formats for same sensors

	std::string node0Loc = "/dev/ttyUSB0";
	int node0Baud = 9600;
	
	




	//Initialize the sensor node class. Please note the constructor will need to
	//change this later to be the usb device and baud rate of the microcontroller.
	//Also input the number of each sensor from the ucontroller for generality's sake
	
	LINKSSensorNode node0(node0Loc,node0Baud,num_devices_node0,num_devices_node0_size);
	//LINKSSensorNode node1(node1Loc, node1Baud, num_devices_node1, num_devices_node1_size);

	//convert to string
	//please note this refresh function will work differently in the final program.
	//basically, refresh will get new data using the serialib class and then parse the
	//strings and put the information into floating point format. Therefore, it normally
	//will not have an input, but in this example the string will be an input.

	while (1)
	{
		
		node0.refresh();
		node0.printstatus();
	
		if (count%100 ==0)
		{
			 node0.togglePIR();
	 	
		}
	
	 	if (count%200 ==0)
		{
			 node0.toggleUsonic();
	 	
		}
	 
	 	count++;	
	}

	

	
   
  
	
	//std::cout << "\n\nProgram has ended successfully. Press Ctrl + c to exit" << std::endl;

	
	

	return 0; //program ended successfully
}

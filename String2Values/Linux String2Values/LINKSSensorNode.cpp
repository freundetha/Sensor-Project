
#include "LINKSSensorNode.h"






//constructor
LINKSSensorNode::LINKSSensorNode(std::string loc, int baud, int num_devices[], int num_devices_size)
{
	//initialize serial stuff
	nodeLocation = loc;
	nodeBaud = baud;
	
	//initialize arrays
	size_usonic = num_devices[IDX_USONIC];
	usonic = new float[size_usonic];
	size_laser = num_devices[IDX_LASER];
	laser = new float[size_laser];
	size_pir = num_devices[IDX_PIR];
	pir = new int[size_pir];
	bool statePIR = 1;
	bool stateUSONIC = 1;
}

int LINKSSensorNode::togglePIR()
{

	//Ret = Serial.Open(nodeLocation, nodeBaud);
	Ret = Serial.Open("/dev/ttyUSB0", 9600);
	if(Ret!=1)
	{
		std::cout << "Error while opening port\n";
		return Ret;		
	}
	
	std::cout << "Serial port opened successfully\n";
		
	Serial.WriteChar(PIR_TOGGLE);

	std::cout << "PIR toggl'n\n";
	
	statePIR^=1;		//toggles the PIR state 

	Serial.Close();

	return 0;

			

}
int LINKSSensorNode::toggleUsonic()
{

	//Ret = Serial.Open(nodeLocation, nodeBaud);
	Ret = Serial.Open("/dev/ttyUSB0", 9600);
	if(Ret!=1)
	{
		std::cout << "Error while opening port\n" ;
		return Ret;		
	}
	
	std::cout << "Serial port opened successfully\n";
		
	Serial.WriteChar(USONIC_TOGGLE);
	
	std::cout << "Usonic toggl'n\n";
	
	statePIR^=1;		//toggles the PIR state 

	Serial.Close();
			
	return 0;

}



int LINKSSensorNode::writeFile()
{

//write data onto file in this format
// u1,u2,u3,u4,u5,....p1,p2,p3 \n
//###.##,###.##,###.##,....#,#,#,#,#    then write time: H/M/S/MS\n
//append data to end of file
//overwrite file if overwrite == 1
//if filename == :P, write file name as "sensor node Day/Month/Year"



  time_t currentTime;
  struct tm *localTime;

  time( &currentTime );                   // Get the current time
  localTime = localtime( &currentTime );  // Convert the current time to the local time

  int Day    = localTime->tm_mday;
  int Month  = localTime->tm_mon + 1;
  int Year   = localTime->tm_year + 1900;
  int Hour   = localTime->tm_hour;
  int Min    = localTime->tm_min;
  int Sec    = localTime->tm_sec;

    

	std::string filename;
	filename = std::to_string(Year) + "_" + std::to_string(Month)+ "_" + std::to_string(Day) + "_" + std::to_string(Hour) + "_" + std::to_string(Min) + ".csv";
		
	  

 	std::fstream myfile;
      
        //myfile.open();
	
	
	
	myfile.open(filename, std::ios::app);

	myfile.seekp(0,std::ios::end);	//this will check if file is empty. If empty, it will print out the format of the data
	size_t size = myfile.tellg();
	if( size == 0)
	{
			
		for (int i = 0; i < size_usonic; i++)
		{
		myfile << "u" << i << ",";	 //print out u0,u1...u#
		}	 
   	
		for (int i = 0; i < size_usonic; i++)
		{
		myfile << "p" << i << ",";	
		}	
		myfile << "H:M:S";	
        	myfile << std::endl;
	
		
	}
  		
	

      

   	

   	for (int i = 0; i < size_usonic; i++)
	{
		myfile << usonic[i] << ",";	
		
	}	 
   	
	for (int i = 0; i < size_usonic; i++)
	{
		myfile << pir[i] << ",";	
	}	
		//print H:MM:SS
	myfile << " " << Hour << ":" << Min << ":" <<  Sec << std::endl;
	
	 
	
	myfile.close();
	

	return 0;
	
}

int LINKSSensorNode::writeFile(std::string filename , bool overwrite)
{

//write data onto file in this format
// u1,u2,u3,u4,u5,....p1,p2,p3 \n
//###.##,###.##,###.##,....#,#,#,#,#    then write time: H/M/S/MS\n
//append data to end of file
//overwrite file if overwrite == 1


	//These are all the time value necessary for creating the file name
	time_t currentTime;
  	struct tm *localTime;

  	 time( &currentTime );                   // Get the current time
 	 localTime = localtime( &currentTime );  // Convert the current time to the local time

	  int Day    = localTime->tm_mday;
	  int Month  = localTime->tm_mon + 1;
	  int Year   = localTime->tm_year + 1900;
	  int Hour   = localTime->tm_hour;
	  int Min    = localTime->tm_min;
	  int Sec    = localTime->tm_sec;

    


 	std::fstream myfile;
      
        //myfile.open();
	 
	
	
  		//begin the new file by writing to it the form of the output, which here will be:
		// u0,u1,u2,u3,u4
	myfile.open(filename, std::ios::app);
	
	myfile.seekp(0,std::ios::end);
	size_t size = myfile.tellg();
	if( size == 0)
	{
		
		for (int i = 0; i < size_usonic; i++)
		{
		myfile << "u" << i << ",";	
		}	 
   	
		for (int i = 0; i < size_usonic; i++)
		{
		myfile << "p" << i << ",";	
		}	
		myfile << "H:M:S";
        	myfile << std::endl;
		
	}
  		
       
	
	
   	

   	for (int i = 0; i < size_usonic; i++)
	{
		myfile << usonic[i] << ",";	
	}	 
   	
	for (int i = 0; i < size_usonic; i++)
	{
		myfile << pir[i] << ",";	
	}	
		//print H:MM:SS
	myfile << " " << Hour << ":" << Min << ":" <<  Sec << std::endl;
	
	 
	
	myfile.close();
	

	return 0;
	
}

bool  LINKSSensorNode::fileExists(const char *fileName)
{
    std::ifstream infile(fileName);
    return infile.good();

}

int LINKSSensorNode::refresh()
{

	char bigBuffer[89];
	char readByte;
	
	char Buffer[90];

	
	// first this section should have serialib code to extract the string we want
	//INSERT CODE HERE
	//Ret = Serial.Open(nodeLocation, nodeBaud);
	Ret = Serial.Open("/dev/ttyUSB0", 9600);
	if(Ret!=1)
	{
		std::cout << "Error while opening port\n" ;
		return Ret;		
	}
	
	while(1)
		{
			
			Ret = Serial.ReadChar(&readByte, 5000);

			if (readByte == START && Ret == 1)
				{
					//std::cout << "found tilde \n";
					break;
					

				}
			
			
			
		}

	Ret = Serial.ReadString(Buffer, '\n', stringSize, 5000);
	if(Ret>0){
		std::cout << "String read from serial port: " << Buffer << "\n" ;
	}
	else{
		std::cout << "Timeout reached. No data received! \n" ;
		}

	Serial.Close();

	std::string toConvert = "~";
	//toConvert.front() = START;
	toConvert += Buffer;



	std::cout << nodeLocation << " is parsing string " << toConvert << std::endl;




	//format of string: "~P0xP1xP2x ... PNxU0yyy.yyU1yyy.yy ... UMyyy.yyL0vvv.vvL1vvv.vv...LKvv.vvv*"
	//P = PIR
	//N+1 = # of PIRs
	//x = 0 or 1 or Z (Z corresponding to OFF)
	//U = ultrasonic
	//M+1 = # of ultrasonics
	//yyy.yy = some decimal number or Z (Z corresponding to OFF)
	//L = Laser
	//K+1 = # of lasers
	//vv.vvv = some decimal number or Z (Z corresponding to OFF)

	// NOTE:  decimals may not necessarily have a fixed number of fractional and whole digits.
	// off states will be denoted by -1.
	// Can be in ANY order
	
	//convert string to numbers
	//basically, we iterate through the string until the end, parsing along the way.
	
	//device identifiers in string
	const char U = 'U';
	const char P = 'P';
	const char L = 'L';


	//instantiate a serialib class
	serialib LS;


	//containers for storing current device information
	char type_device;
	int num_device;
	float val_device;


	int temp;
	float divisor = 1;
	bool first = true;

	//states of system that deciphers code
	const int STATE_INIT = -1;
	const int STATE_START = 0;
	const int STATE_TYPE_DEVICE = 1;
	const int STATE_NUM_DEVICE = 2;
	const int STATE_WHOLE_NUM = 3;
	const int STATE_FRAC_NUM = 4;
	const int STATE_END = 5;
	const int STATE_OFF = 6;
	const int STATE_ERROR = -2;//will be default state
	//initialize state
	int state = STATE_INIT;
	


	




	for (std::string::iterator it = toConvert.begin(); it != toConvert.end(); ++it)
	{
		char fordebug = *it;
		switch (state)
		{
		case STATE_INIT:
			if (*it == START)
				state = STATE_START;
			else
				state = STATE_ERROR;
			break;
		case STATE_START:
			if (*it == U || *it == P || *it == L)
			{
				state = STATE_TYPE_DEVICE;
				type_device = *it;
			}
			else
				state = STATE_ERROR;
			break;
		case STATE_TYPE_DEVICE:
			num_device = int(*it) - ASCII2NUM;
			if (num_device < 0 || num_device > 9)
				state = STATE_ERROR;
			else
				state = STATE_NUM_DEVICE;
			break;
		case STATE_NUM_DEVICE:
			if (*it == OFF)
			{
				state = STATE_OFF;
				val_device = -1;
			}
			else
			{
				val_device = float(int(*it) - ASCII2NUM);
				if (num_device < 0 || num_device > 9)
					state = STATE_ERROR;
				else
					state = STATE_WHOLE_NUM;
			}
			
			break;
		case STATE_OFF:
			if (*it == U || *it == P || *it == L)
			{
				state = STATE_TYPE_DEVICE;
				if (type_device == U)
				{
					usonic[num_device] = val_device;
				}
				else if (type_device == P)
				{
					pir[num_device] = int(val_device);
				}
				else if (type_device == L)
				{
					laser[num_device] = val_device;
				}
				type_device = *it;
			}
			else if (*it == END)
				state = STATE_END;
			else if (*it == OFF || *it == '.')
				state = STATE_OFF;
			else
				state = STATE_ERROR;
			break;
		case STATE_WHOLE_NUM:
			if (*it == '.')
			{
				divisor = 1;
				state = STATE_FRAC_NUM;
			}
			else if (*it == END)
				state = STATE_END;
			else if (*it == U || *it == P || *it == L)
			{
				state = STATE_TYPE_DEVICE;
				if (type_device == U)
				{
					usonic[num_device] = val_device;
				}
				else if (type_device == P)
				{
					pir[num_device] = int(val_device);
				}
				else if (type_device == L)
				{
					laser[num_device] = val_device;
				}
				type_device = *it;

			}
			else
			{
				temp = int(*it) - ASCII2NUM;
				if (temp < 0 || temp > 9)
					state = STATE_ERROR;
				else
				{
					val_device = val_device * 10 + float(temp);
					state = STATE_WHOLE_NUM;
				}
			}
			break;
		case STATE_FRAC_NUM:
			if (*it == P || *it == U || *it == L)
			{
				state = STATE_TYPE_DEVICE;
				if (type_device == U)
				{
					usonic[num_device] = val_device;
				}
				else if (type_device == P)
				{
					pir[num_device] = int(val_device);
				}
				else if (type_device == L)
				{
					laser[num_device] = val_device;
				}
				type_device = *it;
			}
			else if (*it == END)
				state = STATE_END;
			else
			{
				temp = int(*it) - ASCII2NUM;
				if (temp < 0 || temp > 9)
					state = STATE_ERROR;
				else
				{
					divisor = divisor * 10;
					val_device = val_device + float(temp) / (divisor);
					state = STATE_FRAC_NUM;
				}
			}
			
			break;	
		default:
			break;

		}

		if (state == STATE_ERROR) //stop for loop if we have an error.
		{
			std::cout << "ERROR: FSM in LINKSSensorNode::refresh failed - invalid string" << std::endl;
			break;
		}
		else if (state == STATE_END) // finished successfully
		{
			if (type_device == U)
			{
				usonic[num_device] = val_device;
			}
			else if (type_device == P)
			{
				pir[num_device] = int(val_device);
			}
			else if (type_device == L)
			{
				laser[num_device] = val_device;
			}
			std::cout << "FSM in LINKSSensorNode::refresh finished successfully" << std::endl;
			break;
		}

	}

	return 0;
}

void LINKSSensorNode::printstatus(void)
{
   

   
   
		
  	

	std::cout << "Sensor Node Status on " << nodeLocation << std::endl;
	//first usonic
	for (int i = 0; i < size_usonic; i++)
	{
		
		std::cout << "usonic" << i << ": " << usonic[i] << std::endl;
	}
	for (int i = 0; i < size_pir; i++)
	{
    		
		std::cout << "pir" << i << ": " << pir[i] << std::endl;
	}
	for (int i = 0; i < size_laser; i++)
	{
		
		std::cout << "laser" << i << ": " << laser[i] << std::endl;
	}
	
   		
   
      
}

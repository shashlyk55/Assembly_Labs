#include "stdafx.h"

int DeserializeNumber(char* filePath) {

	ifstream reader(filePath);

	if (!reader.is_open()) {
		cout << "Не удалось открыть файл." << endl;
		return -1;
	}

	int resultNumber = 0;

	string buff;
	reader >> buff;
	buff.erase(0, 6);
	sscanf_s(buff.c_str(), "%x", &resultNumber);

	reader.close();
	return resultNumber;
}

void ConvertToAssembly(char* filePath, long number) {

	ofstream fileAsm(filePath);

	fileAsm ASM_HEAD;

	fileAsm << "LONG    DD " << number << endl;
	//fileAsm << "UNUM	BYTE " << unum << endl << endl;

	fileAsm ASM_FOOTER;

	fileAsm.close();
}


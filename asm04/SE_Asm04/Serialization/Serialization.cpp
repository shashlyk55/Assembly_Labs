#include "Serialization.h"


	void Serialize(char* filePath, long number) {

		ofstream writer(filePath);
		
		if (!writer.is_open()) {
			cout << "Не удалось открыть файл." << endl;
			return;
		}

		writer << "0x01" << "0x" << setfill('0') << setw(8) << hex << number;

		writer.close();
	}
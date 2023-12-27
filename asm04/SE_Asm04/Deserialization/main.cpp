#include "stdafx.h"

int main()
{
	string pathAsm = "D:\\KPO_3sem\\asm04\\SE_Asm04\\asm04.asm";
	string path = "D:\\KPO_3sem\\asm04\\SE_Asm04\\Serialization\\bin.txt";


	long num = DeserializeNumber((char*)"D:\\KPO_3sem\\asm04\\SE_Asm04\\Serialization\\bin.txt");
	cout << num << endl;
	/*unsigned short unum = DeserializeNumber((char*)"D:\\KPO_3sem\\asm04\\SE_Asm04\\Serialization\\bin.txt");
	cout << unum << endl;*/

	ConvertToAssembly((char*)"D:\\KPO_3sem\\asm04\\SE_Asm04\\asm04.asm", num);
	

	return 0;
}
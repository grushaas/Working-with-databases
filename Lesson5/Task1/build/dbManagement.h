#pragma once
#include <string>

class dbManagement
{
private:
	int id = 0;

public:

	//Создание/Подключение к БД
	void CreateDb();

	//Добавить клиента
	void AddClient(std::string name, std::string surname, std::string email, int phone);

	//Добавить телефон для существующего клиента
	void AddPhoneForClient(int id, int phone);

	//Изменить данные о клиенте
	void EditClient(std::string name, std::string surname, std::string email, int phone, int id);

	//Удалить телефон для существующего клиента
	void DelPhoneForClient(int id);

	//Удалить клиента
	void DelClient(int id);
	
	//Найти клиента по параметрам
	void SearchClient(std::string name, std::string surname, std::string email, int phone, int id);
};

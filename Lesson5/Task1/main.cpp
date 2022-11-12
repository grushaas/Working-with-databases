#include <iostream>
#include <Windows.h>
#include "dbManagement.h"

int main()
{
	std::string name, surname, email;
	int id, phone;

	dbManagement db;
	int option;

	std::cout << "This is the clientele database management system 'clientele'" << std::endl;
	std::cout << "Choose one of the options: " << std::endl;
	std::cout << "1. Create a database" << std::endl;
	std::cout << "2. Add a client to the database" << std::endl;
	std::cout << "3. Add a phone to an existing client" << std::endl;
	std::cout << "4. Change customer data" << std::endl;
	std::cout << "5. Delete a phone for an existing client" << std::endl;
	std::cout << "6. Remove a client from the database" << std::endl;
	std::cout << "7. Find a client by parameters" << std::endl;
	std::cin >> option;

	system("cls");

	switch (option)
	{
	case 1:
		db.CreateDb();
		break;

	case 2:
		std::cout << "Enter the client's name: ";
		std::cin >> name;
		std::cout << "Enter the client's surname: ";
		std::cin >> surname;
		std::cout << "Enter the client's email: ";
		std::cin >> email;
		std::cout << "Enter the client's client_id: ";
		std::cin >> id;
		std::cout << "Enter the client's phone: ";
		std::cin >> phone;

		db.AddClient(name, surname, email, phone);
		break;

	case 3:
		std::cout << "Enter the client's client_id: ";
		std::cin >> id;
		std::cout << "Enter the client's phone: ";
		std::cin >> phone;

		db.AddPhoneForClient(id, phone);
		break;

	case 4:
		std::cout << "Enter the client's name: ";
		std::cin >> name;
		std::cout << "Enter the client's surname: ";
		std::cin >> surname;
		std::cout << "Enter the client's email: ";
		std::cin >> email;
		std::cout << "Enter the client's client_id: ";
		std::cin >> id;
		std::cout << "Enter the client's phone: ";
		std::cin >> phone;

		db.EditClient(name, surname, email, phone, id);
		break;

	case 5:
		std::cout << "Enter the client's client_id: ";
		std::cin >> id;

		db.DelPhoneForClient(id);
		break;

	case 6:
		std::cout << "Enter the client's client_id: ";
		std::cin >> id;

		db.DelClient(id);
		break;

	case 7:
		std::cout << "Enter the client's name: ";
		std::cin >> name;
		std::cout << "Enter the client's surname: ";
		std::cin >> surname;
		std::cout << "Enter the client's email: ";
		std::cin >> email;
		std::cout << "Enter the client's client_id: ";
		std::cin >> id;
		std::cout << "Enter the client's phone: ";
		std::cin >> phone;

		db.SearchClient(name, surname, email, phone, id);
		break;

	default:
		break;
	}
}
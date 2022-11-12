#include "dbManagement.h"
#include <iostream>
#include <pqxx/pqxx>

void dbManagement::CreateDb()
{
	try
	{
		pqxx::connection con("host=localhost port=5432 dbname=clientele user=postgres password=postMax ");
		pqxx::work tx{ con };

		tx.exec("CREATE TABLE client (id SERIAL PRIMARY KEY, name VARCHAR(60) NOT NULL, surname VARCHAR(60) NOT NULL, email CITEXT NOT NULL UNIQUE);");
		tx.exec("CREATE TABLE phone (id SERIAL PRIMARY KEY, client_id INTEGER REFERENCES client(id), phone INTEGER UNIQUE);");

		tx.commit();
	}
	catch (pqxx::sql_error e)
	{
		std::cout << e.what() << std::endl;
	}

	std::cout << "The database has been created!" << std::endl;
}

void dbManagement::AddClient(std::string name, std::string surname, std::string email, int phone)
{
	try
	{
		pqxx::connection con("host=localhost port=5432 dbname=clientele user=postgres password=postMax ");
		pqxx::work tx{ con };
		id++;

		tx.exec("INSERT INTO client (name, surname, email) "
				"VALUES('" + tx.esc(name) + "', '" + tx.esc(surname) + "', '" + tx.esc(email) + "');");

		tx.exec("INSERT INTO phone (client_id, phone) "
				"VALUES(" + tx.esc(id) + ", " + phone + ");");

		tx.commit();
		
	}
	catch (pqxx::sql_error e)
	{
		std::cout << e.what() << std::endl;
		id--;
	}

	std::cout << "Client successfully added!" << std::endl;
}

void dbManagement::AddPhoneForClient(int id, int phone)
{
	try
	{
		pqxx::connection con("host=localhost port=5432 dbname=clientele user=postgres password=postMax ");
		pqxx::work tx{ con };

		tx.exec("INSERT INTO phone (client_id, phone) "
				"VALUES(" + tx.esc(id) + ", " + tx.esc(phone) + ");");

		tx.commit();
	}
	catch (pqxx::sql_error e)
	{
		std::cout << e.what() << std::endl;
	}

	std::cout << "The phone number for the client(" << id << ") has been successfully added!" << std::endl;
}

void dbManagement::EditClient(std::string name, std::string surname, std::string email, int phone, int id)
{
	try
	{
		pqxx::connection con("host=localhost port=5432 dbname=clientele user=postgres password=postMax ");
		pqxx::work tx{ con };

		tx.exec("UPDATE client "
				"SET name='" + tx.esc(name) + "', surname='" + tx.esc(surname) + "', email='" + tx.esc(email) + "' "
				"WHERE id=" + tx.esc(id) + ";");
		tx.exec("UPDATE client "
				"SET client_id=" + tx.esc(id) + ", phone=" + tx.esc(phone) + " "
				"WHERE id=" + tx.esc(id) + ";");

		tx.commit();
	}
	catch (pqxx::sql_error e)
	{
		std::cout << e.what() << std::endl;
	}

	std::cout << "The data for the client(" << id << ") has been successfully changed!" << std::endl;
}

void dbManagement::DelPhoneForClient(int id)
{
	try
	{
		pqxx::connection con("host=localhost port=5432 dbname=clientele user=postgres password=postMax ");
		pqxx::work tx{ con };

		tx.exec("DELETE FROM phone "
				"WHERE id=" + tx.esc(id) + "; ");

		tx.commit();
	}
	catch (pqxx::sql_error e)
	{
		std::cout << e.what() << std::endl;
	}

	std::cout << "The client's phone(" << id << ") has been successfully deleted!" << std::endl;
}

void dbManagement::DelClient(int id_row)
{
	try
	{
		pqxx::connection con("host=localhost port=5432 dbname=clientele user=postgres password=postMax ");
		pqxx::work tx{ con };

		tx.exec("DELETE FROM client "
				"WHERE id=" + tx.esc(id_row) + "; ");
		tx.exec("DELETE FROM phone "
				"WHERE id=" + tx.esc(id_row) + "; ");

		tx.commit();
		
		id--;
	}
	catch (pqxx::sql_error e)
	{
		std::cout << e.what() << std::endl;
		
	}

	std::cout << "Client(" << id_row << ") successfully deleted!" << std::endl;
}

void dbManagement::SearchClient(std::string name, std::string surname, std::string email, int phone, int id)
{
	try
	{
		pqxx::connection con("host=localhost port=5432 dbname=clientele user=postgres password=postMax ");
		pqxx::work tx{ con };

		for (auto [name, surname, email] : tx.query<std::string, std::string, std::string>(
			"SELECT name, surname, email FROM client"))
		{
			std::cout << "Client by parameters(" << name << surname << email << ") found!" << std::endl;
		}
		for (auto [id, phone] : tx.query<int, int>(
			"SELECT client_id, phone FROM phone"))
		{
			std::cout << "Client phone by parameters(" << id << phone << ") found!" << std::endl;
		}
	}
	catch (pqxx::sql_error e)
	{
		std::cout << "The client was not found!" << std::endl;
	}
}
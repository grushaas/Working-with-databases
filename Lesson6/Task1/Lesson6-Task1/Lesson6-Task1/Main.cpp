#include <iostream>
#include <Wt/Dbo/Dbo.h>
#include <Wt/Dbo/backend/Postgres.h>
#include <string>
#include <Windows.h>

using namespace std;
using namespace Wt::Dbo;

class publisher;
class book;
class stock;
class sale;

class publisher
{
public:
	string name = "";
	collection< ptr<book> > books;

	template<class Action>
	void persist(Action& a)
	{
		field(a, name, "name");
		hasMany(a, books, ManyToOne, "id_publisher");
	}
};

class shop
{
public:
	string name = "";
	collection< ptr<stock> > stocks;

	template<class Action>
	void persist(Action& a)
	{
		field(a, name, "name");
		hasMany(a, stocks, ManyToOne, "id_shop");
	}
};

class book
{
public:
	string title = "";
	ptr<publisher> publisher;
	collection< ptr<stock> > stocks;

	template<class Action>
	void persist(Action& a)
	{
		field(a, title, "title");
		belongsTo(a, publisher, "id_publisher");
		hasMany(a, stocks, ManyToOne, "id_book");
	}
};

class stock
{
public:
	ptr<book> book;
	ptr<shop> shop;
	int count = 0;
	collection< ptr<sale> > sales;

	template<class Action>
	void persist(Action& a)
	{
		belongsTo(a, book, "id_book");
		belongsTo(a, shop, "id_shop");
		field(a, count, "count");
		hasMany(a, sales, ManyToOne, "id_stock");
	}
};

class sale
{
public:
	int price = 0;
	string date_sale = "";
	ptr<stock> stock;
	int count = 0;

	template<class Action>
	void persist(Action& a)
	{
		field(a, price, "price");
		field(a, date_sale, "date_sale");
		belongsTo(a, stock, "id_stock");
		field(a, count, "count");
	}
};

int main()
{
	SetConsoleCP(CP_UTF8);

	string answerContinue;
	try
	{
		string connectionString =
			"host=localhost"
			" port=5432"
			" dbname=lesson6_task1"
			" user=netology"
			" password=netology2022";

		auto netology = make_unique<backend::Postgres>(connectionString);

		Session session;
		session.setConnection(move(netology));
		session.mapClass<publisher>("publisher");
		session.mapClass<shop>("shop");
		session.mapClass<book>("book");
		session.mapClass<stock>("stock");
		session.mapClass<sale>("sale");

		//session.createTables();

		cout << "Continue?(Yes/No): " << endl;
		cin >> answerContinue;

		if (answerContinue == "Yes")
		{
			Transaction publishTrans{ session };
			unique_ptr<publisher> newPublisher = make_unique<publisher>();

			newPublisher->name = "Maksim";

			ptr<publisher> publisherPtr = session.add(move(newPublisher));
			publishTrans.commit();

			Transaction bookTrans{ session };
			unique_ptr<book> newBook = make_unique<book>();

			newBook->title = "Hello, world!";
			newBook->publisher = publisherPtr;

			ptr<book> bookPtr = session.add(move(newBook));
			ptr<shop> shopPtr = session.add(make_unique<shop>());
			ptr<stock> stockPtr = session.add(make_unique<stock>());

			shopPtr.modify()->name = "BookShelf";
			stockPtr.modify()->book = bookPtr;
			stockPtr.modify()->shop = shopPtr;
			stockPtr.modify()->count = 12;

			bookTrans.commit();

			Transaction salesTrans{ session };

			unique_ptr<sale> newSale = make_unique<sale>();

			newSale->price = 1450;
			newSale->date_sale = "01.01.2022";
			newSale->stock = stockPtr;
			newSale->count = 4;

			ptr<sale> salePtr = session.add(move(newSale));

			salesTrans.commit();
		}
		else if (answerContinue == "No")
		{
			cout << "Таблицы созданы, выход из программы!" << endl;
		}
	}
	catch (const Exception& e)
	{
		cout << e.what() << endl;
	}
}
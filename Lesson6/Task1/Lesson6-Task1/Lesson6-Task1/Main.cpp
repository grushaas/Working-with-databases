#include <iostream>
#include <Wt/Dbo/Dbo.h>
#include <Wt/Dbo/backend/Postgres.h>
#include <string>

using namespace std;
using namespace Wt::Dbo;

class publisher
{
public:
	string name = "";
	collection< ptr<book> > books;

	template<class Action>
	void persist(Action& a)
	{
		field(a, name, "name");
		hasMany(a, books, ManyToOne, "name");
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
	// Подключение
}
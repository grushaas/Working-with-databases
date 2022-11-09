#pragma once
#include <string>

class dbManagement
{
private:
	int id = 0;

public:

	//��������/����������� � ��
	void CreateDb();

	//�������� �������
	void AddClient(std::string name, std::string surname, std::string email, int phone);

	//�������� ������� ��� ������������� �������
	void AddPhoneForClient(int id, int phone);

	//�������� ������ � �������
	void EditClient(std::string name, std::string surname, std::string email, int phone, int id);

	//������� ������� ��� ������������� �������
	void DelPhoneForClient(int id);

	//������� �������
	void DelClient(int id);
	
	//����� ������� �� ����������
	void SearchClient(std::string name, std::string surname, std::string email, int phone, int id);
};

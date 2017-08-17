#include <iostream>
#include <fstream>
#include <vector>
#include <string>
#include <sstream>

using namespace std;

vector<string> split(string str, char c = ' ')
{
    vector<string> result;

    stringstream ss;
    ss << str;

    string newstr;

    while (getline(ss, newstr, c)) {
        result.push_back(newstr);
    }

    return result;
}

int main()
{
    ifstream entrada;
    ofstream saida;
    string linha;

    entrada.open("lista.txt");
    saida.open("linguagens.pl");

    bool inicio = true;
    while(!entrada.eof()) {
        getline(entrada, linha);

        if (linha.compare("fim") == 0) {
            inicio = false;
            saida << endl;
            continue;
        }

        vector<string> palavra = split(linha, '\"');
        if (inicio) {
            for (int i = 2; i < palavra.size(); i++) {
                saida << "linguagem(\'" << palavra[i] << "\', " << palavra[1] << ")." << endl;
            }
        } else {
            saida << "predecessora(\'" << palavra[3] << "\',\'" << palavra[1] << "\')." << endl;
        }
    }

    entrada.close();
    saida.close();

    cout << "Fim do Programa" << endl;
    return 0;
}
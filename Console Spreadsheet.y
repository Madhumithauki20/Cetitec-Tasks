using namespace std;

char delimiter = '\t';
char ops[] = { '+', '-', '*', '/' };
vector<string> getDataFromSpreadsheet(const string& fileName);

vector<vector<string>> separateRows(const vector<string>& rows);

vector<string> separateRowIntoCells(const string& s);

bool containsDelimiter(const string& s);

void convertFormulasToIntegers(vector<vector<string>>& sheet);

string convertFormula(const vector<vector<string>>& sheet, string s, const int& currentRow, const int& currentCol);
void removeSpaces(string& s);

string performOperation(const string& firstCell, const string& secondCell, const char& firstOperator);

vector<char> getOperators(const string& s);

vector<string> getIdentifiers(const string& s);

bool validIdentifiers(const vector<string>& cellIdentifiers, const vector<vector<string>>& sheet);

bool circularReference(const vector<string>& cellIdentifiers, const vector<vector<string>>& sheet, const int&, const int& currentColumn);

int indexOfMultDiv(const vector<char>& operators);

bool containsIdentifier(const string& s);
int getRow(const string& s);

int getColumn(const string& s);

bool isNumber(const string& s);

bool isOperator(const char& c);

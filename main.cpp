#include "decoder.h"
#include <QApplication>

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    Decoder w;
    w.show();

    return a.exec();
}

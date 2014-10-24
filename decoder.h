#ifndef DECODER_H
#define DECODER_H

#include <QMainWindow>
#include <IT/Xenon.h>
#include <vector>

namespace Ui {
class Decoder;
}

class Decoder : public QMainWindow
{
    Q_OBJECT

public:
    explicit Decoder(QWidget *parent = 0);
    ~Decoder();

public slots:
    void buttonClicked();

private slots:
    void load_spec();

private:
    void copy_asset( const QString& asset, const QString& file );
    void copy_xddl_assets();
    void initialize_vectors();
    void print(const char * info);
    void print(IT::String info);
    void print(QString info);

    Ui::Decoder *ui;

    QStringList assets;
    std::vector<IT::BitString> test_vector;
    IT::Spec spec;
};

#endif // DECODER_H

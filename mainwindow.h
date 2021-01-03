#ifndef MAINWINDOW_H
#define MAINWINDOW_H
#include "livreur.h"
#include "scooter.h"
#include <QMainWindow>
#include <QPropertyAnimation>
#include <QSqlRecord>
#include <QSortFilterProxyModel>
#include <QtCharts>
#include <QtCharts/QChartView>
#include <QtCharts/QPieSeries>
#include <QtCharts/QPieSlice>
#include <QtCharts/QLegend>
#include <QPrinter>
#include <QPrintDialog>
#include <QPlainTextEdit>
#include <QMenu>
#include <QTimer>
#include <QDateTime>
#include "arduino.h"
#include "music.h"

QT_BEGIN_NAMESPACE
namespace Ui { class MainWindow; }
QT_END_NAMESPACE

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    MainWindow(QWidget *parent = nullptr);
    ~MainWindow();



private slots:
    void on_pushButton_seconnecter_clicked();

    void on_pushButton_employes_clicked();

    void on_pushButton_mdt_clicked();

    void on_pushButton_deconnecter_clicked();

    void showContextMenu(const QPoint&);
    void supprimerItem();
    void modifierItem();
    void consulterItem();



    void on_pushButton_acc_clicked();
    void on_pushButton_ajouter1_clicked();

    void on_pushButton_ajouter2_clicked();

    void on_pushButton_precedent_clicked();

    void on_pushButton_enregistrer_clicked();

    void on_pushButton_precedent_2_clicked();

    void on_pushButton_precedent_3_clicked();

    void on_pushButton_print_clicked();

    void on_pushButton_stat_clicked();

    void on_pushButton_trier_clicked();

    void on_pushButton_precedent_4_clicked();

    void on_pushButton_precedent_5_clicked();

    void on_pushButton_chercher_clicked();

    void on_lineEdit_recherche_textChanged(const QString &arg1);


    void showContextMenu1(const QPoint&);
    void supprimerItem1();
    void modifierItem1();
    void consulterItem1();


    void on_pushButton_ajouterscooter_clicked();



    void on_pushButton_acc_2_clicked();

    void on_pushButton_ajoutermdt2_clicked();

    void on_pushButton_precedent_6_clicked();

    void on_pushButton_enregistrermdt_clicked();

    void on_pushButton_precedent_7_clicked();

    void on_pushButton_precedent_8_clicked();

    void on_pushButton_depense_clicked();

    void on_pushButton_stat_2_clicked();

    void on_pushButton_chercher_2_clicked();

    void on_lineEdit_chercher_textChanged(const QString &arg1);

    void fonctionmontre();

    void on_pushButton_presence_clicked();

    void on_pushButton_precedent_10_clicked();

    void on_pushButton_precedent_9_clicked();

    void update_label();

    void on_pushButton_acc_3_clicked();

    void on_pushButton_music_clicked();


private:
    Ui::MainWindow *ui;
    QPropertyAnimation *animation;
    livreur temp;
    scooter sco;
    QTimer *timer;
    QByteArray data;
       Arduino A;
       music *m;
};
#endif // MAINWINDOW_H

#include "mainwindow.h"
#include "ui_mainwindow.h"
#include <QPixmap>
#include <QMessageBox>
#include <QDebug>


MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    QPixmap pix(":/resource/img/Fast_food_delivery3.png");
    int w = ui->label_pic->width();
    int h = ui->label_pic->height();
    ui->label_pic->setPixmap(pix.scaled(w,h,Qt::KeepAspectRatio));

     ui->lineEdit_ID->setPlaceholderText(" Enter l'identifiant ");
     ui->lineEdit_mdp->setPlaceholderText(" Enter le mot de passe");
    int w2 = ui->label_pic_2->width();
    int h2 = ui->label_pic_2->height();
    ui->label_pic_2->setPixmap(pix.scaled(w2,h2,Qt::KeepAspectRatio));

    int w3 = ui->label_pic_3->width();
    int h3 = ui->label_pic_3->height();
    ui->label_pic_3->setPixmap(pix.scaled(w3,h3,Qt::KeepAspectRatio));
    animation = new QPropertyAnimation (ui->label_gestion_livreur,"geometry");
    animation->setDuration(20000);
    animation->setStartValue(ui->label_gestion_livreur->geometry());
    animation->setEndValue(QRect(160,10,171,30));
    animation->start();

    ui->listView->setModel(temp.afficherliste());
    ui->listView->setContextMenuPolicy(Qt::CustomContextMenu); //menu de bouton droite
    connect(ui->listView, SIGNAL(customContextMenuRequested(QPoint)), this, SLOT(showContextMenu(QPoint)));

    ui->lineEdit_recherche->setPlaceholderText(" Enter ID de livreur");

    int w4 = ui->label_pic_4->width();
    int h4 = ui->label_pic_4->height();
    ui->label_pic_4->setPixmap(pix.scaled(w4,h4,Qt::KeepAspectRatio));

    ui->lineEdit_id->setPlaceholderText(" Enter ID");
    ui->lineEdit_nom->setPlaceholderText(" Enter Nom");
    ui->lineEdit_prenom->setPlaceholderText(" Enter Prénom");
    ui->lineEdit_numero_tele->setPlaceholderText(" Enter le numéro de téléphone");
    ui->lineEdit_mdp_2->setPlaceholderText(" Enter le mot de passe");
    ui->lineEdit_heure->setPlaceholderText(" Enter les heures");
    ui->lineEdit_presence->setPlaceholderText(" Est_il présent?");
    ui->lineEdit_idscooter->setPlaceholderText(" Entrer l'id du scooter");

    ui->lineEdit_nom->setValidator(new QRegExpValidator(QRegExp("[A-Za-z]+")));
    ui->lineEdit_prenom->setValidator(new QRegExpValidator(QRegExp("[A-Za-z]+")));
    ui->lineEdit_id->setValidator(new QRegExpValidator(QRegExp("[A-Za-z0-9]+")));
    ui->lineEdit_numero_tele->setValidator(new QRegExpValidator(QRegExp("[0-9]{8}")));
    ui->lineEdit_mdp_2->setValidator(new QRegExpValidator(QRegExp("[A-Za-z0-9]+")));
    ui->lineEdit_heure->setValidator(new QRegExpValidator(QRegExp("[0-9]{8}")));
    ui->lineEdit_presence->setValidator(new QRegExpValidator(QRegExp("[A-Za-z]+")));
    ui->lineEdit_idscooter->setValidator(new QRegExpValidator(QRegExp("[A-Za-z0-9]+")));


    int w5 = ui->label_pic_5->width();
    int h5 = ui->label_pic_5->height();
    ui->label_pic_5->setPixmap(pix.scaled(w5,h5,Qt::KeepAspectRatio));

    ui->lineEdit_id_2->setPlaceholderText(" Enter ID");
    ui->lineEdit_nom_2->setPlaceholderText(" Enter Nom");
    ui->lineEdit_prenom_2->setPlaceholderText(" Enter Prénom");
    ui->lineEdit_numero_tele_2->setPlaceholderText(" Enter le numéro de téléphone");
    ui->lineEdit_mdp_3->setPlaceholderText(" Enter le mot de passe");
    ui->lineEdit_heure_2->setPlaceholderText(" Enter les heures");
    ui->lineEdit_presence_2->setPlaceholderText(" Est_il présent?");
    ui->lineEdit_idscooter_2->setPlaceholderText(" Entrer l'id du scooter");

    ui->lineEdit_nom_2->setValidator(new QRegExpValidator(QRegExp("[A-Za-z]+")));
    ui->lineEdit_prenom_2->setValidator(new QRegExpValidator(QRegExp("[A-Za-z]+")));
    ui->lineEdit_id_2->setValidator(new QRegExpValidator(QRegExp("[A-Za-z0-9]+")));
    ui->lineEdit_numero_tele_2->setValidator(new QRegExpValidator(QRegExp("[0-9]{8}")));
    ui->lineEdit_mdp_3->setValidator(new QRegExpValidator(QRegExp("[A-Za-z0-9]+")));
    ui->lineEdit_heure_2->setValidator(new QRegExpValidator(QRegExp("[0-9]{8}")));
    ui->lineEdit_presence_2->setValidator(new QRegExpValidator(QRegExp("[A-Za-z]+")));
    ui->lineEdit_idscooter_2->setValidator(new QRegExpValidator(QRegExp("[A-Za-z0-9]+")));

    int w6 = ui->label_pic_6->width();
    int h6 = ui->label_pic_6->height();
    ui->label_pic_6->setPixmap(pix.scaled(w6,h6,Qt::KeepAspectRatio));

    int w7 = ui->label_pic_7->width();
    int h7 = ui->label_pic_7->height();
    ui->label_pic_7->setPixmap(pix.scaled(w7,h7,Qt::KeepAspectRatio));

    int w8 = ui->label_pic_8->width();
    int h8 = ui->label_pic_8->height();
    ui->label_pic_8->setPixmap(pix.scaled(w8,h8,Qt::KeepAspectRatio));
//scooter
    int w9 = ui->label_pic_8->width();
    int h9 = ui->label_pic_8->height();
    ui->label_pic_9->setPixmap(pix.scaled(w9,h9,Qt::KeepAspectRatio));
    animation = new QPropertyAnimation (ui->label_gestion_scooter,"geometry");
    animation->setDuration(20000);
    animation->setStartValue(ui->label_gestion_scooter->geometry());
    animation->setEndValue(QRect(160,10,171,30));
    animation->start();

    ui->listView_2->setModel(sco.afficherliste());
    ui->listView_2->setContextMenuPolicy(Qt::CustomContextMenu); //menu de bouton droite
    connect(ui->listView_2, SIGNAL(customContextMenuRequested(QPoint)), this, SLOT(showContextMenu1(QPoint)));

    ui->lineEdit_chercher->setPlaceholderText(" Enter ID du scooter");

    int w10 = ui->label_pic_10->width();
    int h10 = ui->label_pic_10->height();
    ui->label_pic_10->setPixmap(pix.scaled(w10,h10,Qt::KeepAspectRatio));

    ui->lineEdit_idscooter_3->setPlaceholderText(" Enter ID du scooter");
    ui->lineEdit_depense->setPlaceholderText(" Enter les  depenses");
    ui->lineEdit_dispo->setPlaceholderText(" Est_il disponible ce scooter");
    ui->lineEdit_etat->setPlaceholderText(" Enter l'etat du scooter");

    ui->lineEdit_dispo->setValidator(new QRegExpValidator(QRegExp("[A-Za-z]+")));
    ui->lineEdit_etat->setValidator(new QRegExpValidator(QRegExp("[A-Za-z]+")));
    ui->lineEdit_idscooter_3->setValidator(new QRegExpValidator(QRegExp("[A-Za-z0-9]+")));
    ui->lineEdit_depense->setValidator(new QRegExpValidator(QRegExp("[0-9]{1,3}")));

    int w11 = ui->label_pic_11->width();
    int h11 = ui->label_pic_11->height();
    ui->label_pic_11->setPixmap(pix.scaled(w11,h11,Qt::KeepAspectRatio));

    ui->lineEdit_idscooter_4->setPlaceholderText(" Enter ID du scooter");
    ui->lineEdit_depense_2->setPlaceholderText(" Enter les  depenses");
    ui->lineEdit_dispo_2->setPlaceholderText(" Est_il disponible ce scooter");
    ui->lineEdit_etat_2->setPlaceholderText(" Enter l'etat du scooter");

    ui->lineEdit_dispo_2->setValidator(new QRegExpValidator(QRegExp("[A-Za-z]+")));
    ui->lineEdit_etat_2->setValidator(new QRegExpValidator(QRegExp("[A-Za-z]+")));
    ui->lineEdit_idscooter_4->setValidator(new QRegExpValidator(QRegExp("[A-Za-z0-9]+")));
    ui->lineEdit_depense_2->setValidator(new QRegExpValidator(QRegExp("[0-9]{1,3}")));

    int w12 = ui->label_pic_12->width();
    int h12 = ui->label_pic_12->height();
    ui->label_pic_12->setPixmap(pix.scaled(w12,h12,Qt::KeepAspectRatio));

    int w13 = ui->label_pic_13->width();
    int h13 = ui->label_pic_13->height();
    ui->label_pic_11->setPixmap(pix.scaled(w13,h13,Qt::KeepAspectRatio));

    int w14 = ui->label_pic_14->width();
    int h14 = ui->label_pic_14->height();
    ui->label_pic_14->setPixmap(pix.scaled(w14,h14,Qt::KeepAspectRatio));

//date time
    timer = new QTimer(this);
    connect(timer,&QTimer::timeout,this,&::MainWindow::fonctionmontre);
    timer->start(1000);

    QDate date=QDate::currentDate();
    QString datetime_text =date.toString();
    QString format("<center><b><font color='%1'>%2</font></b></center>");
    ui->label_date->setText(format.arg("white",datetime_text));
//arduino
    int ret = A.connect_arduino();
         switch(ret){
         case(0): qDebug() << "arduino is available and connected to :" << A.getarduino_port_name();
             break;
         case(1): qDebug() << "arduino is available and not connected to :" << A.getarduino_port_name();
             break;
         case(-1): qDebug() << "arduino is not available" ;
         }

         QObject::connect(A.getserial(),SIGNAL(readyRead()),this,SLOT(update_label()));

}

MainWindow::~MainWindow()
{
    delete ui;
}


void MainWindow::on_pushButton_seconnecter_clicked()
{
    bool test=false;

        if(ui->lineEdit_ID->text().isEmpty())
        {ui->lineEdit_ID->setStyleSheet("border: 1px solid red");

        }
        else {
        ui->lineEdit_ID->setStyleSheet("border: 1px solid blue");
        }

        if(ui->lineEdit_mdp->text().isEmpty())
        {ui->lineEdit_mdp->setStyleSheet("border: 1px solid red");

        }
        else {
        ui->lineEdit_mdp->setStyleSheet("border: 1px solid blue");
        }

        if(ui->lineEdit_ID->text().isEmpty()||ui->lineEdit_mdp->text().isEmpty())
        { test=true;
           QMessageBox::warning(this,"we deliver","Veuillez remplir les champs obligatoires marqués en rouge");
        }
        if(test==false)
        {QString id=ui->lineEdit_ID->text();
        QString mdp=ui->lineEdit_mdp->text();
    if(id=="admin20" && mdp=="admin")
        ui->stackedWidget->setCurrentIndex(1);
    else
       { QMessageBox::warning(this,"we deliver","Veuillez vérifier votre mot de passe ou votre identifiant");}
        }
}

void MainWindow::fonctionmontre()
{
    QTime time= QTime::currentTime();
    QString time_text=time.toString("hh:mm:ss");
    QString format("<center><b><font color='%1'>%2</font></b></center>");
    ui->label_time->setText(format.arg("white",time_text));
}

void MainWindow::on_pushButton_employes_clicked()
{
    ui->stackedWidget->setCurrentIndex(2);
}

void MainWindow::on_pushButton_mdt_clicked()
{
    ui->stackedWidget->setCurrentIndex(8);
}

void MainWindow::on_pushButton_deconnecter_clicked()
{
    ui->stackedWidget->setCurrentIndex(0);
}

void MainWindow::on_pushButton_ajouter1_clicked()
{
    ui->stackedWidget->setCurrentIndex(3);
}
void MainWindow::on_pushButton_acc_clicked()
{
     ui->stackedWidget->setCurrentIndex(1);
}

void MainWindow::showContextMenu(const QPoint &pos)
{
    // Handle global position
        QPoint globalPos = ui->listView->mapToGlobal(pos);

        // Create menu and insert some actions
        QMenu myMenu;
        myMenu.addAction("consulter", this, SLOT(consulterItem()));
        myMenu.addAction("modifier",  this, SLOT(modifierItem()));
        myMenu.addAction("supprimer", this, SLOT(supprimerItem()));

        // Show context menu at handling position
        myMenu.exec(globalPos);
}

void MainWindow::supprimerItem()
{QMessageBox::StandardButton reply;
    QModelIndex index = ui->listView->currentIndex();
            QString itemtext = index.data(Qt::DisplayRole).toString();

    reply = QMessageBox::question(this,"We Deliver","Voulez vous vraiment supprimer ce Livreur ?",QMessageBox::Cancel|QMessageBox::Ok);
        if(reply == QMessageBox::Ok)

          {

       bool test=temp.supprimer(itemtext);
       if(test)
       {
          ui->listView->setModel(temp.afficherliste());
       }
           }
}


void MainWindow::modifierItem()
{  QModelIndex index = ui->listView->currentIndex();
    QString itemtext = index.data(Qt::DisplayRole).toString();
    QSqlQuery query;
    query=temp.recuperer(itemtext);
    if(query.exec())
    {
        while(query.next())
        {
            ui->lineEdit_id_2->setText(query.value(0).toString());
            ui->lineEdit_nom_2->setText(query.value(1).toString());
            ui->lineEdit_prenom_2->setText(query.value(2).toString());
            ui->lineEdit_numero_tele_2->setText(query.value(3).toString());
            ui->lineEdit_mdp_3->setText(query.value(4).toString());
            ui->lineEdit_presence_2->setText(query.value(5).toString());
            ui->lineEdit_heure_2->setText(query.value(6).toString());
            ui->lineEdit_idscooter_2->setText(query.value(7).toString());
        }
    }
ui->stackedWidget->setCurrentIndex(4);
}
void MainWindow::consulterItem()
{  QModelIndex index= ui->listView->currentIndex();
   QString itemtext= index.data(Qt::DisplayRole).toString();
   ui->tableView->setModel(temp.afficher(itemtext));
   ui->stackedWidget->setCurrentIndex(5);
}


void MainWindow::on_pushButton_ajouter2_clicked()
{
    long num_tele =ui->lineEdit_numero_tele->text().toLong();
    QString nom=ui->lineEdit_nom->text();
    QString prenom=ui->lineEdit_prenom->text();
    QString id=ui->lineEdit_id->text();
    QString mdp=ui->lineEdit_mdp_2->text();
    QString presence=ui->lineEdit_presence->text();
    QString idsco=ui->lineEdit_idscooter->text();
    int heure_m =ui->lineEdit_heure->text().toInt();

 livreur emp(nom,prenom,id,num_tele,mdp,presence,idsco,heure_m);
 bool test1=emp.ajouteremploye();
 if(test1)
 {
 QMessageBox::information(this,"Ajouter un Livreur","Livreur ajouté.\n"
                          "Click cancel to exit.",QMessageBox::Cancel);
  ui->listView->setModel(emp.afficherliste());
 }
 else
     QMessageBox::warning(this,"Ajouter un Livreur","Livreur non ajouté.\n"
                              "Click cancel to exit.",QMessageBox::Cancel);


    bool test =false;

        if(ui->lineEdit_id->text().isEmpty())
        {ui->lineEdit_id->setStyleSheet("border: 1px solid red");
        test =true;
        }
        else {
        ui->lineEdit_id->setStyleSheet("border: 1px solid blue");
        }

        if(ui->lineEdit_nom->text().isEmpty())
        {ui->lineEdit_nom->setStyleSheet("border: 1px solid red");
        test =true;
        }
        else {
        ui->lineEdit_nom->setStyleSheet("border: 1px solid blue");
        }

        if(ui->lineEdit_prenom->text().isEmpty())
        {ui->lineEdit_prenom->setStyleSheet("border: 1px solid red");
        test =true;
        }
        else {
        ui->lineEdit_prenom->setStyleSheet("border: 1px solid blue");
        }

        if(ui->lineEdit_numero_tele->text().isEmpty())
        {ui->lineEdit_numero_tele->setStyleSheet("border: 1px solid red");
        test =true;
        }
        else {
        ui->lineEdit_numero_tele->setStyleSheet("border: 1px solid blue");
        }
        if(ui->lineEdit_mdp_2->text().isEmpty())
        {ui->lineEdit_mdp_2->setStyleSheet("border: 1px solid red");
        test =true;
        }
        else {
        ui->lineEdit_mdp_2->setStyleSheet("border: 1px solid blue");
        }

        if(ui->lineEdit_idscooter->text().isEmpty())
        {ui->lineEdit_idscooter->setStyleSheet("border: 1px solid red");
        test =true;
        }
        else {
        ui->lineEdit_idscooter->setStyleSheet("border: 1px solid blue");
        }

        if(ui->lineEdit_presence->text().isEmpty())
        {ui->lineEdit_presence->setStyleSheet("border: 1px solid red");
        test =true;
        }
        else {
        ui->lineEdit_presence->setStyleSheet("border: 1px solid blue");
        }

        if(ui->lineEdit_heure->text().isEmpty())
        {ui->lineEdit_heure->setStyleSheet("border: 1px solid red");
        test =true;
        }
        else {
        ui->lineEdit_heure->setStyleSheet("border: 1px solid blue");
        }


        test=false;
        if((ui->lineEdit_id->text().isEmpty())||(ui->lineEdit_prenom->text().isEmpty())||(ui->lineEdit_nom->text().isEmpty())||(ui->lineEdit_numero_tele->text().isEmpty())||(ui->lineEdit_mdp_2->text().isEmpty())||(ui->lineEdit_idscooter->text().isEmpty())||(ui->lineEdit_presence->text().isEmpty())||(ui->lineEdit_heure->text().isEmpty()))
                {
            test=true;
            QMessageBox::warning(this,"we deliver","Veuillez remplir les champs obligatoires marqués en rouge");
        }
        if(test==false)
   { ui->stackedWidget->setCurrentIndex(2);}
}

void MainWindow::on_pushButton_precedent_clicked()
{
  ui->stackedWidget->setCurrentIndex(2);
}

void MainWindow::on_pushButton_enregistrer_clicked()
{
    long num_tele =ui->lineEdit_numero_tele_2->text().toLong();
    QString nom=ui->lineEdit_nom_2->text();
    QString prenom=ui->lineEdit_prenom_2->text();
    QString id=ui->lineEdit_id_2->text();
    QString mdp=ui->lineEdit_mdp_3->text();
    QString presence=ui->lineEdit_presence_2->text();
    QString idsco=ui->lineEdit_idscooter_2->text();
    int heure_m =ui->lineEdit_heure_2->text().toInt();

 livreur emp(nom,prenom,id,num_tele,mdp,presence,idsco,heure_m);
 bool test1=emp.modifieremploye();

    if(test1)
    {
        QMessageBox::information(this,"Modifier un Livreur","Livreur modifié.\n"
                                 "Click cancel to exit.",QMessageBox::Cancel);
        ui->listView->setModel(temp.afficherliste());
        }
        else
            QMessageBox::warning(this,"Modifier un Livreur","Livreur non modifié.\n"
                                     "Click cancel to exit.",QMessageBox::Cancel);



    bool test =false;
        if(ui->lineEdit_id_2->text().isEmpty())
        {ui->lineEdit_id_2->setStyleSheet("border: 1px solid red");
        test =true;
        }
        else {
        ui->lineEdit_id_2->setStyleSheet("border: 1px solid blue");
        }

        if(ui->lineEdit_nom_2->text().isEmpty())
        {ui->lineEdit_nom_2->setStyleSheet("border: 1px solid red");
        test =true;
        }
        else {
        ui->lineEdit_nom_2->setStyleSheet("border: 1px solid blue");
        }

        if(ui->lineEdit_prenom_2->text().isEmpty())
        {ui->lineEdit_prenom_2->setStyleSheet("border: 1px solid red");
        test =true;
        }
        else {
        ui->lineEdit_prenom_2->setStyleSheet("border: 1px solid blue");
        }

        if(ui->lineEdit_numero_tele_2->text().isEmpty())
        {ui->lineEdit_numero_tele_2->setStyleSheet("border: 1px solid red");
        test =true;
        }
        else {
        ui->lineEdit_numero_tele_2->setStyleSheet("border: 1px solid blue");
        }

        if(ui->lineEdit_mdp_3->text().isEmpty())
        {ui->lineEdit_mdp_3->setStyleSheet("border: 1px solid red");
        test =true;
        }
        else {
        ui->lineEdit_mdp_3->setStyleSheet("border: 1px solid blue");
        }
        test=false;
        if((ui->lineEdit_id_2->text().isEmpty())||(ui->lineEdit_prenom_2->text().isEmpty())||(ui->lineEdit_nom_2->text().isEmpty())||(ui->lineEdit_numero_tele_2->text().isEmpty())||(ui->lineEdit_mdp_3->text().isEmpty()))
                {
            test=true;
            QMessageBox::warning(this,"we deliver","Veuillez remplir les champs obligatoires marqués en rouge");
        }
        if(test==false)
   { ui->stackedWidget->setCurrentIndex(2);}
}

void MainWindow::on_pushButton_precedent_2_clicked()
{
    ui->stackedWidget->setCurrentIndex(2);
}

void MainWindow::on_pushButton_precedent_3_clicked()
{
    ui->stackedWidget->setCurrentIndex(2);
}

void MainWindow::on_pushButton_print_clicked()
{
    QStringList list;
        QAbstractItemModel *model = ui->tableView->model();
        QModelIndex index0 = model->index(0,0);
        QModelIndex index1 = model->index(0,1);
        QModelIndex index2 = model->index(0,2);
        QModelIndex index3 = model->index(0,3);
        QModelIndex index4 = model->index(0,4);
        QModelIndex index5 = model->index(0,5);
        QModelIndex index7 = model->index(0,7);

        QPlainTextEdit text;
            text.appendPlainText("ID: "+index0.data().toString()+"");
            text.appendPlainText("Nom: "+index1.data().toString()+"");
            text.appendPlainText("Prénom: "+index2.data().toString()+"");
            text.appendPlainText("Numéro de téléphone: "+index3.data().toString()+"");
            text.appendPlainText("Phone Number: "+index4.data().toString()+"");
            text.appendPlainText("id de scooter: "+index5.data().toString()+"");
            text.appendPlainText("nombre des heures: "+index7.data().toString()+"");
            text.appendPlainText("salaire par heures: 5dt");

            QPrinter printer;
                printer.setPrinterName("Print");
                //printer.setOutputFormat(QPrinter::PdfFormat);
                //printer.setOutputFileName("Information Of Employee "+ui->viewID->text()+"");
                QPrintDialog dlg(&printer,this);
                if (dlg.exec() == QDialog::Rejected)
                {
                    return;
                }
                text.print(&printer);

}

void MainWindow::on_pushButton_stat_clicked()
{
    QPieSeries *series = new QPieSeries();
        QSqlQuery query;
                query=temp.stat();
        while(query.next())
        {
            series->append(query.value(0).toString(),query.value(6).toInt());
        }

        QChart * chart=new  QChart();
        chart->addSeries(series);
        chart->setTitle("le rendement des livreurs");

        QChartView * chartView=new QChartView(chart);
        chartView ->setParent(ui->horizontalFrame);
        chartView->setFixedSize(ui->horizontalFrame->size());
        ui->stackedWidget->setCurrentIndex(7);
}



void MainWindow::on_pushButton_trier_clicked()
{
    QSqlQueryModel * myModel=new QSqlQueryModel(ui->tableView_2);
       QSqlQuery query;
       if(query.exec("select * from livreur1"))
       {myModel->setQuery(query);
          QSortFilterProxyModel *proxyModel = new QSortFilterProxyModel(myModel);
          proxyModel->setSourceModel(myModel);
          ui->tableView_2->setModel(myModel);
          ui->tableView_2->setSortingEnabled(true);
          ui->tableView_2->setModel(proxyModel);

       }

}

void MainWindow::on_pushButton_precedent_4_clicked()
{
    ui->stackedWidget->setCurrentIndex(2);
}

void MainWindow::on_pushButton_precedent_5_clicked()
{
    ui->stackedWidget->setCurrentIndex(2);
}

void MainWindow::on_pushButton_chercher_clicked()
{
    QString id=ui->lineEdit_recherche->text();
       if(temp.recherche(id))
       {
           ui->tableView->setModel(temp.afficher(id));
           ui->stackedWidget->setCurrentIndex(3);
       }
       else
       {
           QMessageBox::critical(nullptr, QObject::tr("Error"),
                                 QObject::tr("livreur n'est pas trouvé.\n"
                                             "Click Cancel to exit."), QMessageBox::Cancel);
       }
}

void MainWindow::on_lineEdit_recherche_textChanged(const QString &arg1)
{
    QString id =arg1;
       ui->listView->setModel(temp.recherche(id));
       if(ui->lineEdit_recherche->text()=="")
       {
        ui->listView->setModel(temp.afficherliste());
       }
}
void MainWindow::on_pushButton_presence_clicked()
{
     ui->stackedWidget->setCurrentIndex(6);
   ui->tableView_2->setModel(temp.afficherendement());


}


//scooter
void MainWindow::on_pushButton_ajouterscooter_clicked()
{
    ui->stackedWidget->setCurrentIndex(9);
}

void MainWindow::showContextMenu1(const QPoint &pos)
{
    // Handle global position
        QPoint globalPos = ui->listView_2->mapToGlobal(pos);

        // Create menu and insert some actions
        QMenu myMenu;
        myMenu.addAction("consulter", this, SLOT(consulterItem1()));
        myMenu.addAction("modifier",  this, SLOT(modifierItem1()));
        myMenu.addAction("supprimer", this, SLOT(supprimerItem1()));

        // Show context menu at handling position
        myMenu.exec(globalPos);
}

void MainWindow::supprimerItem1()
{ QMessageBox::StandardButton reply;
    QModelIndex index = ui->listView_2->currentIndex();
    QString itemtext = index.data(Qt::DisplayRole).toString();

    reply = QMessageBox::question(this,"We Deliver","Voulez vous vraiment supprimer ce Scooter ?",QMessageBox::Cancel|QMessageBox::Ok);
        if(reply == QMessageBox::Ok)

     {
       bool test=sco.supprimer(itemtext);
       if(test)
       {
          ui->listView_2->setModel(sco.afficherliste());
       }
     }
 }

void MainWindow::modifierItem1()
{
    QModelIndex index = ui->listView_2->currentIndex();
    QString itemtext = index.data(Qt::DisplayRole).toString();
    QSqlQuery query;
    query=sco.recuperer(itemtext);
    if(query.exec())
    {
        while(query.next())
        {
            ui->lineEdit_idscooter_4->setText(query.value(0).toString());
            ui->lineEdit_etat_2->setText(query.value(1).toString());
            ui->lineEdit_dispo_2->setText(query.value(2).toString());
            ui->lineEdit_depense_2->setText(query.value(3).toString());

        }
    }
    ui->stackedWidget->setCurrentIndex(10);
}

void MainWindow::consulterItem1()
{
    QModelIndex index= ui->listView_2->currentIndex();
    QString itemtext= index.data(Qt::DisplayRole).toString();
    ui->tableView_3->setModel(sco.afficher(itemtext));

    ui->stackedWidget->setCurrentIndex(11);



}


void MainWindow::on_pushButton_acc_2_clicked()
{
    ui->stackedWidget->setCurrentIndex(1);
}

void MainWindow::on_pushButton_ajoutermdt2_clicked()
{

    QString id=ui->lineEdit_idscooter_3->text();
    QString etat=ui->lineEdit_etat->text();
    QString dispo=ui->lineEdit_dispo->text();
    float depense=ui->lineEdit_depense->text().toFloat();

    scooter sc(id,etat,dispo,depense);
    bool test1=sc.ajoutscooter();
    if(test1)
    {
    QMessageBox::information(this,"Ajouter un Scooter","Scooter ajouté.\n"
                             "Click cancel to exit.",QMessageBox::Cancel);
    ui->listView_2->setModel(sco.afficherliste());

    }
    else
        QMessageBox::warning(this,"Ajouter un Livreur","Scooter non ajouté.\n"
                                 "Click cancel to exit.",QMessageBox::Cancel);
    bool test =false;
        if(ui->lineEdit_idscooter_3->text().isEmpty())
        {ui->lineEdit_idscooter_3->setStyleSheet("border: 1px solid red");
        test =true;
        }
        else {
        ui->lineEdit_idscooter_3->setStyleSheet("border: 1px solid blue");
        }

       if(ui->lineEdit_dispo->text().isEmpty())
            {ui->lineEdit_dispo->setStyleSheet("border: 1px solid red");
            test =true;
            }
            else {
            ui->lineEdit_dispo->setStyleSheet("border: 1px solid blue");
            }
       if(ui->lineEdit_etat->text().isEmpty())
            {ui->lineEdit_etat->setStyleSheet("border: 1px solid red");
            test =true;
            }
            else {
            ui->lineEdit_etat->setStyleSheet("border: 1px solid blue");
            }
       if(ui->lineEdit_depense->text().isEmpty())
            {ui->lineEdit_depense->setStyleSheet("border: 1px solid red");
            test =true;
            }
            else {
            ui->lineEdit_depense->setStyleSheet("border: 1px solid blue");
            }

       test=false;
       if((ui->lineEdit_etat->text().isEmpty())||(ui->lineEdit_dispo->text().isEmpty())||(ui->lineEdit_idscooter_3->text().isEmpty())||(ui->lineEdit_depense->text().isEmpty()))
               {
           test=true;
           QMessageBox::warning(this,"we deliver","Veuillez remplir les champs obligatoires marqués en rouge");
       }
       if(test==false)
  { ui->stackedWidget->setCurrentIndex(8);}
}

void MainWindow::on_pushButton_precedent_6_clicked()
{
    ui->stackedWidget->setCurrentIndex(8);
}

void MainWindow::on_pushButton_enregistrermdt_clicked()
{
    float depense =ui->lineEdit_depense_2->text().toFloat();
    QString id=ui->lineEdit_idscooter_4->text();
    QString etat=ui->lineEdit_etat_2->text();
    QString dispo=ui->lineEdit_dispo_2->text();

 scooter sc(id,etat,dispo,depense);
 bool test1=sc.modifierscooter();

    if(test1)
    {
        QMessageBox::information(this,"Modifier un scooter","scooter modifié.\n"
                                 "Click cancel to exit.",QMessageBox::Cancel);
        ui->listView->setModel(sc.afficherliste());
        }
        else
            QMessageBox::warning(this,"Modifier un scooter","scooter non modifié.\n"
                                     "Click cancel to exit.",QMessageBox::Cancel);


    bool test =false;
        if(ui->lineEdit_idscooter_4->text().isEmpty())
        {ui->lineEdit_idscooter_4->setStyleSheet("border: 1px solid red");
        test =true;
        }
        else {
        ui->lineEdit_idscooter_4->setStyleSheet("border: 1px solid blue");
        }

       if(ui->lineEdit_dispo_2->text().isEmpty())
            {ui->lineEdit_dispo_2->setStyleSheet("border: 1px solid red");
            test =true;
            }
            else {
            ui->lineEdit_dispo_2->setStyleSheet("border: 1px solid blue");
            }
       if(ui->lineEdit_etat_2->text().isEmpty())
            {ui->lineEdit_etat_2->setStyleSheet("border: 1px solid red");
            test =true;
            }
            else {
            ui->lineEdit_etat_2->setStyleSheet("border: 1px solid blue");
            }
       test=false;
       if((ui->lineEdit_etat_2->text().isEmpty())||(ui->lineEdit_dispo_2->text().isEmpty())||(ui->lineEdit_idscooter_2->text().isEmpty()))
               {
           test=true;
           QMessageBox::warning(this,"we deliver","Veuillez remplir les champs obligatoires marqués en rouge");
       }
       if(test==false)
  { ui->stackedWidget->setCurrentIndex(8);}
}

void MainWindow::on_pushButton_precedent_7_clicked()
{
    ui->stackedWidget->setCurrentIndex(8);
}

void MainWindow::on_pushButton_precedent_8_clicked()
{
     ui->stackedWidget->setCurrentIndex(8);
}

void MainWindow::on_pushButton_depense_clicked()
{
    ui->stackedWidget->setCurrentIndex(12);
    ui->tableView_4->setModel(sco.afficherdepense());
}



void MainWindow::on_pushButton_stat_2_clicked()
{
    QPieSeries *series = new QPieSeries();
        QSqlQuery query;
                query=sco.stat();
        while(query.next())
        {
            series->append(query.value(0).toString(),query.value(3).toInt());
        }

        QChart * chart=new  QChart();
        chart->addSeries(series);
        chart->setTitle("les statistiques des depenses");

        QChartView * chartView=new QChartView(chart);
        chartView ->setParent(ui->horizontalFrame_2);
        chartView->setFixedSize(ui->horizontalFrame_2->size());
        ui->stackedWidget->setCurrentIndex(13);
}

void MainWindow::on_pushButton_chercher_2_clicked()
{
    QString id=ui->lineEdit_chercher->text();
       if(sco.recherche(id))
       {
           ui->tableView->setModel(sco.afficher(id));
           ui->stackedWidget->setCurrentIndex(3);
       }
       else
       {
           QMessageBox::critical(nullptr, QObject::tr("Error"),
                                 QObject::tr("scooter n'est pas trouvé.\n"
                                             "Click Cancel to exit."), QMessageBox::Cancel);
       }
}

void MainWindow::on_lineEdit_chercher_textChanged(const QString &arg1)
{
    QString id =arg1;
       ui->listView_2->setModel(sco.recherche(id));
       if(ui->lineEdit_chercher->text()=="")
       {
        ui->listView_2->setModel(sco.afficherliste());
       }
}



void MainWindow::on_pushButton_precedent_10_clicked()
{
    ui->stackedWidget->setCurrentIndex(8);
}



void MainWindow::on_pushButton_precedent_9_clicked()
{
    ui->stackedWidget->setCurrentIndex(8);
}
//arduino
void MainWindow::update_label()
{
    data=A.read_from_arduino();

    ui->label_temp->setText(data);
           A.write_to_arduino("1");

     qDebug() << "data" << data;
}



void MainWindow::on_pushButton_acc_3_clicked()
{
    ui->stackedWidget->setCurrentIndex(1);
}

void MainWindow::on_pushButton_music_clicked()
{
    m = new music(this);
    m->setWindowTitle("music");
    m->show();
}

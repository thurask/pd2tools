/*
 * HYPE.cpp
 *
 *  Created on: Feb 7, 2015
 *      Author: luser
 */

#include "HYPE.hpp"

#include <QtCore>
#include <QtNetwork>

HYPE::HYPE()
{
   hype = 0;
}

void HYPE::hypeRequest()
{
    QUrl url("http://www.overkillsoftware.com/hypetrain");
    QNetworkAccessManager *nam = new QNetworkAccessManager(this);
    QNetworkReply *reply = nam->get(QNetworkRequest(url));
    connect(reply, SIGNAL(finished()), this, SLOT(hypeReply()));
}

void HYPE::hypeReply()
{
    QNetworkReply *reply = qobject_cast<QNetworkReply *>(sender());
    QString rawreply = reply->readAll();
    QString parsedreply = rawreply.remove(0,12);
    parsedreply.chop(1);
    parsedreply.simplified();
    setHype(parsedreply);
    sender()->deleteLater();
}

int HYPE::getHype()
{
    return hype;
}

void HYPE::setHype(QString value)
{
    hype = value.toInt();
    emit hypeChanged();
}

HYPE::~HYPE()
{
    // TODO Auto-generated destructor stub
}


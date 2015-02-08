/*
 * HYPE.hpp
 *
 *  Created on: Feb 7, 2015
 *      Author: luser
 */

#ifndef HYPE_HPP_
#define HYPE_HPP_

#include <QtCore>
#include <QtNetwork>

class HYPE: public QObject
{
    Q_OBJECT

public:
    HYPE();
    virtual ~HYPE();

    public Q_SLOTS:
        Q_INVOKABLE
        void hypeRequest();
        Q_INVOKABLE
        void hypeReply();
        Q_INVOKABLE
        int getHype();
        Q_INVOKABLE
        void setHype(QString value);

    private:
        int hype;

    Q_SIGNALS:
        void hypeChanged();
};

#endif /* HYPE_HPP_ */

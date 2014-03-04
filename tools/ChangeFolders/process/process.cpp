#include "process.h"

#include <QProcess>
#include <QDir>
#include <QDebug>

class Process::ProcessPrivate
{
public:
    QProcess* processObject;
};

Process::Process(QObject* parent):
    QObject(parent),
    d(new ProcessPrivate())
{
    d->processObject = new QProcess(this);
}

Process::~Process()
{
    delete d;
}

QString Process::execute(const QString& program, int timeout)
{
    d->processObject->start(QDir::currentPath() + program);
    d->processObject->waitForFinished(timeout);
    QByteArray bytes = d->processObject->readAllStandardOutput();
    return QString::fromLocal8Bit(bytes);
}

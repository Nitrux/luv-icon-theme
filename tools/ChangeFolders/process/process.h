#ifndef LAUNCHER_H
#define LAUNCHER_H

#include <QObject>

class Process : public QObject
{
    Q_OBJECT

public:
    explicit Process(QObject* parent = nullptr);
    ~Process() override;

     Q_INVOKABLE QString execute(const QString &program, int timeout = -1);

private:
    class ProcessPrivate;
    ProcessPrivate* d;
};

#endif // LAUNCHER_H

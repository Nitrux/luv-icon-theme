#include <QtGui/QGuiApplication>
#include <QQuickView>
#include <QtQml>

#include "process/process.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    qmlRegisterType<Process>("CustomTypes", 1, 0, "Process");

    QQuickView view;
    view.setSource(QUrl("qml/Main.qml"));
    view.setResizeMode(QQuickView::SizeRootObjectToView);
    view.setMinimumSize(QSize(900, 700));
    view.show();
    return app.exec();
}

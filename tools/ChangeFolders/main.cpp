#include <QtGui/QGuiApplication>
#include <QQuickView>
#include <QtQml>

#include "process/process.h"
#include "svg_image_item/svg_image_item.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    qmlRegisterType<Process>("CustomTypes", 1, 0, "Process");
    qmlRegisterType<SvgImageItem>("CustomTypes", 1, 0, "SvgImage");

    QQuickView view;
    view.setSource(QUrl("qml/Main.qml"));
    view.setResizeMode(QQuickView::SizeRootObjectToView);
    view.setMinimumSize(QSize(920, 780));
    view.show();
    return app.exec();
}

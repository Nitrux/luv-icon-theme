#include "svg_image_item.h"
#include <QtSvg/QSvgRenderer>
#include <QDir>

class SvgImageItem::SvgImageItemPrivate
{
public:
    QString source;
    QSvgRenderer renderer;
};

SvgImageItem::SvgImageItem(QQuickItem* parent):
    QQuickPaintedItem(parent),
    d(new SvgImageItemPrivate())
{}

SvgImageItem::~SvgImageItem()
{
    delete d;
}

void SvgImageItem::paint(QPainter* painter)
{
    d->renderer.render(painter, this->boundingRect());
}
QString SvgImageItem::source() const
{
    return d->source;
}

void SvgImageItem::setSource(const QString& source)
{
    if (d->source == source) return;

    d->source = source;
    emit this->sourceChanged(source);
    this->loadSource();
}

void SvgImageItem::loadSource()
{
    d->renderer.load(QDir::currentPath() + "/" + d->source);
    this->update();
}


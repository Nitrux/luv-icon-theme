#ifndef SVG_IMAGE_ITEM_H
#define SVG_IMAGE_ITEM_H

#include <QQuickPaintedItem>

class SvgImageItem: public QQuickPaintedItem
{
    Q_OBJECT

    Q_PROPERTY(QString source READ source WRITE setSource NOTIFY sourceChanged)

public:
    explicit SvgImageItem(QQuickItem* parent = nullptr);
    ~SvgImageItem() override;

    void paint(QPainter* painter) override;

    QString source() const;

public slots:
    void setSource(const QString& source);
    void loadSource();

signals:
    void sourceChanged(QString source);

private:
    class SvgImageItemPrivate;
    SvgImageItemPrivate* d;
};

#endif // SVG_IMAGE_ITEM_H

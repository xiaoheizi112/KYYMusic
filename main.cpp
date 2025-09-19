#include <QApplication>
#include <QQmlApplicationEngine>
#include <QFontDatabase>
#include <QDebug>
#include <QQmlContext>

/**
 * @brief globalRegist cpp global registration
 */
void globalRegist(){

}

/**
 * @brief init initialization operations
 */
void init(){
    globalRegist();
    // This line is required to avoid errors when using FileDialog in QML
    QCoreApplication::setOrganizationName("Some organization");
    // View system fonts
    // QStringList families = QFontDatabase().families();
    // for(const QString& family: families)qDebug()<<family;
}

void modelRegist(QQmlApplicationEngine* engine){
    // Register QStringList model in qml
    QStringList carouselListModel;
    for(int i = 0;i<6;i++){
        carouselListModel << QString("qrc:/img/Resources/cherryPick/carouselI%1.png").arg(i+1);
    }
    engine->rootContext()->setContextProperty("carouselListModel",QVariant::fromValue(carouselListModel));
    // Song square model
    QStringList singSquareListModel;

    singSquareListModel<<"Do you also like" << "Your exclusive playlist" << "Quality playlist selection" << "New music discovery" << "These playlists suit you";

    engine->rootContext()->setContextProperty("singSquareListModel",QVariant::fromValue(singSquareListModel));
}
int main(int argc, char *argv[])
{
#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif
    QApplication app(argc, argv);
    QQmlApplicationEngine engine;
    modelRegist(&engine);
    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
                         if (!obj && url == objUrl)
                             QCoreApplication::exit(-1);
                     }, Qt::QueuedConnection);
    engine.load(url);
    qmlRegisterSingletonType(QUrl("qrc:/Src/basic/BasicConfig.qml"),"BasicConfig",1,0,"BasicConfig");
    return app.exec();
}
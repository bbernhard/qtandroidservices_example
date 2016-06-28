TEMPLATE = app

win32{
    QT += qml quick webview multimedia
}
android{
    QT += qml quick webview multimedia androidextras
}
CONFIG += c++11


SOURCES += \
    source/cpp/main.cpp

RESOURCES += qml.qrc

# Default rules for deployment.
include(deployment.pri)


DISTFILES += \
    android/AndroidManifest.xml \
    android/gradle/wrapper/gradle-wrapper.jar \
    android/gradlew \
    android/res/values/libs.xml \
    android/build.gradle \
    android/gradle/wrapper/gradle-wrapper.properties \
    android/gradlew.bat \
    android/gradle.properties \
    android/local.properties

android {
    ANDROID_PACKAGE_SOURCE_DIR = $$PWD/android
    ANDROID_JAVA_SOURCES.path = /src/org/qtproject/example
    ANDROID_JAVA_SOURCES.files = $$files($$PWD/source/java/*.java)
    INSTALLS += ANDROID_JAVA_SOURCES
}

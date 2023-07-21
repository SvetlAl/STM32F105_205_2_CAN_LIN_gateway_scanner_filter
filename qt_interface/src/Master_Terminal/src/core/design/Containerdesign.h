#ifndef CONTAINERDESIGN_H
#define CONTAINERDESIGN_H


#include <iostream>
#include <map>
#include <QDebug>
#include "../../app_settings.h"

#ifdef QT_IN_USE

template <typename T>
class ContainerDesign{
public:
    explicit ContainerDesign<T>(){
    };
    explicit ContainerDesign<T>(QString _name): m_name(_name){
    };

    friend class AppDesign;

    /************ Functions ************/
    bool isKeyInited(const QString key){
        auto it = p_items.find(key);
        if (it == p_items.end()) return false;
        else return true;
    }

    void addItem(const QString key, const T value){
        if(isKeyInited(key)){
            replaceItem(key, value);
        }
        else p_items.insert(key, value);
    }

    T getItem(const QString key) const noexcept{
        auto it = p_items.find(key);
        if(it != p_items.end()){
            T ret = it.value(); // key find
            return ret;
        }
        else{
            T ret;
            return ret;
        }
    }

    void replaceItem(const QString key, const T value){
        if(isKeyInited(key)){
            p_items[key] = value;
        }
        else p_items.insert(key, value);
    }

    void print(){
        qDebug() << m_name;
    }
protected:
    QString m_name = "default";
    QMap<QString, T> p_items;
};



class ContainerDesignInt : public ContainerDesign<int>{
public:
    explicit ContainerDesignInt(): ContainerDesign<int>(){
    };
    explicit ContainerDesignInt(QString _name): ContainerDesign<int>(_name){
    };
    ~ContainerDesignInt(){};

    friend QDataStream& operator >>( QDataStream& d, ContainerDesignInt& cd);
    friend QDataStream& operator << (QDataStream& d, const ContainerDesignInt& cd);

};

QDataStream& operator << (QDataStream& d, const ContainerDesignInt& cd);
QDataStream& operator >> (QDataStream& d, ContainerDesignInt& cd);

class ContainerDesignFloat : public ContainerDesign<float>{
public:
    explicit ContainerDesignFloat(): ContainerDesign<float>(){
    };
    explicit ContainerDesignFloat(QString _name): ContainerDesign<float>(_name){
    };
    ~ContainerDesignFloat(){};

    friend QDataStream& operator >>( QDataStream& d, ContainerDesignFloat& cd);
    friend QDataStream& operator << (QDataStream& d, const ContainerDesignFloat& cd);

};

QDataStream& operator << (QDataStream& d, const ContainerDesignFloat& cd);
QDataStream& operator >> (QDataStream& d, ContainerDesignFloat& cd);


class ContainerDesignQstring : public ContainerDesign<QString>{
public:
    explicit ContainerDesignQstring(): ContainerDesign<QString>(){
    };
    explicit ContainerDesignQstring(QString _name): ContainerDesign<QString>(_name){
    };
    ~ContainerDesignQstring(){};

    friend QDataStream& operator >>( QDataStream& d, ContainerDesignQstring& cd);
    friend QDataStream& operator << (QDataStream& d, const ContainerDesignQstring& cd);

};

QDataStream& operator << (QDataStream& d, const ContainerDesignQstring& cd);
QDataStream& operator >> (QDataStream& d, ContainerDesignQstring& cd);

#endif

#endif // CONTAINERDESIGN_H

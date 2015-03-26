# Expression-GUI 文档(Alpha)

## C++ 文件

### src/*.cpp(h)
为 [Express命令行版本](https://github.com/FFF-Tuan-431-1/expression)的代码，具体不再赘述。

**TODO** 把这个模块用git submodule代替

### Expression.cpp

对Calculate类的进一步封装，现在继承自QObject类，并且向QML暴露了`expression` 和 `value` 2个属性，可以实现C++与QML的交互。


## QML 文件

### MyView.qml

入口界面……

### MainForm.ui.qml

输入界面...

### Printfx.ui.qml

显示信息……

# Expression-GUI 文档(Alpha)

## C++ 文件

### src/*.cpp(h)
为 [Express命令行版本](https://github.com/FFF-Tuan-431-1/expression)的代码，具体不再赘述。

**TODO** 把这个模块用git submodule代替

### Expression.cpp

对Calculate类的进一步封装，现在继承自QObject类，并且向QML暴露了`expression` `value` `suffix` `error`   4个属性，可以实现C++与QML的交互。


## QML 文件

QML 文件划分

- view/main.qml 主文件
- view/calculator.qml 计算器主文件
- view/components/screen.qml 显示屏文件
- view/components/keyboard.qml 键盘文件
- view/components/button.ui.qml 自定义按键文件（暂时不需要加）


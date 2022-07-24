# 第6章 OOPがもたらしたソフトウェアとアイデアの再利用



## クラスライブラリ



元々は関数ライブラリだった

それがクラスライブラリになることで、単純にできることが増えた

- ポリモーフィズムの利用

  - 例、いくつかのクラスライブラリを使ってポリモーフィズムを実現する、共通している部分を利用したコードを書くなど

    ```cpp
    // .begin(), .end() メソッドを持つ型であれば使用できる
    template <typename T>
    T sorted(T a) {
        std::sort(a.begin(), a.end());
        return a;
    }
    
    int main() {
        std::vector<int> a = {3,1,4,1,5};
        auto sorted_a = sorted(a); // {1,1,3,4,5}
        
        std::string s = "dacba";
        auto sorted_s = sorted(s); // "aabcd"
    }
    ```

- クラスの継承
- クラスの利用
  - インスタンスを作るなど



### これの利点

クラスにすることで、インスタンス変数として状態をもたせられるというのはありそう

- 副作用を必要とするような関数の副作用をクラス内で完結させられる
  - メモ化再帰とか
- 状態を変更できる



## Objectが継承構造の根

わりといろんな言語でそうなっていそう

JavaScriptとかたしかそんなんだったはず



## フレームワークとライブラリ

JSのフレームワークとしてVue.jsがある

ReactはJSライブラリ



ほぼ新しい言語のような使い方を想定されているのがフレームワーク？

- Vue.jsの例をとると、`v-model`だったり`v-if`だったり
  - JavaScriptを書くというよりも、Vue.jsならではのライフサイクル（どの関数が最初に読み込まれるのかとか）があったりしていて、ほんとに新しい言語に近い



部品群をまとめたものを提供しているのがライブラリ？

- Reactの例をとると、カスタムフックとか
  - JSXを結構書いたりしてユーザーに拡張性を求めていそう



## コンポーネント

フロントエンドだとコンポーネント指向があったりしてイメージつきやすい

- 例、文字入力コンポーネントとボタンコンポーネントがあって、それを使って提出フォームコンポーネントを作る



再利用性の塊みたいなイメージがある

副作用がなくて独立しているコンポーネントだと、テストがしやすそうだね



## GoFのデザインパターン

まじでちゃんと理解したい

https://qiita.com/i-tanaka730/items/c63c6c22abd1477e0ba0



シングルトンとかは聞いたことがある

1クラスに1つのインスタンスのみ

コンストラクタをprivateにして、クラス変数を返すようにすることでインスタンスが必ず1つになるようにする

```java
// singleton.java
public class Singleton {

    private static Singleton singleton = new Singleton();

    private Singleton() {
        System.out.println("インスタンスを生成しました。");
    }

    public static Singleton getInstance() {
        return singleton;
    }
}
```

```java
// Main.java
public class Main {
    public static void main(String[] args) {
        Singleton obj1 = Singleton.getInstance();
        Singleton obj2 = Singleton.getInstance();
        if (obj1 == obj2) {
            System.out.println("obj1とobj2は同じインスタンスです。");
        } else {
            System.out.println("obj1とobj2は同じインスタンスではありません。");
        }
    }
}
```

```
インスタンスを生成しました。
obj1とobj2は同じインスタンスです。
```



これねー、いいよね（小並感）

メリットとしてはインスタンスの数に制限をかけることで、見通しがよくなる


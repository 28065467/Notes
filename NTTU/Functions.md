# Switch
* Without *break* than it will continue running the next case no matter it meets the condition or not
```c=
int sum = 0;
switch(number){
    case 1:
        sum += 1;
    case 2:
        sum += 2;
        break;
    default:
        sum += 3;
        break;
}
```
> Input with [1,1,2] => Since case 1 has no break => every 1 will add 1+2 = 3 to the sum => Result = 3 + 3 + 2 = 8

# Output
1. ```%a.bf```
   * *a* means the *width*(total digits including decimal point) if not enough padded with *space* in the left
   * b is *precision*(digits after the decimal point)
> Ex. ```%2.1f``` for *2.412* => precision = 1 => ```2.4``` => width = 2 => no change => Result = ```2.4```  
> 
> Ex2. ```%3.f``` for *2.412* => precision = 0 => rounding => ```2``` => width = 3 => not enough => Result = ```  2```  
# Class
```c++=
class A{
    private:
        int a;
    public:
        void f(){
            cout << "11" << endl;
        };
        virtual void g();
        ~B(){
            cout << "66" << endl;
        };
        int get() {
            return a;
        }
        void set(int v) {
            a = v;
        }
}
class B : public A{
    private:
        int b;
    public:
        void f(){
            cout << "33" << endl;
        }
        void g(){
            cout << "44" << endl;
        };
        ~B(){
            cout << "99" << endl;
        }
        B() {
            set(1);
            b = 2;
        }
        int getA() {
            return get();
        }
        int getB() {
            return b;
        }
}
```
## Inherite
### Polymorphism
* A pointer with type of father class can point to its all child class(*polymorphism*)
> ```c++=
>A* pointer;
>pointer = new B();
> ```
* Dynamic Binding => If function is *virtual* then it will binding to the class => i.e will run the base class's function bt default if there's no virtual prefix
> ```c++=
> pointer -> f(); // Output class A's f() since the class of the pointer is A
> pointer -> g(); // Output class B's g() since g() is a virtual function
> ```
#### Deconstructor
* Unless the deconstruct function is a virtual function, then a class will always call its *father's deconstructor*
>```c++=
> delete pointer // Output 66
>```
* But if it isn't polymorphism then it will call its deconstructor first then base class's deconstructor
>```c++=
> B* object = new B();
> delete object; // Output 99 66
>```
* If there's same function in the child class then it will *overwrite* the function in their father class

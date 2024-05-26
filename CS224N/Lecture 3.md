### Gradient
* The gradient is the *vector of partial derivates* of a function with respect to each input
> For example like
> $$f(x) = f(x_1,x_2...x_n)$$
> The gradient of the above function is
> $$[\frac{\partial{f}}{\partial{x_1}}...\frac{\partial{f}}{\partial{x_n}}]$$
* To generalized it to functions with n inputs and m outputs, we use the *jacobian matrix* to represent gradient
> ![](images/![alt%20text](image-2.png).png)
* These are some useful gradient of the jacobian matrix
>!![](images/[alt%20text](image-5.png).png)
* For a simple NN like below
![](images/![alt%20text](image-4.png).png)
 There's 2 parameter *b* and *W*. To compute the partial derivate of b, let $h=f(z)$ and $z=Wx+b$
 $$\frac{\partial{s}}{\partial{b}} = \frac{\partial{s}}{\partial{h}}\frac{\partial{h}}{\partial{z}}\frac{\partial{z}}{\partial{b}}=u^Tdiag(f^{'}(z))$$
 With the respect to $W$ :
$$\frac{\partial{s}}{\partial{W}} = \frac{\partial{s}}{\partial{h}} \frac{\partial{h}}{\partial{z}} \frac{\partial{z}}{\partial{W}}$$
The first 2 terms are the same so we use a variable called local error signal to avoid recomputing, thus:
$$\frac{\partial{s}}{\partial{W}} = \delta \frac{\partial{z}}{\partial{W}}$$

* The grdient calculated by the jacobian is a *row vector* which is not friendly for SGD but good for calculation
    => For better SGD, follow the *shape convention* to make the output gradient also be a m\*n matrix(reuse the *higher* partial derivative)
### Propogation
* *Forward Propogation* is the process that we compute the output by the defined network functions
> For examples like $f(x,y,z)=(x+y)max(y,z)$ with x=1,y=2,z=0
> ```mermaid
> flowchart LR
> id1((x))---|1|id2(+)
> id3((y))---|2|id2(+)
> ```
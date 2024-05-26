### Gradient
* The gradient is the *vector of partial derivates* of a function with respect to each input
> For example
> ![](images/![](../2024-05-26-02-34-38.png).png)
> The gradient of the above function is =>
> ![](images/![alt%20text](image-1.png).png)
* To generalized it to functions with n inputs and m outputs, we use the *jacobian matrix* to represent gradient
> ![](images/![alt%20text](image-2.png).png)
* These are some useful gradient of the jacobian matrix
>!![](images/[alt%20text](image-5.png).png)
* For a simple NN like below
![](images/![alt%20text](image-4.png).png)
 There's 2 parameter *b* and *W*. To compute the partial derivate of b, let $h=f(z)$ and $z=Wx+b$
 $$
\frac{\partial{s}}{\partial{b}} = \frac{\partial{s}}{\partial{h}}\frac{\partial{h}}{\partial{z}}\frac{\partial{z}}{\partial{b}}=u^Tdiag(f^{'}(z))
$$
 With the respect to $W$ :
$$ 
\frac{\partial{s}}{\partial{W}} = \frac{\partial{s}}{\partial{h}} \frac{\partial{h}}{\partial{z}} \frac{\partial{z}}{\partial{W}} 
$$
The first 2 terms are the same so we use a variable called local error signal to avoid recomputing, thus:
$$ 
\frac{\partial{s}}{\partial{W}} = \delta \frac{\partial{z}}{\partial{W}} 
$$

* The grdient calculated by the jacobian is a *row vector* which is not friendly for SGD but good for calculation
    => For better SGD, follow the *shape convention* to make the output gradient also be a m\*n matrix(find a proper time to transpose the matrix)

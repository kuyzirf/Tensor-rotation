# Tensor-rotation
General formula is
$$\chi^{(2)}_{(i j k)\_{\text{rotated}}}= M\_{i a} M\_{j b} M\_{k c} \chi^{(2)}\_{(a b c)\_{\text{underrotated}}}$$

## Rotation matrix $\hat{M}$
Rotation matrix $\hat{M}$ is defined as
$$\mathbf{A}^{\text{rotated}} = \hat{M}^{-1} \mathbf{A}^{\text{underrotated}}$$
The matrix of a proper rotation $\hat{M}$ by angle $\beta$ around the axis $r=(x, y, z)$, a unit vector with $x^2+y^2+z^2=1$

$${\displaystyle M={\begin{bmatrix} \cos \beta +x^{2}\left(1-\cos \beta \right)& xy\left(1-\cos \beta \right)-z\sin \beta & xz\left(1-\cos \beta \right)+y\sin \beta \\\yx\left(1-\cos \beta \right)+z\sin \beta & \cos \beta +y^{2}\left(1-\cos \beta \right)& yz\left(1-\cos \beta \right)-x\sin \beta \\
zx\left(1-\cos \beta \right)-y\sin \beta &zy\left(1-\cos \beta \right)+x\sin \beta & \cos \beta +z^{2}\left(1-\cos \beta \right)\end{bmatrix}}}$$

## Code structure 
Main.m - main matlab file, which rotates $3\times 6$ matrix across  $(x,y,z)$ axis, where $x^2+y^2+z^2=1$ to the $\beta$ angle. The result is rotated matrix in $3\times6$ form.

Mmatrix.m - function, which takes parameters of rotation $(x,y,z,\beta,$ where $x^2+y^2+z^2=1)$ and build rotation matrix $\hat{M}$.

Rotation_tensor.m - function, which takes parameters of rotation $(x,y,z,\beta,$ where $x^2+y^2+z^2=1)$ and initial matrix $RR$($3\times 3\times 3$). The result is rotated $RR$ matrix in $3\times 3\times 3$ form.

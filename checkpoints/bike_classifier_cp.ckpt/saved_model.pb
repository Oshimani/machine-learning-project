??
??
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
?
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
?
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
?
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
?
Mul
x"T
y"T
z"T"
Ttype:
2	?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
?
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.6.22v2.6.1-9-gc2363d6d0258??
~
conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d/kernel
w
!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel*&
_output_shapes
: *
dtype0
n
conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d/bias
g
conv2d/bias/Read/ReadVariableOpReadVariableOpconv2d/bias*
_output_shapes
: *
dtype0
?
conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  * 
shared_nameconv2d_1/kernel
{
#conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1/kernel*&
_output_shapes
:  *
dtype0
r
conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_1/bias
k
!conv2d_1/bias/Read/ReadVariableOpReadVariableOpconv2d_1/bias*
_output_shapes
: *
dtype0
?
conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  * 
shared_nameconv2d_2/kernel
{
#conv2d_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_2/kernel*&
_output_shapes
:  *
dtype0
r
conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_2/bias
k
!conv2d_2/bias/Read/ReadVariableOpReadVariableOpconv2d_2/bias*
_output_shapes
: *
dtype0
w
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:???*
shared_namedense/kernel
p
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*!
_output_shapes
:???*
dtype0
m

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_name
dense/bias
f
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes	
:?*
dtype0
y
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*
shared_namedense_1/kernel
r
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes
:	?*
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
h
VariableVarHandleOp*
_output_shapes
: *
dtype0	*
shape:*
shared_name
Variable
a
Variable/Read/ReadVariableOpReadVariableOpVariable*
_output_shapes
:*
dtype0	
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
?
Adam/conv2d/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/conv2d/kernel/m
?
(Adam/conv2d/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d/kernel/m*&
_output_shapes
: *
dtype0
|
Adam/conv2d/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/conv2d/bias/m
u
&Adam/conv2d/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d/bias/m*
_output_shapes
: *
dtype0
?
Adam/conv2d_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *'
shared_nameAdam/conv2d_1/kernel/m
?
*Adam/conv2d_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/kernel/m*&
_output_shapes
:  *
dtype0
?
Adam/conv2d_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/conv2d_1/bias/m
y
(Adam/conv2d_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/bias/m*
_output_shapes
: *
dtype0
?
Adam/conv2d_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *'
shared_nameAdam/conv2d_2/kernel/m
?
*Adam/conv2d_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_2/kernel/m*&
_output_shapes
:  *
dtype0
?
Adam/conv2d_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/conv2d_2/bias/m
y
(Adam/conv2d_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_2/bias/m*
_output_shapes
: *
dtype0
?
Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:???*$
shared_nameAdam/dense/kernel/m
~
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m*!
_output_shapes
:???*
dtype0
{
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*"
shared_nameAdam/dense/bias/m
t
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*&
shared_nameAdam/dense_1/kernel/m
?
)Adam/dense_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/m*
_output_shapes
:	?*
dtype0
~
Adam/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_1/bias/m
w
'Adam/dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/m*
_output_shapes
:*
dtype0
?
Adam/conv2d/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/conv2d/kernel/v
?
(Adam/conv2d/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d/kernel/v*&
_output_shapes
: *
dtype0
|
Adam/conv2d/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/conv2d/bias/v
u
&Adam/conv2d/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d/bias/v*
_output_shapes
: *
dtype0
?
Adam/conv2d_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *'
shared_nameAdam/conv2d_1/kernel/v
?
*Adam/conv2d_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/kernel/v*&
_output_shapes
:  *
dtype0
?
Adam/conv2d_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/conv2d_1/bias/v
y
(Adam/conv2d_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/bias/v*
_output_shapes
: *
dtype0
?
Adam/conv2d_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *'
shared_nameAdam/conv2d_2/kernel/v
?
*Adam/conv2d_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_2/kernel/v*&
_output_shapes
:  *
dtype0
?
Adam/conv2d_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/conv2d_2/bias/v
y
(Adam/conv2d_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_2/bias/v*
_output_shapes
: *
dtype0
?
Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:???*$
shared_nameAdam/dense/kernel/v
~
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v*!
_output_shapes
:???*
dtype0
{
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*"
shared_nameAdam/dense/bias/v
t
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*&
shared_nameAdam/dense_1/kernel/v
?
)Adam/dense_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/v*
_output_shapes
:	?*
dtype0
~
Adam/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_1/bias/v
w
'Adam/dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
?L
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?L
value?LB?L B?L
?
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer-8

layer_with_weights-3

layer-9
layer_with_weights-4
layer-10
	optimizer
	variables
regularization_losses
trainable_variables
	keras_api

signatures
l
layer-0
layer-1
	variables
regularization_losses
trainable_variables
	keras_api
_
layer-0
	variables
regularization_losses
trainable_variables
	keras_api
h

kernel
bias
trainable_variables
 	variables
!regularization_losses
"	keras_api
R
#trainable_variables
$	variables
%regularization_losses
&	keras_api
h

'kernel
(bias
)trainable_variables
*	variables
+regularization_losses
,	keras_api
R
-trainable_variables
.	variables
/regularization_losses
0	keras_api
h

1kernel
2bias
3trainable_variables
4	variables
5regularization_losses
6	keras_api
R
7trainable_variables
8	variables
9regularization_losses
:	keras_api
R
;trainable_variables
<	variables
=regularization_losses
>	keras_api
h

?kernel
@bias
Atrainable_variables
B	variables
Cregularization_losses
D	keras_api
h

Ekernel
Fbias
Gtrainable_variables
H	variables
Iregularization_losses
J	keras_api
?
Kiter

Lbeta_1

Mbeta_2
	Ndecay
Olearning_ratem?m?'m?(m?1m?2m??m?@m?Em?Fm?v?v?'v?(v?1v?2v??v?@v?Ev?Fv?
F
0
1
'2
(3
14
25
?6
@7
E8
F9
 
F
0
1
'2
(3
14
25
?6
@7
E8
F9
?

Players
Qlayer_regularization_losses
Rlayer_metrics
Smetrics
Tnon_trainable_variables
	variables
regularization_losses
trainable_variables
 
R
Utrainable_variables
V	variables
Wregularization_losses
X	keras_api
R
Ytrainable_variables
Z	variables
[regularization_losses
\	keras_api
 
 
 
?

]layers
^layer_regularization_losses
_layer_metrics
`metrics
anon_trainable_variables
	variables
regularization_losses
trainable_variables
\
b_rng
ctrainable_variables
d	variables
eregularization_losses
f	keras_api
 
 
 
?

glayers
hlayer_regularization_losses
ilayer_metrics
jmetrics
knon_trainable_variables
	variables
regularization_losses
trainable_variables
YW
VARIABLE_VALUEconv2d/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEconv2d/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?

llayers
mlayer_regularization_losses
trainable_variables
nmetrics
onon_trainable_variables
 	variables
!regularization_losses
player_metrics
 
 
 
?

qlayers
rlayer_regularization_losses
#trainable_variables
smetrics
tnon_trainable_variables
$	variables
%regularization_losses
ulayer_metrics
[Y
VARIABLE_VALUEconv2d_1/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_1/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

'0
(1

'0
(1
 
?

vlayers
wlayer_regularization_losses
)trainable_variables
xmetrics
ynon_trainable_variables
*	variables
+regularization_losses
zlayer_metrics
 
 
 
?

{layers
|layer_regularization_losses
-trainable_variables
}metrics
~non_trainable_variables
.	variables
/regularization_losses
layer_metrics
[Y
VARIABLE_VALUEconv2d_2/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_2/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

10
21

10
21
 
?
?layers
 ?layer_regularization_losses
3trainable_variables
?metrics
?non_trainable_variables
4	variables
5regularization_losses
?layer_metrics
 
 
 
?
?layers
 ?layer_regularization_losses
7trainable_variables
?metrics
?non_trainable_variables
8	variables
9regularization_losses
?layer_metrics
 
 
 
?
?layers
 ?layer_regularization_losses
;trainable_variables
?metrics
?non_trainable_variables
<	variables
=regularization_losses
?layer_metrics
XV
VARIABLE_VALUEdense/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
dense/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

?0
@1

?0
@1
 
?
?layers
 ?layer_regularization_losses
Atrainable_variables
?metrics
?non_trainable_variables
B	variables
Cregularization_losses
?layer_metrics
ZX
VARIABLE_VALUEdense_1/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_1/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

E0
F1

E0
F1
 
?
?layers
 ?layer_regularization_losses
Gtrainable_variables
?metrics
?non_trainable_variables
H	variables
Iregularization_losses
?layer_metrics
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
N
0
1
2
3
4
5
6
7
	8

9
10
 
 

?0
?1
 
 
 
 
?
?layers
 ?layer_regularization_losses
Utrainable_variables
?metrics
?non_trainable_variables
V	variables
Wregularization_losses
?layer_metrics
 
 
 
?
?layers
 ?layer_regularization_losses
Ytrainable_variables
?metrics
?non_trainable_variables
Z	variables
[regularization_losses
?layer_metrics

0
1
 
 
 
 

?
_state_var
 
 
 
?
?layers
 ?layer_regularization_losses
ctrainable_variables
?metrics
?non_trainable_variables
d	variables
eregularization_losses
?layer_metrics

0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
8

?total

?count
?	variables
?	keras_api
I

?total

?count
?
_fn_kwargs
?	variables
?	keras_api
 
 
 
 
 
 
 
 
 
 
XV
VARIABLE_VALUEVariable:layer-1/layer-0/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUE
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?	variables
|z
VARIABLE_VALUEAdam/conv2d/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/conv2d/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_1/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_1/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_2/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_2/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_1/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_1/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/conv2d/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_1/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_1/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_2/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_2/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_1/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_1/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
&serving_default_data_preparation_inputPlaceholder*1
_output_shapes
:???????????*
dtype0*&
shape:???????????
?
StatefulPartitionedCallStatefulPartitionedCall&serving_default_data_preparation_inputconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasdense/kernel
dense/biasdense_1/kerneldense_1/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *-
f(R&
$__inference_signature_wrapper_119729
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename!conv2d/kernel/Read/ReadVariableOpconv2d/bias/Read/ReadVariableOp#conv2d_1/kernel/Read/ReadVariableOp!conv2d_1/bias/Read/ReadVariableOp#conv2d_2/kernel/Read/ReadVariableOp!conv2d_2/bias/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOpVariable/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp(Adam/conv2d/kernel/m/Read/ReadVariableOp&Adam/conv2d/bias/m/Read/ReadVariableOp*Adam/conv2d_1/kernel/m/Read/ReadVariableOp(Adam/conv2d_1/bias/m/Read/ReadVariableOp*Adam/conv2d_2/kernel/m/Read/ReadVariableOp(Adam/conv2d_2/bias/m/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp)Adam/dense_1/kernel/m/Read/ReadVariableOp'Adam/dense_1/bias/m/Read/ReadVariableOp(Adam/conv2d/kernel/v/Read/ReadVariableOp&Adam/conv2d/bias/v/Read/ReadVariableOp*Adam/conv2d_1/kernel/v/Read/ReadVariableOp(Adam/conv2d_1/bias/v/Read/ReadVariableOp*Adam/conv2d_2/kernel/v/Read/ReadVariableOp(Adam/conv2d_2/bias/v/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOp)Adam/dense_1/kernel/v/Read/ReadVariableOp'Adam/dense_1/bias/v/Read/ReadVariableOpConst*5
Tin.
,2*		*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *(
f#R!
__inference__traced_save_120850
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasdense/kernel
dense/biasdense_1/kerneldense_1/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rateVariabletotalcounttotal_1count_1Adam/conv2d/kernel/mAdam/conv2d/bias/mAdam/conv2d_1/kernel/mAdam/conv2d_1/bias/mAdam/conv2d_2/kernel/mAdam/conv2d_2/bias/mAdam/dense/kernel/mAdam/dense/bias/mAdam/dense_1/kernel/mAdam/dense_1/bias/mAdam/conv2d/kernel/vAdam/conv2d/bias/vAdam/conv2d_1/kernel/vAdam/conv2d_1/bias/vAdam/conv2d_2/kernel/vAdam/conv2d_2/bias/vAdam/dense/kernel/vAdam/dense/bias/vAdam/dense_1/kernel/vAdam/dense_1/bias/v*4
Tin-
+2)*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *+
f&R$
"__inference__traced_restore_120980??
?
L
0__inference_max_pooling2d_2_layer_call_fn_120476

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_1192072
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
L
0__inference_max_pooling2d_1_layer_call_fn_120441

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????7b * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_1192772
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????7b 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????o? :X T
0
_output_shapes
:?????????o? 
 
_user_specified_nameinputs
?
?
2__inference_data_augmentation_layer_call_fn_120173
random_flip_input
unknown:	
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallrandom_flip_inputunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_data_augmentation_layer_call_and_return_conditional_losses_1191302
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:???????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:???????????: 22
StatefulPartitionedCallStatefulPartitionedCall:d `
1
_output_shapes
:???????????
+
_user_specified_namerandom_flip_input
?
i
M__inference_data_augmentation_layer_call_and_return_conditional_losses_120313

inputs
identityd
IdentityIdentityinputs*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
M
1__inference_data_preparation_layer_call_fn_119995

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_data_preparation_layer_call_and_return_conditional_losses_1189432
PartitionedCallv
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
_
C__inference_flatten_layer_call_and_return_conditional_losses_120502

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"???? ?  2
Consti
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:???????????2	
Reshapef
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????0 :W S
/
_output_shapes
:?????????0 
 
_user_specified_nameinputs
?
?
&__inference_dense_layer_call_fn_120511

inputs
unknown:???
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_1193212
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:???????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?
N
2__inference_data_augmentation_layer_call_fn_120178

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_data_augmentation_layer_call_and_return_conditional_losses_1192312
PartitionedCallv
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
D__inference_conv2d_2_layer_call_and_return_conditional_losses_120471

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????5` *
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????5` 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????5` 2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????5` 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????7b : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????7b 
 
_user_specified_nameinputs
?f
?
G__inference_random_flip_layer_call_and_return_conditional_losses_119111

inputs?
1stateful_uniform_full_int_rngreadandskip_resource:	
identity??(stateful_uniform_full_int/RngReadAndSkip?Ostateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlg?Vstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter?
stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:2!
stateful_uniform_full_int/shape?
stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
stateful_uniform_full_int/Const?
stateful_uniform_full_int/ProdProd(stateful_uniform_full_int/shape:output:0(stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: 2 
stateful_uniform_full_int/Prod?
 stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :2"
 stateful_uniform_full_int/Cast/x?
 stateful_uniform_full_int/Cast_1Cast'stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 2"
 stateful_uniform_full_int/Cast_1?
(stateful_uniform_full_int/RngReadAndSkipRngReadAndSkip1stateful_uniform_full_int_rngreadandskip_resource)stateful_uniform_full_int/Cast/x:output:0$stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:2*
(stateful_uniform_full_int/RngReadAndSkip?
-stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-stateful_uniform_full_int/strided_slice/stack?
/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/stateful_uniform_full_int/strided_slice/stack_1?
/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/stateful_uniform_full_int/strided_slice/stack_2?
'stateful_uniform_full_int/strided_sliceStridedSlice0stateful_uniform_full_int/RngReadAndSkip:value:06stateful_uniform_full_int/strided_slice/stack:output:08stateful_uniform_full_int/strided_slice/stack_1:output:08stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask2)
'stateful_uniform_full_int/strided_slice?
!stateful_uniform_full_int/BitcastBitcast0stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type02#
!stateful_uniform_full_int/Bitcast?
/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/stateful_uniform_full_int/strided_slice_1/stack?
1stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1stateful_uniform_full_int/strided_slice_1/stack_1?
1stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1stateful_uniform_full_int/strided_slice_1/stack_2?
)stateful_uniform_full_int/strided_slice_1StridedSlice0stateful_uniform_full_int/RngReadAndSkip:value:08stateful_uniform_full_int/strided_slice_1/stack:output:0:stateful_uniform_full_int/strided_slice_1/stack_1:output:0:stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:2+
)stateful_uniform_full_int/strided_slice_1?
#stateful_uniform_full_int/Bitcast_1Bitcast2stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type02%
#stateful_uniform_full_int/Bitcast_1?
stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :2
stateful_uniform_full_int/alg?
stateful_uniform_full_intStatelessRandomUniformFullIntV2(stateful_uniform_full_int/shape:output:0,stateful_uniform_full_int/Bitcast_1:output:0*stateful_uniform_full_int/Bitcast:output:0&stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	2
stateful_uniform_full_intb

zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R 2

zeros_like?
stackPack"stateful_uniform_full_int:output:0zeros_like:output:0*
N*
T0	*
_output_shapes

:2
stack{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2?
strided_sliceStridedSlicestack:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice?
3stateless_random_flip_left_right/control_dependencyIdentityinputs*
T0*
_class
loc:@inputs*1
_output_shapes
:???????????25
3stateless_random_flip_left_right/control_dependency?
&stateless_random_flip_left_right/ShapeShape<stateless_random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
:2(
&stateless_random_flip_left_right/Shape?
4stateless_random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4stateless_random_flip_left_right/strided_slice/stack?
6stateless_random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6stateless_random_flip_left_right/strided_slice/stack_1?
6stateless_random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6stateless_random_flip_left_right/strided_slice/stack_2?
.stateless_random_flip_left_right/strided_sliceStridedSlice/stateless_random_flip_left_right/Shape:output:0=stateless_random_flip_left_right/strided_slice/stack:output:0?stateless_random_flip_left_right/strided_slice/stack_1:output:0?stateless_random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask20
.stateless_random_flip_left_right/strided_slice?
?stateless_random_flip_left_right/stateless_random_uniform/shapePack7stateless_random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:2A
?stateless_random_flip_left_right/stateless_random_uniform/shape?
=stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    2?
=stateless_random_flip_left_right/stateless_random_uniform/min?
=stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2?
=stateless_random_flip_left_right/stateless_random_uniform/max?
Vstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterstrided_slice:output:0* 
_output_shapes
::2X
Vstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter?
Ostateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlgStatelessRandomGetAlgW^stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter*
_output_shapes
: 2Q
Ostateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlg?
Rstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Hstateless_random_flip_left_right/stateless_random_uniform/shape:output:0\stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0`stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Ustateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlg:alg:0*#
_output_shapes
:?????????2T
Rstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2?
=stateless_random_flip_left_right/stateless_random_uniform/subSubFstateless_random_flip_left_right/stateless_random_uniform/max:output:0Fstateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: 2?
=stateless_random_flip_left_right/stateless_random_uniform/sub?
=stateless_random_flip_left_right/stateless_random_uniform/mulMul[stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Astateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:?????????2?
=stateless_random_flip_left_right/stateless_random_uniform/mul?
9stateless_random_flip_left_right/stateless_random_uniformAddV2Astateless_random_flip_left_right/stateless_random_uniform/mul:z:0Fstateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:?????????2;
9stateless_random_flip_left_right/stateless_random_uniform?
0stateless_random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :22
0stateless_random_flip_left_right/Reshape/shape/1?
0stateless_random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :22
0stateless_random_flip_left_right/Reshape/shape/2?
0stateless_random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :22
0stateless_random_flip_left_right/Reshape/shape/3?
.stateless_random_flip_left_right/Reshape/shapePack7stateless_random_flip_left_right/strided_slice:output:09stateless_random_flip_left_right/Reshape/shape/1:output:09stateless_random_flip_left_right/Reshape/shape/2:output:09stateless_random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:20
.stateless_random_flip_left_right/Reshape/shape?
(stateless_random_flip_left_right/ReshapeReshape=stateless_random_flip_left_right/stateless_random_uniform:z:07stateless_random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????2*
(stateless_random_flip_left_right/Reshape?
&stateless_random_flip_left_right/RoundRound1stateless_random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:?????????2(
&stateless_random_flip_left_right/Round?
/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:21
/stateless_random_flip_left_right/ReverseV2/axis?
*stateless_random_flip_left_right/ReverseV2	ReverseV2<stateless_random_flip_left_right/control_dependency:output:08stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*1
_output_shapes
:???????????2,
*stateless_random_flip_left_right/ReverseV2?
$stateless_random_flip_left_right/mulMul*stateless_random_flip_left_right/Round:y:03stateless_random_flip_left_right/ReverseV2:output:0*
T0*1
_output_shapes
:???????????2&
$stateless_random_flip_left_right/mul?
&stateless_random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2(
&stateless_random_flip_left_right/sub/x?
$stateless_random_flip_left_right/subSub/stateless_random_flip_left_right/sub/x:output:0*stateless_random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:?????????2&
$stateless_random_flip_left_right/sub?
&stateless_random_flip_left_right/mul_1Mul(stateless_random_flip_left_right/sub:z:0<stateless_random_flip_left_right/control_dependency:output:0*
T0*1
_output_shapes
:???????????2(
&stateless_random_flip_left_right/mul_1?
$stateless_random_flip_left_right/addAddV2(stateless_random_flip_left_right/mul:z:0*stateless_random_flip_left_right/mul_1:z:0*
T0*1
_output_shapes
:???????????2&
$stateless_random_flip_left_right/add?
IdentityIdentity(stateless_random_flip_left_right/add:z:0^NoOp*
T0*1
_output_shapes
:???????????2

Identity?
NoOpNoOp)^stateful_uniform_full_int/RngReadAndSkipP^stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlgW^stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:???????????: 2T
(stateful_uniform_full_int/RngReadAndSkip(stateful_uniform_full_int/RngReadAndSkip2?
Ostateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlgOstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlg2?
Vstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterVstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
)__inference_conv2d_1_layer_call_fn_120420

inputs!
unknown:  
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????o? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_1_layer_call_and_return_conditional_losses_1192672
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:?????????o? 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????q? : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????q? 
 
_user_specified_nameinputs
?6
h
L__inference_data_preparation_layer_call_and_return_conditional_losses_120077

inputs
identity?
 lambda/rgb_to_grayscale/IdentityIdentityinputs*
T0*1
_output_shapes
:???????????2"
 lambda/rgb_to_grayscale/Identity?
#lambda/rgb_to_grayscale/Tensordot/bConst*
_output_shapes
:*
dtype0*!
valueB"l	?>?E??x?=2%
#lambda/rgb_to_grayscale/Tensordot/b?
&lambda/rgb_to_grayscale/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2(
&lambda/rgb_to_grayscale/Tensordot/axes?
&lambda/rgb_to_grayscale/Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          2(
&lambda/rgb_to_grayscale/Tensordot/free?
'lambda/rgb_to_grayscale/Tensordot/ShapeShape)lambda/rgb_to_grayscale/Identity:output:0*
T0*
_output_shapes
:2)
'lambda/rgb_to_grayscale/Tensordot/Shape?
/lambda/rgb_to_grayscale/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 21
/lambda/rgb_to_grayscale/Tensordot/GatherV2/axis?
*lambda/rgb_to_grayscale/Tensordot/GatherV2GatherV20lambda/rgb_to_grayscale/Tensordot/Shape:output:0/lambda/rgb_to_grayscale/Tensordot/free:output:08lambda/rgb_to_grayscale/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2,
*lambda/rgb_to_grayscale/Tensordot/GatherV2?
1lambda/rgb_to_grayscale/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 23
1lambda/rgb_to_grayscale/Tensordot/GatherV2_1/axis?
,lambda/rgb_to_grayscale/Tensordot/GatherV2_1GatherV20lambda/rgb_to_grayscale/Tensordot/Shape:output:0/lambda/rgb_to_grayscale/Tensordot/axes:output:0:lambda/rgb_to_grayscale/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2.
,lambda/rgb_to_grayscale/Tensordot/GatherV2_1?
'lambda/rgb_to_grayscale/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2)
'lambda/rgb_to_grayscale/Tensordot/Const?
&lambda/rgb_to_grayscale/Tensordot/ProdProd3lambda/rgb_to_grayscale/Tensordot/GatherV2:output:00lambda/rgb_to_grayscale/Tensordot/Const:output:0*
T0*
_output_shapes
: 2(
&lambda/rgb_to_grayscale/Tensordot/Prod?
)lambda/rgb_to_grayscale/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2+
)lambda/rgb_to_grayscale/Tensordot/Const_1?
(lambda/rgb_to_grayscale/Tensordot/Prod_1Prod5lambda/rgb_to_grayscale/Tensordot/GatherV2_1:output:02lambda/rgb_to_grayscale/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2*
(lambda/rgb_to_grayscale/Tensordot/Prod_1?
-lambda/rgb_to_grayscale/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-lambda/rgb_to_grayscale/Tensordot/concat/axis?
(lambda/rgb_to_grayscale/Tensordot/concatConcatV2/lambda/rgb_to_grayscale/Tensordot/free:output:0/lambda/rgb_to_grayscale/Tensordot/axes:output:06lambda/rgb_to_grayscale/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2*
(lambda/rgb_to_grayscale/Tensordot/concat?
'lambda/rgb_to_grayscale/Tensordot/stackPack/lambda/rgb_to_grayscale/Tensordot/Prod:output:01lambda/rgb_to_grayscale/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2)
'lambda/rgb_to_grayscale/Tensordot/stack?
+lambda/rgb_to_grayscale/Tensordot/transpose	Transpose)lambda/rgb_to_grayscale/Identity:output:01lambda/rgb_to_grayscale/Tensordot/concat:output:0*
T0*1
_output_shapes
:???????????2-
+lambda/rgb_to_grayscale/Tensordot/transpose?
)lambda/rgb_to_grayscale/Tensordot/ReshapeReshape/lambda/rgb_to_grayscale/Tensordot/transpose:y:00lambda/rgb_to_grayscale/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2+
)lambda/rgb_to_grayscale/Tensordot/Reshape?
1lambda/rgb_to_grayscale/Tensordot/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      23
1lambda/rgb_to_grayscale/Tensordot/Reshape_1/shape?
+lambda/rgb_to_grayscale/Tensordot/Reshape_1Reshape,lambda/rgb_to_grayscale/Tensordot/b:output:0:lambda/rgb_to_grayscale/Tensordot/Reshape_1/shape:output:0*
T0*
_output_shapes

:2-
+lambda/rgb_to_grayscale/Tensordot/Reshape_1?
(lambda/rgb_to_grayscale/Tensordot/MatMulMatMul2lambda/rgb_to_grayscale/Tensordot/Reshape:output:04lambda/rgb_to_grayscale/Tensordot/Reshape_1:output:0*
T0*'
_output_shapes
:?????????2*
(lambda/rgb_to_grayscale/Tensordot/MatMul?
)lambda/rgb_to_grayscale/Tensordot/Const_2Const*
_output_shapes
: *
dtype0*
valueB 2+
)lambda/rgb_to_grayscale/Tensordot/Const_2?
/lambda/rgb_to_grayscale/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 21
/lambda/rgb_to_grayscale/Tensordot/concat_1/axis?
*lambda/rgb_to_grayscale/Tensordot/concat_1ConcatV23lambda/rgb_to_grayscale/Tensordot/GatherV2:output:02lambda/rgb_to_grayscale/Tensordot/Const_2:output:08lambda/rgb_to_grayscale/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2,
*lambda/rgb_to_grayscale/Tensordot/concat_1?
!lambda/rgb_to_grayscale/TensordotReshape2lambda/rgb_to_grayscale/Tensordot/MatMul:product:03lambda/rgb_to_grayscale/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:???????????2#
!lambda/rgb_to_grayscale/Tensordot?
&lambda/rgb_to_grayscale/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2(
&lambda/rgb_to_grayscale/ExpandDims/dim?
"lambda/rgb_to_grayscale/ExpandDims
ExpandDims*lambda/rgb_to_grayscale/Tensordot:output:0/lambda/rgb_to_grayscale/ExpandDims/dim:output:0*
T0*1
_output_shapes
:???????????2$
"lambda/rgb_to_grayscale/ExpandDims?
lambda/rgb_to_grayscaleIdentity+lambda/rgb_to_grayscale/ExpandDims:output:0*
T0*1
_output_shapes
:???????????2
lambda/rgb_to_grayscalei
rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *???;2
rescaling/Cast/xm
rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rescaling/Cast_1/x?
rescaling/mulMul lambda/rgb_to_grayscale:output:0rescaling/Cast/x:output:0*
T0*1
_output_shapes
:???????????2
rescaling/mul?
rescaling/addAddV2rescaling/mul:z:0rescaling/Cast_1/x:output:0*
T0*1
_output_shapes
:???????????2
rescaling/addo
IdentityIdentityrescaling/add:z:0*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
L
0__inference_max_pooling2d_2_layer_call_fn_120481

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_1193002
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????0 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????5` :W S
/
_output_shapes
:?????????5` 
 
_user_specified_nameinputs
?-
^
B__inference_lambda_layer_call_and_return_conditional_losses_120583

inputs
identity?
rgb_to_grayscale/IdentityIdentityinputs*
T0*1
_output_shapes
:???????????2
rgb_to_grayscale/Identity?
rgb_to_grayscale/Tensordot/bConst*
_output_shapes
:*
dtype0*!
valueB"l	?>?E??x?=2
rgb_to_grayscale/Tensordot/b?
rgb_to_grayscale/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2!
rgb_to_grayscale/Tensordot/axes?
rgb_to_grayscale/Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          2!
rgb_to_grayscale/Tensordot/free?
 rgb_to_grayscale/Tensordot/ShapeShape"rgb_to_grayscale/Identity:output:0*
T0*
_output_shapes
:2"
 rgb_to_grayscale/Tensordot/Shape?
(rgb_to_grayscale/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2*
(rgb_to_grayscale/Tensordot/GatherV2/axis?
#rgb_to_grayscale/Tensordot/GatherV2GatherV2)rgb_to_grayscale/Tensordot/Shape:output:0(rgb_to_grayscale/Tensordot/free:output:01rgb_to_grayscale/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2%
#rgb_to_grayscale/Tensordot/GatherV2?
*rgb_to_grayscale/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2,
*rgb_to_grayscale/Tensordot/GatherV2_1/axis?
%rgb_to_grayscale/Tensordot/GatherV2_1GatherV2)rgb_to_grayscale/Tensordot/Shape:output:0(rgb_to_grayscale/Tensordot/axes:output:03rgb_to_grayscale/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2'
%rgb_to_grayscale/Tensordot/GatherV2_1?
 rgb_to_grayscale/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2"
 rgb_to_grayscale/Tensordot/Const?
rgb_to_grayscale/Tensordot/ProdProd,rgb_to_grayscale/Tensordot/GatherV2:output:0)rgb_to_grayscale/Tensordot/Const:output:0*
T0*
_output_shapes
: 2!
rgb_to_grayscale/Tensordot/Prod?
"rgb_to_grayscale/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2$
"rgb_to_grayscale/Tensordot/Const_1?
!rgb_to_grayscale/Tensordot/Prod_1Prod.rgb_to_grayscale/Tensordot/GatherV2_1:output:0+rgb_to_grayscale/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2#
!rgb_to_grayscale/Tensordot/Prod_1?
&rgb_to_grayscale/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2(
&rgb_to_grayscale/Tensordot/concat/axis?
!rgb_to_grayscale/Tensordot/concatConcatV2(rgb_to_grayscale/Tensordot/free:output:0(rgb_to_grayscale/Tensordot/axes:output:0/rgb_to_grayscale/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2#
!rgb_to_grayscale/Tensordot/concat?
 rgb_to_grayscale/Tensordot/stackPack(rgb_to_grayscale/Tensordot/Prod:output:0*rgb_to_grayscale/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2"
 rgb_to_grayscale/Tensordot/stack?
$rgb_to_grayscale/Tensordot/transpose	Transpose"rgb_to_grayscale/Identity:output:0*rgb_to_grayscale/Tensordot/concat:output:0*
T0*1
_output_shapes
:???????????2&
$rgb_to_grayscale/Tensordot/transpose?
"rgb_to_grayscale/Tensordot/ReshapeReshape(rgb_to_grayscale/Tensordot/transpose:y:0)rgb_to_grayscale/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2$
"rgb_to_grayscale/Tensordot/Reshape?
*rgb_to_grayscale/Tensordot/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2,
*rgb_to_grayscale/Tensordot/Reshape_1/shape?
$rgb_to_grayscale/Tensordot/Reshape_1Reshape%rgb_to_grayscale/Tensordot/b:output:03rgb_to_grayscale/Tensordot/Reshape_1/shape:output:0*
T0*
_output_shapes

:2&
$rgb_to_grayscale/Tensordot/Reshape_1?
!rgb_to_grayscale/Tensordot/MatMulMatMul+rgb_to_grayscale/Tensordot/Reshape:output:0-rgb_to_grayscale/Tensordot/Reshape_1:output:0*
T0*'
_output_shapes
:?????????2#
!rgb_to_grayscale/Tensordot/MatMul?
"rgb_to_grayscale/Tensordot/Const_2Const*
_output_shapes
: *
dtype0*
valueB 2$
"rgb_to_grayscale/Tensordot/Const_2?
(rgb_to_grayscale/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2*
(rgb_to_grayscale/Tensordot/concat_1/axis?
#rgb_to_grayscale/Tensordot/concat_1ConcatV2,rgb_to_grayscale/Tensordot/GatherV2:output:0+rgb_to_grayscale/Tensordot/Const_2:output:01rgb_to_grayscale/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2%
#rgb_to_grayscale/Tensordot/concat_1?
rgb_to_grayscale/TensordotReshape+rgb_to_grayscale/Tensordot/MatMul:product:0,rgb_to_grayscale/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:???????????2
rgb_to_grayscale/Tensordot?
rgb_to_grayscale/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2!
rgb_to_grayscale/ExpandDims/dim?
rgb_to_grayscale/ExpandDims
ExpandDims#rgb_to_grayscale/Tensordot:output:0(rgb_to_grayscale/ExpandDims/dim:output:0*
T0*1
_output_shapes
:???????????2
rgb_to_grayscale/ExpandDims?
rgb_to_grayscaleIdentity$rgb_to_grayscale/ExpandDims:output:0*
T0*1
_output_shapes
:???????????2
rgb_to_grayscalew
IdentityIdentityrgb_to_grayscale:output:0*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?2
?
K__inference_bike_classifier_layer_call_and_return_conditional_losses_119696
data_preparation_input&
data_augmentation_119663:	'
conv2d_119666: 
conv2d_119668: )
conv2d_1_119672:  
conv2d_1_119674: )
conv2d_2_119678:  
conv2d_2_119680: !
dense_119685:???
dense_119687:	?!
dense_1_119690:	?
dense_1_119692:
identity??conv2d/StatefulPartitionedCall? conv2d_1/StatefulPartitionedCall? conv2d_2/StatefulPartitionedCall?)data_augmentation/StatefulPartitionedCall?dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?
 data_preparation/PartitionedCallPartitionedCalldata_preparation_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_data_preparation_layer_call_and_return_conditional_losses_1190082"
 data_preparation/PartitionedCall?
)data_augmentation/StatefulPartitionedCallStatefulPartitionedCall)data_preparation/PartitionedCall:output:0data_augmentation_119663*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_data_augmentation_layer_call_and_return_conditional_losses_1195032+
)data_augmentation/StatefulPartitionedCall?
conv2d/StatefulPartitionedCallStatefulPartitionedCall2data_augmentation/StatefulPartitionedCall:output:0conv2d_119666conv2d_119668*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_conv2d_layer_call_and_return_conditional_losses_1192442 
conv2d/StatefulPartitionedCall?
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????q? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_1192542
max_pooling2d/PartitionedCall?
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_119672conv2d_1_119674*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????o? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_1_layer_call_and_return_conditional_losses_1192672"
 conv2d_1/StatefulPartitionedCall?
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????7b * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_1192772!
max_pooling2d_1/PartitionedCall?
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv2d_2_119678conv2d_2_119680*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????5` *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_2_layer_call_and_return_conditional_losses_1192902"
 conv2d_2/StatefulPartitionedCall?
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_1193002!
max_pooling2d_2/PartitionedCall?
flatten/PartitionedCallPartitionedCall(max_pooling2d_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_1193082
flatten/PartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_119685dense_119687*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_1193212
dense/StatefulPartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_119690dense_1_119692*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_1193372!
dense_1/StatefulPartitionedCall?
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall*^data_augmentation/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:???????????: : : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2V
)data_augmentation/StatefulPartitionedCall)data_augmentation/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:i e
1
_output_shapes
:???????????
0
_user_specified_namedata_preparation_input
?
M
1__inference_data_preparation_layer_call_fn_120000

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_data_preparation_layer_call_and_return_conditional_losses_1190082
PartitionedCallv
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
(__inference_dense_1_layer_call_fn_120531

inputs
unknown:	?
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_1193372
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
c
G__inference_random_flip_layer_call_and_return_conditional_losses_119039

inputs
identityd
IdentityIdentityinputs*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
B__inference_conv2d_layer_call_and_return_conditional_losses_120391

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? *
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? 2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:??????????? 2
Reluw
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:??????????? 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
??
?

!__inference__wrapped_model_118891
data_preparation_inputO
5bike_classifier_conv2d_conv2d_readvariableop_resource: D
6bike_classifier_conv2d_biasadd_readvariableop_resource: Q
7bike_classifier_conv2d_1_conv2d_readvariableop_resource:  F
8bike_classifier_conv2d_1_biasadd_readvariableop_resource: Q
7bike_classifier_conv2d_2_conv2d_readvariableop_resource:  F
8bike_classifier_conv2d_2_biasadd_readvariableop_resource: I
4bike_classifier_dense_matmul_readvariableop_resource:???D
5bike_classifier_dense_biasadd_readvariableop_resource:	?I
6bike_classifier_dense_1_matmul_readvariableop_resource:	?E
7bike_classifier_dense_1_biasadd_readvariableop_resource:
identity??-bike_classifier/conv2d/BiasAdd/ReadVariableOp?,bike_classifier/conv2d/Conv2D/ReadVariableOp?/bike_classifier/conv2d_1/BiasAdd/ReadVariableOp?.bike_classifier/conv2d_1/Conv2D/ReadVariableOp?/bike_classifier/conv2d_2/BiasAdd/ReadVariableOp?.bike_classifier/conv2d_2/Conv2D/ReadVariableOp?,bike_classifier/dense/BiasAdd/ReadVariableOp?+bike_classifier/dense/MatMul/ReadVariableOp?.bike_classifier/dense_1/BiasAdd/ReadVariableOp?-bike_classifier/dense_1/MatMul/ReadVariableOp?
Abike_classifier/data_preparation/lambda/rgb_to_grayscale/IdentityIdentitydata_preparation_input*
T0*1
_output_shapes
:???????????2C
Abike_classifier/data_preparation/lambda/rgb_to_grayscale/Identity?
Dbike_classifier/data_preparation/lambda/rgb_to_grayscale/Tensordot/bConst*
_output_shapes
:*
dtype0*!
valueB"l	?>?E??x?=2F
Dbike_classifier/data_preparation/lambda/rgb_to_grayscale/Tensordot/b?
Gbike_classifier/data_preparation/lambda/rgb_to_grayscale/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2I
Gbike_classifier/data_preparation/lambda/rgb_to_grayscale/Tensordot/axes?
Gbike_classifier/data_preparation/lambda/rgb_to_grayscale/Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          2I
Gbike_classifier/data_preparation/lambda/rgb_to_grayscale/Tensordot/free?
Hbike_classifier/data_preparation/lambda/rgb_to_grayscale/Tensordot/ShapeShapeJbike_classifier/data_preparation/lambda/rgb_to_grayscale/Identity:output:0*
T0*
_output_shapes
:2J
Hbike_classifier/data_preparation/lambda/rgb_to_grayscale/Tensordot/Shape?
Pbike_classifier/data_preparation/lambda/rgb_to_grayscale/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2R
Pbike_classifier/data_preparation/lambda/rgb_to_grayscale/Tensordot/GatherV2/axis?
Kbike_classifier/data_preparation/lambda/rgb_to_grayscale/Tensordot/GatherV2GatherV2Qbike_classifier/data_preparation/lambda/rgb_to_grayscale/Tensordot/Shape:output:0Pbike_classifier/data_preparation/lambda/rgb_to_grayscale/Tensordot/free:output:0Ybike_classifier/data_preparation/lambda/rgb_to_grayscale/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2M
Kbike_classifier/data_preparation/lambda/rgb_to_grayscale/Tensordot/GatherV2?
Rbike_classifier/data_preparation/lambda/rgb_to_grayscale/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2T
Rbike_classifier/data_preparation/lambda/rgb_to_grayscale/Tensordot/GatherV2_1/axis?
Mbike_classifier/data_preparation/lambda/rgb_to_grayscale/Tensordot/GatherV2_1GatherV2Qbike_classifier/data_preparation/lambda/rgb_to_grayscale/Tensordot/Shape:output:0Pbike_classifier/data_preparation/lambda/rgb_to_grayscale/Tensordot/axes:output:0[bike_classifier/data_preparation/lambda/rgb_to_grayscale/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2O
Mbike_classifier/data_preparation/lambda/rgb_to_grayscale/Tensordot/GatherV2_1?
Hbike_classifier/data_preparation/lambda/rgb_to_grayscale/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2J
Hbike_classifier/data_preparation/lambda/rgb_to_grayscale/Tensordot/Const?
Gbike_classifier/data_preparation/lambda/rgb_to_grayscale/Tensordot/ProdProdTbike_classifier/data_preparation/lambda/rgb_to_grayscale/Tensordot/GatherV2:output:0Qbike_classifier/data_preparation/lambda/rgb_to_grayscale/Tensordot/Const:output:0*
T0*
_output_shapes
: 2I
Gbike_classifier/data_preparation/lambda/rgb_to_grayscale/Tensordot/Prod?
Jbike_classifier/data_preparation/lambda/rgb_to_grayscale/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2L
Jbike_classifier/data_preparation/lambda/rgb_to_grayscale/Tensordot/Const_1?
Ibike_classifier/data_preparation/lambda/rgb_to_grayscale/Tensordot/Prod_1ProdVbike_classifier/data_preparation/lambda/rgb_to_grayscale/Tensordot/GatherV2_1:output:0Sbike_classifier/data_preparation/lambda/rgb_to_grayscale/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2K
Ibike_classifier/data_preparation/lambda/rgb_to_grayscale/Tensordot/Prod_1?
Nbike_classifier/data_preparation/lambda/rgb_to_grayscale/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2P
Nbike_classifier/data_preparation/lambda/rgb_to_grayscale/Tensordot/concat/axis?
Ibike_classifier/data_preparation/lambda/rgb_to_grayscale/Tensordot/concatConcatV2Pbike_classifier/data_preparation/lambda/rgb_to_grayscale/Tensordot/free:output:0Pbike_classifier/data_preparation/lambda/rgb_to_grayscale/Tensordot/axes:output:0Wbike_classifier/data_preparation/lambda/rgb_to_grayscale/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2K
Ibike_classifier/data_preparation/lambda/rgb_to_grayscale/Tensordot/concat?
Hbike_classifier/data_preparation/lambda/rgb_to_grayscale/Tensordot/stackPackPbike_classifier/data_preparation/lambda/rgb_to_grayscale/Tensordot/Prod:output:0Rbike_classifier/data_preparation/lambda/rgb_to_grayscale/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2J
Hbike_classifier/data_preparation/lambda/rgb_to_grayscale/Tensordot/stack?
Lbike_classifier/data_preparation/lambda/rgb_to_grayscale/Tensordot/transpose	TransposeJbike_classifier/data_preparation/lambda/rgb_to_grayscale/Identity:output:0Rbike_classifier/data_preparation/lambda/rgb_to_grayscale/Tensordot/concat:output:0*
T0*1
_output_shapes
:???????????2N
Lbike_classifier/data_preparation/lambda/rgb_to_grayscale/Tensordot/transpose?
Jbike_classifier/data_preparation/lambda/rgb_to_grayscale/Tensordot/ReshapeReshapePbike_classifier/data_preparation/lambda/rgb_to_grayscale/Tensordot/transpose:y:0Qbike_classifier/data_preparation/lambda/rgb_to_grayscale/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2L
Jbike_classifier/data_preparation/lambda/rgb_to_grayscale/Tensordot/Reshape?
Rbike_classifier/data_preparation/lambda/rgb_to_grayscale/Tensordot/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2T
Rbike_classifier/data_preparation/lambda/rgb_to_grayscale/Tensordot/Reshape_1/shape?
Lbike_classifier/data_preparation/lambda/rgb_to_grayscale/Tensordot/Reshape_1ReshapeMbike_classifier/data_preparation/lambda/rgb_to_grayscale/Tensordot/b:output:0[bike_classifier/data_preparation/lambda/rgb_to_grayscale/Tensordot/Reshape_1/shape:output:0*
T0*
_output_shapes

:2N
Lbike_classifier/data_preparation/lambda/rgb_to_grayscale/Tensordot/Reshape_1?
Ibike_classifier/data_preparation/lambda/rgb_to_grayscale/Tensordot/MatMulMatMulSbike_classifier/data_preparation/lambda/rgb_to_grayscale/Tensordot/Reshape:output:0Ubike_classifier/data_preparation/lambda/rgb_to_grayscale/Tensordot/Reshape_1:output:0*
T0*'
_output_shapes
:?????????2K
Ibike_classifier/data_preparation/lambda/rgb_to_grayscale/Tensordot/MatMul?
Jbike_classifier/data_preparation/lambda/rgb_to_grayscale/Tensordot/Const_2Const*
_output_shapes
: *
dtype0*
valueB 2L
Jbike_classifier/data_preparation/lambda/rgb_to_grayscale/Tensordot/Const_2?
Pbike_classifier/data_preparation/lambda/rgb_to_grayscale/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2R
Pbike_classifier/data_preparation/lambda/rgb_to_grayscale/Tensordot/concat_1/axis?
Kbike_classifier/data_preparation/lambda/rgb_to_grayscale/Tensordot/concat_1ConcatV2Tbike_classifier/data_preparation/lambda/rgb_to_grayscale/Tensordot/GatherV2:output:0Sbike_classifier/data_preparation/lambda/rgb_to_grayscale/Tensordot/Const_2:output:0Ybike_classifier/data_preparation/lambda/rgb_to_grayscale/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2M
Kbike_classifier/data_preparation/lambda/rgb_to_grayscale/Tensordot/concat_1?
Bbike_classifier/data_preparation/lambda/rgb_to_grayscale/TensordotReshapeSbike_classifier/data_preparation/lambda/rgb_to_grayscale/Tensordot/MatMul:product:0Tbike_classifier/data_preparation/lambda/rgb_to_grayscale/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:???????????2D
Bbike_classifier/data_preparation/lambda/rgb_to_grayscale/Tensordot?
Gbike_classifier/data_preparation/lambda/rgb_to_grayscale/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2I
Gbike_classifier/data_preparation/lambda/rgb_to_grayscale/ExpandDims/dim?
Cbike_classifier/data_preparation/lambda/rgb_to_grayscale/ExpandDims
ExpandDimsKbike_classifier/data_preparation/lambda/rgb_to_grayscale/Tensordot:output:0Pbike_classifier/data_preparation/lambda/rgb_to_grayscale/ExpandDims/dim:output:0*
T0*1
_output_shapes
:???????????2E
Cbike_classifier/data_preparation/lambda/rgb_to_grayscale/ExpandDims?
8bike_classifier/data_preparation/lambda/rgb_to_grayscaleIdentityLbike_classifier/data_preparation/lambda/rgb_to_grayscale/ExpandDims:output:0*
T0*1
_output_shapes
:???????????2:
8bike_classifier/data_preparation/lambda/rgb_to_grayscale?
1bike_classifier/data_preparation/rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *???;23
1bike_classifier/data_preparation/rescaling/Cast/x?
3bike_classifier/data_preparation/rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    25
3bike_classifier/data_preparation/rescaling/Cast_1/x?
.bike_classifier/data_preparation/rescaling/mulMulAbike_classifier/data_preparation/lambda/rgb_to_grayscale:output:0:bike_classifier/data_preparation/rescaling/Cast/x:output:0*
T0*1
_output_shapes
:???????????20
.bike_classifier/data_preparation/rescaling/mul?
.bike_classifier/data_preparation/rescaling/addAddV22bike_classifier/data_preparation/rescaling/mul:z:0<bike_classifier/data_preparation/rescaling/Cast_1/x:output:0*
T0*1
_output_shapes
:???????????20
.bike_classifier/data_preparation/rescaling/add?
,bike_classifier/conv2d/Conv2D/ReadVariableOpReadVariableOp5bike_classifier_conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02.
,bike_classifier/conv2d/Conv2D/ReadVariableOp?
bike_classifier/conv2d/Conv2DConv2D2bike_classifier/data_preparation/rescaling/add:z:04bike_classifier/conv2d/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? *
paddingVALID*
strides
2
bike_classifier/conv2d/Conv2D?
-bike_classifier/conv2d/BiasAdd/ReadVariableOpReadVariableOp6bike_classifier_conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02/
-bike_classifier/conv2d/BiasAdd/ReadVariableOp?
bike_classifier/conv2d/BiasAddBiasAdd&bike_classifier/conv2d/Conv2D:output:05bike_classifier/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? 2 
bike_classifier/conv2d/BiasAdd?
bike_classifier/conv2d/ReluRelu'bike_classifier/conv2d/BiasAdd:output:0*
T0*1
_output_shapes
:??????????? 2
bike_classifier/conv2d/Relu?
%bike_classifier/max_pooling2d/MaxPoolMaxPool)bike_classifier/conv2d/Relu:activations:0*0
_output_shapes
:?????????q? *
ksize
*
paddingVALID*
strides
2'
%bike_classifier/max_pooling2d/MaxPool?
.bike_classifier/conv2d_1/Conv2D/ReadVariableOpReadVariableOp7bike_classifier_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype020
.bike_classifier/conv2d_1/Conv2D/ReadVariableOp?
bike_classifier/conv2d_1/Conv2DConv2D.bike_classifier/max_pooling2d/MaxPool:output:06bike_classifier/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????o? *
paddingVALID*
strides
2!
bike_classifier/conv2d_1/Conv2D?
/bike_classifier/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp8bike_classifier_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype021
/bike_classifier/conv2d_1/BiasAdd/ReadVariableOp?
 bike_classifier/conv2d_1/BiasAddBiasAdd(bike_classifier/conv2d_1/Conv2D:output:07bike_classifier/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????o? 2"
 bike_classifier/conv2d_1/BiasAdd?
bike_classifier/conv2d_1/ReluRelu)bike_classifier/conv2d_1/BiasAdd:output:0*
T0*0
_output_shapes
:?????????o? 2
bike_classifier/conv2d_1/Relu?
'bike_classifier/max_pooling2d_1/MaxPoolMaxPool+bike_classifier/conv2d_1/Relu:activations:0*/
_output_shapes
:?????????7b *
ksize
*
paddingVALID*
strides
2)
'bike_classifier/max_pooling2d_1/MaxPool?
.bike_classifier/conv2d_2/Conv2D/ReadVariableOpReadVariableOp7bike_classifier_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype020
.bike_classifier/conv2d_2/Conv2D/ReadVariableOp?
bike_classifier/conv2d_2/Conv2DConv2D0bike_classifier/max_pooling2d_1/MaxPool:output:06bike_classifier/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????5` *
paddingVALID*
strides
2!
bike_classifier/conv2d_2/Conv2D?
/bike_classifier/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp8bike_classifier_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype021
/bike_classifier/conv2d_2/BiasAdd/ReadVariableOp?
 bike_classifier/conv2d_2/BiasAddBiasAdd(bike_classifier/conv2d_2/Conv2D:output:07bike_classifier/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????5` 2"
 bike_classifier/conv2d_2/BiasAdd?
bike_classifier/conv2d_2/ReluRelu)bike_classifier/conv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:?????????5` 2
bike_classifier/conv2d_2/Relu?
'bike_classifier/max_pooling2d_2/MaxPoolMaxPool+bike_classifier/conv2d_2/Relu:activations:0*/
_output_shapes
:?????????0 *
ksize
*
paddingVALID*
strides
2)
'bike_classifier/max_pooling2d_2/MaxPool?
bike_classifier/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? ?  2
bike_classifier/flatten/Const?
bike_classifier/flatten/ReshapeReshape0bike_classifier/max_pooling2d_2/MaxPool:output:0&bike_classifier/flatten/Const:output:0*
T0*)
_output_shapes
:???????????2!
bike_classifier/flatten/Reshape?
+bike_classifier/dense/MatMul/ReadVariableOpReadVariableOp4bike_classifier_dense_matmul_readvariableop_resource*!
_output_shapes
:???*
dtype02-
+bike_classifier/dense/MatMul/ReadVariableOp?
bike_classifier/dense/MatMulMatMul(bike_classifier/flatten/Reshape:output:03bike_classifier/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
bike_classifier/dense/MatMul?
,bike_classifier/dense/BiasAdd/ReadVariableOpReadVariableOp5bike_classifier_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,bike_classifier/dense/BiasAdd/ReadVariableOp?
bike_classifier/dense/BiasAddBiasAdd&bike_classifier/dense/MatMul:product:04bike_classifier/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
bike_classifier/dense/BiasAdd?
bike_classifier/dense/SigmoidSigmoid&bike_classifier/dense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
bike_classifier/dense/Sigmoid?
-bike_classifier/dense_1/MatMul/ReadVariableOpReadVariableOp6bike_classifier_dense_1_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02/
-bike_classifier/dense_1/MatMul/ReadVariableOp?
bike_classifier/dense_1/MatMulMatMul!bike_classifier/dense/Sigmoid:y:05bike_classifier/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2 
bike_classifier/dense_1/MatMul?
.bike_classifier/dense_1/BiasAdd/ReadVariableOpReadVariableOp7bike_classifier_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype020
.bike_classifier/dense_1/BiasAdd/ReadVariableOp?
bike_classifier/dense_1/BiasAddBiasAdd(bike_classifier/dense_1/MatMul:product:06bike_classifier/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2!
bike_classifier/dense_1/BiasAdd?
IdentityIdentity(bike_classifier/dense_1/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp.^bike_classifier/conv2d/BiasAdd/ReadVariableOp-^bike_classifier/conv2d/Conv2D/ReadVariableOp0^bike_classifier/conv2d_1/BiasAdd/ReadVariableOp/^bike_classifier/conv2d_1/Conv2D/ReadVariableOp0^bike_classifier/conv2d_2/BiasAdd/ReadVariableOp/^bike_classifier/conv2d_2/Conv2D/ReadVariableOp-^bike_classifier/dense/BiasAdd/ReadVariableOp,^bike_classifier/dense/MatMul/ReadVariableOp/^bike_classifier/dense_1/BiasAdd/ReadVariableOp.^bike_classifier/dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:???????????: : : : : : : : : : 2^
-bike_classifier/conv2d/BiasAdd/ReadVariableOp-bike_classifier/conv2d/BiasAdd/ReadVariableOp2\
,bike_classifier/conv2d/Conv2D/ReadVariableOp,bike_classifier/conv2d/Conv2D/ReadVariableOp2b
/bike_classifier/conv2d_1/BiasAdd/ReadVariableOp/bike_classifier/conv2d_1/BiasAdd/ReadVariableOp2`
.bike_classifier/conv2d_1/Conv2D/ReadVariableOp.bike_classifier/conv2d_1/Conv2D/ReadVariableOp2b
/bike_classifier/conv2d_2/BiasAdd/ReadVariableOp/bike_classifier/conv2d_2/BiasAdd/ReadVariableOp2`
.bike_classifier/conv2d_2/Conv2D/ReadVariableOp.bike_classifier/conv2d_2/Conv2D/ReadVariableOp2\
,bike_classifier/dense/BiasAdd/ReadVariableOp,bike_classifier/dense/BiasAdd/ReadVariableOp2Z
+bike_classifier/dense/MatMul/ReadVariableOp+bike_classifier/dense/MatMul/ReadVariableOp2`
.bike_classifier/dense_1/BiasAdd/ReadVariableOp.bike_classifier/dense_1/BiasAdd/ReadVariableOp2^
-bike_classifier/dense_1/MatMul/ReadVariableOp-bike_classifier/dense_1/MatMul/ReadVariableOp:i e
1
_output_shapes
:???????????
0
_user_specified_namedata_preparation_input
?w
?
M__inference_data_augmentation_layer_call_and_return_conditional_losses_120309
random_flip_inputK
=random_flip_stateful_uniform_full_int_rngreadandskip_resource:	
identity??4random_flip/stateful_uniform_full_int/RngReadAndSkip?[random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlg?brandom_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter?
+random_flip/stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:2-
+random_flip/stateful_uniform_full_int/shape?
+random_flip/stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2-
+random_flip/stateful_uniform_full_int/Const?
*random_flip/stateful_uniform_full_int/ProdProd4random_flip/stateful_uniform_full_int/shape:output:04random_flip/stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: 2,
*random_flip/stateful_uniform_full_int/Prod?
,random_flip/stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :2.
,random_flip/stateful_uniform_full_int/Cast/x?
,random_flip/stateful_uniform_full_int/Cast_1Cast3random_flip/stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 2.
,random_flip/stateful_uniform_full_int/Cast_1?
4random_flip/stateful_uniform_full_int/RngReadAndSkipRngReadAndSkip=random_flip_stateful_uniform_full_int_rngreadandskip_resource5random_flip/stateful_uniform_full_int/Cast/x:output:00random_flip/stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:26
4random_flip/stateful_uniform_full_int/RngReadAndSkip?
9random_flip/stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2;
9random_flip/stateful_uniform_full_int/strided_slice/stack?
;random_flip/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2=
;random_flip/stateful_uniform_full_int/strided_slice/stack_1?
;random_flip/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2=
;random_flip/stateful_uniform_full_int/strided_slice/stack_2?
3random_flip/stateful_uniform_full_int/strided_sliceStridedSlice<random_flip/stateful_uniform_full_int/RngReadAndSkip:value:0Brandom_flip/stateful_uniform_full_int/strided_slice/stack:output:0Drandom_flip/stateful_uniform_full_int/strided_slice/stack_1:output:0Drandom_flip/stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask25
3random_flip/stateful_uniform_full_int/strided_slice?
-random_flip/stateful_uniform_full_int/BitcastBitcast<random_flip/stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type02/
-random_flip/stateful_uniform_full_int/Bitcast?
;random_flip/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2=
;random_flip/stateful_uniform_full_int/strided_slice_1/stack?
=random_flip/stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2?
=random_flip/stateful_uniform_full_int/strided_slice_1/stack_1?
=random_flip/stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2?
=random_flip/stateful_uniform_full_int/strided_slice_1/stack_2?
5random_flip/stateful_uniform_full_int/strided_slice_1StridedSlice<random_flip/stateful_uniform_full_int/RngReadAndSkip:value:0Drandom_flip/stateful_uniform_full_int/strided_slice_1/stack:output:0Frandom_flip/stateful_uniform_full_int/strided_slice_1/stack_1:output:0Frandom_flip/stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:27
5random_flip/stateful_uniform_full_int/strided_slice_1?
/random_flip/stateful_uniform_full_int/Bitcast_1Bitcast>random_flip/stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type021
/random_flip/stateful_uniform_full_int/Bitcast_1?
)random_flip/stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :2+
)random_flip/stateful_uniform_full_int/alg?
%random_flip/stateful_uniform_full_intStatelessRandomUniformFullIntV24random_flip/stateful_uniform_full_int/shape:output:08random_flip/stateful_uniform_full_int/Bitcast_1:output:06random_flip/stateful_uniform_full_int/Bitcast:output:02random_flip/stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	2'
%random_flip/stateful_uniform_full_intz
random_flip/zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R 2
random_flip/zeros_like?
random_flip/stackPack.random_flip/stateful_uniform_full_int:output:0random_flip/zeros_like:output:0*
N*
T0	*
_output_shapes

:2
random_flip/stack?
random_flip/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
random_flip/strided_slice/stack?
!random_flip/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2#
!random_flip/strided_slice/stack_1?
!random_flip/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!random_flip/strided_slice/stack_2?
random_flip/strided_sliceStridedSlicerandom_flip/stack:output:0(random_flip/strided_slice/stack:output:0*random_flip/strided_slice/stack_1:output:0*random_flip/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask2
random_flip/strided_slice?
?random_flip/stateless_random_flip_left_right/control_dependencyIdentityrandom_flip_input*
T0*$
_class
loc:@random_flip_input*1
_output_shapes
:???????????2A
?random_flip/stateless_random_flip_left_right/control_dependency?
2random_flip/stateless_random_flip_left_right/ShapeShapeHrandom_flip/stateless_random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
:24
2random_flip/stateless_random_flip_left_right/Shape?
@random_flip/stateless_random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2B
@random_flip/stateless_random_flip_left_right/strided_slice/stack?
Brandom_flip/stateless_random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2D
Brandom_flip/stateless_random_flip_left_right/strided_slice/stack_1?
Brandom_flip/stateless_random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2D
Brandom_flip/stateless_random_flip_left_right/strided_slice/stack_2?
:random_flip/stateless_random_flip_left_right/strided_sliceStridedSlice;random_flip/stateless_random_flip_left_right/Shape:output:0Irandom_flip/stateless_random_flip_left_right/strided_slice/stack:output:0Krandom_flip/stateless_random_flip_left_right/strided_slice/stack_1:output:0Krandom_flip/stateless_random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2<
:random_flip/stateless_random_flip_left_right/strided_slice?
Krandom_flip/stateless_random_flip_left_right/stateless_random_uniform/shapePackCrandom_flip/stateless_random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:2M
Krandom_flip/stateless_random_flip_left_right/stateless_random_uniform/shape?
Irandom_flip/stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    2K
Irandom_flip/stateless_random_flip_left_right/stateless_random_uniform/min?
Irandom_flip/stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2K
Irandom_flip/stateless_random_flip_left_right/stateless_random_uniform/max?
brandom_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter"random_flip/strided_slice:output:0* 
_output_shapes
::2d
brandom_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter?
[random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlgStatelessRandomGetAlgc^random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter*
_output_shapes
: 2]
[random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlg?
^random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Trandom_flip/stateless_random_flip_left_right/stateless_random_uniform/shape:output:0hrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0lrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0arandom_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlg:alg:0*#
_output_shapes
:?????????2`
^random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2?
Irandom_flip/stateless_random_flip_left_right/stateless_random_uniform/subSubRrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/max:output:0Rrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: 2K
Irandom_flip/stateless_random_flip_left_right/stateless_random_uniform/sub?
Irandom_flip/stateless_random_flip_left_right/stateless_random_uniform/mulMulgrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Mrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:?????????2K
Irandom_flip/stateless_random_flip_left_right/stateless_random_uniform/mul?
Erandom_flip/stateless_random_flip_left_right/stateless_random_uniformAddV2Mrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/mul:z:0Rrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:?????????2G
Erandom_flip/stateless_random_flip_left_right/stateless_random_uniform?
<random_flip/stateless_random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2>
<random_flip/stateless_random_flip_left_right/Reshape/shape/1?
<random_flip/stateless_random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2>
<random_flip/stateless_random_flip_left_right/Reshape/shape/2?
<random_flip/stateless_random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2>
<random_flip/stateless_random_flip_left_right/Reshape/shape/3?
:random_flip/stateless_random_flip_left_right/Reshape/shapePackCrandom_flip/stateless_random_flip_left_right/strided_slice:output:0Erandom_flip/stateless_random_flip_left_right/Reshape/shape/1:output:0Erandom_flip/stateless_random_flip_left_right/Reshape/shape/2:output:0Erandom_flip/stateless_random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2<
:random_flip/stateless_random_flip_left_right/Reshape/shape?
4random_flip/stateless_random_flip_left_right/ReshapeReshapeIrandom_flip/stateless_random_flip_left_right/stateless_random_uniform:z:0Crandom_flip/stateless_random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????26
4random_flip/stateless_random_flip_left_right/Reshape?
2random_flip/stateless_random_flip_left_right/RoundRound=random_flip/stateless_random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:?????????24
2random_flip/stateless_random_flip_left_right/Round?
;random_flip/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:2=
;random_flip/stateless_random_flip_left_right/ReverseV2/axis?
6random_flip/stateless_random_flip_left_right/ReverseV2	ReverseV2Hrandom_flip/stateless_random_flip_left_right/control_dependency:output:0Drandom_flip/stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*1
_output_shapes
:???????????28
6random_flip/stateless_random_flip_left_right/ReverseV2?
0random_flip/stateless_random_flip_left_right/mulMul6random_flip/stateless_random_flip_left_right/Round:y:0?random_flip/stateless_random_flip_left_right/ReverseV2:output:0*
T0*1
_output_shapes
:???????????22
0random_flip/stateless_random_flip_left_right/mul?
2random_flip/stateless_random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??24
2random_flip/stateless_random_flip_left_right/sub/x?
0random_flip/stateless_random_flip_left_right/subSub;random_flip/stateless_random_flip_left_right/sub/x:output:06random_flip/stateless_random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:?????????22
0random_flip/stateless_random_flip_left_right/sub?
2random_flip/stateless_random_flip_left_right/mul_1Mul4random_flip/stateless_random_flip_left_right/sub:z:0Hrandom_flip/stateless_random_flip_left_right/control_dependency:output:0*
T0*1
_output_shapes
:???????????24
2random_flip/stateless_random_flip_left_right/mul_1?
0random_flip/stateless_random_flip_left_right/addAddV24random_flip/stateless_random_flip_left_right/mul:z:06random_flip/stateless_random_flip_left_right/mul_1:z:0*
T0*1
_output_shapes
:???????????22
0random_flip/stateless_random_flip_left_right/add?
IdentityIdentity4random_flip/stateless_random_flip_left_right/add:z:0^NoOp*
T0*1
_output_shapes
:???????????2

Identity?
NoOpNoOp5^random_flip/stateful_uniform_full_int/RngReadAndSkip\^random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlgc^random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:???????????: 2l
4random_flip/stateful_uniform_full_int/RngReadAndSkip4random_flip/stateful_uniform_full_int/RngReadAndSkip2?
[random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlg[random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlg2?
brandom_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterbrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:d `
1
_output_shapes
:???????????
+
_user_specified_namerandom_flip_input
?
g
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_119185

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
e
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_120411

inputs
identity?
MaxPoolMaxPoolinputs*0
_output_shapes
:?????????q? *
ksize
*
paddingVALID*
strides
2	
MaxPoolm
IdentityIdentityMaxPool:output:0*
T0*0
_output_shapes
:?????????q? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:??????????? :Y U
1
_output_shapes
:??????????? 
 
_user_specified_nameinputs
?6
n
L__inference_data_preparation_layer_call_and_return_conditional_losses_120113
lambda_input
identity?
 lambda/rgb_to_grayscale/IdentityIdentitylambda_input*
T0*1
_output_shapes
:???????????2"
 lambda/rgb_to_grayscale/Identity?
#lambda/rgb_to_grayscale/Tensordot/bConst*
_output_shapes
:*
dtype0*!
valueB"l	?>?E??x?=2%
#lambda/rgb_to_grayscale/Tensordot/b?
&lambda/rgb_to_grayscale/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2(
&lambda/rgb_to_grayscale/Tensordot/axes?
&lambda/rgb_to_grayscale/Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          2(
&lambda/rgb_to_grayscale/Tensordot/free?
'lambda/rgb_to_grayscale/Tensordot/ShapeShape)lambda/rgb_to_grayscale/Identity:output:0*
T0*
_output_shapes
:2)
'lambda/rgb_to_grayscale/Tensordot/Shape?
/lambda/rgb_to_grayscale/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 21
/lambda/rgb_to_grayscale/Tensordot/GatherV2/axis?
*lambda/rgb_to_grayscale/Tensordot/GatherV2GatherV20lambda/rgb_to_grayscale/Tensordot/Shape:output:0/lambda/rgb_to_grayscale/Tensordot/free:output:08lambda/rgb_to_grayscale/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2,
*lambda/rgb_to_grayscale/Tensordot/GatherV2?
1lambda/rgb_to_grayscale/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 23
1lambda/rgb_to_grayscale/Tensordot/GatherV2_1/axis?
,lambda/rgb_to_grayscale/Tensordot/GatherV2_1GatherV20lambda/rgb_to_grayscale/Tensordot/Shape:output:0/lambda/rgb_to_grayscale/Tensordot/axes:output:0:lambda/rgb_to_grayscale/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2.
,lambda/rgb_to_grayscale/Tensordot/GatherV2_1?
'lambda/rgb_to_grayscale/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2)
'lambda/rgb_to_grayscale/Tensordot/Const?
&lambda/rgb_to_grayscale/Tensordot/ProdProd3lambda/rgb_to_grayscale/Tensordot/GatherV2:output:00lambda/rgb_to_grayscale/Tensordot/Const:output:0*
T0*
_output_shapes
: 2(
&lambda/rgb_to_grayscale/Tensordot/Prod?
)lambda/rgb_to_grayscale/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2+
)lambda/rgb_to_grayscale/Tensordot/Const_1?
(lambda/rgb_to_grayscale/Tensordot/Prod_1Prod5lambda/rgb_to_grayscale/Tensordot/GatherV2_1:output:02lambda/rgb_to_grayscale/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2*
(lambda/rgb_to_grayscale/Tensordot/Prod_1?
-lambda/rgb_to_grayscale/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-lambda/rgb_to_grayscale/Tensordot/concat/axis?
(lambda/rgb_to_grayscale/Tensordot/concatConcatV2/lambda/rgb_to_grayscale/Tensordot/free:output:0/lambda/rgb_to_grayscale/Tensordot/axes:output:06lambda/rgb_to_grayscale/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2*
(lambda/rgb_to_grayscale/Tensordot/concat?
'lambda/rgb_to_grayscale/Tensordot/stackPack/lambda/rgb_to_grayscale/Tensordot/Prod:output:01lambda/rgb_to_grayscale/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2)
'lambda/rgb_to_grayscale/Tensordot/stack?
+lambda/rgb_to_grayscale/Tensordot/transpose	Transpose)lambda/rgb_to_grayscale/Identity:output:01lambda/rgb_to_grayscale/Tensordot/concat:output:0*
T0*1
_output_shapes
:???????????2-
+lambda/rgb_to_grayscale/Tensordot/transpose?
)lambda/rgb_to_grayscale/Tensordot/ReshapeReshape/lambda/rgb_to_grayscale/Tensordot/transpose:y:00lambda/rgb_to_grayscale/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2+
)lambda/rgb_to_grayscale/Tensordot/Reshape?
1lambda/rgb_to_grayscale/Tensordot/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      23
1lambda/rgb_to_grayscale/Tensordot/Reshape_1/shape?
+lambda/rgb_to_grayscale/Tensordot/Reshape_1Reshape,lambda/rgb_to_grayscale/Tensordot/b:output:0:lambda/rgb_to_grayscale/Tensordot/Reshape_1/shape:output:0*
T0*
_output_shapes

:2-
+lambda/rgb_to_grayscale/Tensordot/Reshape_1?
(lambda/rgb_to_grayscale/Tensordot/MatMulMatMul2lambda/rgb_to_grayscale/Tensordot/Reshape:output:04lambda/rgb_to_grayscale/Tensordot/Reshape_1:output:0*
T0*'
_output_shapes
:?????????2*
(lambda/rgb_to_grayscale/Tensordot/MatMul?
)lambda/rgb_to_grayscale/Tensordot/Const_2Const*
_output_shapes
: *
dtype0*
valueB 2+
)lambda/rgb_to_grayscale/Tensordot/Const_2?
/lambda/rgb_to_grayscale/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 21
/lambda/rgb_to_grayscale/Tensordot/concat_1/axis?
*lambda/rgb_to_grayscale/Tensordot/concat_1ConcatV23lambda/rgb_to_grayscale/Tensordot/GatherV2:output:02lambda/rgb_to_grayscale/Tensordot/Const_2:output:08lambda/rgb_to_grayscale/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2,
*lambda/rgb_to_grayscale/Tensordot/concat_1?
!lambda/rgb_to_grayscale/TensordotReshape2lambda/rgb_to_grayscale/Tensordot/MatMul:product:03lambda/rgb_to_grayscale/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:???????????2#
!lambda/rgb_to_grayscale/Tensordot?
&lambda/rgb_to_grayscale/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2(
&lambda/rgb_to_grayscale/ExpandDims/dim?
"lambda/rgb_to_grayscale/ExpandDims
ExpandDims*lambda/rgb_to_grayscale/Tensordot:output:0/lambda/rgb_to_grayscale/ExpandDims/dim:output:0*
T0*1
_output_shapes
:???????????2$
"lambda/rgb_to_grayscale/ExpandDims?
lambda/rgb_to_grayscaleIdentity+lambda/rgb_to_grayscale/ExpandDims:output:0*
T0*1
_output_shapes
:???????????2
lambda/rgb_to_grayscalei
rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *???;2
rescaling/Cast/xm
rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rescaling/Cast_1/x?
rescaling/mulMul lambda/rgb_to_grayscale:output:0rescaling/Cast/x:output:0*
T0*1
_output_shapes
:???????????2
rescaling/mul?
rescaling/addAddV2rescaling/mul:z:0rescaling/Cast_1/x:output:0*
T0*1
_output_shapes
:???????????2
rescaling/addo
IdentityIdentityrescaling/add:z:0*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????:_ [
1
_output_shapes
:???????????
&
_user_specified_namelambda_input
?
|
,__inference_random_flip_layer_call_fn_120640

inputs
unknown:	
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_random_flip_layer_call_and_return_conditional_losses_1191112
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:???????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:???????????: 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
H
,__inference_random_flip_layer_call_fn_120633

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_random_flip_layer_call_and_return_conditional_losses_1190392
PartitionedCallv
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
0__inference_bike_classifier_layer_call_fn_119624
data_preparation_input
unknown:	#
	unknown_0: 
	unknown_1: #
	unknown_2:  
	unknown_3: #
	unknown_4:  
	unknown_5: 
	unknown_6:???
	unknown_7:	?
	unknown_8:	?
	unknown_9:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldata_preparation_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_bike_classifier_layer_call_and_return_conditional_losses_1195722
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:???????????: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
1
_output_shapes
:???????????
0
_user_specified_namedata_preparation_input
?
J
.__inference_max_pooling2d_layer_call_fn_120396

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_1191632
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
i
M__inference_data_augmentation_layer_call_and_return_conditional_losses_119042

inputs
identity?
random_flip/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_random_flip_layer_call_and_return_conditional_losses_1190392
random_flip/PartitionedCall?
IdentityIdentity$random_flip/PartitionedCall:output:0*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
D__inference_conv2d_1_layer_call_and_return_conditional_losses_119267

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????o? *
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????o? 2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:?????????o? 2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:?????????o? 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????q? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????q? 
 
_user_specified_nameinputs
?
e
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_119163

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
B__inference_conv2d_layer_call_and_return_conditional_losses_119244

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? *
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? 2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:??????????? 2
Reluw
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:??????????? 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
2__inference_data_augmentation_layer_call_fn_120185

inputs
unknown:	
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_data_augmentation_layer_call_and_return_conditional_losses_1195032
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:???????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:???????????: 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?x
?
K__inference_bike_classifier_layer_call_and_return_conditional_losses_119856

inputs?
%conv2d_conv2d_readvariableop_resource: 4
&conv2d_biasadd_readvariableop_resource: A
'conv2d_1_conv2d_readvariableop_resource:  6
(conv2d_1_biasadd_readvariableop_resource: A
'conv2d_2_conv2d_readvariableop_resource:  6
(conv2d_2_biasadd_readvariableop_resource: 9
$dense_matmul_readvariableop_resource:???4
%dense_biasadd_readvariableop_resource:	?9
&dense_1_matmul_readvariableop_resource:	?5
'dense_1_biasadd_readvariableop_resource:
identity??conv2d/BiasAdd/ReadVariableOp?conv2d/Conv2D/ReadVariableOp?conv2d_1/BiasAdd/ReadVariableOp?conv2d_1/Conv2D/ReadVariableOp?conv2d_2/BiasAdd/ReadVariableOp?conv2d_2/Conv2D/ReadVariableOp?dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?
1data_preparation/lambda/rgb_to_grayscale/IdentityIdentityinputs*
T0*1
_output_shapes
:???????????23
1data_preparation/lambda/rgb_to_grayscale/Identity?
4data_preparation/lambda/rgb_to_grayscale/Tensordot/bConst*
_output_shapes
:*
dtype0*!
valueB"l	?>?E??x?=26
4data_preparation/lambda/rgb_to_grayscale/Tensordot/b?
7data_preparation/lambda/rgb_to_grayscale/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:29
7data_preparation/lambda/rgb_to_grayscale/Tensordot/axes?
7data_preparation/lambda/rgb_to_grayscale/Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          29
7data_preparation/lambda/rgb_to_grayscale/Tensordot/free?
8data_preparation/lambda/rgb_to_grayscale/Tensordot/ShapeShape:data_preparation/lambda/rgb_to_grayscale/Identity:output:0*
T0*
_output_shapes
:2:
8data_preparation/lambda/rgb_to_grayscale/Tensordot/Shape?
@data_preparation/lambda/rgb_to_grayscale/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2B
@data_preparation/lambda/rgb_to_grayscale/Tensordot/GatherV2/axis?
;data_preparation/lambda/rgb_to_grayscale/Tensordot/GatherV2GatherV2Adata_preparation/lambda/rgb_to_grayscale/Tensordot/Shape:output:0@data_preparation/lambda/rgb_to_grayscale/Tensordot/free:output:0Idata_preparation/lambda/rgb_to_grayscale/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2=
;data_preparation/lambda/rgb_to_grayscale/Tensordot/GatherV2?
Bdata_preparation/lambda/rgb_to_grayscale/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2D
Bdata_preparation/lambda/rgb_to_grayscale/Tensordot/GatherV2_1/axis?
=data_preparation/lambda/rgb_to_grayscale/Tensordot/GatherV2_1GatherV2Adata_preparation/lambda/rgb_to_grayscale/Tensordot/Shape:output:0@data_preparation/lambda/rgb_to_grayscale/Tensordot/axes:output:0Kdata_preparation/lambda/rgb_to_grayscale/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2?
=data_preparation/lambda/rgb_to_grayscale/Tensordot/GatherV2_1?
8data_preparation/lambda/rgb_to_grayscale/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2:
8data_preparation/lambda/rgb_to_grayscale/Tensordot/Const?
7data_preparation/lambda/rgb_to_grayscale/Tensordot/ProdProdDdata_preparation/lambda/rgb_to_grayscale/Tensordot/GatherV2:output:0Adata_preparation/lambda/rgb_to_grayscale/Tensordot/Const:output:0*
T0*
_output_shapes
: 29
7data_preparation/lambda/rgb_to_grayscale/Tensordot/Prod?
:data_preparation/lambda/rgb_to_grayscale/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2<
:data_preparation/lambda/rgb_to_grayscale/Tensordot/Const_1?
9data_preparation/lambda/rgb_to_grayscale/Tensordot/Prod_1ProdFdata_preparation/lambda/rgb_to_grayscale/Tensordot/GatherV2_1:output:0Cdata_preparation/lambda/rgb_to_grayscale/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2;
9data_preparation/lambda/rgb_to_grayscale/Tensordot/Prod_1?
>data_preparation/lambda/rgb_to_grayscale/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2@
>data_preparation/lambda/rgb_to_grayscale/Tensordot/concat/axis?
9data_preparation/lambda/rgb_to_grayscale/Tensordot/concatConcatV2@data_preparation/lambda/rgb_to_grayscale/Tensordot/free:output:0@data_preparation/lambda/rgb_to_grayscale/Tensordot/axes:output:0Gdata_preparation/lambda/rgb_to_grayscale/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2;
9data_preparation/lambda/rgb_to_grayscale/Tensordot/concat?
8data_preparation/lambda/rgb_to_grayscale/Tensordot/stackPack@data_preparation/lambda/rgb_to_grayscale/Tensordot/Prod:output:0Bdata_preparation/lambda/rgb_to_grayscale/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2:
8data_preparation/lambda/rgb_to_grayscale/Tensordot/stack?
<data_preparation/lambda/rgb_to_grayscale/Tensordot/transpose	Transpose:data_preparation/lambda/rgb_to_grayscale/Identity:output:0Bdata_preparation/lambda/rgb_to_grayscale/Tensordot/concat:output:0*
T0*1
_output_shapes
:???????????2>
<data_preparation/lambda/rgb_to_grayscale/Tensordot/transpose?
:data_preparation/lambda/rgb_to_grayscale/Tensordot/ReshapeReshape@data_preparation/lambda/rgb_to_grayscale/Tensordot/transpose:y:0Adata_preparation/lambda/rgb_to_grayscale/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2<
:data_preparation/lambda/rgb_to_grayscale/Tensordot/Reshape?
Bdata_preparation/lambda/rgb_to_grayscale/Tensordot/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2D
Bdata_preparation/lambda/rgb_to_grayscale/Tensordot/Reshape_1/shape?
<data_preparation/lambda/rgb_to_grayscale/Tensordot/Reshape_1Reshape=data_preparation/lambda/rgb_to_grayscale/Tensordot/b:output:0Kdata_preparation/lambda/rgb_to_grayscale/Tensordot/Reshape_1/shape:output:0*
T0*
_output_shapes

:2>
<data_preparation/lambda/rgb_to_grayscale/Tensordot/Reshape_1?
9data_preparation/lambda/rgb_to_grayscale/Tensordot/MatMulMatMulCdata_preparation/lambda/rgb_to_grayscale/Tensordot/Reshape:output:0Edata_preparation/lambda/rgb_to_grayscale/Tensordot/Reshape_1:output:0*
T0*'
_output_shapes
:?????????2;
9data_preparation/lambda/rgb_to_grayscale/Tensordot/MatMul?
:data_preparation/lambda/rgb_to_grayscale/Tensordot/Const_2Const*
_output_shapes
: *
dtype0*
valueB 2<
:data_preparation/lambda/rgb_to_grayscale/Tensordot/Const_2?
@data_preparation/lambda/rgb_to_grayscale/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2B
@data_preparation/lambda/rgb_to_grayscale/Tensordot/concat_1/axis?
;data_preparation/lambda/rgb_to_grayscale/Tensordot/concat_1ConcatV2Ddata_preparation/lambda/rgb_to_grayscale/Tensordot/GatherV2:output:0Cdata_preparation/lambda/rgb_to_grayscale/Tensordot/Const_2:output:0Idata_preparation/lambda/rgb_to_grayscale/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2=
;data_preparation/lambda/rgb_to_grayscale/Tensordot/concat_1?
2data_preparation/lambda/rgb_to_grayscale/TensordotReshapeCdata_preparation/lambda/rgb_to_grayscale/Tensordot/MatMul:product:0Ddata_preparation/lambda/rgb_to_grayscale/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:???????????24
2data_preparation/lambda/rgb_to_grayscale/Tensordot?
7data_preparation/lambda/rgb_to_grayscale/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????29
7data_preparation/lambda/rgb_to_grayscale/ExpandDims/dim?
3data_preparation/lambda/rgb_to_grayscale/ExpandDims
ExpandDims;data_preparation/lambda/rgb_to_grayscale/Tensordot:output:0@data_preparation/lambda/rgb_to_grayscale/ExpandDims/dim:output:0*
T0*1
_output_shapes
:???????????25
3data_preparation/lambda/rgb_to_grayscale/ExpandDims?
(data_preparation/lambda/rgb_to_grayscaleIdentity<data_preparation/lambda/rgb_to_grayscale/ExpandDims:output:0*
T0*1
_output_shapes
:???????????2*
(data_preparation/lambda/rgb_to_grayscale?
!data_preparation/rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *???;2#
!data_preparation/rescaling/Cast/x?
#data_preparation/rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#data_preparation/rescaling/Cast_1/x?
data_preparation/rescaling/mulMul1data_preparation/lambda/rgb_to_grayscale:output:0*data_preparation/rescaling/Cast/x:output:0*
T0*1
_output_shapes
:???????????2 
data_preparation/rescaling/mul?
data_preparation/rescaling/addAddV2"data_preparation/rescaling/mul:z:0,data_preparation/rescaling/Cast_1/x:output:0*
T0*1
_output_shapes
:???????????2 
data_preparation/rescaling/add?
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
conv2d/Conv2D/ReadVariableOp?
conv2d/Conv2DConv2D"data_preparation/rescaling/add:z:0$conv2d/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? *
paddingVALID*
strides
2
conv2d/Conv2D?
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
conv2d/BiasAdd/ReadVariableOp?
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? 2
conv2d/BiasAddw
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*1
_output_shapes
:??????????? 2
conv2d/Relu?
max_pooling2d/MaxPoolMaxPoolconv2d/Relu:activations:0*0
_output_shapes
:?????????q? *
ksize
*
paddingVALID*
strides
2
max_pooling2d/MaxPool?
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02 
conv2d_1/Conv2D/ReadVariableOp?
conv2d_1/Conv2DConv2Dmax_pooling2d/MaxPool:output:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????o? *
paddingVALID*
strides
2
conv2d_1/Conv2D?
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv2d_1/BiasAdd/ReadVariableOp?
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????o? 2
conv2d_1/BiasAdd|
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*0
_output_shapes
:?????????o? 2
conv2d_1/Relu?
max_pooling2d_1/MaxPoolMaxPoolconv2d_1/Relu:activations:0*/
_output_shapes
:?????????7b *
ksize
*
paddingVALID*
strides
2
max_pooling2d_1/MaxPool?
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02 
conv2d_2/Conv2D/ReadVariableOp?
conv2d_2/Conv2DConv2D max_pooling2d_1/MaxPool:output:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????5` *
paddingVALID*
strides
2
conv2d_2/Conv2D?
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv2d_2/BiasAdd/ReadVariableOp?
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????5` 2
conv2d_2/BiasAdd{
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:?????????5` 2
conv2d_2/Relu?
max_pooling2d_2/MaxPoolMaxPoolconv2d_2/Relu:activations:0*/
_output_shapes
:?????????0 *
ksize
*
paddingVALID*
strides
2
max_pooling2d_2/MaxPoolo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? ?  2
flatten/Const?
flatten/ReshapeReshape max_pooling2d_2/MaxPool:output:0flatten/Const:output:0*
T0*)
_output_shapes
:???????????2
flatten/Reshape?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*!
_output_shapes
:???*
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense/MatMul?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense/BiasAddt
dense/SigmoidSigmoiddense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense/Sigmoid?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMuldense/Sigmoid:y:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_1/MatMul?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_1/BiasAdds
IdentityIdentitydense_1/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:???????????: : : : : : : : : : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?	
h
L__inference_data_preparation_layer_call_and_return_conditional_losses_119008

inputs
identity?
lambda/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_lambda_layer_call_and_return_conditional_losses_1189922
lambda/PartitionedCall?
rescaling/PartitionedCallPartitionedCalllambda/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_rescaling_layer_call_and_return_conditional_losses_1189402
rescaling/PartitionedCall?
IdentityIdentity"rescaling/PartitionedCall:output:0*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
g
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_119277

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:?????????7b *
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:?????????7b 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????o? :X T
0
_output_shapes
:?????????o? 
 
_user_specified_nameinputs
?
?
0__inference_bike_classifier_layer_call_fn_119367
data_preparation_input!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: #
	unknown_3:  
	unknown_4: 
	unknown_5:???
	unknown_6:	?
	unknown_7:	?
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldata_preparation_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_bike_classifier_layer_call_and_return_conditional_losses_1193442
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:???????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
1
_output_shapes
:???????????
0
_user_specified_namedata_preparation_input
?
?
D__inference_conv2d_2_layer_call_and_return_conditional_losses_119290

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????5` *
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????5` 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????5` 2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????5` 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????7b : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????7b 
 
_user_specified_nameinputs
?6
h
L__inference_data_preparation_layer_call_and_return_conditional_losses_120041

inputs
identity?
 lambda/rgb_to_grayscale/IdentityIdentityinputs*
T0*1
_output_shapes
:???????????2"
 lambda/rgb_to_grayscale/Identity?
#lambda/rgb_to_grayscale/Tensordot/bConst*
_output_shapes
:*
dtype0*!
valueB"l	?>?E??x?=2%
#lambda/rgb_to_grayscale/Tensordot/b?
&lambda/rgb_to_grayscale/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2(
&lambda/rgb_to_grayscale/Tensordot/axes?
&lambda/rgb_to_grayscale/Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          2(
&lambda/rgb_to_grayscale/Tensordot/free?
'lambda/rgb_to_grayscale/Tensordot/ShapeShape)lambda/rgb_to_grayscale/Identity:output:0*
T0*
_output_shapes
:2)
'lambda/rgb_to_grayscale/Tensordot/Shape?
/lambda/rgb_to_grayscale/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 21
/lambda/rgb_to_grayscale/Tensordot/GatherV2/axis?
*lambda/rgb_to_grayscale/Tensordot/GatherV2GatherV20lambda/rgb_to_grayscale/Tensordot/Shape:output:0/lambda/rgb_to_grayscale/Tensordot/free:output:08lambda/rgb_to_grayscale/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2,
*lambda/rgb_to_grayscale/Tensordot/GatherV2?
1lambda/rgb_to_grayscale/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 23
1lambda/rgb_to_grayscale/Tensordot/GatherV2_1/axis?
,lambda/rgb_to_grayscale/Tensordot/GatherV2_1GatherV20lambda/rgb_to_grayscale/Tensordot/Shape:output:0/lambda/rgb_to_grayscale/Tensordot/axes:output:0:lambda/rgb_to_grayscale/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2.
,lambda/rgb_to_grayscale/Tensordot/GatherV2_1?
'lambda/rgb_to_grayscale/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2)
'lambda/rgb_to_grayscale/Tensordot/Const?
&lambda/rgb_to_grayscale/Tensordot/ProdProd3lambda/rgb_to_grayscale/Tensordot/GatherV2:output:00lambda/rgb_to_grayscale/Tensordot/Const:output:0*
T0*
_output_shapes
: 2(
&lambda/rgb_to_grayscale/Tensordot/Prod?
)lambda/rgb_to_grayscale/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2+
)lambda/rgb_to_grayscale/Tensordot/Const_1?
(lambda/rgb_to_grayscale/Tensordot/Prod_1Prod5lambda/rgb_to_grayscale/Tensordot/GatherV2_1:output:02lambda/rgb_to_grayscale/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2*
(lambda/rgb_to_grayscale/Tensordot/Prod_1?
-lambda/rgb_to_grayscale/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-lambda/rgb_to_grayscale/Tensordot/concat/axis?
(lambda/rgb_to_grayscale/Tensordot/concatConcatV2/lambda/rgb_to_grayscale/Tensordot/free:output:0/lambda/rgb_to_grayscale/Tensordot/axes:output:06lambda/rgb_to_grayscale/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2*
(lambda/rgb_to_grayscale/Tensordot/concat?
'lambda/rgb_to_grayscale/Tensordot/stackPack/lambda/rgb_to_grayscale/Tensordot/Prod:output:01lambda/rgb_to_grayscale/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2)
'lambda/rgb_to_grayscale/Tensordot/stack?
+lambda/rgb_to_grayscale/Tensordot/transpose	Transpose)lambda/rgb_to_grayscale/Identity:output:01lambda/rgb_to_grayscale/Tensordot/concat:output:0*
T0*1
_output_shapes
:???????????2-
+lambda/rgb_to_grayscale/Tensordot/transpose?
)lambda/rgb_to_grayscale/Tensordot/ReshapeReshape/lambda/rgb_to_grayscale/Tensordot/transpose:y:00lambda/rgb_to_grayscale/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2+
)lambda/rgb_to_grayscale/Tensordot/Reshape?
1lambda/rgb_to_grayscale/Tensordot/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      23
1lambda/rgb_to_grayscale/Tensordot/Reshape_1/shape?
+lambda/rgb_to_grayscale/Tensordot/Reshape_1Reshape,lambda/rgb_to_grayscale/Tensordot/b:output:0:lambda/rgb_to_grayscale/Tensordot/Reshape_1/shape:output:0*
T0*
_output_shapes

:2-
+lambda/rgb_to_grayscale/Tensordot/Reshape_1?
(lambda/rgb_to_grayscale/Tensordot/MatMulMatMul2lambda/rgb_to_grayscale/Tensordot/Reshape:output:04lambda/rgb_to_grayscale/Tensordot/Reshape_1:output:0*
T0*'
_output_shapes
:?????????2*
(lambda/rgb_to_grayscale/Tensordot/MatMul?
)lambda/rgb_to_grayscale/Tensordot/Const_2Const*
_output_shapes
: *
dtype0*
valueB 2+
)lambda/rgb_to_grayscale/Tensordot/Const_2?
/lambda/rgb_to_grayscale/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 21
/lambda/rgb_to_grayscale/Tensordot/concat_1/axis?
*lambda/rgb_to_grayscale/Tensordot/concat_1ConcatV23lambda/rgb_to_grayscale/Tensordot/GatherV2:output:02lambda/rgb_to_grayscale/Tensordot/Const_2:output:08lambda/rgb_to_grayscale/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2,
*lambda/rgb_to_grayscale/Tensordot/concat_1?
!lambda/rgb_to_grayscale/TensordotReshape2lambda/rgb_to_grayscale/Tensordot/MatMul:product:03lambda/rgb_to_grayscale/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:???????????2#
!lambda/rgb_to_grayscale/Tensordot?
&lambda/rgb_to_grayscale/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2(
&lambda/rgb_to_grayscale/ExpandDims/dim?
"lambda/rgb_to_grayscale/ExpandDims
ExpandDims*lambda/rgb_to_grayscale/Tensordot:output:0/lambda/rgb_to_grayscale/ExpandDims/dim:output:0*
T0*1
_output_shapes
:???????????2$
"lambda/rgb_to_grayscale/ExpandDims?
lambda/rgb_to_grayscaleIdentity+lambda/rgb_to_grayscale/ExpandDims:output:0*
T0*1
_output_shapes
:???????????2
lambda/rgb_to_grayscalei
rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *???;2
rescaling/Cast/xm
rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rescaling/Cast_1/x?
rescaling/mulMul lambda/rgb_to_grayscale:output:0rescaling/Cast/x:output:0*
T0*1
_output_shapes
:???????????2
rescaling/mul?
rescaling/addAddV2rescaling/mul:z:0rescaling/Cast_1/x:output:0*
T0*1
_output_shapes
:???????????2
rescaling/addo
IdentityIdentityrescaling/add:z:0*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
g
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_119300

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:?????????0 *
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:?????????0 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????5` :W S
/
_output_shapes
:?????????5` 
 
_user_specified_nameinputs
?w
?
M__inference_data_augmentation_layer_call_and_return_conditional_losses_119503

inputsK
=random_flip_stateful_uniform_full_int_rngreadandskip_resource:	
identity??4random_flip/stateful_uniform_full_int/RngReadAndSkip?[random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlg?brandom_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter?
+random_flip/stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:2-
+random_flip/stateful_uniform_full_int/shape?
+random_flip/stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2-
+random_flip/stateful_uniform_full_int/Const?
*random_flip/stateful_uniform_full_int/ProdProd4random_flip/stateful_uniform_full_int/shape:output:04random_flip/stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: 2,
*random_flip/stateful_uniform_full_int/Prod?
,random_flip/stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :2.
,random_flip/stateful_uniform_full_int/Cast/x?
,random_flip/stateful_uniform_full_int/Cast_1Cast3random_flip/stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 2.
,random_flip/stateful_uniform_full_int/Cast_1?
4random_flip/stateful_uniform_full_int/RngReadAndSkipRngReadAndSkip=random_flip_stateful_uniform_full_int_rngreadandskip_resource5random_flip/stateful_uniform_full_int/Cast/x:output:00random_flip/stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:26
4random_flip/stateful_uniform_full_int/RngReadAndSkip?
9random_flip/stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2;
9random_flip/stateful_uniform_full_int/strided_slice/stack?
;random_flip/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2=
;random_flip/stateful_uniform_full_int/strided_slice/stack_1?
;random_flip/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2=
;random_flip/stateful_uniform_full_int/strided_slice/stack_2?
3random_flip/stateful_uniform_full_int/strided_sliceStridedSlice<random_flip/stateful_uniform_full_int/RngReadAndSkip:value:0Brandom_flip/stateful_uniform_full_int/strided_slice/stack:output:0Drandom_flip/stateful_uniform_full_int/strided_slice/stack_1:output:0Drandom_flip/stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask25
3random_flip/stateful_uniform_full_int/strided_slice?
-random_flip/stateful_uniform_full_int/BitcastBitcast<random_flip/stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type02/
-random_flip/stateful_uniform_full_int/Bitcast?
;random_flip/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2=
;random_flip/stateful_uniform_full_int/strided_slice_1/stack?
=random_flip/stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2?
=random_flip/stateful_uniform_full_int/strided_slice_1/stack_1?
=random_flip/stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2?
=random_flip/stateful_uniform_full_int/strided_slice_1/stack_2?
5random_flip/stateful_uniform_full_int/strided_slice_1StridedSlice<random_flip/stateful_uniform_full_int/RngReadAndSkip:value:0Drandom_flip/stateful_uniform_full_int/strided_slice_1/stack:output:0Frandom_flip/stateful_uniform_full_int/strided_slice_1/stack_1:output:0Frandom_flip/stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:27
5random_flip/stateful_uniform_full_int/strided_slice_1?
/random_flip/stateful_uniform_full_int/Bitcast_1Bitcast>random_flip/stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type021
/random_flip/stateful_uniform_full_int/Bitcast_1?
)random_flip/stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :2+
)random_flip/stateful_uniform_full_int/alg?
%random_flip/stateful_uniform_full_intStatelessRandomUniformFullIntV24random_flip/stateful_uniform_full_int/shape:output:08random_flip/stateful_uniform_full_int/Bitcast_1:output:06random_flip/stateful_uniform_full_int/Bitcast:output:02random_flip/stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	2'
%random_flip/stateful_uniform_full_intz
random_flip/zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R 2
random_flip/zeros_like?
random_flip/stackPack.random_flip/stateful_uniform_full_int:output:0random_flip/zeros_like:output:0*
N*
T0	*
_output_shapes

:2
random_flip/stack?
random_flip/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
random_flip/strided_slice/stack?
!random_flip/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2#
!random_flip/strided_slice/stack_1?
!random_flip/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!random_flip/strided_slice/stack_2?
random_flip/strided_sliceStridedSlicerandom_flip/stack:output:0(random_flip/strided_slice/stack:output:0*random_flip/strided_slice/stack_1:output:0*random_flip/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask2
random_flip/strided_slice?
?random_flip/stateless_random_flip_left_right/control_dependencyIdentityinputs*
T0*
_class
loc:@inputs*1
_output_shapes
:???????????2A
?random_flip/stateless_random_flip_left_right/control_dependency?
2random_flip/stateless_random_flip_left_right/ShapeShapeHrandom_flip/stateless_random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
:24
2random_flip/stateless_random_flip_left_right/Shape?
@random_flip/stateless_random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2B
@random_flip/stateless_random_flip_left_right/strided_slice/stack?
Brandom_flip/stateless_random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2D
Brandom_flip/stateless_random_flip_left_right/strided_slice/stack_1?
Brandom_flip/stateless_random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2D
Brandom_flip/stateless_random_flip_left_right/strided_slice/stack_2?
:random_flip/stateless_random_flip_left_right/strided_sliceStridedSlice;random_flip/stateless_random_flip_left_right/Shape:output:0Irandom_flip/stateless_random_flip_left_right/strided_slice/stack:output:0Krandom_flip/stateless_random_flip_left_right/strided_slice/stack_1:output:0Krandom_flip/stateless_random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2<
:random_flip/stateless_random_flip_left_right/strided_slice?
Krandom_flip/stateless_random_flip_left_right/stateless_random_uniform/shapePackCrandom_flip/stateless_random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:2M
Krandom_flip/stateless_random_flip_left_right/stateless_random_uniform/shape?
Irandom_flip/stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    2K
Irandom_flip/stateless_random_flip_left_right/stateless_random_uniform/min?
Irandom_flip/stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2K
Irandom_flip/stateless_random_flip_left_right/stateless_random_uniform/max?
brandom_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter"random_flip/strided_slice:output:0* 
_output_shapes
::2d
brandom_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter?
[random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlgStatelessRandomGetAlgc^random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter*
_output_shapes
: 2]
[random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlg?
^random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Trandom_flip/stateless_random_flip_left_right/stateless_random_uniform/shape:output:0hrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0lrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0arandom_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlg:alg:0*#
_output_shapes
:?????????2`
^random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2?
Irandom_flip/stateless_random_flip_left_right/stateless_random_uniform/subSubRrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/max:output:0Rrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: 2K
Irandom_flip/stateless_random_flip_left_right/stateless_random_uniform/sub?
Irandom_flip/stateless_random_flip_left_right/stateless_random_uniform/mulMulgrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Mrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:?????????2K
Irandom_flip/stateless_random_flip_left_right/stateless_random_uniform/mul?
Erandom_flip/stateless_random_flip_left_right/stateless_random_uniformAddV2Mrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/mul:z:0Rrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:?????????2G
Erandom_flip/stateless_random_flip_left_right/stateless_random_uniform?
<random_flip/stateless_random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2>
<random_flip/stateless_random_flip_left_right/Reshape/shape/1?
<random_flip/stateless_random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2>
<random_flip/stateless_random_flip_left_right/Reshape/shape/2?
<random_flip/stateless_random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2>
<random_flip/stateless_random_flip_left_right/Reshape/shape/3?
:random_flip/stateless_random_flip_left_right/Reshape/shapePackCrandom_flip/stateless_random_flip_left_right/strided_slice:output:0Erandom_flip/stateless_random_flip_left_right/Reshape/shape/1:output:0Erandom_flip/stateless_random_flip_left_right/Reshape/shape/2:output:0Erandom_flip/stateless_random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2<
:random_flip/stateless_random_flip_left_right/Reshape/shape?
4random_flip/stateless_random_flip_left_right/ReshapeReshapeIrandom_flip/stateless_random_flip_left_right/stateless_random_uniform:z:0Crandom_flip/stateless_random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????26
4random_flip/stateless_random_flip_left_right/Reshape?
2random_flip/stateless_random_flip_left_right/RoundRound=random_flip/stateless_random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:?????????24
2random_flip/stateless_random_flip_left_right/Round?
;random_flip/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:2=
;random_flip/stateless_random_flip_left_right/ReverseV2/axis?
6random_flip/stateless_random_flip_left_right/ReverseV2	ReverseV2Hrandom_flip/stateless_random_flip_left_right/control_dependency:output:0Drandom_flip/stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*1
_output_shapes
:???????????28
6random_flip/stateless_random_flip_left_right/ReverseV2?
0random_flip/stateless_random_flip_left_right/mulMul6random_flip/stateless_random_flip_left_right/Round:y:0?random_flip/stateless_random_flip_left_right/ReverseV2:output:0*
T0*1
_output_shapes
:???????????22
0random_flip/stateless_random_flip_left_right/mul?
2random_flip/stateless_random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??24
2random_flip/stateless_random_flip_left_right/sub/x?
0random_flip/stateless_random_flip_left_right/subSub;random_flip/stateless_random_flip_left_right/sub/x:output:06random_flip/stateless_random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:?????????22
0random_flip/stateless_random_flip_left_right/sub?
2random_flip/stateless_random_flip_left_right/mul_1Mul4random_flip/stateless_random_flip_left_right/sub:z:0Hrandom_flip/stateless_random_flip_left_right/control_dependency:output:0*
T0*1
_output_shapes
:???????????24
2random_flip/stateless_random_flip_left_right/mul_1?
0random_flip/stateless_random_flip_left_right/addAddV24random_flip/stateless_random_flip_left_right/mul:z:06random_flip/stateless_random_flip_left_right/mul_1:z:0*
T0*1
_output_shapes
:???????????22
0random_flip/stateless_random_flip_left_right/add?
IdentityIdentity4random_flip/stateless_random_flip_left_right/add:z:0^NoOp*
T0*1
_output_shapes
:???????????2

Identity?
NoOpNoOp5^random_flip/stateful_uniform_full_int/RngReadAndSkip\^random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlgc^random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:???????????: 2l
4random_flip/stateful_uniform_full_int/RngReadAndSkip4random_flip/stateful_uniform_full_int/RngReadAndSkip2?
[random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlg[random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlg2?
brandom_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterbrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
e
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_119254

inputs
identity?
MaxPoolMaxPoolinputs*0
_output_shapes
:?????????q? *
ksize
*
paddingVALID*
strides
2	
MaxPoolm
IdentityIdentityMaxPool:output:0*
T0*0
_output_shapes
:?????????q? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:??????????? :Y U
1
_output_shapes
:??????????? 
 
_user_specified_nameinputs
?
J
.__inference_max_pooling2d_layer_call_fn_120401

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????q? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_1192542
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:?????????q? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:??????????? :Y U
1
_output_shapes
:??????????? 
 
_user_specified_nameinputs
??
?
K__inference_bike_classifier_layer_call_and_return_conditional_losses_119985

inputs]
Odata_augmentation_random_flip_stateful_uniform_full_int_rngreadandskip_resource:	?
%conv2d_conv2d_readvariableop_resource: 4
&conv2d_biasadd_readvariableop_resource: A
'conv2d_1_conv2d_readvariableop_resource:  6
(conv2d_1_biasadd_readvariableop_resource: A
'conv2d_2_conv2d_readvariableop_resource:  6
(conv2d_2_biasadd_readvariableop_resource: 9
$dense_matmul_readvariableop_resource:???4
%dense_biasadd_readvariableop_resource:	?9
&dense_1_matmul_readvariableop_resource:	?5
'dense_1_biasadd_readvariableop_resource:
identity??conv2d/BiasAdd/ReadVariableOp?conv2d/Conv2D/ReadVariableOp?conv2d_1/BiasAdd/ReadVariableOp?conv2d_1/Conv2D/ReadVariableOp?conv2d_2/BiasAdd/ReadVariableOp?conv2d_2/Conv2D/ReadVariableOp?Fdata_augmentation/random_flip/stateful_uniform_full_int/RngReadAndSkip?mdata_augmentation/random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlg?tdata_augmentation/random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter?dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?
1data_preparation/lambda/rgb_to_grayscale/IdentityIdentityinputs*
T0*1
_output_shapes
:???????????23
1data_preparation/lambda/rgb_to_grayscale/Identity?
4data_preparation/lambda/rgb_to_grayscale/Tensordot/bConst*
_output_shapes
:*
dtype0*!
valueB"l	?>?E??x?=26
4data_preparation/lambda/rgb_to_grayscale/Tensordot/b?
7data_preparation/lambda/rgb_to_grayscale/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:29
7data_preparation/lambda/rgb_to_grayscale/Tensordot/axes?
7data_preparation/lambda/rgb_to_grayscale/Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          29
7data_preparation/lambda/rgb_to_grayscale/Tensordot/free?
8data_preparation/lambda/rgb_to_grayscale/Tensordot/ShapeShape:data_preparation/lambda/rgb_to_grayscale/Identity:output:0*
T0*
_output_shapes
:2:
8data_preparation/lambda/rgb_to_grayscale/Tensordot/Shape?
@data_preparation/lambda/rgb_to_grayscale/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2B
@data_preparation/lambda/rgb_to_grayscale/Tensordot/GatherV2/axis?
;data_preparation/lambda/rgb_to_grayscale/Tensordot/GatherV2GatherV2Adata_preparation/lambda/rgb_to_grayscale/Tensordot/Shape:output:0@data_preparation/lambda/rgb_to_grayscale/Tensordot/free:output:0Idata_preparation/lambda/rgb_to_grayscale/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2=
;data_preparation/lambda/rgb_to_grayscale/Tensordot/GatherV2?
Bdata_preparation/lambda/rgb_to_grayscale/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2D
Bdata_preparation/lambda/rgb_to_grayscale/Tensordot/GatherV2_1/axis?
=data_preparation/lambda/rgb_to_grayscale/Tensordot/GatherV2_1GatherV2Adata_preparation/lambda/rgb_to_grayscale/Tensordot/Shape:output:0@data_preparation/lambda/rgb_to_grayscale/Tensordot/axes:output:0Kdata_preparation/lambda/rgb_to_grayscale/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2?
=data_preparation/lambda/rgb_to_grayscale/Tensordot/GatherV2_1?
8data_preparation/lambda/rgb_to_grayscale/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2:
8data_preparation/lambda/rgb_to_grayscale/Tensordot/Const?
7data_preparation/lambda/rgb_to_grayscale/Tensordot/ProdProdDdata_preparation/lambda/rgb_to_grayscale/Tensordot/GatherV2:output:0Adata_preparation/lambda/rgb_to_grayscale/Tensordot/Const:output:0*
T0*
_output_shapes
: 29
7data_preparation/lambda/rgb_to_grayscale/Tensordot/Prod?
:data_preparation/lambda/rgb_to_grayscale/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2<
:data_preparation/lambda/rgb_to_grayscale/Tensordot/Const_1?
9data_preparation/lambda/rgb_to_grayscale/Tensordot/Prod_1ProdFdata_preparation/lambda/rgb_to_grayscale/Tensordot/GatherV2_1:output:0Cdata_preparation/lambda/rgb_to_grayscale/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2;
9data_preparation/lambda/rgb_to_grayscale/Tensordot/Prod_1?
>data_preparation/lambda/rgb_to_grayscale/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2@
>data_preparation/lambda/rgb_to_grayscale/Tensordot/concat/axis?
9data_preparation/lambda/rgb_to_grayscale/Tensordot/concatConcatV2@data_preparation/lambda/rgb_to_grayscale/Tensordot/free:output:0@data_preparation/lambda/rgb_to_grayscale/Tensordot/axes:output:0Gdata_preparation/lambda/rgb_to_grayscale/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2;
9data_preparation/lambda/rgb_to_grayscale/Tensordot/concat?
8data_preparation/lambda/rgb_to_grayscale/Tensordot/stackPack@data_preparation/lambda/rgb_to_grayscale/Tensordot/Prod:output:0Bdata_preparation/lambda/rgb_to_grayscale/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2:
8data_preparation/lambda/rgb_to_grayscale/Tensordot/stack?
<data_preparation/lambda/rgb_to_grayscale/Tensordot/transpose	Transpose:data_preparation/lambda/rgb_to_grayscale/Identity:output:0Bdata_preparation/lambda/rgb_to_grayscale/Tensordot/concat:output:0*
T0*1
_output_shapes
:???????????2>
<data_preparation/lambda/rgb_to_grayscale/Tensordot/transpose?
:data_preparation/lambda/rgb_to_grayscale/Tensordot/ReshapeReshape@data_preparation/lambda/rgb_to_grayscale/Tensordot/transpose:y:0Adata_preparation/lambda/rgb_to_grayscale/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2<
:data_preparation/lambda/rgb_to_grayscale/Tensordot/Reshape?
Bdata_preparation/lambda/rgb_to_grayscale/Tensordot/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2D
Bdata_preparation/lambda/rgb_to_grayscale/Tensordot/Reshape_1/shape?
<data_preparation/lambda/rgb_to_grayscale/Tensordot/Reshape_1Reshape=data_preparation/lambda/rgb_to_grayscale/Tensordot/b:output:0Kdata_preparation/lambda/rgb_to_grayscale/Tensordot/Reshape_1/shape:output:0*
T0*
_output_shapes

:2>
<data_preparation/lambda/rgb_to_grayscale/Tensordot/Reshape_1?
9data_preparation/lambda/rgb_to_grayscale/Tensordot/MatMulMatMulCdata_preparation/lambda/rgb_to_grayscale/Tensordot/Reshape:output:0Edata_preparation/lambda/rgb_to_grayscale/Tensordot/Reshape_1:output:0*
T0*'
_output_shapes
:?????????2;
9data_preparation/lambda/rgb_to_grayscale/Tensordot/MatMul?
:data_preparation/lambda/rgb_to_grayscale/Tensordot/Const_2Const*
_output_shapes
: *
dtype0*
valueB 2<
:data_preparation/lambda/rgb_to_grayscale/Tensordot/Const_2?
@data_preparation/lambda/rgb_to_grayscale/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2B
@data_preparation/lambda/rgb_to_grayscale/Tensordot/concat_1/axis?
;data_preparation/lambda/rgb_to_grayscale/Tensordot/concat_1ConcatV2Ddata_preparation/lambda/rgb_to_grayscale/Tensordot/GatherV2:output:0Cdata_preparation/lambda/rgb_to_grayscale/Tensordot/Const_2:output:0Idata_preparation/lambda/rgb_to_grayscale/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2=
;data_preparation/lambda/rgb_to_grayscale/Tensordot/concat_1?
2data_preparation/lambda/rgb_to_grayscale/TensordotReshapeCdata_preparation/lambda/rgb_to_grayscale/Tensordot/MatMul:product:0Ddata_preparation/lambda/rgb_to_grayscale/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:???????????24
2data_preparation/lambda/rgb_to_grayscale/Tensordot?
7data_preparation/lambda/rgb_to_grayscale/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????29
7data_preparation/lambda/rgb_to_grayscale/ExpandDims/dim?
3data_preparation/lambda/rgb_to_grayscale/ExpandDims
ExpandDims;data_preparation/lambda/rgb_to_grayscale/Tensordot:output:0@data_preparation/lambda/rgb_to_grayscale/ExpandDims/dim:output:0*
T0*1
_output_shapes
:???????????25
3data_preparation/lambda/rgb_to_grayscale/ExpandDims?
(data_preparation/lambda/rgb_to_grayscaleIdentity<data_preparation/lambda/rgb_to_grayscale/ExpandDims:output:0*
T0*1
_output_shapes
:???????????2*
(data_preparation/lambda/rgb_to_grayscale?
!data_preparation/rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *???;2#
!data_preparation/rescaling/Cast/x?
#data_preparation/rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#data_preparation/rescaling/Cast_1/x?
data_preparation/rescaling/mulMul1data_preparation/lambda/rgb_to_grayscale:output:0*data_preparation/rescaling/Cast/x:output:0*
T0*1
_output_shapes
:???????????2 
data_preparation/rescaling/mul?
data_preparation/rescaling/addAddV2"data_preparation/rescaling/mul:z:0,data_preparation/rescaling/Cast_1/x:output:0*
T0*1
_output_shapes
:???????????2 
data_preparation/rescaling/add?
=data_augmentation/random_flip/stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:2?
=data_augmentation/random_flip/stateful_uniform_full_int/shape?
=data_augmentation/random_flip/stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2?
=data_augmentation/random_flip/stateful_uniform_full_int/Const?
<data_augmentation/random_flip/stateful_uniform_full_int/ProdProdFdata_augmentation/random_flip/stateful_uniform_full_int/shape:output:0Fdata_augmentation/random_flip/stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: 2>
<data_augmentation/random_flip/stateful_uniform_full_int/Prod?
>data_augmentation/random_flip/stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :2@
>data_augmentation/random_flip/stateful_uniform_full_int/Cast/x?
>data_augmentation/random_flip/stateful_uniform_full_int/Cast_1CastEdata_augmentation/random_flip/stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 2@
>data_augmentation/random_flip/stateful_uniform_full_int/Cast_1?
Fdata_augmentation/random_flip/stateful_uniform_full_int/RngReadAndSkipRngReadAndSkipOdata_augmentation_random_flip_stateful_uniform_full_int_rngreadandskip_resourceGdata_augmentation/random_flip/stateful_uniform_full_int/Cast/x:output:0Bdata_augmentation/random_flip/stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:2H
Fdata_augmentation/random_flip/stateful_uniform_full_int/RngReadAndSkip?
Kdata_augmentation/random_flip/stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2M
Kdata_augmentation/random_flip/stateful_uniform_full_int/strided_slice/stack?
Mdata_augmentation/random_flip/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2O
Mdata_augmentation/random_flip/stateful_uniform_full_int/strided_slice/stack_1?
Mdata_augmentation/random_flip/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2O
Mdata_augmentation/random_flip/stateful_uniform_full_int/strided_slice/stack_2?
Edata_augmentation/random_flip/stateful_uniform_full_int/strided_sliceStridedSliceNdata_augmentation/random_flip/stateful_uniform_full_int/RngReadAndSkip:value:0Tdata_augmentation/random_flip/stateful_uniform_full_int/strided_slice/stack:output:0Vdata_augmentation/random_flip/stateful_uniform_full_int/strided_slice/stack_1:output:0Vdata_augmentation/random_flip/stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask2G
Edata_augmentation/random_flip/stateful_uniform_full_int/strided_slice?
?data_augmentation/random_flip/stateful_uniform_full_int/BitcastBitcastNdata_augmentation/random_flip/stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type02A
?data_augmentation/random_flip/stateful_uniform_full_int/Bitcast?
Mdata_augmentation/random_flip/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2O
Mdata_augmentation/random_flip/stateful_uniform_full_int/strided_slice_1/stack?
Odata_augmentation/random_flip/stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2Q
Odata_augmentation/random_flip/stateful_uniform_full_int/strided_slice_1/stack_1?
Odata_augmentation/random_flip/stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2Q
Odata_augmentation/random_flip/stateful_uniform_full_int/strided_slice_1/stack_2?
Gdata_augmentation/random_flip/stateful_uniform_full_int/strided_slice_1StridedSliceNdata_augmentation/random_flip/stateful_uniform_full_int/RngReadAndSkip:value:0Vdata_augmentation/random_flip/stateful_uniform_full_int/strided_slice_1/stack:output:0Xdata_augmentation/random_flip/stateful_uniform_full_int/strided_slice_1/stack_1:output:0Xdata_augmentation/random_flip/stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:2I
Gdata_augmentation/random_flip/stateful_uniform_full_int/strided_slice_1?
Adata_augmentation/random_flip/stateful_uniform_full_int/Bitcast_1BitcastPdata_augmentation/random_flip/stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type02C
Adata_augmentation/random_flip/stateful_uniform_full_int/Bitcast_1?
;data_augmentation/random_flip/stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :2=
;data_augmentation/random_flip/stateful_uniform_full_int/alg?
7data_augmentation/random_flip/stateful_uniform_full_intStatelessRandomUniformFullIntV2Fdata_augmentation/random_flip/stateful_uniform_full_int/shape:output:0Jdata_augmentation/random_flip/stateful_uniform_full_int/Bitcast_1:output:0Hdata_augmentation/random_flip/stateful_uniform_full_int/Bitcast:output:0Ddata_augmentation/random_flip/stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	29
7data_augmentation/random_flip/stateful_uniform_full_int?
(data_augmentation/random_flip/zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R 2*
(data_augmentation/random_flip/zeros_like?
#data_augmentation/random_flip/stackPack@data_augmentation/random_flip/stateful_uniform_full_int:output:01data_augmentation/random_flip/zeros_like:output:0*
N*
T0	*
_output_shapes

:2%
#data_augmentation/random_flip/stack?
1data_augmentation/random_flip/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        23
1data_augmentation/random_flip/strided_slice/stack?
3data_augmentation/random_flip/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       25
3data_augmentation/random_flip/strided_slice/stack_1?
3data_augmentation/random_flip/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      25
3data_augmentation/random_flip/strided_slice/stack_2?
+data_augmentation/random_flip/strided_sliceStridedSlice,data_augmentation/random_flip/stack:output:0:data_augmentation/random_flip/strided_slice/stack:output:0<data_augmentation/random_flip/strided_slice/stack_1:output:0<data_augmentation/random_flip/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask2-
+data_augmentation/random_flip/strided_slice?
Qdata_augmentation/random_flip/stateless_random_flip_left_right/control_dependencyIdentity"data_preparation/rescaling/add:z:0*
T0*1
_class'
%#loc:@data_preparation/rescaling/add*1
_output_shapes
:???????????2S
Qdata_augmentation/random_flip/stateless_random_flip_left_right/control_dependency?
Ddata_augmentation/random_flip/stateless_random_flip_left_right/ShapeShapeZdata_augmentation/random_flip/stateless_random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
:2F
Ddata_augmentation/random_flip/stateless_random_flip_left_right/Shape?
Rdata_augmentation/random_flip/stateless_random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2T
Rdata_augmentation/random_flip/stateless_random_flip_left_right/strided_slice/stack?
Tdata_augmentation/random_flip/stateless_random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2V
Tdata_augmentation/random_flip/stateless_random_flip_left_right/strided_slice/stack_1?
Tdata_augmentation/random_flip/stateless_random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2V
Tdata_augmentation/random_flip/stateless_random_flip_left_right/strided_slice/stack_2?
Ldata_augmentation/random_flip/stateless_random_flip_left_right/strided_sliceStridedSliceMdata_augmentation/random_flip/stateless_random_flip_left_right/Shape:output:0[data_augmentation/random_flip/stateless_random_flip_left_right/strided_slice/stack:output:0]data_augmentation/random_flip/stateless_random_flip_left_right/strided_slice/stack_1:output:0]data_augmentation/random_flip/stateless_random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2N
Ldata_augmentation/random_flip/stateless_random_flip_left_right/strided_slice?
]data_augmentation/random_flip/stateless_random_flip_left_right/stateless_random_uniform/shapePackUdata_augmentation/random_flip/stateless_random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:2_
]data_augmentation/random_flip/stateless_random_flip_left_right/stateless_random_uniform/shape?
[data_augmentation/random_flip/stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    2]
[data_augmentation/random_flip/stateless_random_flip_left_right/stateless_random_uniform/min?
[data_augmentation/random_flip/stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2]
[data_augmentation/random_flip/stateless_random_flip_left_right/stateless_random_uniform/max?
tdata_augmentation/random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter4data_augmentation/random_flip/strided_slice:output:0* 
_output_shapes
::2v
tdata_augmentation/random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter?
mdata_augmentation/random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlgStatelessRandomGetAlgu^data_augmentation/random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter*
_output_shapes
: 2o
mdata_augmentation/random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlg?
pdata_augmentation/random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2fdata_augmentation/random_flip/stateless_random_flip_left_right/stateless_random_uniform/shape:output:0zdata_augmentation/random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0~data_augmentation/random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0sdata_augmentation/random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlg:alg:0*#
_output_shapes
:?????????2r
pdata_augmentation/random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2?
[data_augmentation/random_flip/stateless_random_flip_left_right/stateless_random_uniform/subSubddata_augmentation/random_flip/stateless_random_flip_left_right/stateless_random_uniform/max:output:0ddata_augmentation/random_flip/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: 2]
[data_augmentation/random_flip/stateless_random_flip_left_right/stateless_random_uniform/sub?
[data_augmentation/random_flip/stateless_random_flip_left_right/stateless_random_uniform/mulMulydata_augmentation/random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0_data_augmentation/random_flip/stateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:?????????2]
[data_augmentation/random_flip/stateless_random_flip_left_right/stateless_random_uniform/mul?
Wdata_augmentation/random_flip/stateless_random_flip_left_right/stateless_random_uniformAddV2_data_augmentation/random_flip/stateless_random_flip_left_right/stateless_random_uniform/mul:z:0ddata_augmentation/random_flip/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:?????????2Y
Wdata_augmentation/random_flip/stateless_random_flip_left_right/stateless_random_uniform?
Ndata_augmentation/random_flip/stateless_random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2P
Ndata_augmentation/random_flip/stateless_random_flip_left_right/Reshape/shape/1?
Ndata_augmentation/random_flip/stateless_random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2P
Ndata_augmentation/random_flip/stateless_random_flip_left_right/Reshape/shape/2?
Ndata_augmentation/random_flip/stateless_random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2P
Ndata_augmentation/random_flip/stateless_random_flip_left_right/Reshape/shape/3?
Ldata_augmentation/random_flip/stateless_random_flip_left_right/Reshape/shapePackUdata_augmentation/random_flip/stateless_random_flip_left_right/strided_slice:output:0Wdata_augmentation/random_flip/stateless_random_flip_left_right/Reshape/shape/1:output:0Wdata_augmentation/random_flip/stateless_random_flip_left_right/Reshape/shape/2:output:0Wdata_augmentation/random_flip/stateless_random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2N
Ldata_augmentation/random_flip/stateless_random_flip_left_right/Reshape/shape?
Fdata_augmentation/random_flip/stateless_random_flip_left_right/ReshapeReshape[data_augmentation/random_flip/stateless_random_flip_left_right/stateless_random_uniform:z:0Udata_augmentation/random_flip/stateless_random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????2H
Fdata_augmentation/random_flip/stateless_random_flip_left_right/Reshape?
Ddata_augmentation/random_flip/stateless_random_flip_left_right/RoundRoundOdata_augmentation/random_flip/stateless_random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:?????????2F
Ddata_augmentation/random_flip/stateless_random_flip_left_right/Round?
Mdata_augmentation/random_flip/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:2O
Mdata_augmentation/random_flip/stateless_random_flip_left_right/ReverseV2/axis?
Hdata_augmentation/random_flip/stateless_random_flip_left_right/ReverseV2	ReverseV2Zdata_augmentation/random_flip/stateless_random_flip_left_right/control_dependency:output:0Vdata_augmentation/random_flip/stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*1
_output_shapes
:???????????2J
Hdata_augmentation/random_flip/stateless_random_flip_left_right/ReverseV2?
Bdata_augmentation/random_flip/stateless_random_flip_left_right/mulMulHdata_augmentation/random_flip/stateless_random_flip_left_right/Round:y:0Qdata_augmentation/random_flip/stateless_random_flip_left_right/ReverseV2:output:0*
T0*1
_output_shapes
:???????????2D
Bdata_augmentation/random_flip/stateless_random_flip_left_right/mul?
Ddata_augmentation/random_flip/stateless_random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2F
Ddata_augmentation/random_flip/stateless_random_flip_left_right/sub/x?
Bdata_augmentation/random_flip/stateless_random_flip_left_right/subSubMdata_augmentation/random_flip/stateless_random_flip_left_right/sub/x:output:0Hdata_augmentation/random_flip/stateless_random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:?????????2D
Bdata_augmentation/random_flip/stateless_random_flip_left_right/sub?
Ddata_augmentation/random_flip/stateless_random_flip_left_right/mul_1MulFdata_augmentation/random_flip/stateless_random_flip_left_right/sub:z:0Zdata_augmentation/random_flip/stateless_random_flip_left_right/control_dependency:output:0*
T0*1
_output_shapes
:???????????2F
Ddata_augmentation/random_flip/stateless_random_flip_left_right/mul_1?
Bdata_augmentation/random_flip/stateless_random_flip_left_right/addAddV2Fdata_augmentation/random_flip/stateless_random_flip_left_right/mul:z:0Hdata_augmentation/random_flip/stateless_random_flip_left_right/mul_1:z:0*
T0*1
_output_shapes
:???????????2D
Bdata_augmentation/random_flip/stateless_random_flip_left_right/add?
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
conv2d/Conv2D/ReadVariableOp?
conv2d/Conv2DConv2DFdata_augmentation/random_flip/stateless_random_flip_left_right/add:z:0$conv2d/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? *
paddingVALID*
strides
2
conv2d/Conv2D?
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
conv2d/BiasAdd/ReadVariableOp?
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? 2
conv2d/BiasAddw
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*1
_output_shapes
:??????????? 2
conv2d/Relu?
max_pooling2d/MaxPoolMaxPoolconv2d/Relu:activations:0*0
_output_shapes
:?????????q? *
ksize
*
paddingVALID*
strides
2
max_pooling2d/MaxPool?
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02 
conv2d_1/Conv2D/ReadVariableOp?
conv2d_1/Conv2DConv2Dmax_pooling2d/MaxPool:output:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????o? *
paddingVALID*
strides
2
conv2d_1/Conv2D?
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv2d_1/BiasAdd/ReadVariableOp?
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????o? 2
conv2d_1/BiasAdd|
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*0
_output_shapes
:?????????o? 2
conv2d_1/Relu?
max_pooling2d_1/MaxPoolMaxPoolconv2d_1/Relu:activations:0*/
_output_shapes
:?????????7b *
ksize
*
paddingVALID*
strides
2
max_pooling2d_1/MaxPool?
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02 
conv2d_2/Conv2D/ReadVariableOp?
conv2d_2/Conv2DConv2D max_pooling2d_1/MaxPool:output:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????5` *
paddingVALID*
strides
2
conv2d_2/Conv2D?
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv2d_2/BiasAdd/ReadVariableOp?
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????5` 2
conv2d_2/BiasAdd{
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:?????????5` 2
conv2d_2/Relu?
max_pooling2d_2/MaxPoolMaxPoolconv2d_2/Relu:activations:0*/
_output_shapes
:?????????0 *
ksize
*
paddingVALID*
strides
2
max_pooling2d_2/MaxPoolo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? ?  2
flatten/Const?
flatten/ReshapeReshape max_pooling2d_2/MaxPool:output:0flatten/Const:output:0*
T0*)
_output_shapes
:???????????2
flatten/Reshape?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*!
_output_shapes
:???*
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense/MatMul?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense/BiasAddt
dense/SigmoidSigmoiddense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense/Sigmoid?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMuldense/Sigmoid:y:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_1/MatMul?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_1/BiasAdds
IdentityIdentitydense_1/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOpG^data_augmentation/random_flip/stateful_uniform_full_int/RngReadAndSkipn^data_augmentation/random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlgu^data_augmentation/random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:???????????: : : : : : : : : : : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2?
Fdata_augmentation/random_flip/stateful_uniform_full_int/RngReadAndSkipFdata_augmentation/random_flip/stateful_uniform_full_int/RngReadAndSkip2?
mdata_augmentation/random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlgmdata_augmentation/random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlg2?
tdata_augmentation/random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCountertdata_augmentation/random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
D__inference_conv2d_1_layer_call_and_return_conditional_losses_120431

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????o? *
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????o? 2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:?????????o? 2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:?????????o? 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????q? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????q? 
 
_user_specified_nameinputs
?6
n
L__inference_data_preparation_layer_call_and_return_conditional_losses_120149
lambda_input
identity?
 lambda/rgb_to_grayscale/IdentityIdentitylambda_input*
T0*1
_output_shapes
:???????????2"
 lambda/rgb_to_grayscale/Identity?
#lambda/rgb_to_grayscale/Tensordot/bConst*
_output_shapes
:*
dtype0*!
valueB"l	?>?E??x?=2%
#lambda/rgb_to_grayscale/Tensordot/b?
&lambda/rgb_to_grayscale/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2(
&lambda/rgb_to_grayscale/Tensordot/axes?
&lambda/rgb_to_grayscale/Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          2(
&lambda/rgb_to_grayscale/Tensordot/free?
'lambda/rgb_to_grayscale/Tensordot/ShapeShape)lambda/rgb_to_grayscale/Identity:output:0*
T0*
_output_shapes
:2)
'lambda/rgb_to_grayscale/Tensordot/Shape?
/lambda/rgb_to_grayscale/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 21
/lambda/rgb_to_grayscale/Tensordot/GatherV2/axis?
*lambda/rgb_to_grayscale/Tensordot/GatherV2GatherV20lambda/rgb_to_grayscale/Tensordot/Shape:output:0/lambda/rgb_to_grayscale/Tensordot/free:output:08lambda/rgb_to_grayscale/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2,
*lambda/rgb_to_grayscale/Tensordot/GatherV2?
1lambda/rgb_to_grayscale/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 23
1lambda/rgb_to_grayscale/Tensordot/GatherV2_1/axis?
,lambda/rgb_to_grayscale/Tensordot/GatherV2_1GatherV20lambda/rgb_to_grayscale/Tensordot/Shape:output:0/lambda/rgb_to_grayscale/Tensordot/axes:output:0:lambda/rgb_to_grayscale/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2.
,lambda/rgb_to_grayscale/Tensordot/GatherV2_1?
'lambda/rgb_to_grayscale/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2)
'lambda/rgb_to_grayscale/Tensordot/Const?
&lambda/rgb_to_grayscale/Tensordot/ProdProd3lambda/rgb_to_grayscale/Tensordot/GatherV2:output:00lambda/rgb_to_grayscale/Tensordot/Const:output:0*
T0*
_output_shapes
: 2(
&lambda/rgb_to_grayscale/Tensordot/Prod?
)lambda/rgb_to_grayscale/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2+
)lambda/rgb_to_grayscale/Tensordot/Const_1?
(lambda/rgb_to_grayscale/Tensordot/Prod_1Prod5lambda/rgb_to_grayscale/Tensordot/GatherV2_1:output:02lambda/rgb_to_grayscale/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2*
(lambda/rgb_to_grayscale/Tensordot/Prod_1?
-lambda/rgb_to_grayscale/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-lambda/rgb_to_grayscale/Tensordot/concat/axis?
(lambda/rgb_to_grayscale/Tensordot/concatConcatV2/lambda/rgb_to_grayscale/Tensordot/free:output:0/lambda/rgb_to_grayscale/Tensordot/axes:output:06lambda/rgb_to_grayscale/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2*
(lambda/rgb_to_grayscale/Tensordot/concat?
'lambda/rgb_to_grayscale/Tensordot/stackPack/lambda/rgb_to_grayscale/Tensordot/Prod:output:01lambda/rgb_to_grayscale/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2)
'lambda/rgb_to_grayscale/Tensordot/stack?
+lambda/rgb_to_grayscale/Tensordot/transpose	Transpose)lambda/rgb_to_grayscale/Identity:output:01lambda/rgb_to_grayscale/Tensordot/concat:output:0*
T0*1
_output_shapes
:???????????2-
+lambda/rgb_to_grayscale/Tensordot/transpose?
)lambda/rgb_to_grayscale/Tensordot/ReshapeReshape/lambda/rgb_to_grayscale/Tensordot/transpose:y:00lambda/rgb_to_grayscale/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2+
)lambda/rgb_to_grayscale/Tensordot/Reshape?
1lambda/rgb_to_grayscale/Tensordot/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      23
1lambda/rgb_to_grayscale/Tensordot/Reshape_1/shape?
+lambda/rgb_to_grayscale/Tensordot/Reshape_1Reshape,lambda/rgb_to_grayscale/Tensordot/b:output:0:lambda/rgb_to_grayscale/Tensordot/Reshape_1/shape:output:0*
T0*
_output_shapes

:2-
+lambda/rgb_to_grayscale/Tensordot/Reshape_1?
(lambda/rgb_to_grayscale/Tensordot/MatMulMatMul2lambda/rgb_to_grayscale/Tensordot/Reshape:output:04lambda/rgb_to_grayscale/Tensordot/Reshape_1:output:0*
T0*'
_output_shapes
:?????????2*
(lambda/rgb_to_grayscale/Tensordot/MatMul?
)lambda/rgb_to_grayscale/Tensordot/Const_2Const*
_output_shapes
: *
dtype0*
valueB 2+
)lambda/rgb_to_grayscale/Tensordot/Const_2?
/lambda/rgb_to_grayscale/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 21
/lambda/rgb_to_grayscale/Tensordot/concat_1/axis?
*lambda/rgb_to_grayscale/Tensordot/concat_1ConcatV23lambda/rgb_to_grayscale/Tensordot/GatherV2:output:02lambda/rgb_to_grayscale/Tensordot/Const_2:output:08lambda/rgb_to_grayscale/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2,
*lambda/rgb_to_grayscale/Tensordot/concat_1?
!lambda/rgb_to_grayscale/TensordotReshape2lambda/rgb_to_grayscale/Tensordot/MatMul:product:03lambda/rgb_to_grayscale/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:???????????2#
!lambda/rgb_to_grayscale/Tensordot?
&lambda/rgb_to_grayscale/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2(
&lambda/rgb_to_grayscale/ExpandDims/dim?
"lambda/rgb_to_grayscale/ExpandDims
ExpandDims*lambda/rgb_to_grayscale/Tensordot:output:0/lambda/rgb_to_grayscale/ExpandDims/dim:output:0*
T0*1
_output_shapes
:???????????2$
"lambda/rgb_to_grayscale/ExpandDims?
lambda/rgb_to_grayscaleIdentity+lambda/rgb_to_grayscale/ExpandDims:output:0*
T0*1
_output_shapes
:???????????2
lambda/rgb_to_grayscalei
rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *???;2
rescaling/Cast/xm
rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rescaling/Cast_1/x?
rescaling/mulMul lambda/rgb_to_grayscale:output:0rescaling/Cast/x:output:0*
T0*1
_output_shapes
:???????????2
rescaling/mul?
rescaling/addAddV2rescaling/mul:z:0rescaling/Cast_1/x:output:0*
T0*1
_output_shapes
:???????????2
rescaling/addo
IdentityIdentityrescaling/add:z:0*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????:_ [
1
_output_shapes
:???????????
&
_user_specified_namelambda_input
?
a
E__inference_rescaling_layer_call_and_return_conditional_losses_118940

inputs
identityU
Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *???;2
Cast/xY
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2

Cast_1/xf
mulMulinputsCast/x:output:0*
T0*1
_output_shapes
:???????????2
mulk
addAddV2mul:z:0Cast_1/x:output:0*
T0*1
_output_shapes
:???????????2
adde
IdentityIdentityadd:z:0*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
g
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_120451

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:?????????7b *
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:?????????7b 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????o? :X T
0
_output_shapes
:?????????o? 
 
_user_specified_nameinputs
?
i
M__inference_data_augmentation_layer_call_and_return_conditional_losses_120189

inputs
identityd
IdentityIdentityinputs*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
0__inference_bike_classifier_layer_call_fn_119781

inputs
unknown:	#
	unknown_0: 
	unknown_1: #
	unknown_2:  
	unknown_3: #
	unknown_4:  
	unknown_5: 
	unknown_6:???
	unknown_7:	?
	unknown_8:	?
	unknown_9:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_bike_classifier_layer_call_and_return_conditional_losses_1195722
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:???????????: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
A__inference_dense_layer_call_and_return_conditional_losses_119321

inputs3
matmul_readvariableop_resource:???.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*!
_output_shapes
:???*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddb
SigmoidSigmoidBiasAdd:output:0*
T0*(
_output_shapes
:??????????2	
Sigmoidg
IdentityIdentitySigmoid:y:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?f
?
G__inference_random_flip_layer_call_and_return_conditional_losses_120702

inputs?
1stateful_uniform_full_int_rngreadandskip_resource:	
identity??(stateful_uniform_full_int/RngReadAndSkip?Ostateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlg?Vstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter?
stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:2!
stateful_uniform_full_int/shape?
stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
stateful_uniform_full_int/Const?
stateful_uniform_full_int/ProdProd(stateful_uniform_full_int/shape:output:0(stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: 2 
stateful_uniform_full_int/Prod?
 stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :2"
 stateful_uniform_full_int/Cast/x?
 stateful_uniform_full_int/Cast_1Cast'stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 2"
 stateful_uniform_full_int/Cast_1?
(stateful_uniform_full_int/RngReadAndSkipRngReadAndSkip1stateful_uniform_full_int_rngreadandskip_resource)stateful_uniform_full_int/Cast/x:output:0$stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:2*
(stateful_uniform_full_int/RngReadAndSkip?
-stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-stateful_uniform_full_int/strided_slice/stack?
/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/stateful_uniform_full_int/strided_slice/stack_1?
/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/stateful_uniform_full_int/strided_slice/stack_2?
'stateful_uniform_full_int/strided_sliceStridedSlice0stateful_uniform_full_int/RngReadAndSkip:value:06stateful_uniform_full_int/strided_slice/stack:output:08stateful_uniform_full_int/strided_slice/stack_1:output:08stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask2)
'stateful_uniform_full_int/strided_slice?
!stateful_uniform_full_int/BitcastBitcast0stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type02#
!stateful_uniform_full_int/Bitcast?
/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/stateful_uniform_full_int/strided_slice_1/stack?
1stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1stateful_uniform_full_int/strided_slice_1/stack_1?
1stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1stateful_uniform_full_int/strided_slice_1/stack_2?
)stateful_uniform_full_int/strided_slice_1StridedSlice0stateful_uniform_full_int/RngReadAndSkip:value:08stateful_uniform_full_int/strided_slice_1/stack:output:0:stateful_uniform_full_int/strided_slice_1/stack_1:output:0:stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:2+
)stateful_uniform_full_int/strided_slice_1?
#stateful_uniform_full_int/Bitcast_1Bitcast2stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type02%
#stateful_uniform_full_int/Bitcast_1?
stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :2
stateful_uniform_full_int/alg?
stateful_uniform_full_intStatelessRandomUniformFullIntV2(stateful_uniform_full_int/shape:output:0,stateful_uniform_full_int/Bitcast_1:output:0*stateful_uniform_full_int/Bitcast:output:0&stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	2
stateful_uniform_full_intb

zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R 2

zeros_like?
stackPack"stateful_uniform_full_int:output:0zeros_like:output:0*
N*
T0	*
_output_shapes

:2
stack{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2?
strided_sliceStridedSlicestack:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice?
3stateless_random_flip_left_right/control_dependencyIdentityinputs*
T0*
_class
loc:@inputs*1
_output_shapes
:???????????25
3stateless_random_flip_left_right/control_dependency?
&stateless_random_flip_left_right/ShapeShape<stateless_random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
:2(
&stateless_random_flip_left_right/Shape?
4stateless_random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4stateless_random_flip_left_right/strided_slice/stack?
6stateless_random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6stateless_random_flip_left_right/strided_slice/stack_1?
6stateless_random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6stateless_random_flip_left_right/strided_slice/stack_2?
.stateless_random_flip_left_right/strided_sliceStridedSlice/stateless_random_flip_left_right/Shape:output:0=stateless_random_flip_left_right/strided_slice/stack:output:0?stateless_random_flip_left_right/strided_slice/stack_1:output:0?stateless_random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask20
.stateless_random_flip_left_right/strided_slice?
?stateless_random_flip_left_right/stateless_random_uniform/shapePack7stateless_random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:2A
?stateless_random_flip_left_right/stateless_random_uniform/shape?
=stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    2?
=stateless_random_flip_left_right/stateless_random_uniform/min?
=stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2?
=stateless_random_flip_left_right/stateless_random_uniform/max?
Vstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterstrided_slice:output:0* 
_output_shapes
::2X
Vstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter?
Ostateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlgStatelessRandomGetAlgW^stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter*
_output_shapes
: 2Q
Ostateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlg?
Rstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Hstateless_random_flip_left_right/stateless_random_uniform/shape:output:0\stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0`stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Ustateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlg:alg:0*#
_output_shapes
:?????????2T
Rstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2?
=stateless_random_flip_left_right/stateless_random_uniform/subSubFstateless_random_flip_left_right/stateless_random_uniform/max:output:0Fstateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: 2?
=stateless_random_flip_left_right/stateless_random_uniform/sub?
=stateless_random_flip_left_right/stateless_random_uniform/mulMul[stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Astateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:?????????2?
=stateless_random_flip_left_right/stateless_random_uniform/mul?
9stateless_random_flip_left_right/stateless_random_uniformAddV2Astateless_random_flip_left_right/stateless_random_uniform/mul:z:0Fstateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:?????????2;
9stateless_random_flip_left_right/stateless_random_uniform?
0stateless_random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :22
0stateless_random_flip_left_right/Reshape/shape/1?
0stateless_random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :22
0stateless_random_flip_left_right/Reshape/shape/2?
0stateless_random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :22
0stateless_random_flip_left_right/Reshape/shape/3?
.stateless_random_flip_left_right/Reshape/shapePack7stateless_random_flip_left_right/strided_slice:output:09stateless_random_flip_left_right/Reshape/shape/1:output:09stateless_random_flip_left_right/Reshape/shape/2:output:09stateless_random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:20
.stateless_random_flip_left_right/Reshape/shape?
(stateless_random_flip_left_right/ReshapeReshape=stateless_random_flip_left_right/stateless_random_uniform:z:07stateless_random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????2*
(stateless_random_flip_left_right/Reshape?
&stateless_random_flip_left_right/RoundRound1stateless_random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:?????????2(
&stateless_random_flip_left_right/Round?
/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:21
/stateless_random_flip_left_right/ReverseV2/axis?
*stateless_random_flip_left_right/ReverseV2	ReverseV2<stateless_random_flip_left_right/control_dependency:output:08stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*1
_output_shapes
:???????????2,
*stateless_random_flip_left_right/ReverseV2?
$stateless_random_flip_left_right/mulMul*stateless_random_flip_left_right/Round:y:03stateless_random_flip_left_right/ReverseV2:output:0*
T0*1
_output_shapes
:???????????2&
$stateless_random_flip_left_right/mul?
&stateless_random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2(
&stateless_random_flip_left_right/sub/x?
$stateless_random_flip_left_right/subSub/stateless_random_flip_left_right/sub/x:output:0*stateless_random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:?????????2&
$stateless_random_flip_left_right/sub?
&stateless_random_flip_left_right/mul_1Mul(stateless_random_flip_left_right/sub:z:0<stateless_random_flip_left_right/control_dependency:output:0*
T0*1
_output_shapes
:???????????2(
&stateless_random_flip_left_right/mul_1?
$stateless_random_flip_left_right/addAddV2(stateless_random_flip_left_right/mul:z:0*stateless_random_flip_left_right/mul_1:z:0*
T0*1
_output_shapes
:???????????2&
$stateless_random_flip_left_right/add?
IdentityIdentity(stateless_random_flip_left_right/add:z:0^NoOp*
T0*1
_output_shapes
:???????????2

Identity?
NoOpNoOp)^stateful_uniform_full_int/RngReadAndSkipP^stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlgW^stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:???????????: 2T
(stateful_uniform_full_int/RngReadAndSkip(stateful_uniform_full_int/RngReadAndSkip2?
Ostateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlgOstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlg2?
Vstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterVstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
2__inference_data_augmentation_layer_call_fn_120166

inputs
unknown:	
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_data_augmentation_layer_call_and_return_conditional_losses_1191302
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:???????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:???????????: 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
g
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_120446

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
e
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_120406

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?w
?
M__inference_data_augmentation_layer_call_and_return_conditional_losses_120247

inputsK
=random_flip_stateful_uniform_full_int_rngreadandskip_resource:	
identity??4random_flip/stateful_uniform_full_int/RngReadAndSkip?[random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlg?brandom_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter?
+random_flip/stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:2-
+random_flip/stateful_uniform_full_int/shape?
+random_flip/stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2-
+random_flip/stateful_uniform_full_int/Const?
*random_flip/stateful_uniform_full_int/ProdProd4random_flip/stateful_uniform_full_int/shape:output:04random_flip/stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: 2,
*random_flip/stateful_uniform_full_int/Prod?
,random_flip/stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :2.
,random_flip/stateful_uniform_full_int/Cast/x?
,random_flip/stateful_uniform_full_int/Cast_1Cast3random_flip/stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 2.
,random_flip/stateful_uniform_full_int/Cast_1?
4random_flip/stateful_uniform_full_int/RngReadAndSkipRngReadAndSkip=random_flip_stateful_uniform_full_int_rngreadandskip_resource5random_flip/stateful_uniform_full_int/Cast/x:output:00random_flip/stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:26
4random_flip/stateful_uniform_full_int/RngReadAndSkip?
9random_flip/stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2;
9random_flip/stateful_uniform_full_int/strided_slice/stack?
;random_flip/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2=
;random_flip/stateful_uniform_full_int/strided_slice/stack_1?
;random_flip/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2=
;random_flip/stateful_uniform_full_int/strided_slice/stack_2?
3random_flip/stateful_uniform_full_int/strided_sliceStridedSlice<random_flip/stateful_uniform_full_int/RngReadAndSkip:value:0Brandom_flip/stateful_uniform_full_int/strided_slice/stack:output:0Drandom_flip/stateful_uniform_full_int/strided_slice/stack_1:output:0Drandom_flip/stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask25
3random_flip/stateful_uniform_full_int/strided_slice?
-random_flip/stateful_uniform_full_int/BitcastBitcast<random_flip/stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type02/
-random_flip/stateful_uniform_full_int/Bitcast?
;random_flip/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2=
;random_flip/stateful_uniform_full_int/strided_slice_1/stack?
=random_flip/stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2?
=random_flip/stateful_uniform_full_int/strided_slice_1/stack_1?
=random_flip/stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2?
=random_flip/stateful_uniform_full_int/strided_slice_1/stack_2?
5random_flip/stateful_uniform_full_int/strided_slice_1StridedSlice<random_flip/stateful_uniform_full_int/RngReadAndSkip:value:0Drandom_flip/stateful_uniform_full_int/strided_slice_1/stack:output:0Frandom_flip/stateful_uniform_full_int/strided_slice_1/stack_1:output:0Frandom_flip/stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:27
5random_flip/stateful_uniform_full_int/strided_slice_1?
/random_flip/stateful_uniform_full_int/Bitcast_1Bitcast>random_flip/stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type021
/random_flip/stateful_uniform_full_int/Bitcast_1?
)random_flip/stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :2+
)random_flip/stateful_uniform_full_int/alg?
%random_flip/stateful_uniform_full_intStatelessRandomUniformFullIntV24random_flip/stateful_uniform_full_int/shape:output:08random_flip/stateful_uniform_full_int/Bitcast_1:output:06random_flip/stateful_uniform_full_int/Bitcast:output:02random_flip/stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	2'
%random_flip/stateful_uniform_full_intz
random_flip/zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R 2
random_flip/zeros_like?
random_flip/stackPack.random_flip/stateful_uniform_full_int:output:0random_flip/zeros_like:output:0*
N*
T0	*
_output_shapes

:2
random_flip/stack?
random_flip/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
random_flip/strided_slice/stack?
!random_flip/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2#
!random_flip/strided_slice/stack_1?
!random_flip/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!random_flip/strided_slice/stack_2?
random_flip/strided_sliceStridedSlicerandom_flip/stack:output:0(random_flip/strided_slice/stack:output:0*random_flip/strided_slice/stack_1:output:0*random_flip/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask2
random_flip/strided_slice?
?random_flip/stateless_random_flip_left_right/control_dependencyIdentityinputs*
T0*
_class
loc:@inputs*1
_output_shapes
:???????????2A
?random_flip/stateless_random_flip_left_right/control_dependency?
2random_flip/stateless_random_flip_left_right/ShapeShapeHrandom_flip/stateless_random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
:24
2random_flip/stateless_random_flip_left_right/Shape?
@random_flip/stateless_random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2B
@random_flip/stateless_random_flip_left_right/strided_slice/stack?
Brandom_flip/stateless_random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2D
Brandom_flip/stateless_random_flip_left_right/strided_slice/stack_1?
Brandom_flip/stateless_random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2D
Brandom_flip/stateless_random_flip_left_right/strided_slice/stack_2?
:random_flip/stateless_random_flip_left_right/strided_sliceStridedSlice;random_flip/stateless_random_flip_left_right/Shape:output:0Irandom_flip/stateless_random_flip_left_right/strided_slice/stack:output:0Krandom_flip/stateless_random_flip_left_right/strided_slice/stack_1:output:0Krandom_flip/stateless_random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2<
:random_flip/stateless_random_flip_left_right/strided_slice?
Krandom_flip/stateless_random_flip_left_right/stateless_random_uniform/shapePackCrandom_flip/stateless_random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:2M
Krandom_flip/stateless_random_flip_left_right/stateless_random_uniform/shape?
Irandom_flip/stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    2K
Irandom_flip/stateless_random_flip_left_right/stateless_random_uniform/min?
Irandom_flip/stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2K
Irandom_flip/stateless_random_flip_left_right/stateless_random_uniform/max?
brandom_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter"random_flip/strided_slice:output:0* 
_output_shapes
::2d
brandom_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter?
[random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlgStatelessRandomGetAlgc^random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter*
_output_shapes
: 2]
[random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlg?
^random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Trandom_flip/stateless_random_flip_left_right/stateless_random_uniform/shape:output:0hrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0lrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0arandom_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlg:alg:0*#
_output_shapes
:?????????2`
^random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2?
Irandom_flip/stateless_random_flip_left_right/stateless_random_uniform/subSubRrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/max:output:0Rrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: 2K
Irandom_flip/stateless_random_flip_left_right/stateless_random_uniform/sub?
Irandom_flip/stateless_random_flip_left_right/stateless_random_uniform/mulMulgrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Mrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:?????????2K
Irandom_flip/stateless_random_flip_left_right/stateless_random_uniform/mul?
Erandom_flip/stateless_random_flip_left_right/stateless_random_uniformAddV2Mrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/mul:z:0Rrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:?????????2G
Erandom_flip/stateless_random_flip_left_right/stateless_random_uniform?
<random_flip/stateless_random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2>
<random_flip/stateless_random_flip_left_right/Reshape/shape/1?
<random_flip/stateless_random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2>
<random_flip/stateless_random_flip_left_right/Reshape/shape/2?
<random_flip/stateless_random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2>
<random_flip/stateless_random_flip_left_right/Reshape/shape/3?
:random_flip/stateless_random_flip_left_right/Reshape/shapePackCrandom_flip/stateless_random_flip_left_right/strided_slice:output:0Erandom_flip/stateless_random_flip_left_right/Reshape/shape/1:output:0Erandom_flip/stateless_random_flip_left_right/Reshape/shape/2:output:0Erandom_flip/stateless_random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2<
:random_flip/stateless_random_flip_left_right/Reshape/shape?
4random_flip/stateless_random_flip_left_right/ReshapeReshapeIrandom_flip/stateless_random_flip_left_right/stateless_random_uniform:z:0Crandom_flip/stateless_random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????26
4random_flip/stateless_random_flip_left_right/Reshape?
2random_flip/stateless_random_flip_left_right/RoundRound=random_flip/stateless_random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:?????????24
2random_flip/stateless_random_flip_left_right/Round?
;random_flip/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:2=
;random_flip/stateless_random_flip_left_right/ReverseV2/axis?
6random_flip/stateless_random_flip_left_right/ReverseV2	ReverseV2Hrandom_flip/stateless_random_flip_left_right/control_dependency:output:0Drandom_flip/stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*1
_output_shapes
:???????????28
6random_flip/stateless_random_flip_left_right/ReverseV2?
0random_flip/stateless_random_flip_left_right/mulMul6random_flip/stateless_random_flip_left_right/Round:y:0?random_flip/stateless_random_flip_left_right/ReverseV2:output:0*
T0*1
_output_shapes
:???????????22
0random_flip/stateless_random_flip_left_right/mul?
2random_flip/stateless_random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??24
2random_flip/stateless_random_flip_left_right/sub/x?
0random_flip/stateless_random_flip_left_right/subSub;random_flip/stateless_random_flip_left_right/sub/x:output:06random_flip/stateless_random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:?????????22
0random_flip/stateless_random_flip_left_right/sub?
2random_flip/stateless_random_flip_left_right/mul_1Mul4random_flip/stateless_random_flip_left_right/sub:z:0Hrandom_flip/stateless_random_flip_left_right/control_dependency:output:0*
T0*1
_output_shapes
:???????????24
2random_flip/stateless_random_flip_left_right/mul_1?
0random_flip/stateless_random_flip_left_right/addAddV24random_flip/stateless_random_flip_left_right/mul:z:06random_flip/stateless_random_flip_left_right/mul_1:z:0*
T0*1
_output_shapes
:???????????22
0random_flip/stateless_random_flip_left_right/add?
IdentityIdentity4random_flip/stateless_random_flip_left_right/add:z:0^NoOp*
T0*1
_output_shapes
:???????????2

Identity?
NoOpNoOp5^random_flip/stateful_uniform_full_int/RngReadAndSkip\^random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlgc^random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:???????????: 2l
4random_flip/stateful_uniform_full_int/RngReadAndSkip4random_flip/stateful_uniform_full_int/RngReadAndSkip2?
[random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlg[random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlg2?
brandom_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterbrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
0__inference_bike_classifier_layer_call_fn_119754

inputs!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: #
	unknown_3:  
	unknown_4: 
	unknown_5:???
	unknown_6:	?
	unknown_7:	?
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_bike_classifier_layer_call_and_return_conditional_losses_1193442
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:???????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
L
0__inference_max_pooling2d_1_layer_call_fn_120436

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_1191852
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?-
^
B__inference_lambda_layer_call_and_return_conditional_losses_118930

inputs
identity?
rgb_to_grayscale/IdentityIdentityinputs*
T0*1
_output_shapes
:???????????2
rgb_to_grayscale/Identity?
rgb_to_grayscale/Tensordot/bConst*
_output_shapes
:*
dtype0*!
valueB"l	?>?E??x?=2
rgb_to_grayscale/Tensordot/b?
rgb_to_grayscale/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2!
rgb_to_grayscale/Tensordot/axes?
rgb_to_grayscale/Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          2!
rgb_to_grayscale/Tensordot/free?
 rgb_to_grayscale/Tensordot/ShapeShape"rgb_to_grayscale/Identity:output:0*
T0*
_output_shapes
:2"
 rgb_to_grayscale/Tensordot/Shape?
(rgb_to_grayscale/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2*
(rgb_to_grayscale/Tensordot/GatherV2/axis?
#rgb_to_grayscale/Tensordot/GatherV2GatherV2)rgb_to_grayscale/Tensordot/Shape:output:0(rgb_to_grayscale/Tensordot/free:output:01rgb_to_grayscale/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2%
#rgb_to_grayscale/Tensordot/GatherV2?
*rgb_to_grayscale/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2,
*rgb_to_grayscale/Tensordot/GatherV2_1/axis?
%rgb_to_grayscale/Tensordot/GatherV2_1GatherV2)rgb_to_grayscale/Tensordot/Shape:output:0(rgb_to_grayscale/Tensordot/axes:output:03rgb_to_grayscale/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2'
%rgb_to_grayscale/Tensordot/GatherV2_1?
 rgb_to_grayscale/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2"
 rgb_to_grayscale/Tensordot/Const?
rgb_to_grayscale/Tensordot/ProdProd,rgb_to_grayscale/Tensordot/GatherV2:output:0)rgb_to_grayscale/Tensordot/Const:output:0*
T0*
_output_shapes
: 2!
rgb_to_grayscale/Tensordot/Prod?
"rgb_to_grayscale/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2$
"rgb_to_grayscale/Tensordot/Const_1?
!rgb_to_grayscale/Tensordot/Prod_1Prod.rgb_to_grayscale/Tensordot/GatherV2_1:output:0+rgb_to_grayscale/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2#
!rgb_to_grayscale/Tensordot/Prod_1?
&rgb_to_grayscale/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2(
&rgb_to_grayscale/Tensordot/concat/axis?
!rgb_to_grayscale/Tensordot/concatConcatV2(rgb_to_grayscale/Tensordot/free:output:0(rgb_to_grayscale/Tensordot/axes:output:0/rgb_to_grayscale/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2#
!rgb_to_grayscale/Tensordot/concat?
 rgb_to_grayscale/Tensordot/stackPack(rgb_to_grayscale/Tensordot/Prod:output:0*rgb_to_grayscale/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2"
 rgb_to_grayscale/Tensordot/stack?
$rgb_to_grayscale/Tensordot/transpose	Transpose"rgb_to_grayscale/Identity:output:0*rgb_to_grayscale/Tensordot/concat:output:0*
T0*1
_output_shapes
:???????????2&
$rgb_to_grayscale/Tensordot/transpose?
"rgb_to_grayscale/Tensordot/ReshapeReshape(rgb_to_grayscale/Tensordot/transpose:y:0)rgb_to_grayscale/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2$
"rgb_to_grayscale/Tensordot/Reshape?
*rgb_to_grayscale/Tensordot/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2,
*rgb_to_grayscale/Tensordot/Reshape_1/shape?
$rgb_to_grayscale/Tensordot/Reshape_1Reshape%rgb_to_grayscale/Tensordot/b:output:03rgb_to_grayscale/Tensordot/Reshape_1/shape:output:0*
T0*
_output_shapes

:2&
$rgb_to_grayscale/Tensordot/Reshape_1?
!rgb_to_grayscale/Tensordot/MatMulMatMul+rgb_to_grayscale/Tensordot/Reshape:output:0-rgb_to_grayscale/Tensordot/Reshape_1:output:0*
T0*'
_output_shapes
:?????????2#
!rgb_to_grayscale/Tensordot/MatMul?
"rgb_to_grayscale/Tensordot/Const_2Const*
_output_shapes
: *
dtype0*
valueB 2$
"rgb_to_grayscale/Tensordot/Const_2?
(rgb_to_grayscale/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2*
(rgb_to_grayscale/Tensordot/concat_1/axis?
#rgb_to_grayscale/Tensordot/concat_1ConcatV2,rgb_to_grayscale/Tensordot/GatherV2:output:0+rgb_to_grayscale/Tensordot/Const_2:output:01rgb_to_grayscale/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2%
#rgb_to_grayscale/Tensordot/concat_1?
rgb_to_grayscale/TensordotReshape+rgb_to_grayscale/Tensordot/MatMul:product:0,rgb_to_grayscale/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:???????????2
rgb_to_grayscale/Tensordot?
rgb_to_grayscale/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2!
rgb_to_grayscale/ExpandDims/dim?
rgb_to_grayscale/ExpandDims
ExpandDims#rgb_to_grayscale/Tensordot:output:0(rgb_to_grayscale/ExpandDims/dim:output:0*
T0*1
_output_shapes
:???????????2
rgb_to_grayscale/ExpandDims?
rgb_to_grayscaleIdentity$rgb_to_grayscale/ExpandDims:output:0*
T0*1
_output_shapes
:???????????2
rgb_to_grayscalew
IdentityIdentityrgb_to_grayscale:output:0*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
i
M__inference_data_augmentation_layer_call_and_return_conditional_losses_119231

inputs
identityd
IdentityIdentityinputs*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
S
1__inference_data_preparation_layer_call_fn_119990
lambda_input
identity?
PartitionedCallPartitionedCalllambda_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_data_preparation_layer_call_and_return_conditional_losses_1189432
PartitionedCallv
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????:_ [
1
_output_shapes
:???????????
&
_user_specified_namelambda_input
?
g
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_119207

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
Y
2__inference_data_augmentation_layer_call_fn_120154
random_flip_input
identity?
PartitionedCallPartitionedCallrandom_flip_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_data_augmentation_layer_call_and_return_conditional_losses_1190422
PartitionedCallv
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????:d `
1
_output_shapes
:???????????
+
_user_specified_namerandom_flip_input
?
_
C__inference_flatten_layer_call_and_return_conditional_losses_119308

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"???? ?  2
Consti
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:???????????2	
Reshapef
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????0 :W S
/
_output_shapes
:?????????0 
 
_user_specified_nameinputs
?
?
M__inference_data_augmentation_layer_call_and_return_conditional_losses_119130

inputs 
random_flip_119126:	
identity??#random_flip/StatefulPartitionedCall?
#random_flip/StatefulPartitionedCallStatefulPartitionedCallinputsrandom_flip_119126*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_random_flip_layer_call_and_return_conditional_losses_1191112%
#random_flip/StatefulPartitionedCall?
IdentityIdentity,random_flip/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:???????????2

Identityt
NoOpNoOp$^random_flip/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:???????????: 2J
#random_flip/StatefulPartitionedCall#random_flip/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?0
?
K__inference_bike_classifier_layer_call_and_return_conditional_losses_119659
data_preparation_input'
conv2d_119629: 
conv2d_119631: )
conv2d_1_119635:  
conv2d_1_119637: )
conv2d_2_119641:  
conv2d_2_119643: !
dense_119648:???
dense_119650:	?!
dense_1_119653:	?
dense_1_119655:
identity??conv2d/StatefulPartitionedCall? conv2d_1/StatefulPartitionedCall? conv2d_2/StatefulPartitionedCall?dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?
 data_preparation/PartitionedCallPartitionedCalldata_preparation_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_data_preparation_layer_call_and_return_conditional_losses_1189432"
 data_preparation/PartitionedCall?
!data_augmentation/PartitionedCallPartitionedCall)data_preparation/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_data_augmentation_layer_call_and_return_conditional_losses_1192312#
!data_augmentation/PartitionedCall?
conv2d/StatefulPartitionedCallStatefulPartitionedCall*data_augmentation/PartitionedCall:output:0conv2d_119629conv2d_119631*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_conv2d_layer_call_and_return_conditional_losses_1192442 
conv2d/StatefulPartitionedCall?
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????q? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_1192542
max_pooling2d/PartitionedCall?
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_119635conv2d_1_119637*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????o? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_1_layer_call_and_return_conditional_losses_1192672"
 conv2d_1/StatefulPartitionedCall?
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????7b * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_1192772!
max_pooling2d_1/PartitionedCall?
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv2d_2_119641conv2d_2_119643*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????5` *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_2_layer_call_and_return_conditional_losses_1192902"
 conv2d_2/StatefulPartitionedCall?
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_1193002!
max_pooling2d_2/PartitionedCall?
flatten/PartitionedCallPartitionedCall(max_pooling2d_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_1193082
flatten/PartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_119648dense_119650*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_1193212
dense/StatefulPartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_119653dense_1_119655*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_1193372!
dense_1/StatefulPartitionedCall?
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:???????????: : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:i e
1
_output_shapes
:???????????
0
_user_specified_namedata_preparation_input
?0
?
K__inference_bike_classifier_layer_call_and_return_conditional_losses_119344

inputs'
conv2d_119245: 
conv2d_119247: )
conv2d_1_119268:  
conv2d_1_119270: )
conv2d_2_119291:  
conv2d_2_119293: !
dense_119322:???
dense_119324:	?!
dense_1_119338:	?
dense_1_119340:
identity??conv2d/StatefulPartitionedCall? conv2d_1/StatefulPartitionedCall? conv2d_2/StatefulPartitionedCall?dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?
 data_preparation/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_data_preparation_layer_call_and_return_conditional_losses_1189432"
 data_preparation/PartitionedCall?
!data_augmentation/PartitionedCallPartitionedCall)data_preparation/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_data_augmentation_layer_call_and_return_conditional_losses_1192312#
!data_augmentation/PartitionedCall?
conv2d/StatefulPartitionedCallStatefulPartitionedCall*data_augmentation/PartitionedCall:output:0conv2d_119245conv2d_119247*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_conv2d_layer_call_and_return_conditional_losses_1192442 
conv2d/StatefulPartitionedCall?
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????q? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_1192542
max_pooling2d/PartitionedCall?
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_119268conv2d_1_119270*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????o? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_1_layer_call_and_return_conditional_losses_1192672"
 conv2d_1/StatefulPartitionedCall?
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????7b * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_1192772!
max_pooling2d_1/PartitionedCall?
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv2d_2_119291conv2d_2_119293*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????5` *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_2_layer_call_and_return_conditional_losses_1192902"
 conv2d_2/StatefulPartitionedCall?
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_1193002!
max_pooling2d_2/PartitionedCall?
flatten/PartitionedCallPartitionedCall(max_pooling2d_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_1193082
flatten/PartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_119322dense_119324*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_1193212
dense/StatefulPartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_119338dense_1_119340*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_1193372!
dense_1/StatefulPartitionedCall?
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:???????????: : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?

?
C__inference_dense_1_layer_call_and_return_conditional_losses_119337

inputs1
matmul_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
C__inference_dense_1_layer_call_and_return_conditional_losses_120541

inputs1
matmul_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
t
M__inference_data_augmentation_layer_call_and_return_conditional_losses_120251
random_flip_input
identityo
IdentityIdentityrandom_flip_input*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????:d `
1
_output_shapes
:???????????
+
_user_specified_namerandom_flip_input
?
N
2__inference_data_augmentation_layer_call_fn_120159

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_data_augmentation_layer_call_and_return_conditional_losses_1190422
PartitionedCallv
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
??
?
"__inference__traced_restore_120980
file_prefix8
assignvariableop_conv2d_kernel: ,
assignvariableop_1_conv2d_bias: <
"assignvariableop_2_conv2d_1_kernel:  .
 assignvariableop_3_conv2d_1_bias: <
"assignvariableop_4_conv2d_2_kernel:  .
 assignvariableop_5_conv2d_2_bias: 4
assignvariableop_6_dense_kernel:???,
assignvariableop_7_dense_bias:	?4
!assignvariableop_8_dense_1_kernel:	?-
assignvariableop_9_dense_1_bias:'
assignvariableop_10_adam_iter:	 )
assignvariableop_11_adam_beta_1: )
assignvariableop_12_adam_beta_2: (
assignvariableop_13_adam_decay: 0
&assignvariableop_14_adam_learning_rate: *
assignvariableop_15_variable:	#
assignvariableop_16_total: #
assignvariableop_17_count: %
assignvariableop_18_total_1: %
assignvariableop_19_count_1: B
(assignvariableop_20_adam_conv2d_kernel_m: 4
&assignvariableop_21_adam_conv2d_bias_m: D
*assignvariableop_22_adam_conv2d_1_kernel_m:  6
(assignvariableop_23_adam_conv2d_1_bias_m: D
*assignvariableop_24_adam_conv2d_2_kernel_m:  6
(assignvariableop_25_adam_conv2d_2_bias_m: <
'assignvariableop_26_adam_dense_kernel_m:???4
%assignvariableop_27_adam_dense_bias_m:	?<
)assignvariableop_28_adam_dense_1_kernel_m:	?5
'assignvariableop_29_adam_dense_1_bias_m:B
(assignvariableop_30_adam_conv2d_kernel_v: 4
&assignvariableop_31_adam_conv2d_bias_v: D
*assignvariableop_32_adam_conv2d_1_kernel_v:  6
(assignvariableop_33_adam_conv2d_1_bias_v: D
*assignvariableop_34_adam_conv2d_2_kernel_v:  6
(assignvariableop_35_adam_conv2d_2_bias_v: <
'assignvariableop_36_adam_dense_kernel_v:???4
%assignvariableop_37_adam_dense_bias_v:	?<
)assignvariableop_38_adam_dense_1_kernel_v:	?5
'assignvariableop_39_adam_dense_1_bias_v:
identity_41??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*?
value?B?)B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB:layer-1/layer-0/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*e
value\BZ)B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?:::::::::::::::::::::::::::::::::::::::::*7
dtypes-
+2)		2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOpassignvariableop_conv2d_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOpassignvariableop_1_conv2d_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv2d_1_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv2d_1_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp"assignvariableop_4_conv2d_2_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp assignvariableop_5_conv2d_2_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOpassignvariableop_6_dense_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOpassignvariableop_7_dense_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp!assignvariableop_8_dense_1_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOpassignvariableop_9_dense_1_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_iterIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_beta_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_beta_2Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOpassignvariableop_13_adam_decayIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp&assignvariableop_14_adam_learning_rateIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOpassignvariableop_15_variableIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOpassignvariableop_16_totalIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOpassignvariableop_17_countIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOpassignvariableop_18_total_1Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOpassignvariableop_19_count_1Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp(assignvariableop_20_adam_conv2d_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp&assignvariableop_21_adam_conv2d_bias_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp*assignvariableop_22_adam_conv2d_1_kernel_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp(assignvariableop_23_adam_conv2d_1_bias_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp*assignvariableop_24_adam_conv2d_2_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp(assignvariableop_25_adam_conv2d_2_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp'assignvariableop_26_adam_dense_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp%assignvariableop_27_adam_dense_bias_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp)assignvariableop_28_adam_dense_1_kernel_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp'assignvariableop_29_adam_dense_1_bias_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_conv2d_kernel_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp&assignvariableop_31_adam_conv2d_bias_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp*assignvariableop_32_adam_conv2d_1_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp(assignvariableop_33_adam_conv2d_1_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp*assignvariableop_34_adam_conv2d_2_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp(assignvariableop_35_adam_conv2d_2_bias_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp'assignvariableop_36_adam_dense_kernel_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp%assignvariableop_37_adam_dense_bias_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOp)assignvariableop_38_adam_dense_1_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOp'assignvariableop_39_adam_dense_1_bias_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_399
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_40Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_40f
Identity_41IdentityIdentity_40:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_41?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_41Identity_41:output:0*e
_input_shapesT
R: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
S
1__inference_data_preparation_layer_call_fn_120005
lambda_input
identity?
PartitionedCallPartitionedCalllambda_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_data_preparation_layer_call_and_return_conditional_losses_1190082
PartitionedCallv
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????:_ [
1
_output_shapes
:???????????
&
_user_specified_namelambda_input
?w
?
M__inference_data_augmentation_layer_call_and_return_conditional_losses_120371

inputsK
=random_flip_stateful_uniform_full_int_rngreadandskip_resource:	
identity??4random_flip/stateful_uniform_full_int/RngReadAndSkip?[random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlg?brandom_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter?
+random_flip/stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:2-
+random_flip/stateful_uniform_full_int/shape?
+random_flip/stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2-
+random_flip/stateful_uniform_full_int/Const?
*random_flip/stateful_uniform_full_int/ProdProd4random_flip/stateful_uniform_full_int/shape:output:04random_flip/stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: 2,
*random_flip/stateful_uniform_full_int/Prod?
,random_flip/stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :2.
,random_flip/stateful_uniform_full_int/Cast/x?
,random_flip/stateful_uniform_full_int/Cast_1Cast3random_flip/stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 2.
,random_flip/stateful_uniform_full_int/Cast_1?
4random_flip/stateful_uniform_full_int/RngReadAndSkipRngReadAndSkip=random_flip_stateful_uniform_full_int_rngreadandskip_resource5random_flip/stateful_uniform_full_int/Cast/x:output:00random_flip/stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:26
4random_flip/stateful_uniform_full_int/RngReadAndSkip?
9random_flip/stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2;
9random_flip/stateful_uniform_full_int/strided_slice/stack?
;random_flip/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2=
;random_flip/stateful_uniform_full_int/strided_slice/stack_1?
;random_flip/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2=
;random_flip/stateful_uniform_full_int/strided_slice/stack_2?
3random_flip/stateful_uniform_full_int/strided_sliceStridedSlice<random_flip/stateful_uniform_full_int/RngReadAndSkip:value:0Brandom_flip/stateful_uniform_full_int/strided_slice/stack:output:0Drandom_flip/stateful_uniform_full_int/strided_slice/stack_1:output:0Drandom_flip/stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask25
3random_flip/stateful_uniform_full_int/strided_slice?
-random_flip/stateful_uniform_full_int/BitcastBitcast<random_flip/stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type02/
-random_flip/stateful_uniform_full_int/Bitcast?
;random_flip/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2=
;random_flip/stateful_uniform_full_int/strided_slice_1/stack?
=random_flip/stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2?
=random_flip/stateful_uniform_full_int/strided_slice_1/stack_1?
=random_flip/stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2?
=random_flip/stateful_uniform_full_int/strided_slice_1/stack_2?
5random_flip/stateful_uniform_full_int/strided_slice_1StridedSlice<random_flip/stateful_uniform_full_int/RngReadAndSkip:value:0Drandom_flip/stateful_uniform_full_int/strided_slice_1/stack:output:0Frandom_flip/stateful_uniform_full_int/strided_slice_1/stack_1:output:0Frandom_flip/stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:27
5random_flip/stateful_uniform_full_int/strided_slice_1?
/random_flip/stateful_uniform_full_int/Bitcast_1Bitcast>random_flip/stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type021
/random_flip/stateful_uniform_full_int/Bitcast_1?
)random_flip/stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :2+
)random_flip/stateful_uniform_full_int/alg?
%random_flip/stateful_uniform_full_intStatelessRandomUniformFullIntV24random_flip/stateful_uniform_full_int/shape:output:08random_flip/stateful_uniform_full_int/Bitcast_1:output:06random_flip/stateful_uniform_full_int/Bitcast:output:02random_flip/stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	2'
%random_flip/stateful_uniform_full_intz
random_flip/zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R 2
random_flip/zeros_like?
random_flip/stackPack.random_flip/stateful_uniform_full_int:output:0random_flip/zeros_like:output:0*
N*
T0	*
_output_shapes

:2
random_flip/stack?
random_flip/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
random_flip/strided_slice/stack?
!random_flip/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2#
!random_flip/strided_slice/stack_1?
!random_flip/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!random_flip/strided_slice/stack_2?
random_flip/strided_sliceStridedSlicerandom_flip/stack:output:0(random_flip/strided_slice/stack:output:0*random_flip/strided_slice/stack_1:output:0*random_flip/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask2
random_flip/strided_slice?
?random_flip/stateless_random_flip_left_right/control_dependencyIdentityinputs*
T0*
_class
loc:@inputs*1
_output_shapes
:???????????2A
?random_flip/stateless_random_flip_left_right/control_dependency?
2random_flip/stateless_random_flip_left_right/ShapeShapeHrandom_flip/stateless_random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
:24
2random_flip/stateless_random_flip_left_right/Shape?
@random_flip/stateless_random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2B
@random_flip/stateless_random_flip_left_right/strided_slice/stack?
Brandom_flip/stateless_random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2D
Brandom_flip/stateless_random_flip_left_right/strided_slice/stack_1?
Brandom_flip/stateless_random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2D
Brandom_flip/stateless_random_flip_left_right/strided_slice/stack_2?
:random_flip/stateless_random_flip_left_right/strided_sliceStridedSlice;random_flip/stateless_random_flip_left_right/Shape:output:0Irandom_flip/stateless_random_flip_left_right/strided_slice/stack:output:0Krandom_flip/stateless_random_flip_left_right/strided_slice/stack_1:output:0Krandom_flip/stateless_random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2<
:random_flip/stateless_random_flip_left_right/strided_slice?
Krandom_flip/stateless_random_flip_left_right/stateless_random_uniform/shapePackCrandom_flip/stateless_random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:2M
Krandom_flip/stateless_random_flip_left_right/stateless_random_uniform/shape?
Irandom_flip/stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    2K
Irandom_flip/stateless_random_flip_left_right/stateless_random_uniform/min?
Irandom_flip/stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2K
Irandom_flip/stateless_random_flip_left_right/stateless_random_uniform/max?
brandom_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter"random_flip/strided_slice:output:0* 
_output_shapes
::2d
brandom_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter?
[random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlgStatelessRandomGetAlgc^random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter*
_output_shapes
: 2]
[random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlg?
^random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Trandom_flip/stateless_random_flip_left_right/stateless_random_uniform/shape:output:0hrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0lrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0arandom_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlg:alg:0*#
_output_shapes
:?????????2`
^random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2?
Irandom_flip/stateless_random_flip_left_right/stateless_random_uniform/subSubRrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/max:output:0Rrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: 2K
Irandom_flip/stateless_random_flip_left_right/stateless_random_uniform/sub?
Irandom_flip/stateless_random_flip_left_right/stateless_random_uniform/mulMulgrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Mrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:?????????2K
Irandom_flip/stateless_random_flip_left_right/stateless_random_uniform/mul?
Erandom_flip/stateless_random_flip_left_right/stateless_random_uniformAddV2Mrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/mul:z:0Rrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:?????????2G
Erandom_flip/stateless_random_flip_left_right/stateless_random_uniform?
<random_flip/stateless_random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2>
<random_flip/stateless_random_flip_left_right/Reshape/shape/1?
<random_flip/stateless_random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2>
<random_flip/stateless_random_flip_left_right/Reshape/shape/2?
<random_flip/stateless_random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2>
<random_flip/stateless_random_flip_left_right/Reshape/shape/3?
:random_flip/stateless_random_flip_left_right/Reshape/shapePackCrandom_flip/stateless_random_flip_left_right/strided_slice:output:0Erandom_flip/stateless_random_flip_left_right/Reshape/shape/1:output:0Erandom_flip/stateless_random_flip_left_right/Reshape/shape/2:output:0Erandom_flip/stateless_random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2<
:random_flip/stateless_random_flip_left_right/Reshape/shape?
4random_flip/stateless_random_flip_left_right/ReshapeReshapeIrandom_flip/stateless_random_flip_left_right/stateless_random_uniform:z:0Crandom_flip/stateless_random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????26
4random_flip/stateless_random_flip_left_right/Reshape?
2random_flip/stateless_random_flip_left_right/RoundRound=random_flip/stateless_random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:?????????24
2random_flip/stateless_random_flip_left_right/Round?
;random_flip/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:2=
;random_flip/stateless_random_flip_left_right/ReverseV2/axis?
6random_flip/stateless_random_flip_left_right/ReverseV2	ReverseV2Hrandom_flip/stateless_random_flip_left_right/control_dependency:output:0Drandom_flip/stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*1
_output_shapes
:???????????28
6random_flip/stateless_random_flip_left_right/ReverseV2?
0random_flip/stateless_random_flip_left_right/mulMul6random_flip/stateless_random_flip_left_right/Round:y:0?random_flip/stateless_random_flip_left_right/ReverseV2:output:0*
T0*1
_output_shapes
:???????????22
0random_flip/stateless_random_flip_left_right/mul?
2random_flip/stateless_random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??24
2random_flip/stateless_random_flip_left_right/sub/x?
0random_flip/stateless_random_flip_left_right/subSub;random_flip/stateless_random_flip_left_right/sub/x:output:06random_flip/stateless_random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:?????????22
0random_flip/stateless_random_flip_left_right/sub?
2random_flip/stateless_random_flip_left_right/mul_1Mul4random_flip/stateless_random_flip_left_right/sub:z:0Hrandom_flip/stateless_random_flip_left_right/control_dependency:output:0*
T0*1
_output_shapes
:???????????24
2random_flip/stateless_random_flip_left_right/mul_1?
0random_flip/stateless_random_flip_left_right/addAddV24random_flip/stateless_random_flip_left_right/mul:z:06random_flip/stateless_random_flip_left_right/mul_1:z:0*
T0*1
_output_shapes
:???????????22
0random_flip/stateless_random_flip_left_right/add?
IdentityIdentity4random_flip/stateless_random_flip_left_right/add:z:0^NoOp*
T0*1
_output_shapes
:???????????2

Identity?
NoOpNoOp5^random_flip/stateful_uniform_full_int/RngReadAndSkip\^random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlgc^random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:???????????: 2l
4random_flip/stateful_uniform_full_int/RngReadAndSkip4random_flip/stateful_uniform_full_int/RngReadAndSkip2?
[random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlg[random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlg2?
brandom_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterbrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
'__inference_conv2d_layer_call_fn_120380

inputs!
unknown: 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_conv2d_layer_call_and_return_conditional_losses_1192442
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:??????????? 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
g
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_120486

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
g
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_120491

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:?????????0 *
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:?????????0 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????5` :W S
/
_output_shapes
:?????????5` 
 
_user_specified_nameinputs
?-
^
B__inference_lambda_layer_call_and_return_conditional_losses_118992

inputs
identity?
rgb_to_grayscale/IdentityIdentityinputs*
T0*1
_output_shapes
:???????????2
rgb_to_grayscale/Identity?
rgb_to_grayscale/Tensordot/bConst*
_output_shapes
:*
dtype0*!
valueB"l	?>?E??x?=2
rgb_to_grayscale/Tensordot/b?
rgb_to_grayscale/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2!
rgb_to_grayscale/Tensordot/axes?
rgb_to_grayscale/Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          2!
rgb_to_grayscale/Tensordot/free?
 rgb_to_grayscale/Tensordot/ShapeShape"rgb_to_grayscale/Identity:output:0*
T0*
_output_shapes
:2"
 rgb_to_grayscale/Tensordot/Shape?
(rgb_to_grayscale/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2*
(rgb_to_grayscale/Tensordot/GatherV2/axis?
#rgb_to_grayscale/Tensordot/GatherV2GatherV2)rgb_to_grayscale/Tensordot/Shape:output:0(rgb_to_grayscale/Tensordot/free:output:01rgb_to_grayscale/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2%
#rgb_to_grayscale/Tensordot/GatherV2?
*rgb_to_grayscale/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2,
*rgb_to_grayscale/Tensordot/GatherV2_1/axis?
%rgb_to_grayscale/Tensordot/GatherV2_1GatherV2)rgb_to_grayscale/Tensordot/Shape:output:0(rgb_to_grayscale/Tensordot/axes:output:03rgb_to_grayscale/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2'
%rgb_to_grayscale/Tensordot/GatherV2_1?
 rgb_to_grayscale/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2"
 rgb_to_grayscale/Tensordot/Const?
rgb_to_grayscale/Tensordot/ProdProd,rgb_to_grayscale/Tensordot/GatherV2:output:0)rgb_to_grayscale/Tensordot/Const:output:0*
T0*
_output_shapes
: 2!
rgb_to_grayscale/Tensordot/Prod?
"rgb_to_grayscale/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2$
"rgb_to_grayscale/Tensordot/Const_1?
!rgb_to_grayscale/Tensordot/Prod_1Prod.rgb_to_grayscale/Tensordot/GatherV2_1:output:0+rgb_to_grayscale/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2#
!rgb_to_grayscale/Tensordot/Prod_1?
&rgb_to_grayscale/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2(
&rgb_to_grayscale/Tensordot/concat/axis?
!rgb_to_grayscale/Tensordot/concatConcatV2(rgb_to_grayscale/Tensordot/free:output:0(rgb_to_grayscale/Tensordot/axes:output:0/rgb_to_grayscale/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2#
!rgb_to_grayscale/Tensordot/concat?
 rgb_to_grayscale/Tensordot/stackPack(rgb_to_grayscale/Tensordot/Prod:output:0*rgb_to_grayscale/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2"
 rgb_to_grayscale/Tensordot/stack?
$rgb_to_grayscale/Tensordot/transpose	Transpose"rgb_to_grayscale/Identity:output:0*rgb_to_grayscale/Tensordot/concat:output:0*
T0*1
_output_shapes
:???????????2&
$rgb_to_grayscale/Tensordot/transpose?
"rgb_to_grayscale/Tensordot/ReshapeReshape(rgb_to_grayscale/Tensordot/transpose:y:0)rgb_to_grayscale/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2$
"rgb_to_grayscale/Tensordot/Reshape?
*rgb_to_grayscale/Tensordot/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2,
*rgb_to_grayscale/Tensordot/Reshape_1/shape?
$rgb_to_grayscale/Tensordot/Reshape_1Reshape%rgb_to_grayscale/Tensordot/b:output:03rgb_to_grayscale/Tensordot/Reshape_1/shape:output:0*
T0*
_output_shapes

:2&
$rgb_to_grayscale/Tensordot/Reshape_1?
!rgb_to_grayscale/Tensordot/MatMulMatMul+rgb_to_grayscale/Tensordot/Reshape:output:0-rgb_to_grayscale/Tensordot/Reshape_1:output:0*
T0*'
_output_shapes
:?????????2#
!rgb_to_grayscale/Tensordot/MatMul?
"rgb_to_grayscale/Tensordot/Const_2Const*
_output_shapes
: *
dtype0*
valueB 2$
"rgb_to_grayscale/Tensordot/Const_2?
(rgb_to_grayscale/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2*
(rgb_to_grayscale/Tensordot/concat_1/axis?
#rgb_to_grayscale/Tensordot/concat_1ConcatV2,rgb_to_grayscale/Tensordot/GatherV2:output:0+rgb_to_grayscale/Tensordot/Const_2:output:01rgb_to_grayscale/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2%
#rgb_to_grayscale/Tensordot/concat_1?
rgb_to_grayscale/TensordotReshape+rgb_to_grayscale/Tensordot/MatMul:product:0,rgb_to_grayscale/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:???????????2
rgb_to_grayscale/Tensordot?
rgb_to_grayscale/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2!
rgb_to_grayscale/ExpandDims/dim?
rgb_to_grayscale/ExpandDims
ExpandDims#rgb_to_grayscale/Tensordot:output:0(rgb_to_grayscale/ExpandDims/dim:output:0*
T0*1
_output_shapes
:???????????2
rgb_to_grayscale/ExpandDims?
rgb_to_grayscaleIdentity$rgb_to_grayscale/ExpandDims:output:0*
T0*1
_output_shapes
:???????????2
rgb_to_grayscalew
IdentityIdentityrgb_to_grayscale:output:0*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
A__inference_dense_layer_call_and_return_conditional_losses_120522

inputs3
matmul_readvariableop_resource:???.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*!
_output_shapes
:???*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddb
SigmoidSigmoidBiasAdd:output:0*
T0*(
_output_shapes
:??????????2	
Sigmoidg
IdentityIdentitySigmoid:y:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?
c
G__inference_random_flip_layer_call_and_return_conditional_losses_120644

inputs
identityd
IdentityIdentityinputs*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
D
(__inference_flatten_layer_call_fn_120496

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_1193082
PartitionedCalln
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????0 :W S
/
_output_shapes
:?????????0 
 
_user_specified_nameinputs
?
C
'__inference_lambda_layer_call_fn_120546

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_lambda_layer_call_and_return_conditional_losses_1189302
PartitionedCallv
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?T
?
__inference__traced_save_120850
file_prefix,
(savev2_conv2d_kernel_read_readvariableop*
&savev2_conv2d_bias_read_readvariableop.
*savev2_conv2d_1_kernel_read_readvariableop,
(savev2_conv2d_1_bias_read_readvariableop.
*savev2_conv2d_2_kernel_read_readvariableop,
(savev2_conv2d_2_bias_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop'
#savev2_variable_read_readvariableop	$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop3
/savev2_adam_conv2d_kernel_m_read_readvariableop1
-savev2_adam_conv2d_bias_m_read_readvariableop5
1savev2_adam_conv2d_1_kernel_m_read_readvariableop3
/savev2_adam_conv2d_1_bias_m_read_readvariableop5
1savev2_adam_conv2d_2_kernel_m_read_readvariableop3
/savev2_adam_conv2d_2_bias_m_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableop4
0savev2_adam_dense_1_kernel_m_read_readvariableop2
.savev2_adam_dense_1_bias_m_read_readvariableop3
/savev2_adam_conv2d_kernel_v_read_readvariableop1
-savev2_adam_conv2d_bias_v_read_readvariableop5
1savev2_adam_conv2d_1_kernel_v_read_readvariableop3
/savev2_adam_conv2d_1_bias_v_read_readvariableop5
1savev2_adam_conv2d_2_kernel_v_read_readvariableop3
/savev2_adam_conv2d_2_bias_v_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop4
0savev2_adam_dense_1_kernel_v_read_readvariableop2
.savev2_adam_dense_1_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*?
value?B?)B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB:layer-1/layer-0/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*e
value\BZ)B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0(savev2_conv2d_kernel_read_readvariableop&savev2_conv2d_bias_read_readvariableop*savev2_conv2d_1_kernel_read_readvariableop(savev2_conv2d_1_bias_read_readvariableop*savev2_conv2d_2_kernel_read_readvariableop(savev2_conv2d_2_bias_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop#savev2_variable_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop/savev2_adam_conv2d_kernel_m_read_readvariableop-savev2_adam_conv2d_bias_m_read_readvariableop1savev2_adam_conv2d_1_kernel_m_read_readvariableop/savev2_adam_conv2d_1_bias_m_read_readvariableop1savev2_adam_conv2d_2_kernel_m_read_readvariableop/savev2_adam_conv2d_2_bias_m_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop0savev2_adam_dense_1_kernel_m_read_readvariableop.savev2_adam_dense_1_bias_m_read_readvariableop/savev2_adam_conv2d_kernel_v_read_readvariableop-savev2_adam_conv2d_bias_v_read_readvariableop1savev2_adam_conv2d_1_kernel_v_read_readvariableop/savev2_adam_conv2d_1_bias_v_read_readvariableop1savev2_adam_conv2d_2_kernel_v_read_readvariableop/savev2_adam_conv2d_2_bias_v_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableop0savev2_adam_dense_1_kernel_v_read_readvariableop.savev2_adam_dense_1_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *7
dtypes-
+2)		2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1c
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*?
_input_shapes?
?: : : :  : :  : :???:?:	?:: : : : : :: : : : : : :  : :  : :???:?:	?:: : :  : :  : :???:?:	?:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
:  : 

_output_shapes
: :,(
&
_output_shapes
:  : 

_output_shapes
: :'#
!
_output_shapes
:???:!

_output_shapes	
:?:%	!

_output_shapes
:	?: 


_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
:  : 

_output_shapes
: :,(
&
_output_shapes
:  : 

_output_shapes
: :'#
!
_output_shapes
:???:!

_output_shapes	
:?:%!

_output_shapes
:	?: 

_output_shapes
::,(
&
_output_shapes
: :  

_output_shapes
: :,!(
&
_output_shapes
:  : "

_output_shapes
: :,#(
&
_output_shapes
:  : $

_output_shapes
: :'%#
!
_output_shapes
:???:!&

_output_shapes	
:?:%'!

_output_shapes
:	?: (

_output_shapes
::)

_output_shapes
: 
?
C
'__inference_lambda_layer_call_fn_120551

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_lambda_layer_call_and_return_conditional_losses_1189922
PartitionedCallv
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?-
^
B__inference_lambda_layer_call_and_return_conditional_losses_120615

inputs
identity?
rgb_to_grayscale/IdentityIdentityinputs*
T0*1
_output_shapes
:???????????2
rgb_to_grayscale/Identity?
rgb_to_grayscale/Tensordot/bConst*
_output_shapes
:*
dtype0*!
valueB"l	?>?E??x?=2
rgb_to_grayscale/Tensordot/b?
rgb_to_grayscale/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2!
rgb_to_grayscale/Tensordot/axes?
rgb_to_grayscale/Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          2!
rgb_to_grayscale/Tensordot/free?
 rgb_to_grayscale/Tensordot/ShapeShape"rgb_to_grayscale/Identity:output:0*
T0*
_output_shapes
:2"
 rgb_to_grayscale/Tensordot/Shape?
(rgb_to_grayscale/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2*
(rgb_to_grayscale/Tensordot/GatherV2/axis?
#rgb_to_grayscale/Tensordot/GatherV2GatherV2)rgb_to_grayscale/Tensordot/Shape:output:0(rgb_to_grayscale/Tensordot/free:output:01rgb_to_grayscale/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2%
#rgb_to_grayscale/Tensordot/GatherV2?
*rgb_to_grayscale/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2,
*rgb_to_grayscale/Tensordot/GatherV2_1/axis?
%rgb_to_grayscale/Tensordot/GatherV2_1GatherV2)rgb_to_grayscale/Tensordot/Shape:output:0(rgb_to_grayscale/Tensordot/axes:output:03rgb_to_grayscale/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2'
%rgb_to_grayscale/Tensordot/GatherV2_1?
 rgb_to_grayscale/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2"
 rgb_to_grayscale/Tensordot/Const?
rgb_to_grayscale/Tensordot/ProdProd,rgb_to_grayscale/Tensordot/GatherV2:output:0)rgb_to_grayscale/Tensordot/Const:output:0*
T0*
_output_shapes
: 2!
rgb_to_grayscale/Tensordot/Prod?
"rgb_to_grayscale/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2$
"rgb_to_grayscale/Tensordot/Const_1?
!rgb_to_grayscale/Tensordot/Prod_1Prod.rgb_to_grayscale/Tensordot/GatherV2_1:output:0+rgb_to_grayscale/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2#
!rgb_to_grayscale/Tensordot/Prod_1?
&rgb_to_grayscale/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2(
&rgb_to_grayscale/Tensordot/concat/axis?
!rgb_to_grayscale/Tensordot/concatConcatV2(rgb_to_grayscale/Tensordot/free:output:0(rgb_to_grayscale/Tensordot/axes:output:0/rgb_to_grayscale/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2#
!rgb_to_grayscale/Tensordot/concat?
 rgb_to_grayscale/Tensordot/stackPack(rgb_to_grayscale/Tensordot/Prod:output:0*rgb_to_grayscale/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2"
 rgb_to_grayscale/Tensordot/stack?
$rgb_to_grayscale/Tensordot/transpose	Transpose"rgb_to_grayscale/Identity:output:0*rgb_to_grayscale/Tensordot/concat:output:0*
T0*1
_output_shapes
:???????????2&
$rgb_to_grayscale/Tensordot/transpose?
"rgb_to_grayscale/Tensordot/ReshapeReshape(rgb_to_grayscale/Tensordot/transpose:y:0)rgb_to_grayscale/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2$
"rgb_to_grayscale/Tensordot/Reshape?
*rgb_to_grayscale/Tensordot/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2,
*rgb_to_grayscale/Tensordot/Reshape_1/shape?
$rgb_to_grayscale/Tensordot/Reshape_1Reshape%rgb_to_grayscale/Tensordot/b:output:03rgb_to_grayscale/Tensordot/Reshape_1/shape:output:0*
T0*
_output_shapes

:2&
$rgb_to_grayscale/Tensordot/Reshape_1?
!rgb_to_grayscale/Tensordot/MatMulMatMul+rgb_to_grayscale/Tensordot/Reshape:output:0-rgb_to_grayscale/Tensordot/Reshape_1:output:0*
T0*'
_output_shapes
:?????????2#
!rgb_to_grayscale/Tensordot/MatMul?
"rgb_to_grayscale/Tensordot/Const_2Const*
_output_shapes
: *
dtype0*
valueB 2$
"rgb_to_grayscale/Tensordot/Const_2?
(rgb_to_grayscale/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2*
(rgb_to_grayscale/Tensordot/concat_1/axis?
#rgb_to_grayscale/Tensordot/concat_1ConcatV2,rgb_to_grayscale/Tensordot/GatherV2:output:0+rgb_to_grayscale/Tensordot/Const_2:output:01rgb_to_grayscale/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2%
#rgb_to_grayscale/Tensordot/concat_1?
rgb_to_grayscale/TensordotReshape+rgb_to_grayscale/Tensordot/MatMul:product:0,rgb_to_grayscale/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:???????????2
rgb_to_grayscale/Tensordot?
rgb_to_grayscale/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2!
rgb_to_grayscale/ExpandDims/dim?
rgb_to_grayscale/ExpandDims
ExpandDims#rgb_to_grayscale/Tensordot:output:0(rgb_to_grayscale/ExpandDims/dim:output:0*
T0*1
_output_shapes
:???????????2
rgb_to_grayscale/ExpandDims?
rgb_to_grayscaleIdentity$rgb_to_grayscale/ExpandDims:output:0*
T0*1
_output_shapes
:???????????2
rgb_to_grayscalew
IdentityIdentityrgb_to_grayscale:output:0*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?	
h
L__inference_data_preparation_layer_call_and_return_conditional_losses_118943

inputs
identity?
lambda/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_lambda_layer_call_and_return_conditional_losses_1189302
lambda/PartitionedCall?
rescaling/PartitionedCallPartitionedCalllambda/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_rescaling_layer_call_and_return_conditional_losses_1189402
rescaling/PartitionedCall?
IdentityIdentity"rescaling/PartitionedCall:output:0*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?

?
$__inference_signature_wrapper_119729
data_preparation_input!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: #
	unknown_3:  
	unknown_4: 
	unknown_5:???
	unknown_6:	?
	unknown_7:	?
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldata_preparation_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__wrapped_model_1188912
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:???????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
1
_output_shapes
:???????????
0
_user_specified_namedata_preparation_input
?
?
)__inference_conv2d_2_layer_call_fn_120460

inputs!
unknown:  
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????5` *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_2_layer_call_and_return_conditional_losses_1192902
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????5` 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????7b : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????7b 
 
_user_specified_nameinputs
?
F
*__inference_rescaling_layer_call_fn_120620

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_rescaling_layer_call_and_return_conditional_losses_1189402
PartitionedCallv
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?2
?
K__inference_bike_classifier_layer_call_and_return_conditional_losses_119572

inputs&
data_augmentation_119539:	'
conv2d_119542: 
conv2d_119544: )
conv2d_1_119548:  
conv2d_1_119550: )
conv2d_2_119554:  
conv2d_2_119556: !
dense_119561:???
dense_119563:	?!
dense_1_119566:	?
dense_1_119568:
identity??conv2d/StatefulPartitionedCall? conv2d_1/StatefulPartitionedCall? conv2d_2/StatefulPartitionedCall?)data_augmentation/StatefulPartitionedCall?dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?
 data_preparation/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_data_preparation_layer_call_and_return_conditional_losses_1190082"
 data_preparation/PartitionedCall?
)data_augmentation/StatefulPartitionedCallStatefulPartitionedCall)data_preparation/PartitionedCall:output:0data_augmentation_119539*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_data_augmentation_layer_call_and_return_conditional_losses_1195032+
)data_augmentation/StatefulPartitionedCall?
conv2d/StatefulPartitionedCallStatefulPartitionedCall2data_augmentation/StatefulPartitionedCall:output:0conv2d_119542conv2d_119544*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_conv2d_layer_call_and_return_conditional_losses_1192442 
conv2d/StatefulPartitionedCall?
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????q? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_1192542
max_pooling2d/PartitionedCall?
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_119548conv2d_1_119550*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????o? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_1_layer_call_and_return_conditional_losses_1192672"
 conv2d_1/StatefulPartitionedCall?
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????7b * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_1192772!
max_pooling2d_1/PartitionedCall?
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv2d_2_119554conv2d_2_119556*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????5` *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_2_layer_call_and_return_conditional_losses_1192902"
 conv2d_2/StatefulPartitionedCall?
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_1193002!
max_pooling2d_2/PartitionedCall?
flatten/PartitionedCallPartitionedCall(max_pooling2d_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_1193082
flatten/PartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_119561dense_119563*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_1193212
dense/StatefulPartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_119566dense_1_119568*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_1193372!
dense_1/StatefulPartitionedCall?
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall*^data_augmentation/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:???????????: : : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2V
)data_augmentation/StatefulPartitionedCall)data_augmentation/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
a
E__inference_rescaling_layer_call_and_return_conditional_losses_120628

inputs
identityU
Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *???;2
Cast/xY
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2

Cast_1/xf
mulMulinputsCast/x:output:0*
T0*1
_output_shapes
:???????????2
mulk
addAddV2mul:z:0Cast_1/x:output:0*
T0*1
_output_shapes
:???????????2
adde
IdentityIdentityadd:z:0*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
c
data_preparation_inputI
(serving_default_data_preparation_input:0???????????;
dense_10
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer-8

layer_with_weights-3

layer-9
layer_with_weights-4
layer-10
	optimizer
	variables
regularization_losses
trainable_variables
	keras_api

signatures
?_default_save_signature
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_sequential
?
layer-0
layer-1
	variables
regularization_losses
trainable_variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_sequential
?
layer-0
	variables
regularization_losses
trainable_variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_sequential
?

kernel
bias
trainable_variables
 	variables
!regularization_losses
"	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
#trainable_variables
$	variables
%regularization_losses
&	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

'kernel
(bias
)trainable_variables
*	variables
+regularization_losses
,	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
-trainable_variables
.	variables
/regularization_losses
0	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

1kernel
2bias
3trainable_variables
4	variables
5regularization_losses
6	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
7trainable_variables
8	variables
9regularization_losses
:	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
;trainable_variables
<	variables
=regularization_losses
>	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

?kernel
@bias
Atrainable_variables
B	variables
Cregularization_losses
D	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

Ekernel
Fbias
Gtrainable_variables
H	variables
Iregularization_losses
J	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
Kiter

Lbeta_1

Mbeta_2
	Ndecay
Olearning_ratem?m?'m?(m?1m?2m??m?@m?Em?Fm?v?v?'v?(v?1v?2v??v?@v?Ev?Fv?"
	optimizer
f
0
1
'2
(3
14
25
?6
@7
E8
F9"
trackable_list_wrapper
 "
trackable_list_wrapper
f
0
1
'2
(3
14
25
?6
@7
E8
F9"
trackable_list_wrapper
?

Players
Qlayer_regularization_losses
Rlayer_metrics
Smetrics
Tnon_trainable_variables
	variables
regularization_losses
trainable_variables
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
?
Utrainable_variables
V	variables
Wregularization_losses
X	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
Ytrainable_variables
Z	variables
[regularization_losses
\	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?

]layers
^layer_regularization_losses
_layer_metrics
`metrics
anon_trainable_variables
	variables
regularization_losses
trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
b_rng
ctrainable_variables
d	variables
eregularization_losses
f	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?

glayers
hlayer_regularization_losses
ilayer_metrics
jmetrics
knon_trainable_variables
	variables
regularization_losses
trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
':% 2conv2d/kernel
: 2conv2d/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?

llayers
mlayer_regularization_losses
trainable_variables
nmetrics
onon_trainable_variables
 	variables
!regularization_losses
player_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?

qlayers
rlayer_regularization_losses
#trainable_variables
smetrics
tnon_trainable_variables
$	variables
%regularization_losses
ulayer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
):'  2conv2d_1/kernel
: 2conv2d_1/bias
.
'0
(1"
trackable_list_wrapper
.
'0
(1"
trackable_list_wrapper
 "
trackable_list_wrapper
?

vlayers
wlayer_regularization_losses
)trainable_variables
xmetrics
ynon_trainable_variables
*	variables
+regularization_losses
zlayer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?

{layers
|layer_regularization_losses
-trainable_variables
}metrics
~non_trainable_variables
.	variables
/regularization_losses
layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
):'  2conv2d_2/kernel
: 2conv2d_2/bias
.
10
21"
trackable_list_wrapper
.
10
21"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
 ?layer_regularization_losses
3trainable_variables
?metrics
?non_trainable_variables
4	variables
5regularization_losses
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
 ?layer_regularization_losses
7trainable_variables
?metrics
?non_trainable_variables
8	variables
9regularization_losses
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
 ?layer_regularization_losses
;trainable_variables
?metrics
?non_trainable_variables
<	variables
=regularization_losses
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:???2dense/kernel
:?2
dense/bias
.
?0
@1"
trackable_list_wrapper
.
?0
@1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
 ?layer_regularization_losses
Atrainable_variables
?metrics
?non_trainable_variables
B	variables
Cregularization_losses
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:	?2dense_1/kernel
:2dense_1/bias
.
E0
F1"
trackable_list_wrapper
.
E0
F1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
 ?layer_regularization_losses
Gtrainable_variables
?metrics
?non_trainable_variables
H	variables
Iregularization_losses
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
n
0
1
2
3
4
5
6
7
	8

9
10"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
 ?layer_regularization_losses
Utrainable_variables
?metrics
?non_trainable_variables
V	variables
Wregularization_losses
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
 ?layer_regularization_losses
Ytrainable_variables
?metrics
?non_trainable_variables
Z	variables
[regularization_losses
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
/
?
_state_var"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
 ?layer_regularization_losses
ctrainable_variables
?metrics
?non_trainable_variables
d	variables
eregularization_losses
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
R

?total

?count
?	variables
?	keras_api"
_tf_keras_metric
c

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"
_tf_keras_metric
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
:	2Variable
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
,:* 2Adam/conv2d/kernel/m
: 2Adam/conv2d/bias/m
.:,  2Adam/conv2d_1/kernel/m
 : 2Adam/conv2d_1/bias/m
.:,  2Adam/conv2d_2/kernel/m
 : 2Adam/conv2d_2/bias/m
&:$???2Adam/dense/kernel/m
:?2Adam/dense/bias/m
&:$	?2Adam/dense_1/kernel/m
:2Adam/dense_1/bias/m
,:* 2Adam/conv2d/kernel/v
: 2Adam/conv2d/bias/v
.:,  2Adam/conv2d_1/kernel/v
 : 2Adam/conv2d_1/bias/v
.:,  2Adam/conv2d_2/kernel/v
 : 2Adam/conv2d_2/bias/v
&:$???2Adam/dense/kernel/v
:?2Adam/dense/bias/v
&:$	?2Adam/dense_1/kernel/v
:2Adam/dense_1/bias/v
?B?
!__inference__wrapped_model_118891data_preparation_input"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
0__inference_bike_classifier_layer_call_fn_119367
0__inference_bike_classifier_layer_call_fn_119754
0__inference_bike_classifier_layer_call_fn_119781
0__inference_bike_classifier_layer_call_fn_119624?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
K__inference_bike_classifier_layer_call_and_return_conditional_losses_119856
K__inference_bike_classifier_layer_call_and_return_conditional_losses_119985
K__inference_bike_classifier_layer_call_and_return_conditional_losses_119659
K__inference_bike_classifier_layer_call_and_return_conditional_losses_119696?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
1__inference_data_preparation_layer_call_fn_119990
1__inference_data_preparation_layer_call_fn_119995
1__inference_data_preparation_layer_call_fn_120000
1__inference_data_preparation_layer_call_fn_120005?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
L__inference_data_preparation_layer_call_and_return_conditional_losses_120041
L__inference_data_preparation_layer_call_and_return_conditional_losses_120077
L__inference_data_preparation_layer_call_and_return_conditional_losses_120113
L__inference_data_preparation_layer_call_and_return_conditional_losses_120149?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
2__inference_data_augmentation_layer_call_fn_120154
2__inference_data_augmentation_layer_call_fn_120159
2__inference_data_augmentation_layer_call_fn_120166
2__inference_data_augmentation_layer_call_fn_120173
2__inference_data_augmentation_layer_call_fn_120178
2__inference_data_augmentation_layer_call_fn_120185?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
M__inference_data_augmentation_layer_call_and_return_conditional_losses_120189
M__inference_data_augmentation_layer_call_and_return_conditional_losses_120247
M__inference_data_augmentation_layer_call_and_return_conditional_losses_120251
M__inference_data_augmentation_layer_call_and_return_conditional_losses_120309
M__inference_data_augmentation_layer_call_and_return_conditional_losses_120313
M__inference_data_augmentation_layer_call_and_return_conditional_losses_120371?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
'__inference_conv2d_layer_call_fn_120380?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
B__inference_conv2d_layer_call_and_return_conditional_losses_120391?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
.__inference_max_pooling2d_layer_call_fn_120396
.__inference_max_pooling2d_layer_call_fn_120401?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_120406
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_120411?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_conv2d_1_layer_call_fn_120420?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_conv2d_1_layer_call_and_return_conditional_losses_120431?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
0__inference_max_pooling2d_1_layer_call_fn_120436
0__inference_max_pooling2d_1_layer_call_fn_120441?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_120446
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_120451?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_conv2d_2_layer_call_fn_120460?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_conv2d_2_layer_call_and_return_conditional_losses_120471?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
0__inference_max_pooling2d_2_layer_call_fn_120476
0__inference_max_pooling2d_2_layer_call_fn_120481?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_120486
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_120491?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_flatten_layer_call_fn_120496?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_flatten_layer_call_and_return_conditional_losses_120502?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
&__inference_dense_layer_call_fn_120511?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
A__inference_dense_layer_call_and_return_conditional_losses_120522?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_dense_1_layer_call_fn_120531?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_dense_1_layer_call_and_return_conditional_losses_120541?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
$__inference_signature_wrapper_119729data_preparation_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
'__inference_lambda_layer_call_fn_120546
'__inference_lambda_layer_call_fn_120551?
???
FullArgSpec1
args)?&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
B__inference_lambda_layer_call_and_return_conditional_losses_120583
B__inference_lambda_layer_call_and_return_conditional_losses_120615?
???
FullArgSpec1
args)?&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
*__inference_rescaling_layer_call_fn_120620?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_rescaling_layer_call_and_return_conditional_losses_120628?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
,__inference_random_flip_layer_call_fn_120633
,__inference_random_flip_layer_call_fn_120640?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
G__inference_random_flip_layer_call_and_return_conditional_losses_120644
G__inference_random_flip_layer_call_and_return_conditional_losses_120702?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p

kwonlyargs? 
kwonlydefaults? 
annotations? *
 ?
!__inference__wrapped_model_118891?
'(12?@EFI?F
??<
:?7
data_preparation_input???????????
? "1?.
,
dense_1!?
dense_1??????????
K__inference_bike_classifier_layer_call_and_return_conditional_losses_119659?
'(12?@EFQ?N
G?D
:?7
data_preparation_input???????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_bike_classifier_layer_call_and_return_conditional_losses_119696??'(12?@EFQ?N
G?D
:?7
data_preparation_input???????????
p

 
? "%?"
?
0?????????
? ?
K__inference_bike_classifier_layer_call_and_return_conditional_losses_119856v
'(12?@EFA?>
7?4
*?'
inputs???????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_bike_classifier_layer_call_and_return_conditional_losses_119985x?'(12?@EFA?>
7?4
*?'
inputs???????????
p

 
? "%?"
?
0?????????
? ?
0__inference_bike_classifier_layer_call_fn_119367y
'(12?@EFQ?N
G?D
:?7
data_preparation_input???????????
p 

 
? "???????????
0__inference_bike_classifier_layer_call_fn_119624{?'(12?@EFQ?N
G?D
:?7
data_preparation_input???????????
p

 
? "???????????
0__inference_bike_classifier_layer_call_fn_119754i
'(12?@EFA?>
7?4
*?'
inputs???????????
p 

 
? "???????????
0__inference_bike_classifier_layer_call_fn_119781k?'(12?@EFA?>
7?4
*?'
inputs???????????
p

 
? "???????????
D__inference_conv2d_1_layer_call_and_return_conditional_losses_120431n'(8?5
.?+
)?&
inputs?????????q? 
? ".?+
$?!
0?????????o? 
? ?
)__inference_conv2d_1_layer_call_fn_120420a'(8?5
.?+
)?&
inputs?????????q? 
? "!??????????o? ?
D__inference_conv2d_2_layer_call_and_return_conditional_losses_120471l127?4
-?*
(?%
inputs?????????7b 
? "-?*
#? 
0?????????5` 
? ?
)__inference_conv2d_2_layer_call_fn_120460_127?4
-?*
(?%
inputs?????????7b 
? " ??????????5` ?
B__inference_conv2d_layer_call_and_return_conditional_losses_120391p9?6
/?,
*?'
inputs???????????
? "/?,
%?"
0??????????? 
? ?
'__inference_conv2d_layer_call_fn_120380c9?6
/?,
*?'
inputs???????????
? ""???????????? ?
M__inference_data_augmentation_layer_call_and_return_conditional_losses_120189tA?>
7?4
*?'
inputs???????????
p 

 
? "/?,
%?"
0???????????
? ?
M__inference_data_augmentation_layer_call_and_return_conditional_losses_120247x?A?>
7?4
*?'
inputs???????????
p

 
? "/?,
%?"
0???????????
? ?
M__inference_data_augmentation_layer_call_and_return_conditional_losses_120251L?I
B??
5?2
random_flip_input???????????
p 

 
? "/?,
%?"
0???????????
? ?
M__inference_data_augmentation_layer_call_and_return_conditional_losses_120309??L?I
B??
5?2
random_flip_input???????????
p

 
? "/?,
%?"
0???????????
? ?
M__inference_data_augmentation_layer_call_and_return_conditional_losses_120313tA?>
7?4
*?'
inputs???????????
p 

 
? "/?,
%?"
0???????????
? ?
M__inference_data_augmentation_layer_call_and_return_conditional_losses_120371x?A?>
7?4
*?'
inputs???????????
p

 
? "/?,
%?"
0???????????
? ?
2__inference_data_augmentation_layer_call_fn_120154rL?I
B??
5?2
random_flip_input???????????
p 

 
? ""?????????????
2__inference_data_augmentation_layer_call_fn_120159gA?>
7?4
*?'
inputs???????????
p 

 
? ""?????????????
2__inference_data_augmentation_layer_call_fn_120166k?A?>
7?4
*?'
inputs???????????
p

 
? ""?????????????
2__inference_data_augmentation_layer_call_fn_120173v?L?I
B??
5?2
random_flip_input???????????
p

 
? ""?????????????
2__inference_data_augmentation_layer_call_fn_120178gA?>
7?4
*?'
inputs???????????
p 

 
? ""?????????????
2__inference_data_augmentation_layer_call_fn_120185k?A?>
7?4
*?'
inputs???????????
p

 
? ""?????????????
L__inference_data_preparation_layer_call_and_return_conditional_losses_120041tA?>
7?4
*?'
inputs???????????
p 

 
? "/?,
%?"
0???????????
? ?
L__inference_data_preparation_layer_call_and_return_conditional_losses_120077tA?>
7?4
*?'
inputs???????????
p

 
? "/?,
%?"
0???????????
? ?
L__inference_data_preparation_layer_call_and_return_conditional_losses_120113zG?D
=?:
0?-
lambda_input???????????
p 

 
? "/?,
%?"
0???????????
? ?
L__inference_data_preparation_layer_call_and_return_conditional_losses_120149zG?D
=?:
0?-
lambda_input???????????
p

 
? "/?,
%?"
0???????????
? ?
1__inference_data_preparation_layer_call_fn_119990mG?D
=?:
0?-
lambda_input???????????
p 

 
? ""?????????????
1__inference_data_preparation_layer_call_fn_119995gA?>
7?4
*?'
inputs???????????
p 

 
? ""?????????????
1__inference_data_preparation_layer_call_fn_120000gA?>
7?4
*?'
inputs???????????
p

 
? ""?????????????
1__inference_data_preparation_layer_call_fn_120005mG?D
=?:
0?-
lambda_input???????????
p

 
? ""?????????????
C__inference_dense_1_layer_call_and_return_conditional_losses_120541]EF0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????
? |
(__inference_dense_1_layer_call_fn_120531PEF0?-
&?#
!?
inputs??????????
? "???????????
A__inference_dense_layer_call_and_return_conditional_losses_120522_?@1?.
'?$
"?
inputs???????????
? "&?#
?
0??????????
? |
&__inference_dense_layer_call_fn_120511R?@1?.
'?$
"?
inputs???????????
? "????????????
C__inference_flatten_layer_call_and_return_conditional_losses_120502b7?4
-?*
(?%
inputs?????????0 
? "'?$
?
0???????????
? ?
(__inference_flatten_layer_call_fn_120496U7?4
-?*
(?%
inputs?????????0 
? "?????????????
B__inference_lambda_layer_call_and_return_conditional_losses_120583tA?>
7?4
*?'
inputs???????????

 
p 
? "/?,
%?"
0???????????
? ?
B__inference_lambda_layer_call_and_return_conditional_losses_120615tA?>
7?4
*?'
inputs???????????

 
p
? "/?,
%?"
0???????????
? ?
'__inference_lambda_layer_call_fn_120546gA?>
7?4
*?'
inputs???????????

 
p 
? ""?????????????
'__inference_lambda_layer_call_fn_120551gA?>
7?4
*?'
inputs???????????

 
p
? ""?????????????
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_120446?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_120451i8?5
.?+
)?&
inputs?????????o? 
? "-?*
#? 
0?????????7b 
? ?
0__inference_max_pooling2d_1_layer_call_fn_120436?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
0__inference_max_pooling2d_1_layer_call_fn_120441\8?5
.?+
)?&
inputs?????????o? 
? " ??????????7b ?
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_120486?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_120491h7?4
-?*
(?%
inputs?????????5` 
? "-?*
#? 
0?????????0 
? ?
0__inference_max_pooling2d_2_layer_call_fn_120476?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
0__inference_max_pooling2d_2_layer_call_fn_120481[7?4
-?*
(?%
inputs?????????5` 
? " ??????????0 ?
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_120406?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_120411k9?6
/?,
*?'
inputs??????????? 
? ".?+
$?!
0?????????q? 
? ?
.__inference_max_pooling2d_layer_call_fn_120396?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
.__inference_max_pooling2d_layer_call_fn_120401^9?6
/?,
*?'
inputs??????????? 
? "!??????????q? ?
G__inference_random_flip_layer_call_and_return_conditional_losses_120644p=?:
3?0
*?'
inputs???????????
p 
? "/?,
%?"
0???????????
? ?
G__inference_random_flip_layer_call_and_return_conditional_losses_120702t?=?:
3?0
*?'
inputs???????????
p
? "/?,
%?"
0???????????
? ?
,__inference_random_flip_layer_call_fn_120633c=?:
3?0
*?'
inputs???????????
p 
? ""?????????????
,__inference_random_flip_layer_call_fn_120640g?=?:
3?0
*?'
inputs???????????
p
? ""?????????????
E__inference_rescaling_layer_call_and_return_conditional_losses_120628l9?6
/?,
*?'
inputs???????????
? "/?,
%?"
0???????????
? ?
*__inference_rescaling_layer_call_fn_120620_9?6
/?,
*?'
inputs???????????
? ""?????????????
$__inference_signature_wrapper_119729?
'(12?@EFc?`
? 
Y?V
T
data_preparation_input:?7
data_preparation_input???????????"1?.
,
dense_1!?
dense_1?????????
?? 
??
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ?
?
AvgPool

value"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW"
Ttype:
2
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
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
?
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%??8"&
exponential_avg_factorfloat%  ??";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
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
?
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( ?
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
H
ShardedFilename
basename	
shard

num_shards
filename
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
executor_typestring ??
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
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.10.02v2.10.0-rc3-6-g359c3cdfc5f8??
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
r
dense_34/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_34/bias
k
!dense_34/bias/Read/ReadVariableOpReadVariableOpdense_34/bias*
_output_shapes
:
*
dtype0
{
dense_34/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?
* 
shared_namedense_34/kernel
t
#dense_34/kernel/Read/ReadVariableOpReadVariableOpdense_34/kernel*
_output_shapes
:	?
*
dtype0
?
'batch_normalization_221/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*8
shared_name)'batch_normalization_221/moving_variance
?
;batch_normalization_221/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_221/moving_variance*
_output_shapes	
:?*
dtype0
?
#batch_normalization_221/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#batch_normalization_221/moving_mean
?
7batch_normalization_221/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_221/moving_mean*
_output_shapes	
:?*
dtype0
?
batch_normalization_221/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_namebatch_normalization_221/beta
?
0batch_normalization_221/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_221/beta*
_output_shapes	
:?*
dtype0
?
batch_normalization_221/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*.
shared_namebatch_normalization_221/gamma
?
1batch_normalization_221/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_221/gamma*
_output_shapes	
:?*
dtype0
w
conv2d_221/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_nameconv2d_221/bias
p
#conv2d_221/bias/Read/ReadVariableOpReadVariableOpconv2d_221/bias*
_output_shapes	
:?*
dtype0
?
conv2d_221/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*"
shared_nameconv2d_221/kernel
?
%conv2d_221/kernel/Read/ReadVariableOpReadVariableOpconv2d_221/kernel*(
_output_shapes
:??*
dtype0
?
'batch_normalization_220/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*8
shared_name)'batch_normalization_220/moving_variance
?
;batch_normalization_220/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_220/moving_variance*
_output_shapes	
:?*
dtype0
?
#batch_normalization_220/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#batch_normalization_220/moving_mean
?
7batch_normalization_220/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_220/moving_mean*
_output_shapes	
:?*
dtype0
?
batch_normalization_220/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_namebatch_normalization_220/beta
?
0batch_normalization_220/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_220/beta*
_output_shapes	
:?*
dtype0
?
batch_normalization_220/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*.
shared_namebatch_normalization_220/gamma
?
1batch_normalization_220/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_220/gamma*
_output_shapes	
:?*
dtype0
w
conv2d_220/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_nameconv2d_220/bias
p
#conv2d_220/bias/Read/ReadVariableOpReadVariableOpconv2d_220/bias*
_output_shapes	
:?*
dtype0
?
conv2d_220/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*"
shared_nameconv2d_220/kernel
?
%conv2d_220/kernel/Read/ReadVariableOpReadVariableOpconv2d_220/kernel*(
_output_shapes
:??*
dtype0
?
'batch_normalization_219/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*8
shared_name)'batch_normalization_219/moving_variance
?
;batch_normalization_219/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_219/moving_variance*
_output_shapes	
:?*
dtype0
?
#batch_normalization_219/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#batch_normalization_219/moving_mean
?
7batch_normalization_219/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_219/moving_mean*
_output_shapes	
:?*
dtype0
?
batch_normalization_219/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_namebatch_normalization_219/beta
?
0batch_normalization_219/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_219/beta*
_output_shapes	
:?*
dtype0
?
batch_normalization_219/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*.
shared_namebatch_normalization_219/gamma
?
1batch_normalization_219/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_219/gamma*
_output_shapes	
:?*
dtype0
w
conv2d_219/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_nameconv2d_219/bias
p
#conv2d_219/bias/Read/ReadVariableOpReadVariableOpconv2d_219/bias*
_output_shapes	
:?*
dtype0
?
conv2d_219/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*"
shared_nameconv2d_219/kernel
?
%conv2d_219/kernel/Read/ReadVariableOpReadVariableOpconv2d_219/kernel*(
_output_shapes
:??*
dtype0
?
'batch_normalization_218/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*8
shared_name)'batch_normalization_218/moving_variance
?
;batch_normalization_218/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_218/moving_variance*
_output_shapes	
:?*
dtype0
?
#batch_normalization_218/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#batch_normalization_218/moving_mean
?
7batch_normalization_218/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_218/moving_mean*
_output_shapes	
:?*
dtype0
?
batch_normalization_218/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_namebatch_normalization_218/beta
?
0batch_normalization_218/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_218/beta*
_output_shapes	
:?*
dtype0
?
batch_normalization_218/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*.
shared_namebatch_normalization_218/gamma
?
1batch_normalization_218/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_218/gamma*
_output_shapes	
:?*
dtype0
w
conv2d_218/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_nameconv2d_218/bias
p
#conv2d_218/bias/Read/ReadVariableOpReadVariableOpconv2d_218/bias*
_output_shapes	
:?*
dtype0
?
conv2d_218/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*"
shared_nameconv2d_218/kernel
?
%conv2d_218/kernel/Read/ReadVariableOpReadVariableOpconv2d_218/kernel*'
_output_shapes
:@?*
dtype0
?
'batch_normalization_217/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*8
shared_name)'batch_normalization_217/moving_variance
?
;batch_normalization_217/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_217/moving_variance*
_output_shapes
:@*
dtype0
?
#batch_normalization_217/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#batch_normalization_217/moving_mean
?
7batch_normalization_217/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_217/moving_mean*
_output_shapes
:@*
dtype0
?
batch_normalization_217/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*-
shared_namebatch_normalization_217/beta
?
0batch_normalization_217/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_217/beta*
_output_shapes
:@*
dtype0
?
batch_normalization_217/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*.
shared_namebatch_normalization_217/gamma
?
1batch_normalization_217/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_217/gamma*
_output_shapes
:@*
dtype0
v
conv2d_217/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv2d_217/bias
o
#conv2d_217/bias/Read/ReadVariableOpReadVariableOpconv2d_217/bias*
_output_shapes
:@*
dtype0
?
conv2d_217/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*"
shared_nameconv2d_217/kernel

%conv2d_217/kernel/Read/ReadVariableOpReadVariableOpconv2d_217/kernel*&
_output_shapes
:@@*
dtype0
?
'batch_normalization_216/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*8
shared_name)'batch_normalization_216/moving_variance
?
;batch_normalization_216/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_216/moving_variance*
_output_shapes
:@*
dtype0
?
#batch_normalization_216/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#batch_normalization_216/moving_mean
?
7batch_normalization_216/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_216/moving_mean*
_output_shapes
:@*
dtype0
?
batch_normalization_216/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*-
shared_namebatch_normalization_216/beta
?
0batch_normalization_216/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_216/beta*
_output_shapes
:@*
dtype0
?
batch_normalization_216/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*.
shared_namebatch_normalization_216/gamma
?
1batch_normalization_216/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_216/gamma*
_output_shapes
:@*
dtype0
v
conv2d_216/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv2d_216/bias
o
#conv2d_216/bias/Read/ReadVariableOpReadVariableOpconv2d_216/bias*
_output_shapes
:@*
dtype0
?
conv2d_216/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*"
shared_nameconv2d_216/kernel

%conv2d_216/kernel/Read/ReadVariableOpReadVariableOpconv2d_216/kernel*&
_output_shapes
: @*
dtype0
?
'batch_normalization_215/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *8
shared_name)'batch_normalization_215/moving_variance
?
;batch_normalization_215/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_215/moving_variance*
_output_shapes
: *
dtype0
?
#batch_normalization_215/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#batch_normalization_215/moving_mean
?
7batch_normalization_215/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_215/moving_mean*
_output_shapes
: *
dtype0
?
batch_normalization_215/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *-
shared_namebatch_normalization_215/beta
?
0batch_normalization_215/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_215/beta*
_output_shapes
: *
dtype0
?
batch_normalization_215/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *.
shared_namebatch_normalization_215/gamma
?
1batch_normalization_215/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_215/gamma*
_output_shapes
: *
dtype0
v
conv2d_215/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_215/bias
o
#conv2d_215/bias/Read/ReadVariableOpReadVariableOpconv2d_215/bias*
_output_shapes
: *
dtype0
?
conv2d_215/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *"
shared_nameconv2d_215/kernel

%conv2d_215/kernel/Read/ReadVariableOpReadVariableOpconv2d_215/kernel*&
_output_shapes
:  *
dtype0
?
'batch_normalization_214/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *8
shared_name)'batch_normalization_214/moving_variance
?
;batch_normalization_214/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_214/moving_variance*
_output_shapes
: *
dtype0
?
#batch_normalization_214/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#batch_normalization_214/moving_mean
?
7batch_normalization_214/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_214/moving_mean*
_output_shapes
: *
dtype0
?
batch_normalization_214/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *-
shared_namebatch_normalization_214/beta
?
0batch_normalization_214/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_214/beta*
_output_shapes
: *
dtype0
?
batch_normalization_214/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *.
shared_namebatch_normalization_214/gamma
?
1batch_normalization_214/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_214/gamma*
_output_shapes
: *
dtype0
v
conv2d_214/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_214/bias
o
#conv2d_214/bias/Read/ReadVariableOpReadVariableOpconv2d_214/bias*
_output_shapes
: *
dtype0
?
conv2d_214/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameconv2d_214/kernel

%conv2d_214/kernel/Read/ReadVariableOpReadVariableOpconv2d_214/kernel*&
_output_shapes
: *
dtype0
?
serving_default_input_35Placeholder*/
_output_shapes
:?????????  *
dtype0*$
shape:?????????  
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_35conv2d_214/kernelconv2d_214/biasbatch_normalization_214/gammabatch_normalization_214/beta#batch_normalization_214/moving_mean'batch_normalization_214/moving_varianceconv2d_215/kernelconv2d_215/biasbatch_normalization_215/gammabatch_normalization_215/beta#batch_normalization_215/moving_mean'batch_normalization_215/moving_varianceconv2d_216/kernelconv2d_216/biasbatch_normalization_216/gammabatch_normalization_216/beta#batch_normalization_216/moving_mean'batch_normalization_216/moving_varianceconv2d_217/kernelconv2d_217/biasbatch_normalization_217/gammabatch_normalization_217/beta#batch_normalization_217/moving_mean'batch_normalization_217/moving_varianceconv2d_218/kernelconv2d_218/biasbatch_normalization_218/gammabatch_normalization_218/beta#batch_normalization_218/moving_mean'batch_normalization_218/moving_varianceconv2d_219/kernelconv2d_219/biasbatch_normalization_219/gammabatch_normalization_219/beta#batch_normalization_219/moving_mean'batch_normalization_219/moving_varianceconv2d_220/kernelconv2d_220/biasbatch_normalization_220/gammabatch_normalization_220/beta#batch_normalization_220/moving_mean'batch_normalization_220/moving_varianceconv2d_221/kernelconv2d_221/biasbatch_normalization_221/gammabatch_normalization_221/beta#batch_normalization_221/moving_mean'batch_normalization_221/moving_variancedense_34/kerneldense_34/bias*>
Tin7
523*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*T
_read_only_resource_inputs6
42	
 !"#$%&'()*+,-./012*-
config_proto

CPU

GPU 2J 8? *.
f)R'
%__inference_signature_wrapper_3443964

NoOpNoOp
??
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*??
value??B?? B??
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer-7
	layer_with_weights-4
	layer-8

layer_with_weights-5

layer-9
layer-10
layer_with_weights-6
layer-11
layer_with_weights-7
layer-12
layer-13
layer-14
layer_with_weights-8
layer-15
layer_with_weights-9
layer-16
layer-17
layer_with_weights-10
layer-18
layer_with_weights-11
layer-19
layer-20
layer-21
layer_with_weights-12
layer-22
layer_with_weights-13
layer-23
layer-24
layer_with_weights-14
layer-25
layer_with_weights-15
layer-26
layer-27
layer-28
layer-29
layer_with_weights-16
layer-30
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$__call__
*%&call_and_return_all_conditional_losses
&_default_save_signature
'	optimizer
(
signatures*
* 
?
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses

/kernel
0bias
 1_jit_compiled_convolution_op*
?
2	variables
3trainable_variables
4regularization_losses
5	keras_api
6__call__
*7&call_and_return_all_conditional_losses
8axis
	9gamma
:beta
;moving_mean
<moving_variance*
?
=	variables
>trainable_variables
?regularization_losses
@	keras_api
A__call__
*B&call_and_return_all_conditional_losses* 
?
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
G__call__
*H&call_and_return_all_conditional_losses

Ikernel
Jbias
 K_jit_compiled_convolution_op*
?
L	variables
Mtrainable_variables
Nregularization_losses
O	keras_api
P__call__
*Q&call_and_return_all_conditional_losses
Raxis
	Sgamma
Tbeta
Umoving_mean
Vmoving_variance*
?
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
[__call__
*\&call_and_return_all_conditional_losses* 
?
]	variables
^trainable_variables
_regularization_losses
`	keras_api
a__call__
*b&call_and_return_all_conditional_losses* 
?
c	variables
dtrainable_variables
eregularization_losses
f	keras_api
g__call__
*h&call_and_return_all_conditional_losses

ikernel
jbias
 k_jit_compiled_convolution_op*
?
l	variables
mtrainable_variables
nregularization_losses
o	keras_api
p__call__
*q&call_and_return_all_conditional_losses
raxis
	sgamma
tbeta
umoving_mean
vmoving_variance*
?
w	variables
xtrainable_variables
yregularization_losses
z	keras_api
{__call__
*|&call_and_return_all_conditional_losses* 
?
}	variables
~trainable_variables
regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?kernel
	?bias
!?_jit_compiled_convolution_op*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
	?axis

?gamma
	?beta
?moving_mean
?moving_variance*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses* 
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses* 
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?kernel
	?bias
!?_jit_compiled_convolution_op*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
	?axis

?gamma
	?beta
?moving_mean
?moving_variance*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses* 
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?kernel
	?bias
!?_jit_compiled_convolution_op*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
	?axis

?gamma
	?beta
?moving_mean
?moving_variance*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses* 
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses* 
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?kernel
	?bias
!?_jit_compiled_convolution_op*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
	?axis

?gamma
	?beta
?moving_mean
?moving_variance*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses* 
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?kernel
	?bias
!?_jit_compiled_convolution_op*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
	?axis

?gamma
	?beta
?moving_mean
?moving_variance*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses* 
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses* 
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses* 
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?kernel
	?bias*
?
/0
01
92
:3
;4
<5
I6
J7
S8
T9
U10
V11
i12
j13
s14
t15
u16
v17
?18
?19
?20
?21
?22
?23
?24
?25
?26
?27
?28
?29
?30
?31
?32
?33
?34
?35
?36
?37
?38
?39
?40
?41
?42
?43
?44
?45
?46
?47
?48
?49*
?
/0
01
92
:3
I4
J5
S6
T7
i8
j9
s10
t11
?12
?13
?14
?15
?16
?17
?18
?19
?20
?21
?22
?23
?24
?25
?26
?27
?28
?29
?30
?31
?32
?33*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
 	variables
!trainable_variables
"regularization_losses
$__call__
&_default_save_signature
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses*
:
?trace_0
?trace_1
?trace_2
?trace_3* 
:
?trace_0
?trace_1
?trace_2
?trace_3* 
* 
* 

?serving_default* 

/0
01*

/0
01*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
a[
VARIABLE_VALUEconv2d_214/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_214/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
90
:1
;2
<3*

90
:1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
2	variables
3trainable_variables
4regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses*

?trace_0
?trace_1* 

?trace_0
?trace_1* 
* 
lf
VARIABLE_VALUEbatch_normalization_214/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEbatch_normalization_214/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE#batch_normalization_214/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUE'batch_normalization_214/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
=	variables
>trainable_variables
?regularization_losses
A__call__
*B&call_and_return_all_conditional_losses
&B"call_and_return_conditional_losses* 

?trace_0* 

?trace_0* 

I0
J1*

I0
J1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
G__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
a[
VARIABLE_VALUEconv2d_215/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_215/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
S0
T1
U2
V3*

S0
T1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
L	variables
Mtrainable_variables
Nregularization_losses
P__call__
*Q&call_and_return_all_conditional_losses
&Q"call_and_return_conditional_losses*

?trace_0
?trace_1* 

?trace_0
?trace_1* 
* 
lf
VARIABLE_VALUEbatch_normalization_215/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEbatch_normalization_215/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE#batch_normalization_215/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUE'batch_normalization_215/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
W	variables
Xtrainable_variables
Yregularization_losses
[__call__
*\&call_and_return_all_conditional_losses
&\"call_and_return_conditional_losses* 

?trace_0* 

?trace_0* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
]	variables
^trainable_variables
_regularization_losses
a__call__
*b&call_and_return_all_conditional_losses
&b"call_and_return_conditional_losses* 

?trace_0* 

?trace_0* 

i0
j1*

i0
j1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
c	variables
dtrainable_variables
eregularization_losses
g__call__
*h&call_and_return_all_conditional_losses
&h"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
a[
VARIABLE_VALUEconv2d_216/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_216/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
s0
t1
u2
v3*

s0
t1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
l	variables
mtrainable_variables
nregularization_losses
p__call__
*q&call_and_return_all_conditional_losses
&q"call_and_return_conditional_losses*

?trace_0
?trace_1* 

?trace_0
?trace_1* 
* 
lf
VARIABLE_VALUEbatch_normalization_216/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEbatch_normalization_216/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE#batch_normalization_216/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUE'batch_normalization_216/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
w	variables
xtrainable_variables
yregularization_losses
{__call__
*|&call_and_return_all_conditional_losses
&|"call_and_return_conditional_losses* 

?trace_0* 

?trace_0* 

?0
?1*

?0
?1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
}	variables
~trainable_variables
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
a[
VARIABLE_VALUEconv2d_217/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_217/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
$
?0
?1
?2
?3*

?0
?1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*

?trace_0
?trace_1* 

?trace_0
?trace_1* 
* 
lf
VARIABLE_VALUEbatch_normalization_217/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEbatch_normalization_217/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE#batch_normalization_217/moving_mean;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUE'batch_normalization_217/moving_variance?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 

?trace_0* 

?trace_0* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 

?trace_0* 

?trace_0* 

?0
?1*

?0
?1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
a[
VARIABLE_VALUEconv2d_218/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_218/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
$
?0
?1
?2
?3*

?0
?1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*

?trace_0
?trace_1* 

?trace_0
?trace_1* 
* 
lf
VARIABLE_VALUEbatch_normalization_218/gamma5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEbatch_normalization_218/beta4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE#batch_normalization_218/moving_mean;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUE'batch_normalization_218/moving_variance?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 

?trace_0* 

?trace_0* 

?0
?1*

?0
?1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
b\
VARIABLE_VALUEconv2d_219/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEconv2d_219/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
$
?0
?1
?2
?3*

?0
?1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*

?trace_0
?trace_1* 

?trace_0
?trace_1* 
* 
mg
VARIABLE_VALUEbatch_normalization_219/gamma6layer_with_weights-11/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUEbatch_normalization_219/beta5layer_with_weights-11/beta/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUE#batch_normalization_219/moving_mean<layer_with_weights-11/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
?{
VARIABLE_VALUE'batch_normalization_219/moving_variance@layer_with_weights-11/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 

?trace_0* 

?trace_0* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 

?trace_0* 

?trace_0* 

?0
?1*

?0
?1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
b\
VARIABLE_VALUEconv2d_220/kernel7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEconv2d_220/bias5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
$
?0
?1
?2
?3*

?0
?1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*

?trace_0
?trace_1* 

?trace_0
?trace_1* 
* 
mg
VARIABLE_VALUEbatch_normalization_220/gamma6layer_with_weights-13/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUEbatch_normalization_220/beta5layer_with_weights-13/beta/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUE#batch_normalization_220/moving_mean<layer_with_weights-13/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
?{
VARIABLE_VALUE'batch_normalization_220/moving_variance@layer_with_weights-13/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 

?trace_0* 

?trace_0* 

?0
?1*

?0
?1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
b\
VARIABLE_VALUEconv2d_221/kernel7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEconv2d_221/bias5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
$
?0
?1
?2
?3*

?0
?1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*

?trace_0
?trace_1* 

?trace_0
?trace_1* 
* 
mg
VARIABLE_VALUEbatch_normalization_221/gamma6layer_with_weights-15/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUEbatch_normalization_221/beta5layer_with_weights-15/beta/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUE#batch_normalization_221/moving_mean<layer_with_weights-15/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
?{
VARIABLE_VALUE'batch_normalization_221/moving_variance@layer_with_weights-15/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 

?trace_0* 

?trace_0* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 

?trace_0* 

?trace_0* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 

?trace_0* 

?trace_0* 

?0
?1*

?0
?1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
`Z
VARIABLE_VALUEdense_34/kernel7layer_with_weights-16/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_34/bias5layer_with_weights-16/bias/.ATTRIBUTES/VARIABLE_VALUE*
?
;0
<1
U2
V3
u4
v5
?6
?7
?8
?9
?10
?11
?12
?13
?14
?15*
?
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
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30*

?0
?1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

;0
<1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

U0
V1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

u0
v1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

?0
?1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

?0
?1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

?0
?1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

?0
?1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

?0
?1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
?	variables
?	keras_api

?total

?count*
M
?	variables
?	keras_api

?total

?count
?
_fn_kwargs*

?0
?1*

?	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

?0
?1*

?	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv2d_214/kernel/Read/ReadVariableOp#conv2d_214/bias/Read/ReadVariableOp1batch_normalization_214/gamma/Read/ReadVariableOp0batch_normalization_214/beta/Read/ReadVariableOp7batch_normalization_214/moving_mean/Read/ReadVariableOp;batch_normalization_214/moving_variance/Read/ReadVariableOp%conv2d_215/kernel/Read/ReadVariableOp#conv2d_215/bias/Read/ReadVariableOp1batch_normalization_215/gamma/Read/ReadVariableOp0batch_normalization_215/beta/Read/ReadVariableOp7batch_normalization_215/moving_mean/Read/ReadVariableOp;batch_normalization_215/moving_variance/Read/ReadVariableOp%conv2d_216/kernel/Read/ReadVariableOp#conv2d_216/bias/Read/ReadVariableOp1batch_normalization_216/gamma/Read/ReadVariableOp0batch_normalization_216/beta/Read/ReadVariableOp7batch_normalization_216/moving_mean/Read/ReadVariableOp;batch_normalization_216/moving_variance/Read/ReadVariableOp%conv2d_217/kernel/Read/ReadVariableOp#conv2d_217/bias/Read/ReadVariableOp1batch_normalization_217/gamma/Read/ReadVariableOp0batch_normalization_217/beta/Read/ReadVariableOp7batch_normalization_217/moving_mean/Read/ReadVariableOp;batch_normalization_217/moving_variance/Read/ReadVariableOp%conv2d_218/kernel/Read/ReadVariableOp#conv2d_218/bias/Read/ReadVariableOp1batch_normalization_218/gamma/Read/ReadVariableOp0batch_normalization_218/beta/Read/ReadVariableOp7batch_normalization_218/moving_mean/Read/ReadVariableOp;batch_normalization_218/moving_variance/Read/ReadVariableOp%conv2d_219/kernel/Read/ReadVariableOp#conv2d_219/bias/Read/ReadVariableOp1batch_normalization_219/gamma/Read/ReadVariableOp0batch_normalization_219/beta/Read/ReadVariableOp7batch_normalization_219/moving_mean/Read/ReadVariableOp;batch_normalization_219/moving_variance/Read/ReadVariableOp%conv2d_220/kernel/Read/ReadVariableOp#conv2d_220/bias/Read/ReadVariableOp1batch_normalization_220/gamma/Read/ReadVariableOp0batch_normalization_220/beta/Read/ReadVariableOp7batch_normalization_220/moving_mean/Read/ReadVariableOp;batch_normalization_220/moving_variance/Read/ReadVariableOp%conv2d_221/kernel/Read/ReadVariableOp#conv2d_221/bias/Read/ReadVariableOp1batch_normalization_221/gamma/Read/ReadVariableOp0batch_normalization_221/beta/Read/ReadVariableOp7batch_normalization_221/moving_mean/Read/ReadVariableOp;batch_normalization_221/moving_variance/Read/ReadVariableOp#dense_34/kernel/Read/ReadVariableOp!dense_34/bias/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpConst*C
Tin<
:28*
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
GPU 2J 8? *)
f$R"
 __inference__traced_save_3445525
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_214/kernelconv2d_214/biasbatch_normalization_214/gammabatch_normalization_214/beta#batch_normalization_214/moving_mean'batch_normalization_214/moving_varianceconv2d_215/kernelconv2d_215/biasbatch_normalization_215/gammabatch_normalization_215/beta#batch_normalization_215/moving_mean'batch_normalization_215/moving_varianceconv2d_216/kernelconv2d_216/biasbatch_normalization_216/gammabatch_normalization_216/beta#batch_normalization_216/moving_mean'batch_normalization_216/moving_varianceconv2d_217/kernelconv2d_217/biasbatch_normalization_217/gammabatch_normalization_217/beta#batch_normalization_217/moving_mean'batch_normalization_217/moving_varianceconv2d_218/kernelconv2d_218/biasbatch_normalization_218/gammabatch_normalization_218/beta#batch_normalization_218/moving_mean'batch_normalization_218/moving_varianceconv2d_219/kernelconv2d_219/biasbatch_normalization_219/gammabatch_normalization_219/beta#batch_normalization_219/moving_mean'batch_normalization_219/moving_varianceconv2d_220/kernelconv2d_220/biasbatch_normalization_220/gammabatch_normalization_220/beta#batch_normalization_220/moving_mean'batch_normalization_220/moving_varianceconv2d_221/kernelconv2d_221/biasbatch_normalization_221/gammabatch_normalization_221/beta#batch_normalization_221/moving_mean'batch_normalization_221/moving_variancedense_34/kerneldense_34/biastotal_1count_1totalcount*B
Tin;
927*
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
GPU 2J 8? *,
f'R%
#__inference__traced_restore_3445697ڻ
??
?2
E__inference_network1_layer_call_and_return_conditional_losses_3444542

inputsC
)conv2d_214_conv2d_readvariableop_resource: 8
*conv2d_214_biasadd_readvariableop_resource: =
/batch_normalization_214_readvariableop_resource: ?
1batch_normalization_214_readvariableop_1_resource: N
@batch_normalization_214_fusedbatchnormv3_readvariableop_resource: P
Bbatch_normalization_214_fusedbatchnormv3_readvariableop_1_resource: C
)conv2d_215_conv2d_readvariableop_resource:  8
*conv2d_215_biasadd_readvariableop_resource: =
/batch_normalization_215_readvariableop_resource: ?
1batch_normalization_215_readvariableop_1_resource: N
@batch_normalization_215_fusedbatchnormv3_readvariableop_resource: P
Bbatch_normalization_215_fusedbatchnormv3_readvariableop_1_resource: C
)conv2d_216_conv2d_readvariableop_resource: @8
*conv2d_216_biasadd_readvariableop_resource:@=
/batch_normalization_216_readvariableop_resource:@?
1batch_normalization_216_readvariableop_1_resource:@N
@batch_normalization_216_fusedbatchnormv3_readvariableop_resource:@P
Bbatch_normalization_216_fusedbatchnormv3_readvariableop_1_resource:@C
)conv2d_217_conv2d_readvariableop_resource:@@8
*conv2d_217_biasadd_readvariableop_resource:@=
/batch_normalization_217_readvariableop_resource:@?
1batch_normalization_217_readvariableop_1_resource:@N
@batch_normalization_217_fusedbatchnormv3_readvariableop_resource:@P
Bbatch_normalization_217_fusedbatchnormv3_readvariableop_1_resource:@D
)conv2d_218_conv2d_readvariableop_resource:@?9
*conv2d_218_biasadd_readvariableop_resource:	?>
/batch_normalization_218_readvariableop_resource:	?@
1batch_normalization_218_readvariableop_1_resource:	?O
@batch_normalization_218_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_218_fusedbatchnormv3_readvariableop_1_resource:	?E
)conv2d_219_conv2d_readvariableop_resource:??9
*conv2d_219_biasadd_readvariableop_resource:	?>
/batch_normalization_219_readvariableop_resource:	?@
1batch_normalization_219_readvariableop_1_resource:	?O
@batch_normalization_219_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_219_fusedbatchnormv3_readvariableop_1_resource:	?E
)conv2d_220_conv2d_readvariableop_resource:??9
*conv2d_220_biasadd_readvariableop_resource:	?>
/batch_normalization_220_readvariableop_resource:	?@
1batch_normalization_220_readvariableop_1_resource:	?O
@batch_normalization_220_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_220_fusedbatchnormv3_readvariableop_1_resource:	?E
)conv2d_221_conv2d_readvariableop_resource:??9
*conv2d_221_biasadd_readvariableop_resource:	?>
/batch_normalization_221_readvariableop_resource:	?@
1batch_normalization_221_readvariableop_1_resource:	?O
@batch_normalization_221_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_221_fusedbatchnormv3_readvariableop_1_resource:	?:
'dense_34_matmul_readvariableop_resource:	?
6
(dense_34_biasadd_readvariableop_resource:

identity??&batch_normalization_214/AssignNewValue?(batch_normalization_214/AssignNewValue_1?7batch_normalization_214/FusedBatchNormV3/ReadVariableOp?9batch_normalization_214/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_214/ReadVariableOp?(batch_normalization_214/ReadVariableOp_1?&batch_normalization_215/AssignNewValue?(batch_normalization_215/AssignNewValue_1?7batch_normalization_215/FusedBatchNormV3/ReadVariableOp?9batch_normalization_215/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_215/ReadVariableOp?(batch_normalization_215/ReadVariableOp_1?&batch_normalization_216/AssignNewValue?(batch_normalization_216/AssignNewValue_1?7batch_normalization_216/FusedBatchNormV3/ReadVariableOp?9batch_normalization_216/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_216/ReadVariableOp?(batch_normalization_216/ReadVariableOp_1?&batch_normalization_217/AssignNewValue?(batch_normalization_217/AssignNewValue_1?7batch_normalization_217/FusedBatchNormV3/ReadVariableOp?9batch_normalization_217/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_217/ReadVariableOp?(batch_normalization_217/ReadVariableOp_1?&batch_normalization_218/AssignNewValue?(batch_normalization_218/AssignNewValue_1?7batch_normalization_218/FusedBatchNormV3/ReadVariableOp?9batch_normalization_218/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_218/ReadVariableOp?(batch_normalization_218/ReadVariableOp_1?&batch_normalization_219/AssignNewValue?(batch_normalization_219/AssignNewValue_1?7batch_normalization_219/FusedBatchNormV3/ReadVariableOp?9batch_normalization_219/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_219/ReadVariableOp?(batch_normalization_219/ReadVariableOp_1?&batch_normalization_220/AssignNewValue?(batch_normalization_220/AssignNewValue_1?7batch_normalization_220/FusedBatchNormV3/ReadVariableOp?9batch_normalization_220/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_220/ReadVariableOp?(batch_normalization_220/ReadVariableOp_1?&batch_normalization_221/AssignNewValue?(batch_normalization_221/AssignNewValue_1?7batch_normalization_221/FusedBatchNormV3/ReadVariableOp?9batch_normalization_221/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_221/ReadVariableOp?(batch_normalization_221/ReadVariableOp_1?!conv2d_214/BiasAdd/ReadVariableOp? conv2d_214/Conv2D/ReadVariableOp?!conv2d_215/BiasAdd/ReadVariableOp? conv2d_215/Conv2D/ReadVariableOp?!conv2d_216/BiasAdd/ReadVariableOp? conv2d_216/Conv2D/ReadVariableOp?!conv2d_217/BiasAdd/ReadVariableOp? conv2d_217/Conv2D/ReadVariableOp?!conv2d_218/BiasAdd/ReadVariableOp? conv2d_218/Conv2D/ReadVariableOp?!conv2d_219/BiasAdd/ReadVariableOp? conv2d_219/Conv2D/ReadVariableOp?!conv2d_220/BiasAdd/ReadVariableOp? conv2d_220/Conv2D/ReadVariableOp?!conv2d_221/BiasAdd/ReadVariableOp? conv2d_221/Conv2D/ReadVariableOp?dense_34/BiasAdd/ReadVariableOp?dense_34/MatMul/ReadVariableOp?
 conv2d_214/Conv2D/ReadVariableOpReadVariableOp)conv2d_214_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
conv2d_214/Conv2DConv2Dinputs(conv2d_214/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   *
paddingSAME*
strides
?
!conv2d_214/BiasAdd/ReadVariableOpReadVariableOp*conv2d_214_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv2d_214/BiasAddBiasAddconv2d_214/Conv2D:output:0)conv2d_214/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   ?
&batch_normalization_214/ReadVariableOpReadVariableOp/batch_normalization_214_readvariableop_resource*
_output_shapes
: *
dtype0?
(batch_normalization_214/ReadVariableOp_1ReadVariableOp1batch_normalization_214_readvariableop_1_resource*
_output_shapes
: *
dtype0?
7batch_normalization_214/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_214_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0?
9batch_normalization_214/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_214_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0?
(batch_normalization_214/FusedBatchNormV3FusedBatchNormV3conv2d_214/BiasAdd:output:0.batch_normalization_214/ReadVariableOp:value:00batch_normalization_214/ReadVariableOp_1:value:0?batch_normalization_214/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_214/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????   : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<?
&batch_normalization_214/AssignNewValueAssignVariableOp@batch_normalization_214_fusedbatchnormv3_readvariableop_resource5batch_normalization_214/FusedBatchNormV3:batch_mean:08^batch_normalization_214/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(?
(batch_normalization_214/AssignNewValue_1AssignVariableOpBbatch_normalization_214_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_214/FusedBatchNormV3:batch_variance:0:^batch_normalization_214/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(?
activation_214/ReluRelu,batch_normalization_214/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????   ?
 conv2d_215/Conv2D/ReadVariableOpReadVariableOp)conv2d_215_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0?
conv2d_215/Conv2DConv2D!activation_214/Relu:activations:0(conv2d_215/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   *
paddingSAME*
strides
?
!conv2d_215/BiasAdd/ReadVariableOpReadVariableOp*conv2d_215_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv2d_215/BiasAddBiasAddconv2d_215/Conv2D:output:0)conv2d_215/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   ?
&batch_normalization_215/ReadVariableOpReadVariableOp/batch_normalization_215_readvariableop_resource*
_output_shapes
: *
dtype0?
(batch_normalization_215/ReadVariableOp_1ReadVariableOp1batch_normalization_215_readvariableop_1_resource*
_output_shapes
: *
dtype0?
7batch_normalization_215/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_215_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0?
9batch_normalization_215/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_215_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0?
(batch_normalization_215/FusedBatchNormV3FusedBatchNormV3conv2d_215/BiasAdd:output:0.batch_normalization_215/ReadVariableOp:value:00batch_normalization_215/ReadVariableOp_1:value:0?batch_normalization_215/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_215/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????   : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<?
&batch_normalization_215/AssignNewValueAssignVariableOp@batch_normalization_215_fusedbatchnormv3_readvariableop_resource5batch_normalization_215/FusedBatchNormV3:batch_mean:08^batch_normalization_215/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(?
(batch_normalization_215/AssignNewValue_1AssignVariableOpBbatch_normalization_215_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_215/FusedBatchNormV3:batch_variance:0:^batch_normalization_215/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(?
activation_215/ReluRelu,batch_normalization_215/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????   ?
average_pooling2d_107/AvgPoolAvgPool!activation_215/Relu:activations:0*
T0*/
_output_shapes
:????????? *
ksize
*
paddingSAME*
strides
?
 conv2d_216/Conv2D/ReadVariableOpReadVariableOp)conv2d_216_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
conv2d_216/Conv2DConv2D&average_pooling2d_107/AvgPool:output:0(conv2d_216/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
?
!conv2d_216/BiasAdd/ReadVariableOpReadVariableOp*conv2d_216_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
conv2d_216/BiasAddBiasAddconv2d_216/Conv2D:output:0)conv2d_216/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@?
&batch_normalization_216/ReadVariableOpReadVariableOp/batch_normalization_216_readvariableop_resource*
_output_shapes
:@*
dtype0?
(batch_normalization_216/ReadVariableOp_1ReadVariableOp1batch_normalization_216_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
7batch_normalization_216/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_216_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
9batch_normalization_216/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_216_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
(batch_normalization_216/FusedBatchNormV3FusedBatchNormV3conv2d_216/BiasAdd:output:0.batch_normalization_216/ReadVariableOp:value:00batch_normalization_216/ReadVariableOp_1:value:0?batch_normalization_216/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_216/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<?
&batch_normalization_216/AssignNewValueAssignVariableOp@batch_normalization_216_fusedbatchnormv3_readvariableop_resource5batch_normalization_216/FusedBatchNormV3:batch_mean:08^batch_normalization_216/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(?
(batch_normalization_216/AssignNewValue_1AssignVariableOpBbatch_normalization_216_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_216/FusedBatchNormV3:batch_variance:0:^batch_normalization_216/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(?
activation_216/ReluRelu,batch_normalization_216/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????@?
 conv2d_217/Conv2D/ReadVariableOpReadVariableOp)conv2d_217_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0?
conv2d_217/Conv2DConv2D!activation_216/Relu:activations:0(conv2d_217/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
?
!conv2d_217/BiasAdd/ReadVariableOpReadVariableOp*conv2d_217_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
conv2d_217/BiasAddBiasAddconv2d_217/Conv2D:output:0)conv2d_217/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@?
&batch_normalization_217/ReadVariableOpReadVariableOp/batch_normalization_217_readvariableop_resource*
_output_shapes
:@*
dtype0?
(batch_normalization_217/ReadVariableOp_1ReadVariableOp1batch_normalization_217_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
7batch_normalization_217/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_217_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
9batch_normalization_217/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_217_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
(batch_normalization_217/FusedBatchNormV3FusedBatchNormV3conv2d_217/BiasAdd:output:0.batch_normalization_217/ReadVariableOp:value:00batch_normalization_217/ReadVariableOp_1:value:0?batch_normalization_217/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_217/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<?
&batch_normalization_217/AssignNewValueAssignVariableOp@batch_normalization_217_fusedbatchnormv3_readvariableop_resource5batch_normalization_217/FusedBatchNormV3:batch_mean:08^batch_normalization_217/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(?
(batch_normalization_217/AssignNewValue_1AssignVariableOpBbatch_normalization_217_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_217/FusedBatchNormV3:batch_variance:0:^batch_normalization_217/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(?
activation_217/ReluRelu,batch_normalization_217/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????@?
average_pooling2d_108/AvgPoolAvgPool!activation_217/Relu:activations:0*
T0*/
_output_shapes
:?????????@*
ksize
*
paddingSAME*
strides
?
 conv2d_218/Conv2D/ReadVariableOpReadVariableOp)conv2d_218_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
conv2d_218/Conv2DConv2D&average_pooling2d_108/AvgPool:output:0(conv2d_218/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
?
!conv2d_218/BiasAdd/ReadVariableOpReadVariableOp*conv2d_218_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv2d_218/BiasAddBiasAddconv2d_218/Conv2D:output:0)conv2d_218/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:???????????
&batch_normalization_218/ReadVariableOpReadVariableOp/batch_normalization_218_readvariableop_resource*
_output_shapes	
:?*
dtype0?
(batch_normalization_218/ReadVariableOp_1ReadVariableOp1batch_normalization_218_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
7batch_normalization_218/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_218_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
9batch_normalization_218/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_218_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
(batch_normalization_218/FusedBatchNormV3FusedBatchNormV3conv2d_218/BiasAdd:output:0.batch_normalization_218/ReadVariableOp:value:00batch_normalization_218/ReadVariableOp_1:value:0?batch_normalization_218/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_218/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<?
&batch_normalization_218/AssignNewValueAssignVariableOp@batch_normalization_218_fusedbatchnormv3_readvariableop_resource5batch_normalization_218/FusedBatchNormV3:batch_mean:08^batch_normalization_218/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(?
(batch_normalization_218/AssignNewValue_1AssignVariableOpBbatch_normalization_218_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_218/FusedBatchNormV3:batch_variance:0:^batch_normalization_218/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(?
activation_218/ReluRelu,batch_normalization_218/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:???????????
 conv2d_219/Conv2D/ReadVariableOpReadVariableOp)conv2d_219_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype0?
conv2d_219/Conv2DConv2D!activation_218/Relu:activations:0(conv2d_219/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
?
!conv2d_219/BiasAdd/ReadVariableOpReadVariableOp*conv2d_219_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv2d_219/BiasAddBiasAddconv2d_219/Conv2D:output:0)conv2d_219/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:???????????
&batch_normalization_219/ReadVariableOpReadVariableOp/batch_normalization_219_readvariableop_resource*
_output_shapes	
:?*
dtype0?
(batch_normalization_219/ReadVariableOp_1ReadVariableOp1batch_normalization_219_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
7batch_normalization_219/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_219_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
9batch_normalization_219/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_219_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
(batch_normalization_219/FusedBatchNormV3FusedBatchNormV3conv2d_219/BiasAdd:output:0.batch_normalization_219/ReadVariableOp:value:00batch_normalization_219/ReadVariableOp_1:value:0?batch_normalization_219/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_219/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<?
&batch_normalization_219/AssignNewValueAssignVariableOp@batch_normalization_219_fusedbatchnormv3_readvariableop_resource5batch_normalization_219/FusedBatchNormV3:batch_mean:08^batch_normalization_219/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(?
(batch_normalization_219/AssignNewValue_1AssignVariableOpBbatch_normalization_219_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_219/FusedBatchNormV3:batch_variance:0:^batch_normalization_219/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(?
activation_219/ReluRelu,batch_normalization_219/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:???????????
average_pooling2d_109/AvgPoolAvgPool!activation_219/Relu:activations:0*
T0*0
_output_shapes
:??????????*
ksize
*
paddingSAME*
strides
?
 conv2d_220/Conv2D/ReadVariableOpReadVariableOp)conv2d_220_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype0?
conv2d_220/Conv2DConv2D&average_pooling2d_109/AvgPool:output:0(conv2d_220/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
?
!conv2d_220/BiasAdd/ReadVariableOpReadVariableOp*conv2d_220_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv2d_220/BiasAddBiasAddconv2d_220/Conv2D:output:0)conv2d_220/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:???????????
&batch_normalization_220/ReadVariableOpReadVariableOp/batch_normalization_220_readvariableop_resource*
_output_shapes	
:?*
dtype0?
(batch_normalization_220/ReadVariableOp_1ReadVariableOp1batch_normalization_220_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
7batch_normalization_220/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_220_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
9batch_normalization_220/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_220_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
(batch_normalization_220/FusedBatchNormV3FusedBatchNormV3conv2d_220/BiasAdd:output:0.batch_normalization_220/ReadVariableOp:value:00batch_normalization_220/ReadVariableOp_1:value:0?batch_normalization_220/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_220/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<?
&batch_normalization_220/AssignNewValueAssignVariableOp@batch_normalization_220_fusedbatchnormv3_readvariableop_resource5batch_normalization_220/FusedBatchNormV3:batch_mean:08^batch_normalization_220/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(?
(batch_normalization_220/AssignNewValue_1AssignVariableOpBbatch_normalization_220_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_220/FusedBatchNormV3:batch_variance:0:^batch_normalization_220/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(?
activation_220/ReluRelu,batch_normalization_220/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:???????????
 conv2d_221/Conv2D/ReadVariableOpReadVariableOp)conv2d_221_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype0?
conv2d_221/Conv2DConv2D!activation_220/Relu:activations:0(conv2d_221/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
?
!conv2d_221/BiasAdd/ReadVariableOpReadVariableOp*conv2d_221_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv2d_221/BiasAddBiasAddconv2d_221/Conv2D:output:0)conv2d_221/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:???????????
&batch_normalization_221/ReadVariableOpReadVariableOp/batch_normalization_221_readvariableop_resource*
_output_shapes	
:?*
dtype0?
(batch_normalization_221/ReadVariableOp_1ReadVariableOp1batch_normalization_221_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
7batch_normalization_221/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_221_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
9batch_normalization_221/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_221_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
(batch_normalization_221/FusedBatchNormV3FusedBatchNormV3conv2d_221/BiasAdd:output:0.batch_normalization_221/ReadVariableOp:value:00batch_normalization_221/ReadVariableOp_1:value:0?batch_normalization_221/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_221/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<?
&batch_normalization_221/AssignNewValueAssignVariableOp@batch_normalization_221_fusedbatchnormv3_readvariableop_resource5batch_normalization_221/FusedBatchNormV3:batch_mean:08^batch_normalization_221/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(?
(batch_normalization_221/AssignNewValue_1AssignVariableOpBbatch_normalization_221_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_221/FusedBatchNormV3:batch_variance:0:^batch_normalization_221/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(?
activation_221/ReluRelu,batch_normalization_221/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:???????????
average_pooling2d_110/AvgPoolAvgPool!activation_221/Relu:activations:0*
T0*0
_output_shapes
:??????????*
ksize
*
paddingSAME*
strides
a
flatten_34/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ?
flatten_34/ReshapeReshape&average_pooling2d_110/AvgPool:output:0flatten_34/Const:output:0*
T0*(
_output_shapes
:???????????
dense_34/MatMul/ReadVariableOpReadVariableOp'dense_34_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype0?
dense_34/MatMulMatMulflatten_34/Reshape:output:0&dense_34/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
?
dense_34/BiasAdd/ReadVariableOpReadVariableOp(dense_34_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0?
dense_34/BiasAddBiasAdddense_34/MatMul:product:0'dense_34/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
h
IdentityIdentitydense_34/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????
?
NoOpNoOp'^batch_normalization_214/AssignNewValue)^batch_normalization_214/AssignNewValue_18^batch_normalization_214/FusedBatchNormV3/ReadVariableOp:^batch_normalization_214/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_214/ReadVariableOp)^batch_normalization_214/ReadVariableOp_1'^batch_normalization_215/AssignNewValue)^batch_normalization_215/AssignNewValue_18^batch_normalization_215/FusedBatchNormV3/ReadVariableOp:^batch_normalization_215/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_215/ReadVariableOp)^batch_normalization_215/ReadVariableOp_1'^batch_normalization_216/AssignNewValue)^batch_normalization_216/AssignNewValue_18^batch_normalization_216/FusedBatchNormV3/ReadVariableOp:^batch_normalization_216/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_216/ReadVariableOp)^batch_normalization_216/ReadVariableOp_1'^batch_normalization_217/AssignNewValue)^batch_normalization_217/AssignNewValue_18^batch_normalization_217/FusedBatchNormV3/ReadVariableOp:^batch_normalization_217/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_217/ReadVariableOp)^batch_normalization_217/ReadVariableOp_1'^batch_normalization_218/AssignNewValue)^batch_normalization_218/AssignNewValue_18^batch_normalization_218/FusedBatchNormV3/ReadVariableOp:^batch_normalization_218/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_218/ReadVariableOp)^batch_normalization_218/ReadVariableOp_1'^batch_normalization_219/AssignNewValue)^batch_normalization_219/AssignNewValue_18^batch_normalization_219/FusedBatchNormV3/ReadVariableOp:^batch_normalization_219/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_219/ReadVariableOp)^batch_normalization_219/ReadVariableOp_1'^batch_normalization_220/AssignNewValue)^batch_normalization_220/AssignNewValue_18^batch_normalization_220/FusedBatchNormV3/ReadVariableOp:^batch_normalization_220/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_220/ReadVariableOp)^batch_normalization_220/ReadVariableOp_1'^batch_normalization_221/AssignNewValue)^batch_normalization_221/AssignNewValue_18^batch_normalization_221/FusedBatchNormV3/ReadVariableOp:^batch_normalization_221/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_221/ReadVariableOp)^batch_normalization_221/ReadVariableOp_1"^conv2d_214/BiasAdd/ReadVariableOp!^conv2d_214/Conv2D/ReadVariableOp"^conv2d_215/BiasAdd/ReadVariableOp!^conv2d_215/Conv2D/ReadVariableOp"^conv2d_216/BiasAdd/ReadVariableOp!^conv2d_216/Conv2D/ReadVariableOp"^conv2d_217/BiasAdd/ReadVariableOp!^conv2d_217/Conv2D/ReadVariableOp"^conv2d_218/BiasAdd/ReadVariableOp!^conv2d_218/Conv2D/ReadVariableOp"^conv2d_219/BiasAdd/ReadVariableOp!^conv2d_219/Conv2D/ReadVariableOp"^conv2d_220/BiasAdd/ReadVariableOp!^conv2d_220/Conv2D/ReadVariableOp"^conv2d_221/BiasAdd/ReadVariableOp!^conv2d_221/Conv2D/ReadVariableOp ^dense_34/BiasAdd/ReadVariableOp^dense_34/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
:?????????  : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2P
&batch_normalization_214/AssignNewValue&batch_normalization_214/AssignNewValue2T
(batch_normalization_214/AssignNewValue_1(batch_normalization_214/AssignNewValue_12r
7batch_normalization_214/FusedBatchNormV3/ReadVariableOp7batch_normalization_214/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_214/FusedBatchNormV3/ReadVariableOp_19batch_normalization_214/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_214/ReadVariableOp&batch_normalization_214/ReadVariableOp2T
(batch_normalization_214/ReadVariableOp_1(batch_normalization_214/ReadVariableOp_12P
&batch_normalization_215/AssignNewValue&batch_normalization_215/AssignNewValue2T
(batch_normalization_215/AssignNewValue_1(batch_normalization_215/AssignNewValue_12r
7batch_normalization_215/FusedBatchNormV3/ReadVariableOp7batch_normalization_215/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_215/FusedBatchNormV3/ReadVariableOp_19batch_normalization_215/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_215/ReadVariableOp&batch_normalization_215/ReadVariableOp2T
(batch_normalization_215/ReadVariableOp_1(batch_normalization_215/ReadVariableOp_12P
&batch_normalization_216/AssignNewValue&batch_normalization_216/AssignNewValue2T
(batch_normalization_216/AssignNewValue_1(batch_normalization_216/AssignNewValue_12r
7batch_normalization_216/FusedBatchNormV3/ReadVariableOp7batch_normalization_216/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_216/FusedBatchNormV3/ReadVariableOp_19batch_normalization_216/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_216/ReadVariableOp&batch_normalization_216/ReadVariableOp2T
(batch_normalization_216/ReadVariableOp_1(batch_normalization_216/ReadVariableOp_12P
&batch_normalization_217/AssignNewValue&batch_normalization_217/AssignNewValue2T
(batch_normalization_217/AssignNewValue_1(batch_normalization_217/AssignNewValue_12r
7batch_normalization_217/FusedBatchNormV3/ReadVariableOp7batch_normalization_217/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_217/FusedBatchNormV3/ReadVariableOp_19batch_normalization_217/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_217/ReadVariableOp&batch_normalization_217/ReadVariableOp2T
(batch_normalization_217/ReadVariableOp_1(batch_normalization_217/ReadVariableOp_12P
&batch_normalization_218/AssignNewValue&batch_normalization_218/AssignNewValue2T
(batch_normalization_218/AssignNewValue_1(batch_normalization_218/AssignNewValue_12r
7batch_normalization_218/FusedBatchNormV3/ReadVariableOp7batch_normalization_218/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_218/FusedBatchNormV3/ReadVariableOp_19batch_normalization_218/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_218/ReadVariableOp&batch_normalization_218/ReadVariableOp2T
(batch_normalization_218/ReadVariableOp_1(batch_normalization_218/ReadVariableOp_12P
&batch_normalization_219/AssignNewValue&batch_normalization_219/AssignNewValue2T
(batch_normalization_219/AssignNewValue_1(batch_normalization_219/AssignNewValue_12r
7batch_normalization_219/FusedBatchNormV3/ReadVariableOp7batch_normalization_219/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_219/FusedBatchNormV3/ReadVariableOp_19batch_normalization_219/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_219/ReadVariableOp&batch_normalization_219/ReadVariableOp2T
(batch_normalization_219/ReadVariableOp_1(batch_normalization_219/ReadVariableOp_12P
&batch_normalization_220/AssignNewValue&batch_normalization_220/AssignNewValue2T
(batch_normalization_220/AssignNewValue_1(batch_normalization_220/AssignNewValue_12r
7batch_normalization_220/FusedBatchNormV3/ReadVariableOp7batch_normalization_220/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_220/FusedBatchNormV3/ReadVariableOp_19batch_normalization_220/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_220/ReadVariableOp&batch_normalization_220/ReadVariableOp2T
(batch_normalization_220/ReadVariableOp_1(batch_normalization_220/ReadVariableOp_12P
&batch_normalization_221/AssignNewValue&batch_normalization_221/AssignNewValue2T
(batch_normalization_221/AssignNewValue_1(batch_normalization_221/AssignNewValue_12r
7batch_normalization_221/FusedBatchNormV3/ReadVariableOp7batch_normalization_221/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_221/FusedBatchNormV3/ReadVariableOp_19batch_normalization_221/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_221/ReadVariableOp&batch_normalization_221/ReadVariableOp2T
(batch_normalization_221/ReadVariableOp_1(batch_normalization_221/ReadVariableOp_12F
!conv2d_214/BiasAdd/ReadVariableOp!conv2d_214/BiasAdd/ReadVariableOp2D
 conv2d_214/Conv2D/ReadVariableOp conv2d_214/Conv2D/ReadVariableOp2F
!conv2d_215/BiasAdd/ReadVariableOp!conv2d_215/BiasAdd/ReadVariableOp2D
 conv2d_215/Conv2D/ReadVariableOp conv2d_215/Conv2D/ReadVariableOp2F
!conv2d_216/BiasAdd/ReadVariableOp!conv2d_216/BiasAdd/ReadVariableOp2D
 conv2d_216/Conv2D/ReadVariableOp conv2d_216/Conv2D/ReadVariableOp2F
!conv2d_217/BiasAdd/ReadVariableOp!conv2d_217/BiasAdd/ReadVariableOp2D
 conv2d_217/Conv2D/ReadVariableOp conv2d_217/Conv2D/ReadVariableOp2F
!conv2d_218/BiasAdd/ReadVariableOp!conv2d_218/BiasAdd/ReadVariableOp2D
 conv2d_218/Conv2D/ReadVariableOp conv2d_218/Conv2D/ReadVariableOp2F
!conv2d_219/BiasAdd/ReadVariableOp!conv2d_219/BiasAdd/ReadVariableOp2D
 conv2d_219/Conv2D/ReadVariableOp conv2d_219/Conv2D/ReadVariableOp2F
!conv2d_220/BiasAdd/ReadVariableOp!conv2d_220/BiasAdd/ReadVariableOp2D
 conv2d_220/Conv2D/ReadVariableOp conv2d_220/Conv2D/ReadVariableOp2F
!conv2d_221/BiasAdd/ReadVariableOp!conv2d_221/BiasAdd/ReadVariableOp2D
 conv2d_221/Conv2D/ReadVariableOp conv2d_221/Conv2D/ReadVariableOp2B
dense_34/BiasAdd/ReadVariableOpdense_34/BiasAdd/ReadVariableOp2@
dense_34/MatMul/ReadVariableOpdense_34/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?	
?
9__inference_batch_normalization_215_layer_call_fn_3444678

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_215_layer_call_and_return_conditional_losses_3442158?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_214_layer_call_and_return_conditional_losses_3444623

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? ?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
c
G__inference_flatten_34_layer_call_and_return_conditional_losses_3442874

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
L
0__inference_activation_220_layer_call_fn_3445204

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
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_activation_220_layer_call_and_return_conditional_losses_3442833i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_220_layer_call_and_return_conditional_losses_3442483

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,?????????????????????????????
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?	
?
9__inference_batch_normalization_216_layer_call_fn_3444766

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_216_layer_call_and_return_conditional_losses_3442203?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
S
7__inference_average_pooling2d_107_layer_call_fn_3444729

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
GPU 2J 8? *[
fVRT
R__inference_average_pooling2d_107_layer_call_and_return_conditional_losses_3442178?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_217_layer_call_and_return_conditional_losses_3444906

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
L
0__inference_activation_215_layer_call_fn_3444719

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
:?????????   * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_activation_215_layer_call_and_return_conditional_losses_3442670h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????   "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????   :W S
/
_output_shapes
:?????????   
 
_user_specified_nameinputs
??
?
E__inference_network1_layer_call_and_return_conditional_losses_3442893

inputs,
conv2d_214_3442619:  
conv2d_214_3442621: -
batch_normalization_214_3442624: -
batch_normalization_214_3442626: -
batch_normalization_214_3442628: -
batch_normalization_214_3442630: ,
conv2d_215_3442651:   
conv2d_215_3442653: -
batch_normalization_215_3442656: -
batch_normalization_215_3442658: -
batch_normalization_215_3442660: -
batch_normalization_215_3442662: ,
conv2d_216_3442684: @ 
conv2d_216_3442686:@-
batch_normalization_216_3442689:@-
batch_normalization_216_3442691:@-
batch_normalization_216_3442693:@-
batch_normalization_216_3442695:@,
conv2d_217_3442716:@@ 
conv2d_217_3442718:@-
batch_normalization_217_3442721:@-
batch_normalization_217_3442723:@-
batch_normalization_217_3442725:@-
batch_normalization_217_3442727:@-
conv2d_218_3442749:@?!
conv2d_218_3442751:	?.
batch_normalization_218_3442754:	?.
batch_normalization_218_3442756:	?.
batch_normalization_218_3442758:	?.
batch_normalization_218_3442760:	?.
conv2d_219_3442781:??!
conv2d_219_3442783:	?.
batch_normalization_219_3442786:	?.
batch_normalization_219_3442788:	?.
batch_normalization_219_3442790:	?.
batch_normalization_219_3442792:	?.
conv2d_220_3442814:??!
conv2d_220_3442816:	?.
batch_normalization_220_3442819:	?.
batch_normalization_220_3442821:	?.
batch_normalization_220_3442823:	?.
batch_normalization_220_3442825:	?.
conv2d_221_3442846:??!
conv2d_221_3442848:	?.
batch_normalization_221_3442851:	?.
batch_normalization_221_3442853:	?.
batch_normalization_221_3442855:	?.
batch_normalization_221_3442857:	?#
dense_34_3442887:	?

dense_34_3442889:

identity??/batch_normalization_214/StatefulPartitionedCall?/batch_normalization_215/StatefulPartitionedCall?/batch_normalization_216/StatefulPartitionedCall?/batch_normalization_217/StatefulPartitionedCall?/batch_normalization_218/StatefulPartitionedCall?/batch_normalization_219/StatefulPartitionedCall?/batch_normalization_220/StatefulPartitionedCall?/batch_normalization_221/StatefulPartitionedCall?"conv2d_214/StatefulPartitionedCall?"conv2d_215/StatefulPartitionedCall?"conv2d_216/StatefulPartitionedCall?"conv2d_217/StatefulPartitionedCall?"conv2d_218/StatefulPartitionedCall?"conv2d_219/StatefulPartitionedCall?"conv2d_220/StatefulPartitionedCall?"conv2d_221/StatefulPartitionedCall? dense_34/StatefulPartitionedCall?
"conv2d_214/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_214_3442619conv2d_214_3442621*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_214_layer_call_and_return_conditional_losses_3442618?
/batch_normalization_214/StatefulPartitionedCallStatefulPartitionedCall+conv2d_214/StatefulPartitionedCall:output:0batch_normalization_214_3442624batch_normalization_214_3442626batch_normalization_214_3442628batch_normalization_214_3442630*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_214_layer_call_and_return_conditional_losses_3442063?
activation_214/PartitionedCallPartitionedCall8batch_normalization_214/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_activation_214_layer_call_and_return_conditional_losses_3442638?
"conv2d_215/StatefulPartitionedCallStatefulPartitionedCall'activation_214/PartitionedCall:output:0conv2d_215_3442651conv2d_215_3442653*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_215_layer_call_and_return_conditional_losses_3442650?
/batch_normalization_215/StatefulPartitionedCallStatefulPartitionedCall+conv2d_215/StatefulPartitionedCall:output:0batch_normalization_215_3442656batch_normalization_215_3442658batch_normalization_215_3442660batch_normalization_215_3442662*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_215_layer_call_and_return_conditional_losses_3442127?
activation_215/PartitionedCallPartitionedCall8batch_normalization_215/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_activation_215_layer_call_and_return_conditional_losses_3442670?
%average_pooling2d_107/PartitionedCallPartitionedCall'activation_215/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_average_pooling2d_107_layer_call_and_return_conditional_losses_3442178?
"conv2d_216/StatefulPartitionedCallStatefulPartitionedCall.average_pooling2d_107/PartitionedCall:output:0conv2d_216_3442684conv2d_216_3442686*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_216_layer_call_and_return_conditional_losses_3442683?
/batch_normalization_216/StatefulPartitionedCallStatefulPartitionedCall+conv2d_216/StatefulPartitionedCall:output:0batch_normalization_216_3442689batch_normalization_216_3442691batch_normalization_216_3442693batch_normalization_216_3442695*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_216_layer_call_and_return_conditional_losses_3442203?
activation_216/PartitionedCallPartitionedCall8batch_normalization_216/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_activation_216_layer_call_and_return_conditional_losses_3442703?
"conv2d_217/StatefulPartitionedCallStatefulPartitionedCall'activation_216/PartitionedCall:output:0conv2d_217_3442716conv2d_217_3442718*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_217_layer_call_and_return_conditional_losses_3442715?
/batch_normalization_217/StatefulPartitionedCallStatefulPartitionedCall+conv2d_217/StatefulPartitionedCall:output:0batch_normalization_217_3442721batch_normalization_217_3442723batch_normalization_217_3442725batch_normalization_217_3442727*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_217_layer_call_and_return_conditional_losses_3442267?
activation_217/PartitionedCallPartitionedCall8batch_normalization_217/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_activation_217_layer_call_and_return_conditional_losses_3442735?
%average_pooling2d_108/PartitionedCallPartitionedCall'activation_217/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_average_pooling2d_108_layer_call_and_return_conditional_losses_3442318?
"conv2d_218/StatefulPartitionedCallStatefulPartitionedCall.average_pooling2d_108/PartitionedCall:output:0conv2d_218_3442749conv2d_218_3442751*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_218_layer_call_and_return_conditional_losses_3442748?
/batch_normalization_218/StatefulPartitionedCallStatefulPartitionedCall+conv2d_218/StatefulPartitionedCall:output:0batch_normalization_218_3442754batch_normalization_218_3442756batch_normalization_218_3442758batch_normalization_218_3442760*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_218_layer_call_and_return_conditional_losses_3442343?
activation_218/PartitionedCallPartitionedCall8batch_normalization_218/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_activation_218_layer_call_and_return_conditional_losses_3442768?
"conv2d_219/StatefulPartitionedCallStatefulPartitionedCall'activation_218/PartitionedCall:output:0conv2d_219_3442781conv2d_219_3442783*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_219_layer_call_and_return_conditional_losses_3442780?
/batch_normalization_219/StatefulPartitionedCallStatefulPartitionedCall+conv2d_219/StatefulPartitionedCall:output:0batch_normalization_219_3442786batch_normalization_219_3442788batch_normalization_219_3442790batch_normalization_219_3442792*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_219_layer_call_and_return_conditional_losses_3442407?
activation_219/PartitionedCallPartitionedCall8batch_normalization_219/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_activation_219_layer_call_and_return_conditional_losses_3442800?
%average_pooling2d_109/PartitionedCallPartitionedCall'activation_219/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_average_pooling2d_109_layer_call_and_return_conditional_losses_3442458?
"conv2d_220/StatefulPartitionedCallStatefulPartitionedCall.average_pooling2d_109/PartitionedCall:output:0conv2d_220_3442814conv2d_220_3442816*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_220_layer_call_and_return_conditional_losses_3442813?
/batch_normalization_220/StatefulPartitionedCallStatefulPartitionedCall+conv2d_220/StatefulPartitionedCall:output:0batch_normalization_220_3442819batch_normalization_220_3442821batch_normalization_220_3442823batch_normalization_220_3442825*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_220_layer_call_and_return_conditional_losses_3442483?
activation_220/PartitionedCallPartitionedCall8batch_normalization_220/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_activation_220_layer_call_and_return_conditional_losses_3442833?
"conv2d_221/StatefulPartitionedCallStatefulPartitionedCall'activation_220/PartitionedCall:output:0conv2d_221_3442846conv2d_221_3442848*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_221_layer_call_and_return_conditional_losses_3442845?
/batch_normalization_221/StatefulPartitionedCallStatefulPartitionedCall+conv2d_221/StatefulPartitionedCall:output:0batch_normalization_221_3442851batch_normalization_221_3442853batch_normalization_221_3442855batch_normalization_221_3442857*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_221_layer_call_and_return_conditional_losses_3442547?
activation_221/PartitionedCallPartitionedCall8batch_normalization_221/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_activation_221_layer_call_and_return_conditional_losses_3442865?
%average_pooling2d_110/PartitionedCallPartitionedCall'activation_221/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_average_pooling2d_110_layer_call_and_return_conditional_losses_3442598?
flatten_34/PartitionedCallPartitionedCall.average_pooling2d_110/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_flatten_34_layer_call_and_return_conditional_losses_3442874?
 dense_34/StatefulPartitionedCallStatefulPartitionedCall#flatten_34/PartitionedCall:output:0dense_34_3442887dense_34_3442889*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_34_layer_call_and_return_conditional_losses_3442886x
IdentityIdentity)dense_34/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
?
NoOpNoOp0^batch_normalization_214/StatefulPartitionedCall0^batch_normalization_215/StatefulPartitionedCall0^batch_normalization_216/StatefulPartitionedCall0^batch_normalization_217/StatefulPartitionedCall0^batch_normalization_218/StatefulPartitionedCall0^batch_normalization_219/StatefulPartitionedCall0^batch_normalization_220/StatefulPartitionedCall0^batch_normalization_221/StatefulPartitionedCall#^conv2d_214/StatefulPartitionedCall#^conv2d_215/StatefulPartitionedCall#^conv2d_216/StatefulPartitionedCall#^conv2d_217/StatefulPartitionedCall#^conv2d_218/StatefulPartitionedCall#^conv2d_219/StatefulPartitionedCall#^conv2d_220/StatefulPartitionedCall#^conv2d_221/StatefulPartitionedCall!^dense_34/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
:?????????  : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_214/StatefulPartitionedCall/batch_normalization_214/StatefulPartitionedCall2b
/batch_normalization_215/StatefulPartitionedCall/batch_normalization_215/StatefulPartitionedCall2b
/batch_normalization_216/StatefulPartitionedCall/batch_normalization_216/StatefulPartitionedCall2b
/batch_normalization_217/StatefulPartitionedCall/batch_normalization_217/StatefulPartitionedCall2b
/batch_normalization_218/StatefulPartitionedCall/batch_normalization_218/StatefulPartitionedCall2b
/batch_normalization_219/StatefulPartitionedCall/batch_normalization_219/StatefulPartitionedCall2b
/batch_normalization_220/StatefulPartitionedCall/batch_normalization_220/StatefulPartitionedCall2b
/batch_normalization_221/StatefulPartitionedCall/batch_normalization_221/StatefulPartitionedCall2H
"conv2d_214/StatefulPartitionedCall"conv2d_214/StatefulPartitionedCall2H
"conv2d_215/StatefulPartitionedCall"conv2d_215/StatefulPartitionedCall2H
"conv2d_216/StatefulPartitionedCall"conv2d_216/StatefulPartitionedCall2H
"conv2d_217/StatefulPartitionedCall"conv2d_217/StatefulPartitionedCall2H
"conv2d_218/StatefulPartitionedCall"conv2d_218/StatefulPartitionedCall2H
"conv2d_219/StatefulPartitionedCall"conv2d_219/StatefulPartitionedCall2H
"conv2d_220/StatefulPartitionedCall"conv2d_220/StatefulPartitionedCall2H
"conv2d_221/StatefulPartitionedCall"conv2d_221/StatefulPartitionedCall2D
 dense_34/StatefulPartitionedCall dense_34/StatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
g
K__inference_activation_217_layer_call_and_return_conditional_losses_3444916

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:?????????@b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?

?
G__inference_conv2d_221_layer_call_and_return_conditional_losses_3445228

inputs:
conv2d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
,__inference_conv2d_220_layer_call_fn_3445127

inputs#
unknown:??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_220_layer_call_and_return_conditional_losses_3442813x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_216_layer_call_and_return_conditional_losses_3444797

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?

?
G__inference_conv2d_218_layer_call_and_return_conditional_losses_3444945

inputs9
conv2d_readvariableop_resource:@?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
n
R__inference_average_pooling2d_109_layer_call_and_return_conditional_losses_3445118

inputs
identity?
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingSAME*
strides
{
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
,__inference_conv2d_214_layer_call_fn_3444551

inputs!
unknown: 
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
:?????????   *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_214_layer_call_and_return_conditional_losses_3442618w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????   `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????  : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_214_layer_call_and_return_conditional_losses_3442063

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? ?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_215_layer_call_and_return_conditional_losses_3444696

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? ?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_215_layer_call_and_return_conditional_losses_3442158

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? ?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
*__inference_network1_layer_call_fn_3442996
input_35!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5:  
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10: $

unknown_11: @

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:@$

unknown_17:@@

unknown_18:@

unknown_19:@

unknown_20:@

unknown_21:@

unknown_22:@%

unknown_23:@?

unknown_24:	?

unknown_25:	?

unknown_26:	?

unknown_27:	?

unknown_28:	?&

unknown_29:??

unknown_30:	?

unknown_31:	?

unknown_32:	?

unknown_33:	?

unknown_34:	?&

unknown_35:??

unknown_36:	?

unknown_37:	?

unknown_38:	?

unknown_39:	?

unknown_40:	?&

unknown_41:??

unknown_42:	?

unknown_43:	?

unknown_44:	?

unknown_45:	?

unknown_46:	?

unknown_47:	?


unknown_48:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_35unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48*>
Tin7
523*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*T
_read_only_resource_inputs6
42	
 !"#$%&'()*+,-./012*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_network1_layer_call_and_return_conditional_losses_3442893o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
:?????????  : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:?????????  
"
_user_specified_name
input_35
?
?
T__inference_batch_normalization_219_layer_call_and_return_conditional_losses_3442407

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,?????????????????????????????
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
S
7__inference_average_pooling2d_110_layer_call_fn_3445305

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
GPU 2J 8? *[
fVRT
R__inference_average_pooling2d_110_layer_call_and_return_conditional_losses_3442598?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
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
9__inference_batch_normalization_218_layer_call_fn_3444971

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_218_layer_call_and_return_conditional_losses_3442374?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,????????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?	
?
E__inference_dense_34_layer_call_and_return_conditional_losses_3445340

inputs1
matmul_readvariableop_resource:	?
-
biasadd_readvariableop_resource:

identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
L
0__inference_activation_219_layer_call_fn_3445103

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
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_activation_219_layer_call_and_return_conditional_losses_3442800i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_217_layer_call_and_return_conditional_losses_3442267

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
S
7__inference_average_pooling2d_108_layer_call_fn_3444921

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
GPU 2J 8? *[
fVRT
R__inference_average_pooling2d_108_layer_call_and_return_conditional_losses_3442318?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
n
R__inference_average_pooling2d_110_layer_call_and_return_conditional_losses_3445310

inputs
identity?
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingSAME*
strides
{
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?

?
G__inference_conv2d_218_layer_call_and_return_conditional_losses_3442748

inputs9
conv2d_readvariableop_resource:@?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
L
0__inference_activation_214_layer_call_fn_3444628

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
:?????????   * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_activation_214_layer_call_and_return_conditional_losses_3442638h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????   "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????   :W S
/
_output_shapes
:?????????   
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_217_layer_call_and_return_conditional_losses_3442298

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_217_layer_call_and_return_conditional_losses_3444888

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
L
0__inference_activation_221_layer_call_fn_3445295

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
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_activation_221_layer_call_and_return_conditional_losses_3442865i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
*__inference_network1_layer_call_fn_3444174

inputs!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5:  
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10: $

unknown_11: @

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:@$

unknown_17:@@

unknown_18:@

unknown_19:@

unknown_20:@

unknown_21:@

unknown_22:@%

unknown_23:@?

unknown_24:	?

unknown_25:	?

unknown_26:	?

unknown_27:	?

unknown_28:	?&

unknown_29:??

unknown_30:	?

unknown_31:	?

unknown_32:	?

unknown_33:	?

unknown_34:	?&

unknown_35:??

unknown_36:	?

unknown_37:	?

unknown_38:	?

unknown_39:	?

unknown_40:	?&

unknown_41:??

unknown_42:	?

unknown_43:	?

unknown_44:	?

unknown_45:	?

unknown_46:	?

unknown_47:	?


unknown_48:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48*>
Tin7
523*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*D
_read_only_resource_inputs&
$"	
 !"%&'(+,-.12*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_network1_layer_call_and_return_conditional_losses_3443381o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
:?????????  : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
g
K__inference_activation_219_layer_call_and_return_conditional_losses_3442800

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:??????????c
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
g
K__inference_activation_219_layer_call_and_return_conditional_losses_3445108

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:??????????c
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
G__inference_conv2d_215_layer_call_and_return_conditional_losses_3442650

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:?????????   w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????   : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????   
 
_user_specified_nameinputs
?

?
G__inference_conv2d_217_layer_call_and_return_conditional_losses_3444844

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:?????????@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?	
?
9__inference_batch_normalization_220_layer_call_fn_3445163

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_220_layer_call_and_return_conditional_losses_3442514?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,????????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?	
?
9__inference_batch_normalization_220_layer_call_fn_3445150

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_220_layer_call_and_return_conditional_losses_3442483?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,????????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
S
7__inference_average_pooling2d_109_layer_call_fn_3445113

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
GPU 2J 8? *[
fVRT
R__inference_average_pooling2d_109_layer_call_and_return_conditional_losses_3442458?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_219_layer_call_and_return_conditional_losses_3442438

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,?????????????????????????????
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
g
K__inference_activation_215_layer_call_and_return_conditional_losses_3444724

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:?????????   b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????   "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????   :W S
/
_output_shapes
:?????????   
 
_user_specified_nameinputs
?
g
K__inference_activation_220_layer_call_and_return_conditional_losses_3442833

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:??????????c
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
G__inference_conv2d_214_layer_call_and_return_conditional_losses_3442618

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:?????????   w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????  : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
g
K__inference_activation_217_layer_call_and_return_conditional_losses_3442735

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:?????????@b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
,__inference_conv2d_216_layer_call_fn_3444743

inputs!
unknown: @
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_216_layer_call_and_return_conditional_losses_3442683w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?	
?
9__inference_batch_normalization_217_layer_call_fn_3444857

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_217_layer_call_and_return_conditional_losses_3442267?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?	
?
9__inference_batch_normalization_214_layer_call_fn_3444574

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_214_layer_call_and_return_conditional_losses_3442063?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?	
?
9__inference_batch_normalization_219_layer_call_fn_3445062

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_219_layer_call_and_return_conditional_losses_3442438?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,????????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?	
?
9__inference_batch_normalization_217_layer_call_fn_3444870

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_217_layer_call_and_return_conditional_losses_3442298?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?l
?
 __inference__traced_save_3445525
file_prefix0
,savev2_conv2d_214_kernel_read_readvariableop.
*savev2_conv2d_214_bias_read_readvariableop<
8savev2_batch_normalization_214_gamma_read_readvariableop;
7savev2_batch_normalization_214_beta_read_readvariableopB
>savev2_batch_normalization_214_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_214_moving_variance_read_readvariableop0
,savev2_conv2d_215_kernel_read_readvariableop.
*savev2_conv2d_215_bias_read_readvariableop<
8savev2_batch_normalization_215_gamma_read_readvariableop;
7savev2_batch_normalization_215_beta_read_readvariableopB
>savev2_batch_normalization_215_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_215_moving_variance_read_readvariableop0
,savev2_conv2d_216_kernel_read_readvariableop.
*savev2_conv2d_216_bias_read_readvariableop<
8savev2_batch_normalization_216_gamma_read_readvariableop;
7savev2_batch_normalization_216_beta_read_readvariableopB
>savev2_batch_normalization_216_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_216_moving_variance_read_readvariableop0
,savev2_conv2d_217_kernel_read_readvariableop.
*savev2_conv2d_217_bias_read_readvariableop<
8savev2_batch_normalization_217_gamma_read_readvariableop;
7savev2_batch_normalization_217_beta_read_readvariableopB
>savev2_batch_normalization_217_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_217_moving_variance_read_readvariableop0
,savev2_conv2d_218_kernel_read_readvariableop.
*savev2_conv2d_218_bias_read_readvariableop<
8savev2_batch_normalization_218_gamma_read_readvariableop;
7savev2_batch_normalization_218_beta_read_readvariableopB
>savev2_batch_normalization_218_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_218_moving_variance_read_readvariableop0
,savev2_conv2d_219_kernel_read_readvariableop.
*savev2_conv2d_219_bias_read_readvariableop<
8savev2_batch_normalization_219_gamma_read_readvariableop;
7savev2_batch_normalization_219_beta_read_readvariableopB
>savev2_batch_normalization_219_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_219_moving_variance_read_readvariableop0
,savev2_conv2d_220_kernel_read_readvariableop.
*savev2_conv2d_220_bias_read_readvariableop<
8savev2_batch_normalization_220_gamma_read_readvariableop;
7savev2_batch_normalization_220_beta_read_readvariableopB
>savev2_batch_normalization_220_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_220_moving_variance_read_readvariableop0
,savev2_conv2d_221_kernel_read_readvariableop.
*savev2_conv2d_221_bias_read_readvariableop<
8savev2_batch_normalization_221_gamma_read_readvariableop;
7savev2_batch_normalization_221_beta_read_readvariableopB
>savev2_batch_normalization_221_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_221_moving_variance_read_readvariableop.
*savev2_dense_34_kernel_read_readvariableop,
(savev2_dense_34_bias_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop
savev2_const

identity_1??MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:7*
dtype0*?
value?B?7B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-11/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-11/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-11/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-13/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-13/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-13/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-13/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-15/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-15/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-15/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-15/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-16/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-16/bias/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:7*
dtype0*?
valuexBv7B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv2d_214_kernel_read_readvariableop*savev2_conv2d_214_bias_read_readvariableop8savev2_batch_normalization_214_gamma_read_readvariableop7savev2_batch_normalization_214_beta_read_readvariableop>savev2_batch_normalization_214_moving_mean_read_readvariableopBsavev2_batch_normalization_214_moving_variance_read_readvariableop,savev2_conv2d_215_kernel_read_readvariableop*savev2_conv2d_215_bias_read_readvariableop8savev2_batch_normalization_215_gamma_read_readvariableop7savev2_batch_normalization_215_beta_read_readvariableop>savev2_batch_normalization_215_moving_mean_read_readvariableopBsavev2_batch_normalization_215_moving_variance_read_readvariableop,savev2_conv2d_216_kernel_read_readvariableop*savev2_conv2d_216_bias_read_readvariableop8savev2_batch_normalization_216_gamma_read_readvariableop7savev2_batch_normalization_216_beta_read_readvariableop>savev2_batch_normalization_216_moving_mean_read_readvariableopBsavev2_batch_normalization_216_moving_variance_read_readvariableop,savev2_conv2d_217_kernel_read_readvariableop*savev2_conv2d_217_bias_read_readvariableop8savev2_batch_normalization_217_gamma_read_readvariableop7savev2_batch_normalization_217_beta_read_readvariableop>savev2_batch_normalization_217_moving_mean_read_readvariableopBsavev2_batch_normalization_217_moving_variance_read_readvariableop,savev2_conv2d_218_kernel_read_readvariableop*savev2_conv2d_218_bias_read_readvariableop8savev2_batch_normalization_218_gamma_read_readvariableop7savev2_batch_normalization_218_beta_read_readvariableop>savev2_batch_normalization_218_moving_mean_read_readvariableopBsavev2_batch_normalization_218_moving_variance_read_readvariableop,savev2_conv2d_219_kernel_read_readvariableop*savev2_conv2d_219_bias_read_readvariableop8savev2_batch_normalization_219_gamma_read_readvariableop7savev2_batch_normalization_219_beta_read_readvariableop>savev2_batch_normalization_219_moving_mean_read_readvariableopBsavev2_batch_normalization_219_moving_variance_read_readvariableop,savev2_conv2d_220_kernel_read_readvariableop*savev2_conv2d_220_bias_read_readvariableop8savev2_batch_normalization_220_gamma_read_readvariableop7savev2_batch_normalization_220_beta_read_readvariableop>savev2_batch_normalization_220_moving_mean_read_readvariableopBsavev2_batch_normalization_220_moving_variance_read_readvariableop,savev2_conv2d_221_kernel_read_readvariableop*savev2_conv2d_221_bias_read_readvariableop8savev2_batch_normalization_221_gamma_read_readvariableop7savev2_batch_normalization_221_beta_read_readvariableop>savev2_batch_normalization_221_moving_mean_read_readvariableopBsavev2_batch_normalization_221_moving_variance_read_readvariableop*savev2_dense_34_kernel_read_readvariableop(savev2_dense_34_bias_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *E
dtypes;
927?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*?
_input_shapes?
?: : : : : : : :  : : : : : : @:@:@:@:@:@:@@:@:@:@:@:@:@?:?:?:?:?:?:??:?:?:?:?:?:??:?:?:?:?:?:??:?:?:?:?:?:	?
:
: : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
:  : 

_output_shapes
: : 	

_output_shapes
: : 


_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:-)
'
_output_shapes
:@?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:.*
(
_output_shapes
:??:! 

_output_shapes	
:?:!!

_output_shapes	
:?:!"

_output_shapes	
:?:!#

_output_shapes	
:?:!$

_output_shapes	
:?:.%*
(
_output_shapes
:??:!&

_output_shapes	
:?:!'

_output_shapes	
:?:!(

_output_shapes	
:?:!)

_output_shapes	
:?:!*

_output_shapes	
:?:.+*
(
_output_shapes
:??:!,

_output_shapes	
:?:!-

_output_shapes	
:?:!.

_output_shapes	
:?:!/

_output_shapes	
:?:!0

_output_shapes	
:?:%1!

_output_shapes
:	?
: 2

_output_shapes
:
:3

_output_shapes
: :4

_output_shapes
: :5

_output_shapes
: :6

_output_shapes
: :7

_output_shapes
: 
?	
?
E__inference_dense_34_layer_call_and_return_conditional_losses_3442886

inputs1
matmul_readvariableop_resource:	?
-
biasadd_readvariableop_resource:

identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
,__inference_conv2d_217_layer_call_fn_3444834

inputs!
unknown:@@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_217_layer_call_and_return_conditional_losses_3442715w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
??
?
E__inference_network1_layer_call_and_return_conditional_losses_3443723
input_35,
conv2d_214_3443592:  
conv2d_214_3443594: -
batch_normalization_214_3443597: -
batch_normalization_214_3443599: -
batch_normalization_214_3443601: -
batch_normalization_214_3443603: ,
conv2d_215_3443607:   
conv2d_215_3443609: -
batch_normalization_215_3443612: -
batch_normalization_215_3443614: -
batch_normalization_215_3443616: -
batch_normalization_215_3443618: ,
conv2d_216_3443623: @ 
conv2d_216_3443625:@-
batch_normalization_216_3443628:@-
batch_normalization_216_3443630:@-
batch_normalization_216_3443632:@-
batch_normalization_216_3443634:@,
conv2d_217_3443638:@@ 
conv2d_217_3443640:@-
batch_normalization_217_3443643:@-
batch_normalization_217_3443645:@-
batch_normalization_217_3443647:@-
batch_normalization_217_3443649:@-
conv2d_218_3443654:@?!
conv2d_218_3443656:	?.
batch_normalization_218_3443659:	?.
batch_normalization_218_3443661:	?.
batch_normalization_218_3443663:	?.
batch_normalization_218_3443665:	?.
conv2d_219_3443669:??!
conv2d_219_3443671:	?.
batch_normalization_219_3443674:	?.
batch_normalization_219_3443676:	?.
batch_normalization_219_3443678:	?.
batch_normalization_219_3443680:	?.
conv2d_220_3443685:??!
conv2d_220_3443687:	?.
batch_normalization_220_3443690:	?.
batch_normalization_220_3443692:	?.
batch_normalization_220_3443694:	?.
batch_normalization_220_3443696:	?.
conv2d_221_3443700:??!
conv2d_221_3443702:	?.
batch_normalization_221_3443705:	?.
batch_normalization_221_3443707:	?.
batch_normalization_221_3443709:	?.
batch_normalization_221_3443711:	?#
dense_34_3443717:	?

dense_34_3443719:

identity??/batch_normalization_214/StatefulPartitionedCall?/batch_normalization_215/StatefulPartitionedCall?/batch_normalization_216/StatefulPartitionedCall?/batch_normalization_217/StatefulPartitionedCall?/batch_normalization_218/StatefulPartitionedCall?/batch_normalization_219/StatefulPartitionedCall?/batch_normalization_220/StatefulPartitionedCall?/batch_normalization_221/StatefulPartitionedCall?"conv2d_214/StatefulPartitionedCall?"conv2d_215/StatefulPartitionedCall?"conv2d_216/StatefulPartitionedCall?"conv2d_217/StatefulPartitionedCall?"conv2d_218/StatefulPartitionedCall?"conv2d_219/StatefulPartitionedCall?"conv2d_220/StatefulPartitionedCall?"conv2d_221/StatefulPartitionedCall? dense_34/StatefulPartitionedCall?
"conv2d_214/StatefulPartitionedCallStatefulPartitionedCallinput_35conv2d_214_3443592conv2d_214_3443594*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_214_layer_call_and_return_conditional_losses_3442618?
/batch_normalization_214/StatefulPartitionedCallStatefulPartitionedCall+conv2d_214/StatefulPartitionedCall:output:0batch_normalization_214_3443597batch_normalization_214_3443599batch_normalization_214_3443601batch_normalization_214_3443603*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_214_layer_call_and_return_conditional_losses_3442063?
activation_214/PartitionedCallPartitionedCall8batch_normalization_214/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_activation_214_layer_call_and_return_conditional_losses_3442638?
"conv2d_215/StatefulPartitionedCallStatefulPartitionedCall'activation_214/PartitionedCall:output:0conv2d_215_3443607conv2d_215_3443609*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_215_layer_call_and_return_conditional_losses_3442650?
/batch_normalization_215/StatefulPartitionedCallStatefulPartitionedCall+conv2d_215/StatefulPartitionedCall:output:0batch_normalization_215_3443612batch_normalization_215_3443614batch_normalization_215_3443616batch_normalization_215_3443618*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_215_layer_call_and_return_conditional_losses_3442127?
activation_215/PartitionedCallPartitionedCall8batch_normalization_215/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_activation_215_layer_call_and_return_conditional_losses_3442670?
%average_pooling2d_107/PartitionedCallPartitionedCall'activation_215/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_average_pooling2d_107_layer_call_and_return_conditional_losses_3442178?
"conv2d_216/StatefulPartitionedCallStatefulPartitionedCall.average_pooling2d_107/PartitionedCall:output:0conv2d_216_3443623conv2d_216_3443625*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_216_layer_call_and_return_conditional_losses_3442683?
/batch_normalization_216/StatefulPartitionedCallStatefulPartitionedCall+conv2d_216/StatefulPartitionedCall:output:0batch_normalization_216_3443628batch_normalization_216_3443630batch_normalization_216_3443632batch_normalization_216_3443634*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_216_layer_call_and_return_conditional_losses_3442203?
activation_216/PartitionedCallPartitionedCall8batch_normalization_216/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_activation_216_layer_call_and_return_conditional_losses_3442703?
"conv2d_217/StatefulPartitionedCallStatefulPartitionedCall'activation_216/PartitionedCall:output:0conv2d_217_3443638conv2d_217_3443640*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_217_layer_call_and_return_conditional_losses_3442715?
/batch_normalization_217/StatefulPartitionedCallStatefulPartitionedCall+conv2d_217/StatefulPartitionedCall:output:0batch_normalization_217_3443643batch_normalization_217_3443645batch_normalization_217_3443647batch_normalization_217_3443649*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_217_layer_call_and_return_conditional_losses_3442267?
activation_217/PartitionedCallPartitionedCall8batch_normalization_217/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_activation_217_layer_call_and_return_conditional_losses_3442735?
%average_pooling2d_108/PartitionedCallPartitionedCall'activation_217/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_average_pooling2d_108_layer_call_and_return_conditional_losses_3442318?
"conv2d_218/StatefulPartitionedCallStatefulPartitionedCall.average_pooling2d_108/PartitionedCall:output:0conv2d_218_3443654conv2d_218_3443656*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_218_layer_call_and_return_conditional_losses_3442748?
/batch_normalization_218/StatefulPartitionedCallStatefulPartitionedCall+conv2d_218/StatefulPartitionedCall:output:0batch_normalization_218_3443659batch_normalization_218_3443661batch_normalization_218_3443663batch_normalization_218_3443665*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_218_layer_call_and_return_conditional_losses_3442343?
activation_218/PartitionedCallPartitionedCall8batch_normalization_218/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_activation_218_layer_call_and_return_conditional_losses_3442768?
"conv2d_219/StatefulPartitionedCallStatefulPartitionedCall'activation_218/PartitionedCall:output:0conv2d_219_3443669conv2d_219_3443671*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_219_layer_call_and_return_conditional_losses_3442780?
/batch_normalization_219/StatefulPartitionedCallStatefulPartitionedCall+conv2d_219/StatefulPartitionedCall:output:0batch_normalization_219_3443674batch_normalization_219_3443676batch_normalization_219_3443678batch_normalization_219_3443680*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_219_layer_call_and_return_conditional_losses_3442407?
activation_219/PartitionedCallPartitionedCall8batch_normalization_219/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_activation_219_layer_call_and_return_conditional_losses_3442800?
%average_pooling2d_109/PartitionedCallPartitionedCall'activation_219/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_average_pooling2d_109_layer_call_and_return_conditional_losses_3442458?
"conv2d_220/StatefulPartitionedCallStatefulPartitionedCall.average_pooling2d_109/PartitionedCall:output:0conv2d_220_3443685conv2d_220_3443687*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_220_layer_call_and_return_conditional_losses_3442813?
/batch_normalization_220/StatefulPartitionedCallStatefulPartitionedCall+conv2d_220/StatefulPartitionedCall:output:0batch_normalization_220_3443690batch_normalization_220_3443692batch_normalization_220_3443694batch_normalization_220_3443696*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_220_layer_call_and_return_conditional_losses_3442483?
activation_220/PartitionedCallPartitionedCall8batch_normalization_220/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_activation_220_layer_call_and_return_conditional_losses_3442833?
"conv2d_221/StatefulPartitionedCallStatefulPartitionedCall'activation_220/PartitionedCall:output:0conv2d_221_3443700conv2d_221_3443702*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_221_layer_call_and_return_conditional_losses_3442845?
/batch_normalization_221/StatefulPartitionedCallStatefulPartitionedCall+conv2d_221/StatefulPartitionedCall:output:0batch_normalization_221_3443705batch_normalization_221_3443707batch_normalization_221_3443709batch_normalization_221_3443711*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_221_layer_call_and_return_conditional_losses_3442547?
activation_221/PartitionedCallPartitionedCall8batch_normalization_221/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_activation_221_layer_call_and_return_conditional_losses_3442865?
%average_pooling2d_110/PartitionedCallPartitionedCall'activation_221/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_average_pooling2d_110_layer_call_and_return_conditional_losses_3442598?
flatten_34/PartitionedCallPartitionedCall.average_pooling2d_110/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_flatten_34_layer_call_and_return_conditional_losses_3442874?
 dense_34/StatefulPartitionedCallStatefulPartitionedCall#flatten_34/PartitionedCall:output:0dense_34_3443717dense_34_3443719*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_34_layer_call_and_return_conditional_losses_3442886x
IdentityIdentity)dense_34/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
?
NoOpNoOp0^batch_normalization_214/StatefulPartitionedCall0^batch_normalization_215/StatefulPartitionedCall0^batch_normalization_216/StatefulPartitionedCall0^batch_normalization_217/StatefulPartitionedCall0^batch_normalization_218/StatefulPartitionedCall0^batch_normalization_219/StatefulPartitionedCall0^batch_normalization_220/StatefulPartitionedCall0^batch_normalization_221/StatefulPartitionedCall#^conv2d_214/StatefulPartitionedCall#^conv2d_215/StatefulPartitionedCall#^conv2d_216/StatefulPartitionedCall#^conv2d_217/StatefulPartitionedCall#^conv2d_218/StatefulPartitionedCall#^conv2d_219/StatefulPartitionedCall#^conv2d_220/StatefulPartitionedCall#^conv2d_221/StatefulPartitionedCall!^dense_34/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
:?????????  : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_214/StatefulPartitionedCall/batch_normalization_214/StatefulPartitionedCall2b
/batch_normalization_215/StatefulPartitionedCall/batch_normalization_215/StatefulPartitionedCall2b
/batch_normalization_216/StatefulPartitionedCall/batch_normalization_216/StatefulPartitionedCall2b
/batch_normalization_217/StatefulPartitionedCall/batch_normalization_217/StatefulPartitionedCall2b
/batch_normalization_218/StatefulPartitionedCall/batch_normalization_218/StatefulPartitionedCall2b
/batch_normalization_219/StatefulPartitionedCall/batch_normalization_219/StatefulPartitionedCall2b
/batch_normalization_220/StatefulPartitionedCall/batch_normalization_220/StatefulPartitionedCall2b
/batch_normalization_221/StatefulPartitionedCall/batch_normalization_221/StatefulPartitionedCall2H
"conv2d_214/StatefulPartitionedCall"conv2d_214/StatefulPartitionedCall2H
"conv2d_215/StatefulPartitionedCall"conv2d_215/StatefulPartitionedCall2H
"conv2d_216/StatefulPartitionedCall"conv2d_216/StatefulPartitionedCall2H
"conv2d_217/StatefulPartitionedCall"conv2d_217/StatefulPartitionedCall2H
"conv2d_218/StatefulPartitionedCall"conv2d_218/StatefulPartitionedCall2H
"conv2d_219/StatefulPartitionedCall"conv2d_219/StatefulPartitionedCall2H
"conv2d_220/StatefulPartitionedCall"conv2d_220/StatefulPartitionedCall2H
"conv2d_221/StatefulPartitionedCall"conv2d_221/StatefulPartitionedCall2D
 dense_34/StatefulPartitionedCall dense_34/StatefulPartitionedCall:Y U
/
_output_shapes
:?????????  
"
_user_specified_name
input_35
?
?
T__inference_batch_normalization_221_layer_call_and_return_conditional_losses_3442578

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,?????????????????????????????
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_214_layer_call_and_return_conditional_losses_3444605

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? ?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_220_layer_call_and_return_conditional_losses_3445199

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,?????????????????????????????
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
n
R__inference_average_pooling2d_110_layer_call_and_return_conditional_losses_3442598

inputs
identity?
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingSAME*
strides
{
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
g
K__inference_activation_221_layer_call_and_return_conditional_losses_3445300

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:??????????c
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
%__inference_signature_wrapper_3443964
input_35!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5:  
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10: $

unknown_11: @

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:@$

unknown_17:@@

unknown_18:@

unknown_19:@

unknown_20:@

unknown_21:@

unknown_22:@%

unknown_23:@?

unknown_24:	?

unknown_25:	?

unknown_26:	?

unknown_27:	?

unknown_28:	?&

unknown_29:??

unknown_30:	?

unknown_31:	?

unknown_32:	?

unknown_33:	?

unknown_34:	?&

unknown_35:??

unknown_36:	?

unknown_37:	?

unknown_38:	?

unknown_39:	?

unknown_40:	?&

unknown_41:??

unknown_42:	?

unknown_43:	?

unknown_44:	?

unknown_45:	?

unknown_46:	?

unknown_47:	?


unknown_48:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_35unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48*>
Tin7
523*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*T
_read_only_resource_inputs6
42	
 !"#$%&'()*+,-./012*-
config_proto

CPU

GPU 2J 8? *+
f&R$
"__inference__wrapped_model_3442041o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
:?????????  : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:?????????  
"
_user_specified_name
input_35
?
L
0__inference_activation_218_layer_call_fn_3445012

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
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_activation_218_layer_call_and_return_conditional_losses_3442768i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
n
R__inference_average_pooling2d_108_layer_call_and_return_conditional_losses_3444926

inputs
identity?
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingSAME*
strides
{
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_216_layer_call_and_return_conditional_losses_3442203

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
,__inference_conv2d_219_layer_call_fn_3445026

inputs#
unknown:??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_219_layer_call_and_return_conditional_losses_3442780x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
G__inference_conv2d_214_layer_call_and_return_conditional_losses_3444561

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:?????????   w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????  : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
L
0__inference_activation_216_layer_call_fn_3444820

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
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_activation_216_layer_call_and_return_conditional_losses_3442703h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_221_layer_call_and_return_conditional_losses_3442547

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,?????????????????????????????
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
*__inference_network1_layer_call_fn_3443589
input_35!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5:  
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10: $

unknown_11: @

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:@$

unknown_17:@@

unknown_18:@

unknown_19:@

unknown_20:@

unknown_21:@

unknown_22:@%

unknown_23:@?

unknown_24:	?

unknown_25:	?

unknown_26:	?

unknown_27:	?

unknown_28:	?&

unknown_29:??

unknown_30:	?

unknown_31:	?

unknown_32:	?

unknown_33:	?

unknown_34:	?&

unknown_35:??

unknown_36:	?

unknown_37:	?

unknown_38:	?

unknown_39:	?

unknown_40:	?&

unknown_41:??

unknown_42:	?

unknown_43:	?

unknown_44:	?

unknown_45:	?

unknown_46:	?

unknown_47:	?


unknown_48:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_35unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48*>
Tin7
523*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*D
_read_only_resource_inputs&
$"	
 !"%&'(+,-.12*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_network1_layer_call_and_return_conditional_losses_3443381o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
:?????????  : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:?????????  
"
_user_specified_name
input_35
?
?
T__inference_batch_normalization_218_layer_call_and_return_conditional_losses_3445007

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,?????????????????????????????
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_216_layer_call_and_return_conditional_losses_3444815

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?

?
G__inference_conv2d_215_layer_call_and_return_conditional_losses_3444652

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:?????????   w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????   : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????   
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_218_layer_call_and_return_conditional_losses_3444989

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,?????????????????????????????
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_216_layer_call_and_return_conditional_losses_3442234

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
??
?
E__inference_network1_layer_call_and_return_conditional_losses_3443381

inputs,
conv2d_214_3443250:  
conv2d_214_3443252: -
batch_normalization_214_3443255: -
batch_normalization_214_3443257: -
batch_normalization_214_3443259: -
batch_normalization_214_3443261: ,
conv2d_215_3443265:   
conv2d_215_3443267: -
batch_normalization_215_3443270: -
batch_normalization_215_3443272: -
batch_normalization_215_3443274: -
batch_normalization_215_3443276: ,
conv2d_216_3443281: @ 
conv2d_216_3443283:@-
batch_normalization_216_3443286:@-
batch_normalization_216_3443288:@-
batch_normalization_216_3443290:@-
batch_normalization_216_3443292:@,
conv2d_217_3443296:@@ 
conv2d_217_3443298:@-
batch_normalization_217_3443301:@-
batch_normalization_217_3443303:@-
batch_normalization_217_3443305:@-
batch_normalization_217_3443307:@-
conv2d_218_3443312:@?!
conv2d_218_3443314:	?.
batch_normalization_218_3443317:	?.
batch_normalization_218_3443319:	?.
batch_normalization_218_3443321:	?.
batch_normalization_218_3443323:	?.
conv2d_219_3443327:??!
conv2d_219_3443329:	?.
batch_normalization_219_3443332:	?.
batch_normalization_219_3443334:	?.
batch_normalization_219_3443336:	?.
batch_normalization_219_3443338:	?.
conv2d_220_3443343:??!
conv2d_220_3443345:	?.
batch_normalization_220_3443348:	?.
batch_normalization_220_3443350:	?.
batch_normalization_220_3443352:	?.
batch_normalization_220_3443354:	?.
conv2d_221_3443358:??!
conv2d_221_3443360:	?.
batch_normalization_221_3443363:	?.
batch_normalization_221_3443365:	?.
batch_normalization_221_3443367:	?.
batch_normalization_221_3443369:	?#
dense_34_3443375:	?

dense_34_3443377:

identity??/batch_normalization_214/StatefulPartitionedCall?/batch_normalization_215/StatefulPartitionedCall?/batch_normalization_216/StatefulPartitionedCall?/batch_normalization_217/StatefulPartitionedCall?/batch_normalization_218/StatefulPartitionedCall?/batch_normalization_219/StatefulPartitionedCall?/batch_normalization_220/StatefulPartitionedCall?/batch_normalization_221/StatefulPartitionedCall?"conv2d_214/StatefulPartitionedCall?"conv2d_215/StatefulPartitionedCall?"conv2d_216/StatefulPartitionedCall?"conv2d_217/StatefulPartitionedCall?"conv2d_218/StatefulPartitionedCall?"conv2d_219/StatefulPartitionedCall?"conv2d_220/StatefulPartitionedCall?"conv2d_221/StatefulPartitionedCall? dense_34/StatefulPartitionedCall?
"conv2d_214/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_214_3443250conv2d_214_3443252*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_214_layer_call_and_return_conditional_losses_3442618?
/batch_normalization_214/StatefulPartitionedCallStatefulPartitionedCall+conv2d_214/StatefulPartitionedCall:output:0batch_normalization_214_3443255batch_normalization_214_3443257batch_normalization_214_3443259batch_normalization_214_3443261*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_214_layer_call_and_return_conditional_losses_3442094?
activation_214/PartitionedCallPartitionedCall8batch_normalization_214/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_activation_214_layer_call_and_return_conditional_losses_3442638?
"conv2d_215/StatefulPartitionedCallStatefulPartitionedCall'activation_214/PartitionedCall:output:0conv2d_215_3443265conv2d_215_3443267*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_215_layer_call_and_return_conditional_losses_3442650?
/batch_normalization_215/StatefulPartitionedCallStatefulPartitionedCall+conv2d_215/StatefulPartitionedCall:output:0batch_normalization_215_3443270batch_normalization_215_3443272batch_normalization_215_3443274batch_normalization_215_3443276*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_215_layer_call_and_return_conditional_losses_3442158?
activation_215/PartitionedCallPartitionedCall8batch_normalization_215/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_activation_215_layer_call_and_return_conditional_losses_3442670?
%average_pooling2d_107/PartitionedCallPartitionedCall'activation_215/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_average_pooling2d_107_layer_call_and_return_conditional_losses_3442178?
"conv2d_216/StatefulPartitionedCallStatefulPartitionedCall.average_pooling2d_107/PartitionedCall:output:0conv2d_216_3443281conv2d_216_3443283*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_216_layer_call_and_return_conditional_losses_3442683?
/batch_normalization_216/StatefulPartitionedCallStatefulPartitionedCall+conv2d_216/StatefulPartitionedCall:output:0batch_normalization_216_3443286batch_normalization_216_3443288batch_normalization_216_3443290batch_normalization_216_3443292*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_216_layer_call_and_return_conditional_losses_3442234?
activation_216/PartitionedCallPartitionedCall8batch_normalization_216/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_activation_216_layer_call_and_return_conditional_losses_3442703?
"conv2d_217/StatefulPartitionedCallStatefulPartitionedCall'activation_216/PartitionedCall:output:0conv2d_217_3443296conv2d_217_3443298*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_217_layer_call_and_return_conditional_losses_3442715?
/batch_normalization_217/StatefulPartitionedCallStatefulPartitionedCall+conv2d_217/StatefulPartitionedCall:output:0batch_normalization_217_3443301batch_normalization_217_3443303batch_normalization_217_3443305batch_normalization_217_3443307*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_217_layer_call_and_return_conditional_losses_3442298?
activation_217/PartitionedCallPartitionedCall8batch_normalization_217/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_activation_217_layer_call_and_return_conditional_losses_3442735?
%average_pooling2d_108/PartitionedCallPartitionedCall'activation_217/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_average_pooling2d_108_layer_call_and_return_conditional_losses_3442318?
"conv2d_218/StatefulPartitionedCallStatefulPartitionedCall.average_pooling2d_108/PartitionedCall:output:0conv2d_218_3443312conv2d_218_3443314*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_218_layer_call_and_return_conditional_losses_3442748?
/batch_normalization_218/StatefulPartitionedCallStatefulPartitionedCall+conv2d_218/StatefulPartitionedCall:output:0batch_normalization_218_3443317batch_normalization_218_3443319batch_normalization_218_3443321batch_normalization_218_3443323*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_218_layer_call_and_return_conditional_losses_3442374?
activation_218/PartitionedCallPartitionedCall8batch_normalization_218/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_activation_218_layer_call_and_return_conditional_losses_3442768?
"conv2d_219/StatefulPartitionedCallStatefulPartitionedCall'activation_218/PartitionedCall:output:0conv2d_219_3443327conv2d_219_3443329*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_219_layer_call_and_return_conditional_losses_3442780?
/batch_normalization_219/StatefulPartitionedCallStatefulPartitionedCall+conv2d_219/StatefulPartitionedCall:output:0batch_normalization_219_3443332batch_normalization_219_3443334batch_normalization_219_3443336batch_normalization_219_3443338*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_219_layer_call_and_return_conditional_losses_3442438?
activation_219/PartitionedCallPartitionedCall8batch_normalization_219/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_activation_219_layer_call_and_return_conditional_losses_3442800?
%average_pooling2d_109/PartitionedCallPartitionedCall'activation_219/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_average_pooling2d_109_layer_call_and_return_conditional_losses_3442458?
"conv2d_220/StatefulPartitionedCallStatefulPartitionedCall.average_pooling2d_109/PartitionedCall:output:0conv2d_220_3443343conv2d_220_3443345*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_220_layer_call_and_return_conditional_losses_3442813?
/batch_normalization_220/StatefulPartitionedCallStatefulPartitionedCall+conv2d_220/StatefulPartitionedCall:output:0batch_normalization_220_3443348batch_normalization_220_3443350batch_normalization_220_3443352batch_normalization_220_3443354*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_220_layer_call_and_return_conditional_losses_3442514?
activation_220/PartitionedCallPartitionedCall8batch_normalization_220/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_activation_220_layer_call_and_return_conditional_losses_3442833?
"conv2d_221/StatefulPartitionedCallStatefulPartitionedCall'activation_220/PartitionedCall:output:0conv2d_221_3443358conv2d_221_3443360*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_221_layer_call_and_return_conditional_losses_3442845?
/batch_normalization_221/StatefulPartitionedCallStatefulPartitionedCall+conv2d_221/StatefulPartitionedCall:output:0batch_normalization_221_3443363batch_normalization_221_3443365batch_normalization_221_3443367batch_normalization_221_3443369*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_221_layer_call_and_return_conditional_losses_3442578?
activation_221/PartitionedCallPartitionedCall8batch_normalization_221/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_activation_221_layer_call_and_return_conditional_losses_3442865?
%average_pooling2d_110/PartitionedCallPartitionedCall'activation_221/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_average_pooling2d_110_layer_call_and_return_conditional_losses_3442598?
flatten_34/PartitionedCallPartitionedCall.average_pooling2d_110/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_flatten_34_layer_call_and_return_conditional_losses_3442874?
 dense_34/StatefulPartitionedCallStatefulPartitionedCall#flatten_34/PartitionedCall:output:0dense_34_3443375dense_34_3443377*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_34_layer_call_and_return_conditional_losses_3442886x
IdentityIdentity)dense_34/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
?
NoOpNoOp0^batch_normalization_214/StatefulPartitionedCall0^batch_normalization_215/StatefulPartitionedCall0^batch_normalization_216/StatefulPartitionedCall0^batch_normalization_217/StatefulPartitionedCall0^batch_normalization_218/StatefulPartitionedCall0^batch_normalization_219/StatefulPartitionedCall0^batch_normalization_220/StatefulPartitionedCall0^batch_normalization_221/StatefulPartitionedCall#^conv2d_214/StatefulPartitionedCall#^conv2d_215/StatefulPartitionedCall#^conv2d_216/StatefulPartitionedCall#^conv2d_217/StatefulPartitionedCall#^conv2d_218/StatefulPartitionedCall#^conv2d_219/StatefulPartitionedCall#^conv2d_220/StatefulPartitionedCall#^conv2d_221/StatefulPartitionedCall!^dense_34/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
:?????????  : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_214/StatefulPartitionedCall/batch_normalization_214/StatefulPartitionedCall2b
/batch_normalization_215/StatefulPartitionedCall/batch_normalization_215/StatefulPartitionedCall2b
/batch_normalization_216/StatefulPartitionedCall/batch_normalization_216/StatefulPartitionedCall2b
/batch_normalization_217/StatefulPartitionedCall/batch_normalization_217/StatefulPartitionedCall2b
/batch_normalization_218/StatefulPartitionedCall/batch_normalization_218/StatefulPartitionedCall2b
/batch_normalization_219/StatefulPartitionedCall/batch_normalization_219/StatefulPartitionedCall2b
/batch_normalization_220/StatefulPartitionedCall/batch_normalization_220/StatefulPartitionedCall2b
/batch_normalization_221/StatefulPartitionedCall/batch_normalization_221/StatefulPartitionedCall2H
"conv2d_214/StatefulPartitionedCall"conv2d_214/StatefulPartitionedCall2H
"conv2d_215/StatefulPartitionedCall"conv2d_215/StatefulPartitionedCall2H
"conv2d_216/StatefulPartitionedCall"conv2d_216/StatefulPartitionedCall2H
"conv2d_217/StatefulPartitionedCall"conv2d_217/StatefulPartitionedCall2H
"conv2d_218/StatefulPartitionedCall"conv2d_218/StatefulPartitionedCall2H
"conv2d_219/StatefulPartitionedCall"conv2d_219/StatefulPartitionedCall2H
"conv2d_220/StatefulPartitionedCall"conv2d_220/StatefulPartitionedCall2H
"conv2d_221/StatefulPartitionedCall"conv2d_221/StatefulPartitionedCall2D
 dense_34/StatefulPartitionedCall dense_34/StatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
n
R__inference_average_pooling2d_107_layer_call_and_return_conditional_losses_3442178

inputs
identity?
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingSAME*
strides
{
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
g
K__inference_activation_215_layer_call_and_return_conditional_losses_3442670

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:?????????   b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????   "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????   :W S
/
_output_shapes
:?????????   
 
_user_specified_nameinputs
?
n
R__inference_average_pooling2d_109_layer_call_and_return_conditional_losses_3442458

inputs
identity?
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingSAME*
strides
{
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
*__inference_dense_34_layer_call_fn_3445330

inputs
unknown:	?

	unknown_0:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_34_layer_call_and_return_conditional_losses_3442886o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
g
K__inference_activation_218_layer_call_and_return_conditional_losses_3445017

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:??????????c
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?4
"__inference__wrapped_model_3442041
input_35L
2network1_conv2d_214_conv2d_readvariableop_resource: A
3network1_conv2d_214_biasadd_readvariableop_resource: F
8network1_batch_normalization_214_readvariableop_resource: H
:network1_batch_normalization_214_readvariableop_1_resource: W
Inetwork1_batch_normalization_214_fusedbatchnormv3_readvariableop_resource: Y
Knetwork1_batch_normalization_214_fusedbatchnormv3_readvariableop_1_resource: L
2network1_conv2d_215_conv2d_readvariableop_resource:  A
3network1_conv2d_215_biasadd_readvariableop_resource: F
8network1_batch_normalization_215_readvariableop_resource: H
:network1_batch_normalization_215_readvariableop_1_resource: W
Inetwork1_batch_normalization_215_fusedbatchnormv3_readvariableop_resource: Y
Knetwork1_batch_normalization_215_fusedbatchnormv3_readvariableop_1_resource: L
2network1_conv2d_216_conv2d_readvariableop_resource: @A
3network1_conv2d_216_biasadd_readvariableop_resource:@F
8network1_batch_normalization_216_readvariableop_resource:@H
:network1_batch_normalization_216_readvariableop_1_resource:@W
Inetwork1_batch_normalization_216_fusedbatchnormv3_readvariableop_resource:@Y
Knetwork1_batch_normalization_216_fusedbatchnormv3_readvariableop_1_resource:@L
2network1_conv2d_217_conv2d_readvariableop_resource:@@A
3network1_conv2d_217_biasadd_readvariableop_resource:@F
8network1_batch_normalization_217_readvariableop_resource:@H
:network1_batch_normalization_217_readvariableop_1_resource:@W
Inetwork1_batch_normalization_217_fusedbatchnormv3_readvariableop_resource:@Y
Knetwork1_batch_normalization_217_fusedbatchnormv3_readvariableop_1_resource:@M
2network1_conv2d_218_conv2d_readvariableop_resource:@?B
3network1_conv2d_218_biasadd_readvariableop_resource:	?G
8network1_batch_normalization_218_readvariableop_resource:	?I
:network1_batch_normalization_218_readvariableop_1_resource:	?X
Inetwork1_batch_normalization_218_fusedbatchnormv3_readvariableop_resource:	?Z
Knetwork1_batch_normalization_218_fusedbatchnormv3_readvariableop_1_resource:	?N
2network1_conv2d_219_conv2d_readvariableop_resource:??B
3network1_conv2d_219_biasadd_readvariableop_resource:	?G
8network1_batch_normalization_219_readvariableop_resource:	?I
:network1_batch_normalization_219_readvariableop_1_resource:	?X
Inetwork1_batch_normalization_219_fusedbatchnormv3_readvariableop_resource:	?Z
Knetwork1_batch_normalization_219_fusedbatchnormv3_readvariableop_1_resource:	?N
2network1_conv2d_220_conv2d_readvariableop_resource:??B
3network1_conv2d_220_biasadd_readvariableop_resource:	?G
8network1_batch_normalization_220_readvariableop_resource:	?I
:network1_batch_normalization_220_readvariableop_1_resource:	?X
Inetwork1_batch_normalization_220_fusedbatchnormv3_readvariableop_resource:	?Z
Knetwork1_batch_normalization_220_fusedbatchnormv3_readvariableop_1_resource:	?N
2network1_conv2d_221_conv2d_readvariableop_resource:??B
3network1_conv2d_221_biasadd_readvariableop_resource:	?G
8network1_batch_normalization_221_readvariableop_resource:	?I
:network1_batch_normalization_221_readvariableop_1_resource:	?X
Inetwork1_batch_normalization_221_fusedbatchnormv3_readvariableop_resource:	?Z
Knetwork1_batch_normalization_221_fusedbatchnormv3_readvariableop_1_resource:	?C
0network1_dense_34_matmul_readvariableop_resource:	?
?
1network1_dense_34_biasadd_readvariableop_resource:

identity??@network1/batch_normalization_214/FusedBatchNormV3/ReadVariableOp?Bnetwork1/batch_normalization_214/FusedBatchNormV3/ReadVariableOp_1?/network1/batch_normalization_214/ReadVariableOp?1network1/batch_normalization_214/ReadVariableOp_1?@network1/batch_normalization_215/FusedBatchNormV3/ReadVariableOp?Bnetwork1/batch_normalization_215/FusedBatchNormV3/ReadVariableOp_1?/network1/batch_normalization_215/ReadVariableOp?1network1/batch_normalization_215/ReadVariableOp_1?@network1/batch_normalization_216/FusedBatchNormV3/ReadVariableOp?Bnetwork1/batch_normalization_216/FusedBatchNormV3/ReadVariableOp_1?/network1/batch_normalization_216/ReadVariableOp?1network1/batch_normalization_216/ReadVariableOp_1?@network1/batch_normalization_217/FusedBatchNormV3/ReadVariableOp?Bnetwork1/batch_normalization_217/FusedBatchNormV3/ReadVariableOp_1?/network1/batch_normalization_217/ReadVariableOp?1network1/batch_normalization_217/ReadVariableOp_1?@network1/batch_normalization_218/FusedBatchNormV3/ReadVariableOp?Bnetwork1/batch_normalization_218/FusedBatchNormV3/ReadVariableOp_1?/network1/batch_normalization_218/ReadVariableOp?1network1/batch_normalization_218/ReadVariableOp_1?@network1/batch_normalization_219/FusedBatchNormV3/ReadVariableOp?Bnetwork1/batch_normalization_219/FusedBatchNormV3/ReadVariableOp_1?/network1/batch_normalization_219/ReadVariableOp?1network1/batch_normalization_219/ReadVariableOp_1?@network1/batch_normalization_220/FusedBatchNormV3/ReadVariableOp?Bnetwork1/batch_normalization_220/FusedBatchNormV3/ReadVariableOp_1?/network1/batch_normalization_220/ReadVariableOp?1network1/batch_normalization_220/ReadVariableOp_1?@network1/batch_normalization_221/FusedBatchNormV3/ReadVariableOp?Bnetwork1/batch_normalization_221/FusedBatchNormV3/ReadVariableOp_1?/network1/batch_normalization_221/ReadVariableOp?1network1/batch_normalization_221/ReadVariableOp_1?*network1/conv2d_214/BiasAdd/ReadVariableOp?)network1/conv2d_214/Conv2D/ReadVariableOp?*network1/conv2d_215/BiasAdd/ReadVariableOp?)network1/conv2d_215/Conv2D/ReadVariableOp?*network1/conv2d_216/BiasAdd/ReadVariableOp?)network1/conv2d_216/Conv2D/ReadVariableOp?*network1/conv2d_217/BiasAdd/ReadVariableOp?)network1/conv2d_217/Conv2D/ReadVariableOp?*network1/conv2d_218/BiasAdd/ReadVariableOp?)network1/conv2d_218/Conv2D/ReadVariableOp?*network1/conv2d_219/BiasAdd/ReadVariableOp?)network1/conv2d_219/Conv2D/ReadVariableOp?*network1/conv2d_220/BiasAdd/ReadVariableOp?)network1/conv2d_220/Conv2D/ReadVariableOp?*network1/conv2d_221/BiasAdd/ReadVariableOp?)network1/conv2d_221/Conv2D/ReadVariableOp?(network1/dense_34/BiasAdd/ReadVariableOp?'network1/dense_34/MatMul/ReadVariableOp?
)network1/conv2d_214/Conv2D/ReadVariableOpReadVariableOp2network1_conv2d_214_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
network1/conv2d_214/Conv2DConv2Dinput_351network1/conv2d_214/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   *
paddingSAME*
strides
?
*network1/conv2d_214/BiasAdd/ReadVariableOpReadVariableOp3network1_conv2d_214_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
network1/conv2d_214/BiasAddBiasAdd#network1/conv2d_214/Conv2D:output:02network1/conv2d_214/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   ?
/network1/batch_normalization_214/ReadVariableOpReadVariableOp8network1_batch_normalization_214_readvariableop_resource*
_output_shapes
: *
dtype0?
1network1/batch_normalization_214/ReadVariableOp_1ReadVariableOp:network1_batch_normalization_214_readvariableop_1_resource*
_output_shapes
: *
dtype0?
@network1/batch_normalization_214/FusedBatchNormV3/ReadVariableOpReadVariableOpInetwork1_batch_normalization_214_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0?
Bnetwork1/batch_normalization_214/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpKnetwork1_batch_normalization_214_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0?
1network1/batch_normalization_214/FusedBatchNormV3FusedBatchNormV3$network1/conv2d_214/BiasAdd:output:07network1/batch_normalization_214/ReadVariableOp:value:09network1/batch_normalization_214/ReadVariableOp_1:value:0Hnetwork1/batch_normalization_214/FusedBatchNormV3/ReadVariableOp:value:0Jnetwork1/batch_normalization_214/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????   : : : : :*
epsilon%o?:*
is_training( ?
network1/activation_214/ReluRelu5network1/batch_normalization_214/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????   ?
)network1/conv2d_215/Conv2D/ReadVariableOpReadVariableOp2network1_conv2d_215_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0?
network1/conv2d_215/Conv2DConv2D*network1/activation_214/Relu:activations:01network1/conv2d_215/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   *
paddingSAME*
strides
?
*network1/conv2d_215/BiasAdd/ReadVariableOpReadVariableOp3network1_conv2d_215_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
network1/conv2d_215/BiasAddBiasAdd#network1/conv2d_215/Conv2D:output:02network1/conv2d_215/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   ?
/network1/batch_normalization_215/ReadVariableOpReadVariableOp8network1_batch_normalization_215_readvariableop_resource*
_output_shapes
: *
dtype0?
1network1/batch_normalization_215/ReadVariableOp_1ReadVariableOp:network1_batch_normalization_215_readvariableop_1_resource*
_output_shapes
: *
dtype0?
@network1/batch_normalization_215/FusedBatchNormV3/ReadVariableOpReadVariableOpInetwork1_batch_normalization_215_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0?
Bnetwork1/batch_normalization_215/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpKnetwork1_batch_normalization_215_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0?
1network1/batch_normalization_215/FusedBatchNormV3FusedBatchNormV3$network1/conv2d_215/BiasAdd:output:07network1/batch_normalization_215/ReadVariableOp:value:09network1/batch_normalization_215/ReadVariableOp_1:value:0Hnetwork1/batch_normalization_215/FusedBatchNormV3/ReadVariableOp:value:0Jnetwork1/batch_normalization_215/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????   : : : : :*
epsilon%o?:*
is_training( ?
network1/activation_215/ReluRelu5network1/batch_normalization_215/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????   ?
&network1/average_pooling2d_107/AvgPoolAvgPool*network1/activation_215/Relu:activations:0*
T0*/
_output_shapes
:????????? *
ksize
*
paddingSAME*
strides
?
)network1/conv2d_216/Conv2D/ReadVariableOpReadVariableOp2network1_conv2d_216_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
network1/conv2d_216/Conv2DConv2D/network1/average_pooling2d_107/AvgPool:output:01network1/conv2d_216/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
?
*network1/conv2d_216/BiasAdd/ReadVariableOpReadVariableOp3network1_conv2d_216_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
network1/conv2d_216/BiasAddBiasAdd#network1/conv2d_216/Conv2D:output:02network1/conv2d_216/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@?
/network1/batch_normalization_216/ReadVariableOpReadVariableOp8network1_batch_normalization_216_readvariableop_resource*
_output_shapes
:@*
dtype0?
1network1/batch_normalization_216/ReadVariableOp_1ReadVariableOp:network1_batch_normalization_216_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
@network1/batch_normalization_216/FusedBatchNormV3/ReadVariableOpReadVariableOpInetwork1_batch_normalization_216_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
Bnetwork1/batch_normalization_216/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpKnetwork1_batch_normalization_216_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
1network1/batch_normalization_216/FusedBatchNormV3FusedBatchNormV3$network1/conv2d_216/BiasAdd:output:07network1/batch_normalization_216/ReadVariableOp:value:09network1/batch_normalization_216/ReadVariableOp_1:value:0Hnetwork1/batch_normalization_216/FusedBatchNormV3/ReadVariableOp:value:0Jnetwork1/batch_normalization_216/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
is_training( ?
network1/activation_216/ReluRelu5network1/batch_normalization_216/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????@?
)network1/conv2d_217/Conv2D/ReadVariableOpReadVariableOp2network1_conv2d_217_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0?
network1/conv2d_217/Conv2DConv2D*network1/activation_216/Relu:activations:01network1/conv2d_217/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
?
*network1/conv2d_217/BiasAdd/ReadVariableOpReadVariableOp3network1_conv2d_217_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
network1/conv2d_217/BiasAddBiasAdd#network1/conv2d_217/Conv2D:output:02network1/conv2d_217/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@?
/network1/batch_normalization_217/ReadVariableOpReadVariableOp8network1_batch_normalization_217_readvariableop_resource*
_output_shapes
:@*
dtype0?
1network1/batch_normalization_217/ReadVariableOp_1ReadVariableOp:network1_batch_normalization_217_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
@network1/batch_normalization_217/FusedBatchNormV3/ReadVariableOpReadVariableOpInetwork1_batch_normalization_217_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
Bnetwork1/batch_normalization_217/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpKnetwork1_batch_normalization_217_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
1network1/batch_normalization_217/FusedBatchNormV3FusedBatchNormV3$network1/conv2d_217/BiasAdd:output:07network1/batch_normalization_217/ReadVariableOp:value:09network1/batch_normalization_217/ReadVariableOp_1:value:0Hnetwork1/batch_normalization_217/FusedBatchNormV3/ReadVariableOp:value:0Jnetwork1/batch_normalization_217/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
is_training( ?
network1/activation_217/ReluRelu5network1/batch_normalization_217/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????@?
&network1/average_pooling2d_108/AvgPoolAvgPool*network1/activation_217/Relu:activations:0*
T0*/
_output_shapes
:?????????@*
ksize
*
paddingSAME*
strides
?
)network1/conv2d_218/Conv2D/ReadVariableOpReadVariableOp2network1_conv2d_218_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
network1/conv2d_218/Conv2DConv2D/network1/average_pooling2d_108/AvgPool:output:01network1/conv2d_218/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
?
*network1/conv2d_218/BiasAdd/ReadVariableOpReadVariableOp3network1_conv2d_218_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
network1/conv2d_218/BiasAddBiasAdd#network1/conv2d_218/Conv2D:output:02network1/conv2d_218/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:???????????
/network1/batch_normalization_218/ReadVariableOpReadVariableOp8network1_batch_normalization_218_readvariableop_resource*
_output_shapes	
:?*
dtype0?
1network1/batch_normalization_218/ReadVariableOp_1ReadVariableOp:network1_batch_normalization_218_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
@network1/batch_normalization_218/FusedBatchNormV3/ReadVariableOpReadVariableOpInetwork1_batch_normalization_218_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
Bnetwork1/batch_normalization_218/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpKnetwork1_batch_normalization_218_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
1network1/batch_normalization_218/FusedBatchNormV3FusedBatchNormV3$network1/conv2d_218/BiasAdd:output:07network1/batch_normalization_218/ReadVariableOp:value:09network1/batch_normalization_218/ReadVariableOp_1:value:0Hnetwork1/batch_normalization_218/FusedBatchNormV3/ReadVariableOp:value:0Jnetwork1/batch_normalization_218/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( ?
network1/activation_218/ReluRelu5network1/batch_normalization_218/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:???????????
)network1/conv2d_219/Conv2D/ReadVariableOpReadVariableOp2network1_conv2d_219_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype0?
network1/conv2d_219/Conv2DConv2D*network1/activation_218/Relu:activations:01network1/conv2d_219/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
?
*network1/conv2d_219/BiasAdd/ReadVariableOpReadVariableOp3network1_conv2d_219_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
network1/conv2d_219/BiasAddBiasAdd#network1/conv2d_219/Conv2D:output:02network1/conv2d_219/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:???????????
/network1/batch_normalization_219/ReadVariableOpReadVariableOp8network1_batch_normalization_219_readvariableop_resource*
_output_shapes	
:?*
dtype0?
1network1/batch_normalization_219/ReadVariableOp_1ReadVariableOp:network1_batch_normalization_219_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
@network1/batch_normalization_219/FusedBatchNormV3/ReadVariableOpReadVariableOpInetwork1_batch_normalization_219_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
Bnetwork1/batch_normalization_219/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpKnetwork1_batch_normalization_219_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
1network1/batch_normalization_219/FusedBatchNormV3FusedBatchNormV3$network1/conv2d_219/BiasAdd:output:07network1/batch_normalization_219/ReadVariableOp:value:09network1/batch_normalization_219/ReadVariableOp_1:value:0Hnetwork1/batch_normalization_219/FusedBatchNormV3/ReadVariableOp:value:0Jnetwork1/batch_normalization_219/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( ?
network1/activation_219/ReluRelu5network1/batch_normalization_219/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:???????????
&network1/average_pooling2d_109/AvgPoolAvgPool*network1/activation_219/Relu:activations:0*
T0*0
_output_shapes
:??????????*
ksize
*
paddingSAME*
strides
?
)network1/conv2d_220/Conv2D/ReadVariableOpReadVariableOp2network1_conv2d_220_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype0?
network1/conv2d_220/Conv2DConv2D/network1/average_pooling2d_109/AvgPool:output:01network1/conv2d_220/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
?
*network1/conv2d_220/BiasAdd/ReadVariableOpReadVariableOp3network1_conv2d_220_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
network1/conv2d_220/BiasAddBiasAdd#network1/conv2d_220/Conv2D:output:02network1/conv2d_220/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:???????????
/network1/batch_normalization_220/ReadVariableOpReadVariableOp8network1_batch_normalization_220_readvariableop_resource*
_output_shapes	
:?*
dtype0?
1network1/batch_normalization_220/ReadVariableOp_1ReadVariableOp:network1_batch_normalization_220_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
@network1/batch_normalization_220/FusedBatchNormV3/ReadVariableOpReadVariableOpInetwork1_batch_normalization_220_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
Bnetwork1/batch_normalization_220/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpKnetwork1_batch_normalization_220_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
1network1/batch_normalization_220/FusedBatchNormV3FusedBatchNormV3$network1/conv2d_220/BiasAdd:output:07network1/batch_normalization_220/ReadVariableOp:value:09network1/batch_normalization_220/ReadVariableOp_1:value:0Hnetwork1/batch_normalization_220/FusedBatchNormV3/ReadVariableOp:value:0Jnetwork1/batch_normalization_220/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( ?
network1/activation_220/ReluRelu5network1/batch_normalization_220/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:???????????
)network1/conv2d_221/Conv2D/ReadVariableOpReadVariableOp2network1_conv2d_221_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype0?
network1/conv2d_221/Conv2DConv2D*network1/activation_220/Relu:activations:01network1/conv2d_221/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
?
*network1/conv2d_221/BiasAdd/ReadVariableOpReadVariableOp3network1_conv2d_221_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
network1/conv2d_221/BiasAddBiasAdd#network1/conv2d_221/Conv2D:output:02network1/conv2d_221/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:???????????
/network1/batch_normalization_221/ReadVariableOpReadVariableOp8network1_batch_normalization_221_readvariableop_resource*
_output_shapes	
:?*
dtype0?
1network1/batch_normalization_221/ReadVariableOp_1ReadVariableOp:network1_batch_normalization_221_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
@network1/batch_normalization_221/FusedBatchNormV3/ReadVariableOpReadVariableOpInetwork1_batch_normalization_221_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
Bnetwork1/batch_normalization_221/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpKnetwork1_batch_normalization_221_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
1network1/batch_normalization_221/FusedBatchNormV3FusedBatchNormV3$network1/conv2d_221/BiasAdd:output:07network1/batch_normalization_221/ReadVariableOp:value:09network1/batch_normalization_221/ReadVariableOp_1:value:0Hnetwork1/batch_normalization_221/FusedBatchNormV3/ReadVariableOp:value:0Jnetwork1/batch_normalization_221/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( ?
network1/activation_221/ReluRelu5network1/batch_normalization_221/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:???????????
&network1/average_pooling2d_110/AvgPoolAvgPool*network1/activation_221/Relu:activations:0*
T0*0
_output_shapes
:??????????*
ksize
*
paddingSAME*
strides
j
network1/flatten_34/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ?
network1/flatten_34/ReshapeReshape/network1/average_pooling2d_110/AvgPool:output:0"network1/flatten_34/Const:output:0*
T0*(
_output_shapes
:???????????
'network1/dense_34/MatMul/ReadVariableOpReadVariableOp0network1_dense_34_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype0?
network1/dense_34/MatMulMatMul$network1/flatten_34/Reshape:output:0/network1/dense_34/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
?
(network1/dense_34/BiasAdd/ReadVariableOpReadVariableOp1network1_dense_34_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0?
network1/dense_34/BiasAddBiasAdd"network1/dense_34/MatMul:product:00network1/dense_34/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
q
IdentityIdentity"network1/dense_34/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????
?
NoOpNoOpA^network1/batch_normalization_214/FusedBatchNormV3/ReadVariableOpC^network1/batch_normalization_214/FusedBatchNormV3/ReadVariableOp_10^network1/batch_normalization_214/ReadVariableOp2^network1/batch_normalization_214/ReadVariableOp_1A^network1/batch_normalization_215/FusedBatchNormV3/ReadVariableOpC^network1/batch_normalization_215/FusedBatchNormV3/ReadVariableOp_10^network1/batch_normalization_215/ReadVariableOp2^network1/batch_normalization_215/ReadVariableOp_1A^network1/batch_normalization_216/FusedBatchNormV3/ReadVariableOpC^network1/batch_normalization_216/FusedBatchNormV3/ReadVariableOp_10^network1/batch_normalization_216/ReadVariableOp2^network1/batch_normalization_216/ReadVariableOp_1A^network1/batch_normalization_217/FusedBatchNormV3/ReadVariableOpC^network1/batch_normalization_217/FusedBatchNormV3/ReadVariableOp_10^network1/batch_normalization_217/ReadVariableOp2^network1/batch_normalization_217/ReadVariableOp_1A^network1/batch_normalization_218/FusedBatchNormV3/ReadVariableOpC^network1/batch_normalization_218/FusedBatchNormV3/ReadVariableOp_10^network1/batch_normalization_218/ReadVariableOp2^network1/batch_normalization_218/ReadVariableOp_1A^network1/batch_normalization_219/FusedBatchNormV3/ReadVariableOpC^network1/batch_normalization_219/FusedBatchNormV3/ReadVariableOp_10^network1/batch_normalization_219/ReadVariableOp2^network1/batch_normalization_219/ReadVariableOp_1A^network1/batch_normalization_220/FusedBatchNormV3/ReadVariableOpC^network1/batch_normalization_220/FusedBatchNormV3/ReadVariableOp_10^network1/batch_normalization_220/ReadVariableOp2^network1/batch_normalization_220/ReadVariableOp_1A^network1/batch_normalization_221/FusedBatchNormV3/ReadVariableOpC^network1/batch_normalization_221/FusedBatchNormV3/ReadVariableOp_10^network1/batch_normalization_221/ReadVariableOp2^network1/batch_normalization_221/ReadVariableOp_1+^network1/conv2d_214/BiasAdd/ReadVariableOp*^network1/conv2d_214/Conv2D/ReadVariableOp+^network1/conv2d_215/BiasAdd/ReadVariableOp*^network1/conv2d_215/Conv2D/ReadVariableOp+^network1/conv2d_216/BiasAdd/ReadVariableOp*^network1/conv2d_216/Conv2D/ReadVariableOp+^network1/conv2d_217/BiasAdd/ReadVariableOp*^network1/conv2d_217/Conv2D/ReadVariableOp+^network1/conv2d_218/BiasAdd/ReadVariableOp*^network1/conv2d_218/Conv2D/ReadVariableOp+^network1/conv2d_219/BiasAdd/ReadVariableOp*^network1/conv2d_219/Conv2D/ReadVariableOp+^network1/conv2d_220/BiasAdd/ReadVariableOp*^network1/conv2d_220/Conv2D/ReadVariableOp+^network1/conv2d_221/BiasAdd/ReadVariableOp*^network1/conv2d_221/Conv2D/ReadVariableOp)^network1/dense_34/BiasAdd/ReadVariableOp(^network1/dense_34/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
:?????????  : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2?
@network1/batch_normalization_214/FusedBatchNormV3/ReadVariableOp@network1/batch_normalization_214/FusedBatchNormV3/ReadVariableOp2?
Bnetwork1/batch_normalization_214/FusedBatchNormV3/ReadVariableOp_1Bnetwork1/batch_normalization_214/FusedBatchNormV3/ReadVariableOp_12b
/network1/batch_normalization_214/ReadVariableOp/network1/batch_normalization_214/ReadVariableOp2f
1network1/batch_normalization_214/ReadVariableOp_11network1/batch_normalization_214/ReadVariableOp_12?
@network1/batch_normalization_215/FusedBatchNormV3/ReadVariableOp@network1/batch_normalization_215/FusedBatchNormV3/ReadVariableOp2?
Bnetwork1/batch_normalization_215/FusedBatchNormV3/ReadVariableOp_1Bnetwork1/batch_normalization_215/FusedBatchNormV3/ReadVariableOp_12b
/network1/batch_normalization_215/ReadVariableOp/network1/batch_normalization_215/ReadVariableOp2f
1network1/batch_normalization_215/ReadVariableOp_11network1/batch_normalization_215/ReadVariableOp_12?
@network1/batch_normalization_216/FusedBatchNormV3/ReadVariableOp@network1/batch_normalization_216/FusedBatchNormV3/ReadVariableOp2?
Bnetwork1/batch_normalization_216/FusedBatchNormV3/ReadVariableOp_1Bnetwork1/batch_normalization_216/FusedBatchNormV3/ReadVariableOp_12b
/network1/batch_normalization_216/ReadVariableOp/network1/batch_normalization_216/ReadVariableOp2f
1network1/batch_normalization_216/ReadVariableOp_11network1/batch_normalization_216/ReadVariableOp_12?
@network1/batch_normalization_217/FusedBatchNormV3/ReadVariableOp@network1/batch_normalization_217/FusedBatchNormV3/ReadVariableOp2?
Bnetwork1/batch_normalization_217/FusedBatchNormV3/ReadVariableOp_1Bnetwork1/batch_normalization_217/FusedBatchNormV3/ReadVariableOp_12b
/network1/batch_normalization_217/ReadVariableOp/network1/batch_normalization_217/ReadVariableOp2f
1network1/batch_normalization_217/ReadVariableOp_11network1/batch_normalization_217/ReadVariableOp_12?
@network1/batch_normalization_218/FusedBatchNormV3/ReadVariableOp@network1/batch_normalization_218/FusedBatchNormV3/ReadVariableOp2?
Bnetwork1/batch_normalization_218/FusedBatchNormV3/ReadVariableOp_1Bnetwork1/batch_normalization_218/FusedBatchNormV3/ReadVariableOp_12b
/network1/batch_normalization_218/ReadVariableOp/network1/batch_normalization_218/ReadVariableOp2f
1network1/batch_normalization_218/ReadVariableOp_11network1/batch_normalization_218/ReadVariableOp_12?
@network1/batch_normalization_219/FusedBatchNormV3/ReadVariableOp@network1/batch_normalization_219/FusedBatchNormV3/ReadVariableOp2?
Bnetwork1/batch_normalization_219/FusedBatchNormV3/ReadVariableOp_1Bnetwork1/batch_normalization_219/FusedBatchNormV3/ReadVariableOp_12b
/network1/batch_normalization_219/ReadVariableOp/network1/batch_normalization_219/ReadVariableOp2f
1network1/batch_normalization_219/ReadVariableOp_11network1/batch_normalization_219/ReadVariableOp_12?
@network1/batch_normalization_220/FusedBatchNormV3/ReadVariableOp@network1/batch_normalization_220/FusedBatchNormV3/ReadVariableOp2?
Bnetwork1/batch_normalization_220/FusedBatchNormV3/ReadVariableOp_1Bnetwork1/batch_normalization_220/FusedBatchNormV3/ReadVariableOp_12b
/network1/batch_normalization_220/ReadVariableOp/network1/batch_normalization_220/ReadVariableOp2f
1network1/batch_normalization_220/ReadVariableOp_11network1/batch_normalization_220/ReadVariableOp_12?
@network1/batch_normalization_221/FusedBatchNormV3/ReadVariableOp@network1/batch_normalization_221/FusedBatchNormV3/ReadVariableOp2?
Bnetwork1/batch_normalization_221/FusedBatchNormV3/ReadVariableOp_1Bnetwork1/batch_normalization_221/FusedBatchNormV3/ReadVariableOp_12b
/network1/batch_normalization_221/ReadVariableOp/network1/batch_normalization_221/ReadVariableOp2f
1network1/batch_normalization_221/ReadVariableOp_11network1/batch_normalization_221/ReadVariableOp_12X
*network1/conv2d_214/BiasAdd/ReadVariableOp*network1/conv2d_214/BiasAdd/ReadVariableOp2V
)network1/conv2d_214/Conv2D/ReadVariableOp)network1/conv2d_214/Conv2D/ReadVariableOp2X
*network1/conv2d_215/BiasAdd/ReadVariableOp*network1/conv2d_215/BiasAdd/ReadVariableOp2V
)network1/conv2d_215/Conv2D/ReadVariableOp)network1/conv2d_215/Conv2D/ReadVariableOp2X
*network1/conv2d_216/BiasAdd/ReadVariableOp*network1/conv2d_216/BiasAdd/ReadVariableOp2V
)network1/conv2d_216/Conv2D/ReadVariableOp)network1/conv2d_216/Conv2D/ReadVariableOp2X
*network1/conv2d_217/BiasAdd/ReadVariableOp*network1/conv2d_217/BiasAdd/ReadVariableOp2V
)network1/conv2d_217/Conv2D/ReadVariableOp)network1/conv2d_217/Conv2D/ReadVariableOp2X
*network1/conv2d_218/BiasAdd/ReadVariableOp*network1/conv2d_218/BiasAdd/ReadVariableOp2V
)network1/conv2d_218/Conv2D/ReadVariableOp)network1/conv2d_218/Conv2D/ReadVariableOp2X
*network1/conv2d_219/BiasAdd/ReadVariableOp*network1/conv2d_219/BiasAdd/ReadVariableOp2V
)network1/conv2d_219/Conv2D/ReadVariableOp)network1/conv2d_219/Conv2D/ReadVariableOp2X
*network1/conv2d_220/BiasAdd/ReadVariableOp*network1/conv2d_220/BiasAdd/ReadVariableOp2V
)network1/conv2d_220/Conv2D/ReadVariableOp)network1/conv2d_220/Conv2D/ReadVariableOp2X
*network1/conv2d_221/BiasAdd/ReadVariableOp*network1/conv2d_221/BiasAdd/ReadVariableOp2V
)network1/conv2d_221/Conv2D/ReadVariableOp)network1/conv2d_221/Conv2D/ReadVariableOp2T
(network1/dense_34/BiasAdd/ReadVariableOp(network1/dense_34/BiasAdd/ReadVariableOp2R
'network1/dense_34/MatMul/ReadVariableOp'network1/dense_34/MatMul/ReadVariableOp:Y U
/
_output_shapes
:?????????  
"
_user_specified_name
input_35
??
?-
E__inference_network1_layer_call_and_return_conditional_losses_3444358

inputsC
)conv2d_214_conv2d_readvariableop_resource: 8
*conv2d_214_biasadd_readvariableop_resource: =
/batch_normalization_214_readvariableop_resource: ?
1batch_normalization_214_readvariableop_1_resource: N
@batch_normalization_214_fusedbatchnormv3_readvariableop_resource: P
Bbatch_normalization_214_fusedbatchnormv3_readvariableop_1_resource: C
)conv2d_215_conv2d_readvariableop_resource:  8
*conv2d_215_biasadd_readvariableop_resource: =
/batch_normalization_215_readvariableop_resource: ?
1batch_normalization_215_readvariableop_1_resource: N
@batch_normalization_215_fusedbatchnormv3_readvariableop_resource: P
Bbatch_normalization_215_fusedbatchnormv3_readvariableop_1_resource: C
)conv2d_216_conv2d_readvariableop_resource: @8
*conv2d_216_biasadd_readvariableop_resource:@=
/batch_normalization_216_readvariableop_resource:@?
1batch_normalization_216_readvariableop_1_resource:@N
@batch_normalization_216_fusedbatchnormv3_readvariableop_resource:@P
Bbatch_normalization_216_fusedbatchnormv3_readvariableop_1_resource:@C
)conv2d_217_conv2d_readvariableop_resource:@@8
*conv2d_217_biasadd_readvariableop_resource:@=
/batch_normalization_217_readvariableop_resource:@?
1batch_normalization_217_readvariableop_1_resource:@N
@batch_normalization_217_fusedbatchnormv3_readvariableop_resource:@P
Bbatch_normalization_217_fusedbatchnormv3_readvariableop_1_resource:@D
)conv2d_218_conv2d_readvariableop_resource:@?9
*conv2d_218_biasadd_readvariableop_resource:	?>
/batch_normalization_218_readvariableop_resource:	?@
1batch_normalization_218_readvariableop_1_resource:	?O
@batch_normalization_218_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_218_fusedbatchnormv3_readvariableop_1_resource:	?E
)conv2d_219_conv2d_readvariableop_resource:??9
*conv2d_219_biasadd_readvariableop_resource:	?>
/batch_normalization_219_readvariableop_resource:	?@
1batch_normalization_219_readvariableop_1_resource:	?O
@batch_normalization_219_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_219_fusedbatchnormv3_readvariableop_1_resource:	?E
)conv2d_220_conv2d_readvariableop_resource:??9
*conv2d_220_biasadd_readvariableop_resource:	?>
/batch_normalization_220_readvariableop_resource:	?@
1batch_normalization_220_readvariableop_1_resource:	?O
@batch_normalization_220_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_220_fusedbatchnormv3_readvariableop_1_resource:	?E
)conv2d_221_conv2d_readvariableop_resource:??9
*conv2d_221_biasadd_readvariableop_resource:	?>
/batch_normalization_221_readvariableop_resource:	?@
1batch_normalization_221_readvariableop_1_resource:	?O
@batch_normalization_221_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_221_fusedbatchnormv3_readvariableop_1_resource:	?:
'dense_34_matmul_readvariableop_resource:	?
6
(dense_34_biasadd_readvariableop_resource:

identity??7batch_normalization_214/FusedBatchNormV3/ReadVariableOp?9batch_normalization_214/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_214/ReadVariableOp?(batch_normalization_214/ReadVariableOp_1?7batch_normalization_215/FusedBatchNormV3/ReadVariableOp?9batch_normalization_215/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_215/ReadVariableOp?(batch_normalization_215/ReadVariableOp_1?7batch_normalization_216/FusedBatchNormV3/ReadVariableOp?9batch_normalization_216/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_216/ReadVariableOp?(batch_normalization_216/ReadVariableOp_1?7batch_normalization_217/FusedBatchNormV3/ReadVariableOp?9batch_normalization_217/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_217/ReadVariableOp?(batch_normalization_217/ReadVariableOp_1?7batch_normalization_218/FusedBatchNormV3/ReadVariableOp?9batch_normalization_218/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_218/ReadVariableOp?(batch_normalization_218/ReadVariableOp_1?7batch_normalization_219/FusedBatchNormV3/ReadVariableOp?9batch_normalization_219/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_219/ReadVariableOp?(batch_normalization_219/ReadVariableOp_1?7batch_normalization_220/FusedBatchNormV3/ReadVariableOp?9batch_normalization_220/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_220/ReadVariableOp?(batch_normalization_220/ReadVariableOp_1?7batch_normalization_221/FusedBatchNormV3/ReadVariableOp?9batch_normalization_221/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_221/ReadVariableOp?(batch_normalization_221/ReadVariableOp_1?!conv2d_214/BiasAdd/ReadVariableOp? conv2d_214/Conv2D/ReadVariableOp?!conv2d_215/BiasAdd/ReadVariableOp? conv2d_215/Conv2D/ReadVariableOp?!conv2d_216/BiasAdd/ReadVariableOp? conv2d_216/Conv2D/ReadVariableOp?!conv2d_217/BiasAdd/ReadVariableOp? conv2d_217/Conv2D/ReadVariableOp?!conv2d_218/BiasAdd/ReadVariableOp? conv2d_218/Conv2D/ReadVariableOp?!conv2d_219/BiasAdd/ReadVariableOp? conv2d_219/Conv2D/ReadVariableOp?!conv2d_220/BiasAdd/ReadVariableOp? conv2d_220/Conv2D/ReadVariableOp?!conv2d_221/BiasAdd/ReadVariableOp? conv2d_221/Conv2D/ReadVariableOp?dense_34/BiasAdd/ReadVariableOp?dense_34/MatMul/ReadVariableOp?
 conv2d_214/Conv2D/ReadVariableOpReadVariableOp)conv2d_214_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
conv2d_214/Conv2DConv2Dinputs(conv2d_214/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   *
paddingSAME*
strides
?
!conv2d_214/BiasAdd/ReadVariableOpReadVariableOp*conv2d_214_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv2d_214/BiasAddBiasAddconv2d_214/Conv2D:output:0)conv2d_214/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   ?
&batch_normalization_214/ReadVariableOpReadVariableOp/batch_normalization_214_readvariableop_resource*
_output_shapes
: *
dtype0?
(batch_normalization_214/ReadVariableOp_1ReadVariableOp1batch_normalization_214_readvariableop_1_resource*
_output_shapes
: *
dtype0?
7batch_normalization_214/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_214_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0?
9batch_normalization_214/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_214_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0?
(batch_normalization_214/FusedBatchNormV3FusedBatchNormV3conv2d_214/BiasAdd:output:0.batch_normalization_214/ReadVariableOp:value:00batch_normalization_214/ReadVariableOp_1:value:0?batch_normalization_214/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_214/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????   : : : : :*
epsilon%o?:*
is_training( ?
activation_214/ReluRelu,batch_normalization_214/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????   ?
 conv2d_215/Conv2D/ReadVariableOpReadVariableOp)conv2d_215_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0?
conv2d_215/Conv2DConv2D!activation_214/Relu:activations:0(conv2d_215/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   *
paddingSAME*
strides
?
!conv2d_215/BiasAdd/ReadVariableOpReadVariableOp*conv2d_215_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv2d_215/BiasAddBiasAddconv2d_215/Conv2D:output:0)conv2d_215/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   ?
&batch_normalization_215/ReadVariableOpReadVariableOp/batch_normalization_215_readvariableop_resource*
_output_shapes
: *
dtype0?
(batch_normalization_215/ReadVariableOp_1ReadVariableOp1batch_normalization_215_readvariableop_1_resource*
_output_shapes
: *
dtype0?
7batch_normalization_215/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_215_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0?
9batch_normalization_215/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_215_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0?
(batch_normalization_215/FusedBatchNormV3FusedBatchNormV3conv2d_215/BiasAdd:output:0.batch_normalization_215/ReadVariableOp:value:00batch_normalization_215/ReadVariableOp_1:value:0?batch_normalization_215/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_215/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????   : : : : :*
epsilon%o?:*
is_training( ?
activation_215/ReluRelu,batch_normalization_215/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????   ?
average_pooling2d_107/AvgPoolAvgPool!activation_215/Relu:activations:0*
T0*/
_output_shapes
:????????? *
ksize
*
paddingSAME*
strides
?
 conv2d_216/Conv2D/ReadVariableOpReadVariableOp)conv2d_216_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
conv2d_216/Conv2DConv2D&average_pooling2d_107/AvgPool:output:0(conv2d_216/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
?
!conv2d_216/BiasAdd/ReadVariableOpReadVariableOp*conv2d_216_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
conv2d_216/BiasAddBiasAddconv2d_216/Conv2D:output:0)conv2d_216/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@?
&batch_normalization_216/ReadVariableOpReadVariableOp/batch_normalization_216_readvariableop_resource*
_output_shapes
:@*
dtype0?
(batch_normalization_216/ReadVariableOp_1ReadVariableOp1batch_normalization_216_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
7batch_normalization_216/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_216_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
9batch_normalization_216/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_216_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
(batch_normalization_216/FusedBatchNormV3FusedBatchNormV3conv2d_216/BiasAdd:output:0.batch_normalization_216/ReadVariableOp:value:00batch_normalization_216/ReadVariableOp_1:value:0?batch_normalization_216/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_216/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
is_training( ?
activation_216/ReluRelu,batch_normalization_216/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????@?
 conv2d_217/Conv2D/ReadVariableOpReadVariableOp)conv2d_217_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0?
conv2d_217/Conv2DConv2D!activation_216/Relu:activations:0(conv2d_217/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
?
!conv2d_217/BiasAdd/ReadVariableOpReadVariableOp*conv2d_217_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
conv2d_217/BiasAddBiasAddconv2d_217/Conv2D:output:0)conv2d_217/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@?
&batch_normalization_217/ReadVariableOpReadVariableOp/batch_normalization_217_readvariableop_resource*
_output_shapes
:@*
dtype0?
(batch_normalization_217/ReadVariableOp_1ReadVariableOp1batch_normalization_217_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
7batch_normalization_217/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_217_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
9batch_normalization_217/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_217_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
(batch_normalization_217/FusedBatchNormV3FusedBatchNormV3conv2d_217/BiasAdd:output:0.batch_normalization_217/ReadVariableOp:value:00batch_normalization_217/ReadVariableOp_1:value:0?batch_normalization_217/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_217/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
is_training( ?
activation_217/ReluRelu,batch_normalization_217/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????@?
average_pooling2d_108/AvgPoolAvgPool!activation_217/Relu:activations:0*
T0*/
_output_shapes
:?????????@*
ksize
*
paddingSAME*
strides
?
 conv2d_218/Conv2D/ReadVariableOpReadVariableOp)conv2d_218_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
conv2d_218/Conv2DConv2D&average_pooling2d_108/AvgPool:output:0(conv2d_218/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
?
!conv2d_218/BiasAdd/ReadVariableOpReadVariableOp*conv2d_218_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv2d_218/BiasAddBiasAddconv2d_218/Conv2D:output:0)conv2d_218/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:???????????
&batch_normalization_218/ReadVariableOpReadVariableOp/batch_normalization_218_readvariableop_resource*
_output_shapes	
:?*
dtype0?
(batch_normalization_218/ReadVariableOp_1ReadVariableOp1batch_normalization_218_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
7batch_normalization_218/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_218_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
9batch_normalization_218/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_218_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
(batch_normalization_218/FusedBatchNormV3FusedBatchNormV3conv2d_218/BiasAdd:output:0.batch_normalization_218/ReadVariableOp:value:00batch_normalization_218/ReadVariableOp_1:value:0?batch_normalization_218/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_218/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( ?
activation_218/ReluRelu,batch_normalization_218/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:???????????
 conv2d_219/Conv2D/ReadVariableOpReadVariableOp)conv2d_219_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype0?
conv2d_219/Conv2DConv2D!activation_218/Relu:activations:0(conv2d_219/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
?
!conv2d_219/BiasAdd/ReadVariableOpReadVariableOp*conv2d_219_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv2d_219/BiasAddBiasAddconv2d_219/Conv2D:output:0)conv2d_219/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:???????????
&batch_normalization_219/ReadVariableOpReadVariableOp/batch_normalization_219_readvariableop_resource*
_output_shapes	
:?*
dtype0?
(batch_normalization_219/ReadVariableOp_1ReadVariableOp1batch_normalization_219_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
7batch_normalization_219/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_219_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
9batch_normalization_219/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_219_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
(batch_normalization_219/FusedBatchNormV3FusedBatchNormV3conv2d_219/BiasAdd:output:0.batch_normalization_219/ReadVariableOp:value:00batch_normalization_219/ReadVariableOp_1:value:0?batch_normalization_219/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_219/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( ?
activation_219/ReluRelu,batch_normalization_219/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:???????????
average_pooling2d_109/AvgPoolAvgPool!activation_219/Relu:activations:0*
T0*0
_output_shapes
:??????????*
ksize
*
paddingSAME*
strides
?
 conv2d_220/Conv2D/ReadVariableOpReadVariableOp)conv2d_220_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype0?
conv2d_220/Conv2DConv2D&average_pooling2d_109/AvgPool:output:0(conv2d_220/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
?
!conv2d_220/BiasAdd/ReadVariableOpReadVariableOp*conv2d_220_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv2d_220/BiasAddBiasAddconv2d_220/Conv2D:output:0)conv2d_220/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:???????????
&batch_normalization_220/ReadVariableOpReadVariableOp/batch_normalization_220_readvariableop_resource*
_output_shapes	
:?*
dtype0?
(batch_normalization_220/ReadVariableOp_1ReadVariableOp1batch_normalization_220_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
7batch_normalization_220/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_220_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
9batch_normalization_220/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_220_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
(batch_normalization_220/FusedBatchNormV3FusedBatchNormV3conv2d_220/BiasAdd:output:0.batch_normalization_220/ReadVariableOp:value:00batch_normalization_220/ReadVariableOp_1:value:0?batch_normalization_220/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_220/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( ?
activation_220/ReluRelu,batch_normalization_220/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:???????????
 conv2d_221/Conv2D/ReadVariableOpReadVariableOp)conv2d_221_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype0?
conv2d_221/Conv2DConv2D!activation_220/Relu:activations:0(conv2d_221/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
?
!conv2d_221/BiasAdd/ReadVariableOpReadVariableOp*conv2d_221_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv2d_221/BiasAddBiasAddconv2d_221/Conv2D:output:0)conv2d_221/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:???????????
&batch_normalization_221/ReadVariableOpReadVariableOp/batch_normalization_221_readvariableop_resource*
_output_shapes	
:?*
dtype0?
(batch_normalization_221/ReadVariableOp_1ReadVariableOp1batch_normalization_221_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
7batch_normalization_221/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_221_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
9batch_normalization_221/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_221_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
(batch_normalization_221/FusedBatchNormV3FusedBatchNormV3conv2d_221/BiasAdd:output:0.batch_normalization_221/ReadVariableOp:value:00batch_normalization_221/ReadVariableOp_1:value:0?batch_normalization_221/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_221/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( ?
activation_221/ReluRelu,batch_normalization_221/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:???????????
average_pooling2d_110/AvgPoolAvgPool!activation_221/Relu:activations:0*
T0*0
_output_shapes
:??????????*
ksize
*
paddingSAME*
strides
a
flatten_34/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ?
flatten_34/ReshapeReshape&average_pooling2d_110/AvgPool:output:0flatten_34/Const:output:0*
T0*(
_output_shapes
:???????????
dense_34/MatMul/ReadVariableOpReadVariableOp'dense_34_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype0?
dense_34/MatMulMatMulflatten_34/Reshape:output:0&dense_34/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
?
dense_34/BiasAdd/ReadVariableOpReadVariableOp(dense_34_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0?
dense_34/BiasAddBiasAdddense_34/MatMul:product:0'dense_34/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
h
IdentityIdentitydense_34/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????
?
NoOpNoOp8^batch_normalization_214/FusedBatchNormV3/ReadVariableOp:^batch_normalization_214/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_214/ReadVariableOp)^batch_normalization_214/ReadVariableOp_18^batch_normalization_215/FusedBatchNormV3/ReadVariableOp:^batch_normalization_215/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_215/ReadVariableOp)^batch_normalization_215/ReadVariableOp_18^batch_normalization_216/FusedBatchNormV3/ReadVariableOp:^batch_normalization_216/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_216/ReadVariableOp)^batch_normalization_216/ReadVariableOp_18^batch_normalization_217/FusedBatchNormV3/ReadVariableOp:^batch_normalization_217/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_217/ReadVariableOp)^batch_normalization_217/ReadVariableOp_18^batch_normalization_218/FusedBatchNormV3/ReadVariableOp:^batch_normalization_218/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_218/ReadVariableOp)^batch_normalization_218/ReadVariableOp_18^batch_normalization_219/FusedBatchNormV3/ReadVariableOp:^batch_normalization_219/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_219/ReadVariableOp)^batch_normalization_219/ReadVariableOp_18^batch_normalization_220/FusedBatchNormV3/ReadVariableOp:^batch_normalization_220/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_220/ReadVariableOp)^batch_normalization_220/ReadVariableOp_18^batch_normalization_221/FusedBatchNormV3/ReadVariableOp:^batch_normalization_221/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_221/ReadVariableOp)^batch_normalization_221/ReadVariableOp_1"^conv2d_214/BiasAdd/ReadVariableOp!^conv2d_214/Conv2D/ReadVariableOp"^conv2d_215/BiasAdd/ReadVariableOp!^conv2d_215/Conv2D/ReadVariableOp"^conv2d_216/BiasAdd/ReadVariableOp!^conv2d_216/Conv2D/ReadVariableOp"^conv2d_217/BiasAdd/ReadVariableOp!^conv2d_217/Conv2D/ReadVariableOp"^conv2d_218/BiasAdd/ReadVariableOp!^conv2d_218/Conv2D/ReadVariableOp"^conv2d_219/BiasAdd/ReadVariableOp!^conv2d_219/Conv2D/ReadVariableOp"^conv2d_220/BiasAdd/ReadVariableOp!^conv2d_220/Conv2D/ReadVariableOp"^conv2d_221/BiasAdd/ReadVariableOp!^conv2d_221/Conv2D/ReadVariableOp ^dense_34/BiasAdd/ReadVariableOp^dense_34/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
:?????????  : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2r
7batch_normalization_214/FusedBatchNormV3/ReadVariableOp7batch_normalization_214/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_214/FusedBatchNormV3/ReadVariableOp_19batch_normalization_214/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_214/ReadVariableOp&batch_normalization_214/ReadVariableOp2T
(batch_normalization_214/ReadVariableOp_1(batch_normalization_214/ReadVariableOp_12r
7batch_normalization_215/FusedBatchNormV3/ReadVariableOp7batch_normalization_215/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_215/FusedBatchNormV3/ReadVariableOp_19batch_normalization_215/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_215/ReadVariableOp&batch_normalization_215/ReadVariableOp2T
(batch_normalization_215/ReadVariableOp_1(batch_normalization_215/ReadVariableOp_12r
7batch_normalization_216/FusedBatchNormV3/ReadVariableOp7batch_normalization_216/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_216/FusedBatchNormV3/ReadVariableOp_19batch_normalization_216/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_216/ReadVariableOp&batch_normalization_216/ReadVariableOp2T
(batch_normalization_216/ReadVariableOp_1(batch_normalization_216/ReadVariableOp_12r
7batch_normalization_217/FusedBatchNormV3/ReadVariableOp7batch_normalization_217/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_217/FusedBatchNormV3/ReadVariableOp_19batch_normalization_217/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_217/ReadVariableOp&batch_normalization_217/ReadVariableOp2T
(batch_normalization_217/ReadVariableOp_1(batch_normalization_217/ReadVariableOp_12r
7batch_normalization_218/FusedBatchNormV3/ReadVariableOp7batch_normalization_218/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_218/FusedBatchNormV3/ReadVariableOp_19batch_normalization_218/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_218/ReadVariableOp&batch_normalization_218/ReadVariableOp2T
(batch_normalization_218/ReadVariableOp_1(batch_normalization_218/ReadVariableOp_12r
7batch_normalization_219/FusedBatchNormV3/ReadVariableOp7batch_normalization_219/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_219/FusedBatchNormV3/ReadVariableOp_19batch_normalization_219/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_219/ReadVariableOp&batch_normalization_219/ReadVariableOp2T
(batch_normalization_219/ReadVariableOp_1(batch_normalization_219/ReadVariableOp_12r
7batch_normalization_220/FusedBatchNormV3/ReadVariableOp7batch_normalization_220/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_220/FusedBatchNormV3/ReadVariableOp_19batch_normalization_220/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_220/ReadVariableOp&batch_normalization_220/ReadVariableOp2T
(batch_normalization_220/ReadVariableOp_1(batch_normalization_220/ReadVariableOp_12r
7batch_normalization_221/FusedBatchNormV3/ReadVariableOp7batch_normalization_221/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_221/FusedBatchNormV3/ReadVariableOp_19batch_normalization_221/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_221/ReadVariableOp&batch_normalization_221/ReadVariableOp2T
(batch_normalization_221/ReadVariableOp_1(batch_normalization_221/ReadVariableOp_12F
!conv2d_214/BiasAdd/ReadVariableOp!conv2d_214/BiasAdd/ReadVariableOp2D
 conv2d_214/Conv2D/ReadVariableOp conv2d_214/Conv2D/ReadVariableOp2F
!conv2d_215/BiasAdd/ReadVariableOp!conv2d_215/BiasAdd/ReadVariableOp2D
 conv2d_215/Conv2D/ReadVariableOp conv2d_215/Conv2D/ReadVariableOp2F
!conv2d_216/BiasAdd/ReadVariableOp!conv2d_216/BiasAdd/ReadVariableOp2D
 conv2d_216/Conv2D/ReadVariableOp conv2d_216/Conv2D/ReadVariableOp2F
!conv2d_217/BiasAdd/ReadVariableOp!conv2d_217/BiasAdd/ReadVariableOp2D
 conv2d_217/Conv2D/ReadVariableOp conv2d_217/Conv2D/ReadVariableOp2F
!conv2d_218/BiasAdd/ReadVariableOp!conv2d_218/BiasAdd/ReadVariableOp2D
 conv2d_218/Conv2D/ReadVariableOp conv2d_218/Conv2D/ReadVariableOp2F
!conv2d_219/BiasAdd/ReadVariableOp!conv2d_219/BiasAdd/ReadVariableOp2D
 conv2d_219/Conv2D/ReadVariableOp conv2d_219/Conv2D/ReadVariableOp2F
!conv2d_220/BiasAdd/ReadVariableOp!conv2d_220/BiasAdd/ReadVariableOp2D
 conv2d_220/Conv2D/ReadVariableOp conv2d_220/Conv2D/ReadVariableOp2F
!conv2d_221/BiasAdd/ReadVariableOp!conv2d_221/BiasAdd/ReadVariableOp2D
 conv2d_221/Conv2D/ReadVariableOp conv2d_221/Conv2D/ReadVariableOp2B
dense_34/BiasAdd/ReadVariableOpdense_34/BiasAdd/ReadVariableOp2@
dense_34/MatMul/ReadVariableOpdense_34/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_218_layer_call_and_return_conditional_losses_3442343

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,?????????????????????????????
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_221_layer_call_and_return_conditional_losses_3445272

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,?????????????????????????????
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
g
K__inference_activation_214_layer_call_and_return_conditional_losses_3444633

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:?????????   b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????   "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????   :W S
/
_output_shapes
:?????????   
 
_user_specified_nameinputs
?

?
G__inference_conv2d_217_layer_call_and_return_conditional_losses_3442715

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:?????????@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?	
?
9__inference_batch_normalization_218_layer_call_fn_3444958

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_218_layer_call_and_return_conditional_losses_3442343?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,????????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?

?
G__inference_conv2d_220_layer_call_and_return_conditional_losses_3445137

inputs:
conv2d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
n
R__inference_average_pooling2d_108_layer_call_and_return_conditional_losses_3442318

inputs
identity?
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingSAME*
strides
{
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
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
9__inference_batch_normalization_216_layer_call_fn_3444779

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_216_layer_call_and_return_conditional_losses_3442234?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?

?
G__inference_conv2d_220_layer_call_and_return_conditional_losses_3442813

inputs:
conv2d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_220_layer_call_and_return_conditional_losses_3445181

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,?????????????????????????????
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?	
?
9__inference_batch_normalization_215_layer_call_fn_3444665

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_215_layer_call_and_return_conditional_losses_3442127?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?

?
G__inference_conv2d_216_layer_call_and_return_conditional_losses_3442683

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:?????????@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
g
K__inference_activation_220_layer_call_and_return_conditional_losses_3445209

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:??????????c
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_220_layer_call_and_return_conditional_losses_3442514

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,?????????????????????????????
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
*__inference_network1_layer_call_fn_3444069

inputs!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5:  
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10: $

unknown_11: @

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:@$

unknown_17:@@

unknown_18:@

unknown_19:@

unknown_20:@

unknown_21:@

unknown_22:@%

unknown_23:@?

unknown_24:	?

unknown_25:	?

unknown_26:	?

unknown_27:	?

unknown_28:	?&

unknown_29:??

unknown_30:	?

unknown_31:	?

unknown_32:	?

unknown_33:	?

unknown_34:	?&

unknown_35:??

unknown_36:	?

unknown_37:	?

unknown_38:	?

unknown_39:	?

unknown_40:	?&

unknown_41:??

unknown_42:	?

unknown_43:	?

unknown_44:	?

unknown_45:	?

unknown_46:	?

unknown_47:	?


unknown_48:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48*>
Tin7
523*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*T
_read_only_resource_inputs6
42	
 !"#$%&'()*+,-./012*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_network1_layer_call_and_return_conditional_losses_3442893o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
:?????????  : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_215_layer_call_and_return_conditional_losses_3442127

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? ?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_215_layer_call_and_return_conditional_losses_3444714

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? ?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
,__inference_conv2d_218_layer_call_fn_3444935

inputs"
unknown:@?
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_218_layer_call_and_return_conditional_losses_3442748x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?	
?
9__inference_batch_normalization_219_layer_call_fn_3445049

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_219_layer_call_and_return_conditional_losses_3442407?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,????????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
g
K__inference_activation_216_layer_call_and_return_conditional_losses_3442703

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:?????????@b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
g
K__inference_activation_218_layer_call_and_return_conditional_losses_3442768

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:??????????c
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
n
R__inference_average_pooling2d_107_layer_call_and_return_conditional_losses_3444734

inputs
identity?
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingSAME*
strides
{
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_218_layer_call_and_return_conditional_losses_3442374

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,?????????????????????????????
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
c
G__inference_flatten_34_layer_call_and_return_conditional_losses_3445321

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
L
0__inference_activation_217_layer_call_fn_3444911

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
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_activation_217_layer_call_and_return_conditional_losses_3442735h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?

?
G__inference_conv2d_221_layer_call_and_return_conditional_losses_3442845

inputs:
conv2d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
g
K__inference_activation_214_layer_call_and_return_conditional_losses_3442638

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:?????????   b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????   "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????   :W S
/
_output_shapes
:?????????   
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_214_layer_call_and_return_conditional_losses_3442094

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? ?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
g
K__inference_activation_216_layer_call_and_return_conditional_losses_3444825

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:?????????@b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?

?
G__inference_conv2d_216_layer_call_and_return_conditional_losses_3444753

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:?????????@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
H
,__inference_flatten_34_layer_call_fn_3445315

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_flatten_34_layer_call_and_return_conditional_losses_3442874a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
9__inference_batch_normalization_221_layer_call_fn_3445241

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_221_layer_call_and_return_conditional_losses_3442547?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,????????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?

?
G__inference_conv2d_219_layer_call_and_return_conditional_losses_3445036

inputs:
conv2d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_221_layer_call_and_return_conditional_losses_3445290

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,?????????????????????????????
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_219_layer_call_and_return_conditional_losses_3445098

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,?????????????????????????????
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
g
K__inference_activation_221_layer_call_and_return_conditional_losses_3442865

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:??????????c
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
E__inference_network1_layer_call_and_return_conditional_losses_3443857
input_35,
conv2d_214_3443726:  
conv2d_214_3443728: -
batch_normalization_214_3443731: -
batch_normalization_214_3443733: -
batch_normalization_214_3443735: -
batch_normalization_214_3443737: ,
conv2d_215_3443741:   
conv2d_215_3443743: -
batch_normalization_215_3443746: -
batch_normalization_215_3443748: -
batch_normalization_215_3443750: -
batch_normalization_215_3443752: ,
conv2d_216_3443757: @ 
conv2d_216_3443759:@-
batch_normalization_216_3443762:@-
batch_normalization_216_3443764:@-
batch_normalization_216_3443766:@-
batch_normalization_216_3443768:@,
conv2d_217_3443772:@@ 
conv2d_217_3443774:@-
batch_normalization_217_3443777:@-
batch_normalization_217_3443779:@-
batch_normalization_217_3443781:@-
batch_normalization_217_3443783:@-
conv2d_218_3443788:@?!
conv2d_218_3443790:	?.
batch_normalization_218_3443793:	?.
batch_normalization_218_3443795:	?.
batch_normalization_218_3443797:	?.
batch_normalization_218_3443799:	?.
conv2d_219_3443803:??!
conv2d_219_3443805:	?.
batch_normalization_219_3443808:	?.
batch_normalization_219_3443810:	?.
batch_normalization_219_3443812:	?.
batch_normalization_219_3443814:	?.
conv2d_220_3443819:??!
conv2d_220_3443821:	?.
batch_normalization_220_3443824:	?.
batch_normalization_220_3443826:	?.
batch_normalization_220_3443828:	?.
batch_normalization_220_3443830:	?.
conv2d_221_3443834:??!
conv2d_221_3443836:	?.
batch_normalization_221_3443839:	?.
batch_normalization_221_3443841:	?.
batch_normalization_221_3443843:	?.
batch_normalization_221_3443845:	?#
dense_34_3443851:	?

dense_34_3443853:

identity??/batch_normalization_214/StatefulPartitionedCall?/batch_normalization_215/StatefulPartitionedCall?/batch_normalization_216/StatefulPartitionedCall?/batch_normalization_217/StatefulPartitionedCall?/batch_normalization_218/StatefulPartitionedCall?/batch_normalization_219/StatefulPartitionedCall?/batch_normalization_220/StatefulPartitionedCall?/batch_normalization_221/StatefulPartitionedCall?"conv2d_214/StatefulPartitionedCall?"conv2d_215/StatefulPartitionedCall?"conv2d_216/StatefulPartitionedCall?"conv2d_217/StatefulPartitionedCall?"conv2d_218/StatefulPartitionedCall?"conv2d_219/StatefulPartitionedCall?"conv2d_220/StatefulPartitionedCall?"conv2d_221/StatefulPartitionedCall? dense_34/StatefulPartitionedCall?
"conv2d_214/StatefulPartitionedCallStatefulPartitionedCallinput_35conv2d_214_3443726conv2d_214_3443728*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_214_layer_call_and_return_conditional_losses_3442618?
/batch_normalization_214/StatefulPartitionedCallStatefulPartitionedCall+conv2d_214/StatefulPartitionedCall:output:0batch_normalization_214_3443731batch_normalization_214_3443733batch_normalization_214_3443735batch_normalization_214_3443737*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_214_layer_call_and_return_conditional_losses_3442094?
activation_214/PartitionedCallPartitionedCall8batch_normalization_214/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_activation_214_layer_call_and_return_conditional_losses_3442638?
"conv2d_215/StatefulPartitionedCallStatefulPartitionedCall'activation_214/PartitionedCall:output:0conv2d_215_3443741conv2d_215_3443743*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_215_layer_call_and_return_conditional_losses_3442650?
/batch_normalization_215/StatefulPartitionedCallStatefulPartitionedCall+conv2d_215/StatefulPartitionedCall:output:0batch_normalization_215_3443746batch_normalization_215_3443748batch_normalization_215_3443750batch_normalization_215_3443752*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_215_layer_call_and_return_conditional_losses_3442158?
activation_215/PartitionedCallPartitionedCall8batch_normalization_215/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_activation_215_layer_call_and_return_conditional_losses_3442670?
%average_pooling2d_107/PartitionedCallPartitionedCall'activation_215/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_average_pooling2d_107_layer_call_and_return_conditional_losses_3442178?
"conv2d_216/StatefulPartitionedCallStatefulPartitionedCall.average_pooling2d_107/PartitionedCall:output:0conv2d_216_3443757conv2d_216_3443759*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_216_layer_call_and_return_conditional_losses_3442683?
/batch_normalization_216/StatefulPartitionedCallStatefulPartitionedCall+conv2d_216/StatefulPartitionedCall:output:0batch_normalization_216_3443762batch_normalization_216_3443764batch_normalization_216_3443766batch_normalization_216_3443768*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_216_layer_call_and_return_conditional_losses_3442234?
activation_216/PartitionedCallPartitionedCall8batch_normalization_216/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_activation_216_layer_call_and_return_conditional_losses_3442703?
"conv2d_217/StatefulPartitionedCallStatefulPartitionedCall'activation_216/PartitionedCall:output:0conv2d_217_3443772conv2d_217_3443774*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_217_layer_call_and_return_conditional_losses_3442715?
/batch_normalization_217/StatefulPartitionedCallStatefulPartitionedCall+conv2d_217/StatefulPartitionedCall:output:0batch_normalization_217_3443777batch_normalization_217_3443779batch_normalization_217_3443781batch_normalization_217_3443783*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_217_layer_call_and_return_conditional_losses_3442298?
activation_217/PartitionedCallPartitionedCall8batch_normalization_217/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_activation_217_layer_call_and_return_conditional_losses_3442735?
%average_pooling2d_108/PartitionedCallPartitionedCall'activation_217/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_average_pooling2d_108_layer_call_and_return_conditional_losses_3442318?
"conv2d_218/StatefulPartitionedCallStatefulPartitionedCall.average_pooling2d_108/PartitionedCall:output:0conv2d_218_3443788conv2d_218_3443790*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_218_layer_call_and_return_conditional_losses_3442748?
/batch_normalization_218/StatefulPartitionedCallStatefulPartitionedCall+conv2d_218/StatefulPartitionedCall:output:0batch_normalization_218_3443793batch_normalization_218_3443795batch_normalization_218_3443797batch_normalization_218_3443799*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_218_layer_call_and_return_conditional_losses_3442374?
activation_218/PartitionedCallPartitionedCall8batch_normalization_218/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_activation_218_layer_call_and_return_conditional_losses_3442768?
"conv2d_219/StatefulPartitionedCallStatefulPartitionedCall'activation_218/PartitionedCall:output:0conv2d_219_3443803conv2d_219_3443805*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_219_layer_call_and_return_conditional_losses_3442780?
/batch_normalization_219/StatefulPartitionedCallStatefulPartitionedCall+conv2d_219/StatefulPartitionedCall:output:0batch_normalization_219_3443808batch_normalization_219_3443810batch_normalization_219_3443812batch_normalization_219_3443814*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_219_layer_call_and_return_conditional_losses_3442438?
activation_219/PartitionedCallPartitionedCall8batch_normalization_219/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_activation_219_layer_call_and_return_conditional_losses_3442800?
%average_pooling2d_109/PartitionedCallPartitionedCall'activation_219/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_average_pooling2d_109_layer_call_and_return_conditional_losses_3442458?
"conv2d_220/StatefulPartitionedCallStatefulPartitionedCall.average_pooling2d_109/PartitionedCall:output:0conv2d_220_3443819conv2d_220_3443821*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_220_layer_call_and_return_conditional_losses_3442813?
/batch_normalization_220/StatefulPartitionedCallStatefulPartitionedCall+conv2d_220/StatefulPartitionedCall:output:0batch_normalization_220_3443824batch_normalization_220_3443826batch_normalization_220_3443828batch_normalization_220_3443830*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_220_layer_call_and_return_conditional_losses_3442514?
activation_220/PartitionedCallPartitionedCall8batch_normalization_220/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_activation_220_layer_call_and_return_conditional_losses_3442833?
"conv2d_221/StatefulPartitionedCallStatefulPartitionedCall'activation_220/PartitionedCall:output:0conv2d_221_3443834conv2d_221_3443836*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_221_layer_call_and_return_conditional_losses_3442845?
/batch_normalization_221/StatefulPartitionedCallStatefulPartitionedCall+conv2d_221/StatefulPartitionedCall:output:0batch_normalization_221_3443839batch_normalization_221_3443841batch_normalization_221_3443843batch_normalization_221_3443845*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_221_layer_call_and_return_conditional_losses_3442578?
activation_221/PartitionedCallPartitionedCall8batch_normalization_221/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_activation_221_layer_call_and_return_conditional_losses_3442865?
%average_pooling2d_110/PartitionedCallPartitionedCall'activation_221/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_average_pooling2d_110_layer_call_and_return_conditional_losses_3442598?
flatten_34/PartitionedCallPartitionedCall.average_pooling2d_110/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_flatten_34_layer_call_and_return_conditional_losses_3442874?
 dense_34/StatefulPartitionedCallStatefulPartitionedCall#flatten_34/PartitionedCall:output:0dense_34_3443851dense_34_3443853*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_34_layer_call_and_return_conditional_losses_3442886x
IdentityIdentity)dense_34/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
?
NoOpNoOp0^batch_normalization_214/StatefulPartitionedCall0^batch_normalization_215/StatefulPartitionedCall0^batch_normalization_216/StatefulPartitionedCall0^batch_normalization_217/StatefulPartitionedCall0^batch_normalization_218/StatefulPartitionedCall0^batch_normalization_219/StatefulPartitionedCall0^batch_normalization_220/StatefulPartitionedCall0^batch_normalization_221/StatefulPartitionedCall#^conv2d_214/StatefulPartitionedCall#^conv2d_215/StatefulPartitionedCall#^conv2d_216/StatefulPartitionedCall#^conv2d_217/StatefulPartitionedCall#^conv2d_218/StatefulPartitionedCall#^conv2d_219/StatefulPartitionedCall#^conv2d_220/StatefulPartitionedCall#^conv2d_221/StatefulPartitionedCall!^dense_34/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
:?????????  : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_214/StatefulPartitionedCall/batch_normalization_214/StatefulPartitionedCall2b
/batch_normalization_215/StatefulPartitionedCall/batch_normalization_215/StatefulPartitionedCall2b
/batch_normalization_216/StatefulPartitionedCall/batch_normalization_216/StatefulPartitionedCall2b
/batch_normalization_217/StatefulPartitionedCall/batch_normalization_217/StatefulPartitionedCall2b
/batch_normalization_218/StatefulPartitionedCall/batch_normalization_218/StatefulPartitionedCall2b
/batch_normalization_219/StatefulPartitionedCall/batch_normalization_219/StatefulPartitionedCall2b
/batch_normalization_220/StatefulPartitionedCall/batch_normalization_220/StatefulPartitionedCall2b
/batch_normalization_221/StatefulPartitionedCall/batch_normalization_221/StatefulPartitionedCall2H
"conv2d_214/StatefulPartitionedCall"conv2d_214/StatefulPartitionedCall2H
"conv2d_215/StatefulPartitionedCall"conv2d_215/StatefulPartitionedCall2H
"conv2d_216/StatefulPartitionedCall"conv2d_216/StatefulPartitionedCall2H
"conv2d_217/StatefulPartitionedCall"conv2d_217/StatefulPartitionedCall2H
"conv2d_218/StatefulPartitionedCall"conv2d_218/StatefulPartitionedCall2H
"conv2d_219/StatefulPartitionedCall"conv2d_219/StatefulPartitionedCall2H
"conv2d_220/StatefulPartitionedCall"conv2d_220/StatefulPartitionedCall2H
"conv2d_221/StatefulPartitionedCall"conv2d_221/StatefulPartitionedCall2D
 dense_34/StatefulPartitionedCall dense_34/StatefulPartitionedCall:Y U
/
_output_shapes
:?????????  
"
_user_specified_name
input_35
?	
?
9__inference_batch_normalization_221_layer_call_fn_3445254

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_221_layer_call_and_return_conditional_losses_3442578?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,????????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
,__inference_conv2d_215_layer_call_fn_3444642

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
:?????????   *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_215_layer_call_and_return_conditional_losses_3442650w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????   `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????   : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????   
 
_user_specified_nameinputs
?

?
G__inference_conv2d_219_layer_call_and_return_conditional_losses_3442780

inputs:
conv2d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
,__inference_conv2d_221_layer_call_fn_3445218

inputs#
unknown:??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_221_layer_call_and_return_conditional_losses_3442845x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?$
#__inference__traced_restore_3445697
file_prefix<
"assignvariableop_conv2d_214_kernel: 0
"assignvariableop_1_conv2d_214_bias: >
0assignvariableop_2_batch_normalization_214_gamma: =
/assignvariableop_3_batch_normalization_214_beta: D
6assignvariableop_4_batch_normalization_214_moving_mean: H
:assignvariableop_5_batch_normalization_214_moving_variance: >
$assignvariableop_6_conv2d_215_kernel:  0
"assignvariableop_7_conv2d_215_bias: >
0assignvariableop_8_batch_normalization_215_gamma: =
/assignvariableop_9_batch_normalization_215_beta: E
7assignvariableop_10_batch_normalization_215_moving_mean: I
;assignvariableop_11_batch_normalization_215_moving_variance: ?
%assignvariableop_12_conv2d_216_kernel: @1
#assignvariableop_13_conv2d_216_bias:@?
1assignvariableop_14_batch_normalization_216_gamma:@>
0assignvariableop_15_batch_normalization_216_beta:@E
7assignvariableop_16_batch_normalization_216_moving_mean:@I
;assignvariableop_17_batch_normalization_216_moving_variance:@?
%assignvariableop_18_conv2d_217_kernel:@@1
#assignvariableop_19_conv2d_217_bias:@?
1assignvariableop_20_batch_normalization_217_gamma:@>
0assignvariableop_21_batch_normalization_217_beta:@E
7assignvariableop_22_batch_normalization_217_moving_mean:@I
;assignvariableop_23_batch_normalization_217_moving_variance:@@
%assignvariableop_24_conv2d_218_kernel:@?2
#assignvariableop_25_conv2d_218_bias:	?@
1assignvariableop_26_batch_normalization_218_gamma:	??
0assignvariableop_27_batch_normalization_218_beta:	?F
7assignvariableop_28_batch_normalization_218_moving_mean:	?J
;assignvariableop_29_batch_normalization_218_moving_variance:	?A
%assignvariableop_30_conv2d_219_kernel:??2
#assignvariableop_31_conv2d_219_bias:	?@
1assignvariableop_32_batch_normalization_219_gamma:	??
0assignvariableop_33_batch_normalization_219_beta:	?F
7assignvariableop_34_batch_normalization_219_moving_mean:	?J
;assignvariableop_35_batch_normalization_219_moving_variance:	?A
%assignvariableop_36_conv2d_220_kernel:??2
#assignvariableop_37_conv2d_220_bias:	?@
1assignvariableop_38_batch_normalization_220_gamma:	??
0assignvariableop_39_batch_normalization_220_beta:	?F
7assignvariableop_40_batch_normalization_220_moving_mean:	?J
;assignvariableop_41_batch_normalization_220_moving_variance:	?A
%assignvariableop_42_conv2d_221_kernel:??2
#assignvariableop_43_conv2d_221_bias:	?@
1assignvariableop_44_batch_normalization_221_gamma:	??
0assignvariableop_45_batch_normalization_221_beta:	?F
7assignvariableop_46_batch_normalization_221_moving_mean:	?J
;assignvariableop_47_batch_normalization_221_moving_variance:	?6
#assignvariableop_48_dense_34_kernel:	?
/
!assignvariableop_49_dense_34_bias:
%
assignvariableop_50_total_1: %
assignvariableop_51_count_1: #
assignvariableop_52_total: #
assignvariableop_53_count: 
identity_55??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_46?AssignVariableOp_47?AssignVariableOp_48?AssignVariableOp_49?AssignVariableOp_5?AssignVariableOp_50?AssignVariableOp_51?AssignVariableOp_52?AssignVariableOp_53?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:7*
dtype0*?
value?B?7B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-11/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-11/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-11/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-13/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-13/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-13/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-13/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-15/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-15/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-15/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-15/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-16/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-16/bias/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:7*
dtype0*?
valuexBv7B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?:::::::::::::::::::::::::::::::::::::::::::::::::::::::*E
dtypes;
927[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOp"assignvariableop_conv2d_214_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv2d_214_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp0assignvariableop_2_batch_normalization_214_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOp/assignvariableop_3_batch_normalization_214_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOp6assignvariableop_4_batch_normalization_214_moving_meanIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOp:assignvariableop_5_batch_normalization_214_moving_varianceIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOp$assignvariableop_6_conv2d_215_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOp"assignvariableop_7_conv2d_215_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp0assignvariableop_8_batch_normalization_215_gammaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp/assignvariableop_9_batch_normalization_215_betaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp7assignvariableop_10_batch_normalization_215_moving_meanIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_batch_normalization_215_moving_varianceIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp%assignvariableop_12_conv2d_216_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp#assignvariableop_13_conv2d_216_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp1assignvariableop_14_batch_normalization_216_gammaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp0assignvariableop_15_batch_normalization_216_betaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOp7assignvariableop_16_batch_normalization_216_moving_meanIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOp;assignvariableop_17_batch_normalization_216_moving_varianceIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOp%assignvariableop_18_conv2d_217_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp#assignvariableop_19_conv2d_217_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp1assignvariableop_20_batch_normalization_217_gammaIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOp0assignvariableop_21_batch_normalization_217_betaIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp7assignvariableop_22_batch_normalization_217_moving_meanIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp;assignvariableop_23_batch_normalization_217_moving_varianceIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOp%assignvariableop_24_conv2d_218_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp#assignvariableop_25_conv2d_218_biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp1assignvariableop_26_batch_normalization_218_gammaIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOp0assignvariableop_27_batch_normalization_218_betaIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp7assignvariableop_28_batch_normalization_218_moving_meanIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp;assignvariableop_29_batch_normalization_218_moving_varianceIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp%assignvariableop_30_conv2d_219_kernelIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp#assignvariableop_31_conv2d_219_biasIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOp1assignvariableop_32_batch_normalization_219_gammaIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp0assignvariableop_33_batch_normalization_219_betaIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp7assignvariableop_34_batch_normalization_219_moving_meanIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOp;assignvariableop_35_batch_normalization_219_moving_varianceIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp%assignvariableop_36_conv2d_220_kernelIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp#assignvariableop_37_conv2d_220_biasIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOp1assignvariableop_38_batch_normalization_220_gammaIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp0assignvariableop_39_batch_normalization_220_betaIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_40AssignVariableOp7assignvariableop_40_batch_normalization_220_moving_meanIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_41AssignVariableOp;assignvariableop_41_batch_normalization_220_moving_varianceIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_42AssignVariableOp%assignvariableop_42_conv2d_221_kernelIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_43AssignVariableOp#assignvariableop_43_conv2d_221_biasIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_44AssignVariableOp1assignvariableop_44_batch_normalization_221_gammaIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_45AssignVariableOp0assignvariableop_45_batch_normalization_221_betaIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_46AssignVariableOp7assignvariableop_46_batch_normalization_221_moving_meanIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_47AssignVariableOp;assignvariableop_47_batch_normalization_221_moving_varianceIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_48AssignVariableOp#assignvariableop_48_dense_34_kernelIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_49AssignVariableOp!assignvariableop_49_dense_34_biasIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_50AssignVariableOpassignvariableop_50_total_1Identity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_51AssignVariableOpassignvariableop_51_count_1Identity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_52AssignVariableOpassignvariableop_52_totalIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_53AssignVariableOpassignvariableop_53_countIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?	
Identity_54Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_55IdentityIdentity_54:output:0^NoOp_1*
T0*
_output_shapes
: ?	
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_55Identity_55:output:0*?
_input_shapesp
n: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?	
?
9__inference_batch_normalization_214_layer_call_fn_3444587

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_214_layer_call_and_return_conditional_losses_3442094?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_219_layer_call_and_return_conditional_losses_3445080

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,?????????????????????????????
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs"?	L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
E
input_359
serving_default_input_35:0?????????  <
dense_340
StatefulPartitionedCall:0?????????
tensorflow/serving/predict:??
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer-7
	layer_with_weights-4
	layer-8

layer_with_weights-5

layer-9
layer-10
layer_with_weights-6
layer-11
layer_with_weights-7
layer-12
layer-13
layer-14
layer_with_weights-8
layer-15
layer_with_weights-9
layer-16
layer-17
layer_with_weights-10
layer-18
layer_with_weights-11
layer-19
layer-20
layer-21
layer_with_weights-12
layer-22
layer_with_weights-13
layer-23
layer-24
layer_with_weights-14
layer-25
layer_with_weights-15
layer-26
layer-27
layer-28
layer-29
layer_with_weights-16
layer-30
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$__call__
*%&call_and_return_all_conditional_losses
&_default_save_signature
'	optimizer
(
signatures"
_tf_keras_network
"
_tf_keras_input_layer
?
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses

/kernel
0bias
 1_jit_compiled_convolution_op"
_tf_keras_layer
?
2	variables
3trainable_variables
4regularization_losses
5	keras_api
6__call__
*7&call_and_return_all_conditional_losses
8axis
	9gamma
:beta
;moving_mean
<moving_variance"
_tf_keras_layer
?
=	variables
>trainable_variables
?regularization_losses
@	keras_api
A__call__
*B&call_and_return_all_conditional_losses"
_tf_keras_layer
?
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
G__call__
*H&call_and_return_all_conditional_losses

Ikernel
Jbias
 K_jit_compiled_convolution_op"
_tf_keras_layer
?
L	variables
Mtrainable_variables
Nregularization_losses
O	keras_api
P__call__
*Q&call_and_return_all_conditional_losses
Raxis
	Sgamma
Tbeta
Umoving_mean
Vmoving_variance"
_tf_keras_layer
?
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
[__call__
*\&call_and_return_all_conditional_losses"
_tf_keras_layer
?
]	variables
^trainable_variables
_regularization_losses
`	keras_api
a__call__
*b&call_and_return_all_conditional_losses"
_tf_keras_layer
?
c	variables
dtrainable_variables
eregularization_losses
f	keras_api
g__call__
*h&call_and_return_all_conditional_losses

ikernel
jbias
 k_jit_compiled_convolution_op"
_tf_keras_layer
?
l	variables
mtrainable_variables
nregularization_losses
o	keras_api
p__call__
*q&call_and_return_all_conditional_losses
raxis
	sgamma
tbeta
umoving_mean
vmoving_variance"
_tf_keras_layer
?
w	variables
xtrainable_variables
yregularization_losses
z	keras_api
{__call__
*|&call_and_return_all_conditional_losses"
_tf_keras_layer
?
}	variables
~trainable_variables
regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?kernel
	?bias
!?_jit_compiled_convolution_op"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
	?axis

?gamma
	?beta
?moving_mean
?moving_variance"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?kernel
	?bias
!?_jit_compiled_convolution_op"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
	?axis

?gamma
	?beta
?moving_mean
?moving_variance"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?kernel
	?bias
!?_jit_compiled_convolution_op"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
	?axis

?gamma
	?beta
?moving_mean
?moving_variance"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?kernel
	?bias
!?_jit_compiled_convolution_op"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
	?axis

?gamma
	?beta
?moving_mean
?moving_variance"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?kernel
	?bias
!?_jit_compiled_convolution_op"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
	?axis

?gamma
	?beta
?moving_mean
?moving_variance"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?kernel
	?bias"
_tf_keras_layer
?
/0
01
92
:3
;4
<5
I6
J7
S8
T9
U10
V11
i12
j13
s14
t15
u16
v17
?18
?19
?20
?21
?22
?23
?24
?25
?26
?27
?28
?29
?30
?31
?32
?33
?34
?35
?36
?37
?38
?39
?40
?41
?42
?43
?44
?45
?46
?47
?48
?49"
trackable_list_wrapper
?
/0
01
92
:3
I4
J5
S6
T7
i8
j9
s10
t11
?12
?13
?14
?15
?16
?17
?18
?19
?20
?21
?22
?23
?24
?25
?26
?27
?28
?29
?30
?31
?32
?33"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
 	variables
!trainable_variables
"regularization_losses
$__call__
&_default_save_signature
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses"
_generic_user_object
?
?trace_0
?trace_1
?trace_2
?trace_32?
*__inference_network1_layer_call_fn_3442996
*__inference_network1_layer_call_fn_3444069
*__inference_network1_layer_call_fn_3444174
*__inference_network1_layer_call_fn_3443589?
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

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0z?trace_1z?trace_2z?trace_3
?
?trace_0
?trace_1
?trace_2
?trace_32?
E__inference_network1_layer_call_and_return_conditional_losses_3444358
E__inference_network1_layer_call_and_return_conditional_losses_3444542
E__inference_network1_layer_call_and_return_conditional_losses_3443723
E__inference_network1_layer_call_and_return_conditional_losses_3443857?
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

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0z?trace_1z?trace_2z?trace_3
?B?
"__inference__wrapped_model_3442041input_35"?
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
"
	optimizer
-
?serving_default"
signature_map
.
/0
01"
trackable_list_wrapper
.
/0
01"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
,__inference_conv2d_214_layer_call_fn_3444551?
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
 z?trace_0
?
?trace_02?
G__inference_conv2d_214_layer_call_and_return_conditional_losses_3444561?
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
 z?trace_0
+:) 2conv2d_214/kernel
: 2conv2d_214/bias
?2??
???
FullArgSpec'
args?
jself
jinputs
jkernel
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
 0
<
90
:1
;2
<3"
trackable_list_wrapper
.
90
:1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
2	variables
3trainable_variables
4regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses"
_generic_user_object
?
?trace_0
?trace_12?
9__inference_batch_normalization_214_layer_call_fn_3444574
9__inference_batch_normalization_214_layer_call_fn_3444587?
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
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0z?trace_1
?
?trace_0
?trace_12?
T__inference_batch_normalization_214_layer_call_and_return_conditional_losses_3444605
T__inference_batch_normalization_214_layer_call_and_return_conditional_losses_3444623?
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
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0z?trace_1
 "
trackable_list_wrapper
+:) 2batch_normalization_214/gamma
*:( 2batch_normalization_214/beta
3:1  (2#batch_normalization_214/moving_mean
7:5  (2'batch_normalization_214/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
=	variables
>trainable_variables
?regularization_losses
A__call__
*B&call_and_return_all_conditional_losses
&B"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
0__inference_activation_214_layer_call_fn_3444628?
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
 z?trace_0
?
?trace_02?
K__inference_activation_214_layer_call_and_return_conditional_losses_3444633?
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
 z?trace_0
.
I0
J1"
trackable_list_wrapper
.
I0
J1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
G__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
,__inference_conv2d_215_layer_call_fn_3444642?
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
 z?trace_0
?
?trace_02?
G__inference_conv2d_215_layer_call_and_return_conditional_losses_3444652?
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
 z?trace_0
+:)  2conv2d_215/kernel
: 2conv2d_215/bias
?2??
???
FullArgSpec'
args?
jself
jinputs
jkernel
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
 0
<
S0
T1
U2
V3"
trackable_list_wrapper
.
S0
T1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
L	variables
Mtrainable_variables
Nregularization_losses
P__call__
*Q&call_and_return_all_conditional_losses
&Q"call_and_return_conditional_losses"
_generic_user_object
?
?trace_0
?trace_12?
9__inference_batch_normalization_215_layer_call_fn_3444665
9__inference_batch_normalization_215_layer_call_fn_3444678?
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
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0z?trace_1
?
?trace_0
?trace_12?
T__inference_batch_normalization_215_layer_call_and_return_conditional_losses_3444696
T__inference_batch_normalization_215_layer_call_and_return_conditional_losses_3444714?
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
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0z?trace_1
 "
trackable_list_wrapper
+:) 2batch_normalization_215/gamma
*:( 2batch_normalization_215/beta
3:1  (2#batch_normalization_215/moving_mean
7:5  (2'batch_normalization_215/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
W	variables
Xtrainable_variables
Yregularization_losses
[__call__
*\&call_and_return_all_conditional_losses
&\"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
0__inference_activation_215_layer_call_fn_3444719?
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
 z?trace_0
?
?trace_02?
K__inference_activation_215_layer_call_and_return_conditional_losses_3444724?
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
 z?trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
]	variables
^trainable_variables
_regularization_losses
a__call__
*b&call_and_return_all_conditional_losses
&b"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
7__inference_average_pooling2d_107_layer_call_fn_3444729?
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
 z?trace_0
?
?trace_02?
R__inference_average_pooling2d_107_layer_call_and_return_conditional_losses_3444734?
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
 z?trace_0
.
i0
j1"
trackable_list_wrapper
.
i0
j1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
c	variables
dtrainable_variables
eregularization_losses
g__call__
*h&call_and_return_all_conditional_losses
&h"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
,__inference_conv2d_216_layer_call_fn_3444743?
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
 z?trace_0
?
?trace_02?
G__inference_conv2d_216_layer_call_and_return_conditional_losses_3444753?
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
 z?trace_0
+:) @2conv2d_216/kernel
:@2conv2d_216/bias
?2??
???
FullArgSpec'
args?
jself
jinputs
jkernel
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
 0
<
s0
t1
u2
v3"
trackable_list_wrapper
.
s0
t1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
l	variables
mtrainable_variables
nregularization_losses
p__call__
*q&call_and_return_all_conditional_losses
&q"call_and_return_conditional_losses"
_generic_user_object
?
?trace_0
?trace_12?
9__inference_batch_normalization_216_layer_call_fn_3444766
9__inference_batch_normalization_216_layer_call_fn_3444779?
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
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0z?trace_1
?
?trace_0
?trace_12?
T__inference_batch_normalization_216_layer_call_and_return_conditional_losses_3444797
T__inference_batch_normalization_216_layer_call_and_return_conditional_losses_3444815?
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
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0z?trace_1
 "
trackable_list_wrapper
+:)@2batch_normalization_216/gamma
*:(@2batch_normalization_216/beta
3:1@ (2#batch_normalization_216/moving_mean
7:5@ (2'batch_normalization_216/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
w	variables
xtrainable_variables
yregularization_losses
{__call__
*|&call_and_return_all_conditional_losses
&|"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
0__inference_activation_216_layer_call_fn_3444820?
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
 z?trace_0
?
?trace_02?
K__inference_activation_216_layer_call_and_return_conditional_losses_3444825?
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
 z?trace_0
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
}	variables
~trainable_variables
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
,__inference_conv2d_217_layer_call_fn_3444834?
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
 z?trace_0
?
?trace_02?
G__inference_conv2d_217_layer_call_and_return_conditional_losses_3444844?
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
 z?trace_0
+:)@@2conv2d_217/kernel
:@2conv2d_217/bias
?2??
???
FullArgSpec'
args?
jself
jinputs
jkernel
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
 0
@
?0
?1
?2
?3"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_0
?trace_12?
9__inference_batch_normalization_217_layer_call_fn_3444857
9__inference_batch_normalization_217_layer_call_fn_3444870?
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
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0z?trace_1
?
?trace_0
?trace_12?
T__inference_batch_normalization_217_layer_call_and_return_conditional_losses_3444888
T__inference_batch_normalization_217_layer_call_and_return_conditional_losses_3444906?
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
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0z?trace_1
 "
trackable_list_wrapper
+:)@2batch_normalization_217/gamma
*:(@2batch_normalization_217/beta
3:1@ (2#batch_normalization_217/moving_mean
7:5@ (2'batch_normalization_217/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
0__inference_activation_217_layer_call_fn_3444911?
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
 z?trace_0
?
?trace_02?
K__inference_activation_217_layer_call_and_return_conditional_losses_3444916?
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
 z?trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
7__inference_average_pooling2d_108_layer_call_fn_3444921?
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
 z?trace_0
?
?trace_02?
R__inference_average_pooling2d_108_layer_call_and_return_conditional_losses_3444926?
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
 z?trace_0
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
,__inference_conv2d_218_layer_call_fn_3444935?
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
 z?trace_0
?
?trace_02?
G__inference_conv2d_218_layer_call_and_return_conditional_losses_3444945?
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
 z?trace_0
,:*@?2conv2d_218/kernel
:?2conv2d_218/bias
?2??
???
FullArgSpec'
args?
jself
jinputs
jkernel
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
 0
@
?0
?1
?2
?3"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_0
?trace_12?
9__inference_batch_normalization_218_layer_call_fn_3444958
9__inference_batch_normalization_218_layer_call_fn_3444971?
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
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0z?trace_1
?
?trace_0
?trace_12?
T__inference_batch_normalization_218_layer_call_and_return_conditional_losses_3444989
T__inference_batch_normalization_218_layer_call_and_return_conditional_losses_3445007?
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
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0z?trace_1
 "
trackable_list_wrapper
,:*?2batch_normalization_218/gamma
+:)?2batch_normalization_218/beta
4:2? (2#batch_normalization_218/moving_mean
8:6? (2'batch_normalization_218/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
0__inference_activation_218_layer_call_fn_3445012?
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
 z?trace_0
?
?trace_02?
K__inference_activation_218_layer_call_and_return_conditional_losses_3445017?
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
 z?trace_0
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
,__inference_conv2d_219_layer_call_fn_3445026?
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
 z?trace_0
?
?trace_02?
G__inference_conv2d_219_layer_call_and_return_conditional_losses_3445036?
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
 z?trace_0
-:+??2conv2d_219/kernel
:?2conv2d_219/bias
?2??
???
FullArgSpec'
args?
jself
jinputs
jkernel
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
 0
@
?0
?1
?2
?3"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_0
?trace_12?
9__inference_batch_normalization_219_layer_call_fn_3445049
9__inference_batch_normalization_219_layer_call_fn_3445062?
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
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0z?trace_1
?
?trace_0
?trace_12?
T__inference_batch_normalization_219_layer_call_and_return_conditional_losses_3445080
T__inference_batch_normalization_219_layer_call_and_return_conditional_losses_3445098?
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
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0z?trace_1
 "
trackable_list_wrapper
,:*?2batch_normalization_219/gamma
+:)?2batch_normalization_219/beta
4:2? (2#batch_normalization_219/moving_mean
8:6? (2'batch_normalization_219/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
0__inference_activation_219_layer_call_fn_3445103?
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
 z?trace_0
?
?trace_02?
K__inference_activation_219_layer_call_and_return_conditional_losses_3445108?
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
 z?trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
7__inference_average_pooling2d_109_layer_call_fn_3445113?
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
 z?trace_0
?
?trace_02?
R__inference_average_pooling2d_109_layer_call_and_return_conditional_losses_3445118?
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
 z?trace_0
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
,__inference_conv2d_220_layer_call_fn_3445127?
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
 z?trace_0
?
?trace_02?
G__inference_conv2d_220_layer_call_and_return_conditional_losses_3445137?
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
 z?trace_0
-:+??2conv2d_220/kernel
:?2conv2d_220/bias
?2??
???
FullArgSpec'
args?
jself
jinputs
jkernel
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
 0
@
?0
?1
?2
?3"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_0
?trace_12?
9__inference_batch_normalization_220_layer_call_fn_3445150
9__inference_batch_normalization_220_layer_call_fn_3445163?
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
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0z?trace_1
?
?trace_0
?trace_12?
T__inference_batch_normalization_220_layer_call_and_return_conditional_losses_3445181
T__inference_batch_normalization_220_layer_call_and_return_conditional_losses_3445199?
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
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0z?trace_1
 "
trackable_list_wrapper
,:*?2batch_normalization_220/gamma
+:)?2batch_normalization_220/beta
4:2? (2#batch_normalization_220/moving_mean
8:6? (2'batch_normalization_220/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
0__inference_activation_220_layer_call_fn_3445204?
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
 z?trace_0
?
?trace_02?
K__inference_activation_220_layer_call_and_return_conditional_losses_3445209?
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
 z?trace_0
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
,__inference_conv2d_221_layer_call_fn_3445218?
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
 z?trace_0
?
?trace_02?
G__inference_conv2d_221_layer_call_and_return_conditional_losses_3445228?
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
 z?trace_0
-:+??2conv2d_221/kernel
:?2conv2d_221/bias
?2??
???
FullArgSpec'
args?
jself
jinputs
jkernel
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
 0
@
?0
?1
?2
?3"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_0
?trace_12?
9__inference_batch_normalization_221_layer_call_fn_3445241
9__inference_batch_normalization_221_layer_call_fn_3445254?
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
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0z?trace_1
?
?trace_0
?trace_12?
T__inference_batch_normalization_221_layer_call_and_return_conditional_losses_3445272
T__inference_batch_normalization_221_layer_call_and_return_conditional_losses_3445290?
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
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0z?trace_1
 "
trackable_list_wrapper
,:*?2batch_normalization_221/gamma
+:)?2batch_normalization_221/beta
4:2? (2#batch_normalization_221/moving_mean
8:6? (2'batch_normalization_221/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
0__inference_activation_221_layer_call_fn_3445295?
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
 z?trace_0
?
?trace_02?
K__inference_activation_221_layer_call_and_return_conditional_losses_3445300?
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
 z?trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
7__inference_average_pooling2d_110_layer_call_fn_3445305?
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
 z?trace_0
?
?trace_02?
R__inference_average_pooling2d_110_layer_call_and_return_conditional_losses_3445310?
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
 z?trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
,__inference_flatten_34_layer_call_fn_3445315?
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
 z?trace_0
?
?trace_02?
G__inference_flatten_34_layer_call_and_return_conditional_losses_3445321?
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
 z?trace_0
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
*__inference_dense_34_layer_call_fn_3445330?
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
 z?trace_0
?
?trace_02?
E__inference_dense_34_layer_call_and_return_conditional_losses_3445340?
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
 z?trace_0
": 	?
2dense_34/kernel
:
2dense_34/bias
?
;0
<1
U2
V3
u4
v5
?6
?7
?8
?9
?10
?11
?12
?13
?14
?15"
trackable_list_wrapper
?
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
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
*__inference_network1_layer_call_fn_3442996input_35"?
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

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
*__inference_network1_layer_call_fn_3444069inputs"?
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

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
*__inference_network1_layer_call_fn_3444174inputs"?
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

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
*__inference_network1_layer_call_fn_3443589input_35"?
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

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
E__inference_network1_layer_call_and_return_conditional_losses_3444358inputs"?
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

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
E__inference_network1_layer_call_and_return_conditional_losses_3444542inputs"?
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

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
E__inference_network1_layer_call_and_return_conditional_losses_3443723input_35"?
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

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
E__inference_network1_layer_call_and_return_conditional_losses_3443857input_35"?
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

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
%__inference_signature_wrapper_3443964input_35"?
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
?B?
,__inference_conv2d_214_layer_call_fn_3444551inputs"?
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
G__inference_conv2d_214_layer_call_and_return_conditional_losses_3444561inputs"?
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
.
;0
<1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
9__inference_batch_normalization_214_layer_call_fn_3444574inputs"?
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
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
9__inference_batch_normalization_214_layer_call_fn_3444587inputs"?
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
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
T__inference_batch_normalization_214_layer_call_and_return_conditional_losses_3444605inputs"?
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
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
T__inference_batch_normalization_214_layer_call_and_return_conditional_losses_3444623inputs"?
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
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
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
?B?
0__inference_activation_214_layer_call_fn_3444628inputs"?
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
K__inference_activation_214_layer_call_and_return_conditional_losses_3444633inputs"?
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
?B?
,__inference_conv2d_215_layer_call_fn_3444642inputs"?
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
G__inference_conv2d_215_layer_call_and_return_conditional_losses_3444652inputs"?
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
.
U0
V1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
9__inference_batch_normalization_215_layer_call_fn_3444665inputs"?
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
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
9__inference_batch_normalization_215_layer_call_fn_3444678inputs"?
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
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
T__inference_batch_normalization_215_layer_call_and_return_conditional_losses_3444696inputs"?
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
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
T__inference_batch_normalization_215_layer_call_and_return_conditional_losses_3444714inputs"?
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
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
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
?B?
0__inference_activation_215_layer_call_fn_3444719inputs"?
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
K__inference_activation_215_layer_call_and_return_conditional_losses_3444724inputs"?
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
?B?
7__inference_average_pooling2d_107_layer_call_fn_3444729inputs"?
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
?B?
R__inference_average_pooling2d_107_layer_call_and_return_conditional_losses_3444734inputs"?
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
?B?
,__inference_conv2d_216_layer_call_fn_3444743inputs"?
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
G__inference_conv2d_216_layer_call_and_return_conditional_losses_3444753inputs"?
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
.
u0
v1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
9__inference_batch_normalization_216_layer_call_fn_3444766inputs"?
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
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
9__inference_batch_normalization_216_layer_call_fn_3444779inputs"?
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
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
T__inference_batch_normalization_216_layer_call_and_return_conditional_losses_3444797inputs"?
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
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
T__inference_batch_normalization_216_layer_call_and_return_conditional_losses_3444815inputs"?
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
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
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
?B?
0__inference_activation_216_layer_call_fn_3444820inputs"?
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
K__inference_activation_216_layer_call_and_return_conditional_losses_3444825inputs"?
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
?B?
,__inference_conv2d_217_layer_call_fn_3444834inputs"?
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
G__inference_conv2d_217_layer_call_and_return_conditional_losses_3444844inputs"?
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
trackable_dict_wrapper
?B?
9__inference_batch_normalization_217_layer_call_fn_3444857inputs"?
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
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
9__inference_batch_normalization_217_layer_call_fn_3444870inputs"?
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
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
T__inference_batch_normalization_217_layer_call_and_return_conditional_losses_3444888inputs"?
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
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
T__inference_batch_normalization_217_layer_call_and_return_conditional_losses_3444906inputs"?
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
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
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
?B?
0__inference_activation_217_layer_call_fn_3444911inputs"?
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
K__inference_activation_217_layer_call_and_return_conditional_losses_3444916inputs"?
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
?B?
7__inference_average_pooling2d_108_layer_call_fn_3444921inputs"?
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
?B?
R__inference_average_pooling2d_108_layer_call_and_return_conditional_losses_3444926inputs"?
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
?B?
,__inference_conv2d_218_layer_call_fn_3444935inputs"?
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
G__inference_conv2d_218_layer_call_and_return_conditional_losses_3444945inputs"?
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
trackable_dict_wrapper
?B?
9__inference_batch_normalization_218_layer_call_fn_3444958inputs"?
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
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
9__inference_batch_normalization_218_layer_call_fn_3444971inputs"?
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
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
T__inference_batch_normalization_218_layer_call_and_return_conditional_losses_3444989inputs"?
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
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
T__inference_batch_normalization_218_layer_call_and_return_conditional_losses_3445007inputs"?
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
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
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
?B?
0__inference_activation_218_layer_call_fn_3445012inputs"?
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
K__inference_activation_218_layer_call_and_return_conditional_losses_3445017inputs"?
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
?B?
,__inference_conv2d_219_layer_call_fn_3445026inputs"?
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
G__inference_conv2d_219_layer_call_and_return_conditional_losses_3445036inputs"?
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
trackable_dict_wrapper
?B?
9__inference_batch_normalization_219_layer_call_fn_3445049inputs"?
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
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
9__inference_batch_normalization_219_layer_call_fn_3445062inputs"?
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
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
T__inference_batch_normalization_219_layer_call_and_return_conditional_losses_3445080inputs"?
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
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
T__inference_batch_normalization_219_layer_call_and_return_conditional_losses_3445098inputs"?
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
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
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
?B?
0__inference_activation_219_layer_call_fn_3445103inputs"?
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
K__inference_activation_219_layer_call_and_return_conditional_losses_3445108inputs"?
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
?B?
7__inference_average_pooling2d_109_layer_call_fn_3445113inputs"?
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
?B?
R__inference_average_pooling2d_109_layer_call_and_return_conditional_losses_3445118inputs"?
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
?B?
,__inference_conv2d_220_layer_call_fn_3445127inputs"?
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
G__inference_conv2d_220_layer_call_and_return_conditional_losses_3445137inputs"?
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
trackable_dict_wrapper
?B?
9__inference_batch_normalization_220_layer_call_fn_3445150inputs"?
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
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
9__inference_batch_normalization_220_layer_call_fn_3445163inputs"?
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
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
T__inference_batch_normalization_220_layer_call_and_return_conditional_losses_3445181inputs"?
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
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
T__inference_batch_normalization_220_layer_call_and_return_conditional_losses_3445199inputs"?
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
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
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
?B?
0__inference_activation_220_layer_call_fn_3445204inputs"?
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
K__inference_activation_220_layer_call_and_return_conditional_losses_3445209inputs"?
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
?B?
,__inference_conv2d_221_layer_call_fn_3445218inputs"?
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
G__inference_conv2d_221_layer_call_and_return_conditional_losses_3445228inputs"?
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
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
9__inference_batch_normalization_221_layer_call_fn_3445241inputs"?
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
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
9__inference_batch_normalization_221_layer_call_fn_3445254inputs"?
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
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
T__inference_batch_normalization_221_layer_call_and_return_conditional_losses_3445272inputs"?
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
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
T__inference_batch_normalization_221_layer_call_and_return_conditional_losses_3445290inputs"?
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
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
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
?B?
0__inference_activation_221_layer_call_fn_3445295inputs"?
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
K__inference_activation_221_layer_call_and_return_conditional_losses_3445300inputs"?
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
?B?
7__inference_average_pooling2d_110_layer_call_fn_3445305inputs"?
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
?B?
R__inference_average_pooling2d_110_layer_call_and_return_conditional_losses_3445310inputs"?
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
?B?
,__inference_flatten_34_layer_call_fn_3445315inputs"?
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
G__inference_flatten_34_layer_call_and_return_conditional_losses_3445321inputs"?
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
?B?
*__inference_dense_34_layer_call_fn_3445330inputs"?
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
E__inference_dense_34_layer_call_and_return_conditional_losses_3445340inputs"?
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
R
?	variables
?	keras_api

?total

?count"
_tf_keras_metric
c
?	variables
?	keras_api

?total

?count
?
_fn_kwargs"
_tf_keras_metric
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper?
"__inference__wrapped_model_3442041?R/09:;<IJSTUVijstuv????????????????????????????????9?6
/?,
*?'
input_35?????????  
? "3?0
.
dense_34"?
dense_34?????????
?
K__inference_activation_214_layer_call_and_return_conditional_losses_3444633h7?4
-?*
(?%
inputs?????????   
? "-?*
#? 
0?????????   
? ?
0__inference_activation_214_layer_call_fn_3444628[7?4
-?*
(?%
inputs?????????   
? " ??????????   ?
K__inference_activation_215_layer_call_and_return_conditional_losses_3444724h7?4
-?*
(?%
inputs?????????   
? "-?*
#? 
0?????????   
? ?
0__inference_activation_215_layer_call_fn_3444719[7?4
-?*
(?%
inputs?????????   
? " ??????????   ?
K__inference_activation_216_layer_call_and_return_conditional_losses_3444825h7?4
-?*
(?%
inputs?????????@
? "-?*
#? 
0?????????@
? ?
0__inference_activation_216_layer_call_fn_3444820[7?4
-?*
(?%
inputs?????????@
? " ??????????@?
K__inference_activation_217_layer_call_and_return_conditional_losses_3444916h7?4
-?*
(?%
inputs?????????@
? "-?*
#? 
0?????????@
? ?
0__inference_activation_217_layer_call_fn_3444911[7?4
-?*
(?%
inputs?????????@
? " ??????????@?
K__inference_activation_218_layer_call_and_return_conditional_losses_3445017j8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
0__inference_activation_218_layer_call_fn_3445012]8?5
.?+
)?&
inputs??????????
? "!????????????
K__inference_activation_219_layer_call_and_return_conditional_losses_3445108j8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
0__inference_activation_219_layer_call_fn_3445103]8?5
.?+
)?&
inputs??????????
? "!????????????
K__inference_activation_220_layer_call_and_return_conditional_losses_3445209j8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
0__inference_activation_220_layer_call_fn_3445204]8?5
.?+
)?&
inputs??????????
? "!????????????
K__inference_activation_221_layer_call_and_return_conditional_losses_3445300j8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
0__inference_activation_221_layer_call_fn_3445295]8?5
.?+
)?&
inputs??????????
? "!????????????
R__inference_average_pooling2d_107_layer_call_and_return_conditional_losses_3444734?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
7__inference_average_pooling2d_107_layer_call_fn_3444729?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
R__inference_average_pooling2d_108_layer_call_and_return_conditional_losses_3444926?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
7__inference_average_pooling2d_108_layer_call_fn_3444921?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
R__inference_average_pooling2d_109_layer_call_and_return_conditional_losses_3445118?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
7__inference_average_pooling2d_109_layer_call_fn_3445113?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
R__inference_average_pooling2d_110_layer_call_and_return_conditional_losses_3445310?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
7__inference_average_pooling2d_110_layer_call_fn_3445305?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
T__inference_batch_normalization_214_layer_call_and_return_conditional_losses_3444605?9:;<M?J
C?@
:?7
inputs+??????????????????????????? 
p 
? "??<
5?2
0+??????????????????????????? 
? ?
T__inference_batch_normalization_214_layer_call_and_return_conditional_losses_3444623?9:;<M?J
C?@
:?7
inputs+??????????????????????????? 
p
? "??<
5?2
0+??????????????????????????? 
? ?
9__inference_batch_normalization_214_layer_call_fn_3444574?9:;<M?J
C?@
:?7
inputs+??????????????????????????? 
p 
? "2?/+??????????????????????????? ?
9__inference_batch_normalization_214_layer_call_fn_3444587?9:;<M?J
C?@
:?7
inputs+??????????????????????????? 
p
? "2?/+??????????????????????????? ?
T__inference_batch_normalization_215_layer_call_and_return_conditional_losses_3444696?STUVM?J
C?@
:?7
inputs+??????????????????????????? 
p 
? "??<
5?2
0+??????????????????????????? 
? ?
T__inference_batch_normalization_215_layer_call_and_return_conditional_losses_3444714?STUVM?J
C?@
:?7
inputs+??????????????????????????? 
p
? "??<
5?2
0+??????????????????????????? 
? ?
9__inference_batch_normalization_215_layer_call_fn_3444665?STUVM?J
C?@
:?7
inputs+??????????????????????????? 
p 
? "2?/+??????????????????????????? ?
9__inference_batch_normalization_215_layer_call_fn_3444678?STUVM?J
C?@
:?7
inputs+??????????????????????????? 
p
? "2?/+??????????????????????????? ?
T__inference_batch_normalization_216_layer_call_and_return_conditional_losses_3444797?stuvM?J
C?@
:?7
inputs+???????????????????????????@
p 
? "??<
5?2
0+???????????????????????????@
? ?
T__inference_batch_normalization_216_layer_call_and_return_conditional_losses_3444815?stuvM?J
C?@
:?7
inputs+???????????????????????????@
p
? "??<
5?2
0+???????????????????????????@
? ?
9__inference_batch_normalization_216_layer_call_fn_3444766?stuvM?J
C?@
:?7
inputs+???????????????????????????@
p 
? "2?/+???????????????????????????@?
9__inference_batch_normalization_216_layer_call_fn_3444779?stuvM?J
C?@
:?7
inputs+???????????????????????????@
p
? "2?/+???????????????????????????@?
T__inference_batch_normalization_217_layer_call_and_return_conditional_losses_3444888?????M?J
C?@
:?7
inputs+???????????????????????????@
p 
? "??<
5?2
0+???????????????????????????@
? ?
T__inference_batch_normalization_217_layer_call_and_return_conditional_losses_3444906?????M?J
C?@
:?7
inputs+???????????????????????????@
p
? "??<
5?2
0+???????????????????????????@
? ?
9__inference_batch_normalization_217_layer_call_fn_3444857?????M?J
C?@
:?7
inputs+???????????????????????????@
p 
? "2?/+???????????????????????????@?
9__inference_batch_normalization_217_layer_call_fn_3444870?????M?J
C?@
:?7
inputs+???????????????????????????@
p
? "2?/+???????????????????????????@?
T__inference_batch_normalization_218_layer_call_and_return_conditional_losses_3444989?????N?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_218_layer_call_and_return_conditional_losses_3445007?????N?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
9__inference_batch_normalization_218_layer_call_fn_3444958?????N?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
9__inference_batch_normalization_218_layer_call_fn_3444971?????N?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
T__inference_batch_normalization_219_layer_call_and_return_conditional_losses_3445080?????N?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_219_layer_call_and_return_conditional_losses_3445098?????N?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
9__inference_batch_normalization_219_layer_call_fn_3445049?????N?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
9__inference_batch_normalization_219_layer_call_fn_3445062?????N?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
T__inference_batch_normalization_220_layer_call_and_return_conditional_losses_3445181?????N?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_220_layer_call_and_return_conditional_losses_3445199?????N?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
9__inference_batch_normalization_220_layer_call_fn_3445150?????N?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
9__inference_batch_normalization_220_layer_call_fn_3445163?????N?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
T__inference_batch_normalization_221_layer_call_and_return_conditional_losses_3445272?????N?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_221_layer_call_and_return_conditional_losses_3445290?????N?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
9__inference_batch_normalization_221_layer_call_fn_3445241?????N?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
9__inference_batch_normalization_221_layer_call_fn_3445254?????N?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
G__inference_conv2d_214_layer_call_and_return_conditional_losses_3444561l/07?4
-?*
(?%
inputs?????????  
? "-?*
#? 
0?????????   
? ?
,__inference_conv2d_214_layer_call_fn_3444551_/07?4
-?*
(?%
inputs?????????  
? " ??????????   ?
G__inference_conv2d_215_layer_call_and_return_conditional_losses_3444652lIJ7?4
-?*
(?%
inputs?????????   
? "-?*
#? 
0?????????   
? ?
,__inference_conv2d_215_layer_call_fn_3444642_IJ7?4
-?*
(?%
inputs?????????   
? " ??????????   ?
G__inference_conv2d_216_layer_call_and_return_conditional_losses_3444753lij7?4
-?*
(?%
inputs????????? 
? "-?*
#? 
0?????????@
? ?
,__inference_conv2d_216_layer_call_fn_3444743_ij7?4
-?*
(?%
inputs????????? 
? " ??????????@?
G__inference_conv2d_217_layer_call_and_return_conditional_losses_3444844n??7?4
-?*
(?%
inputs?????????@
? "-?*
#? 
0?????????@
? ?
,__inference_conv2d_217_layer_call_fn_3444834a??7?4
-?*
(?%
inputs?????????@
? " ??????????@?
G__inference_conv2d_218_layer_call_and_return_conditional_losses_3444945o??7?4
-?*
(?%
inputs?????????@
? ".?+
$?!
0??????????
? ?
,__inference_conv2d_218_layer_call_fn_3444935b??7?4
-?*
(?%
inputs?????????@
? "!????????????
G__inference_conv2d_219_layer_call_and_return_conditional_losses_3445036p??8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
,__inference_conv2d_219_layer_call_fn_3445026c??8?5
.?+
)?&
inputs??????????
? "!????????????
G__inference_conv2d_220_layer_call_and_return_conditional_losses_3445137p??8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
,__inference_conv2d_220_layer_call_fn_3445127c??8?5
.?+
)?&
inputs??????????
? "!????????????
G__inference_conv2d_221_layer_call_and_return_conditional_losses_3445228p??8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
,__inference_conv2d_221_layer_call_fn_3445218c??8?5
.?+
)?&
inputs??????????
? "!????????????
E__inference_dense_34_layer_call_and_return_conditional_losses_3445340_??0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????

? ?
*__inference_dense_34_layer_call_fn_3445330R??0?-
&?#
!?
inputs??????????
? "??????????
?
G__inference_flatten_34_layer_call_and_return_conditional_losses_3445321b8?5
.?+
)?&
inputs??????????
? "&?#
?
0??????????
? ?
,__inference_flatten_34_layer_call_fn_3445315U8?5
.?+
)?&
inputs??????????
? "????????????
E__inference_network1_layer_call_and_return_conditional_losses_3443723?R/09:;<IJSTUVijstuv????????????????????????????????A?>
7?4
*?'
input_35?????????  
p 

 
? "%?"
?
0?????????

? ?
E__inference_network1_layer_call_and_return_conditional_losses_3443857?R/09:;<IJSTUVijstuv????????????????????????????????A?>
7?4
*?'
input_35?????????  
p

 
? "%?"
?
0?????????

? ?
E__inference_network1_layer_call_and_return_conditional_losses_3444358?R/09:;<IJSTUVijstuv??????????????????????????????????<
5?2
(?%
inputs?????????  
p 

 
? "%?"
?
0?????????

? ?
E__inference_network1_layer_call_and_return_conditional_losses_3444542?R/09:;<IJSTUVijstuv??????????????????????????????????<
5?2
(?%
inputs?????????  
p

 
? "%?"
?
0?????????

? ?
*__inference_network1_layer_call_fn_3442996?R/09:;<IJSTUVijstuv????????????????????????????????A?>
7?4
*?'
input_35?????????  
p 

 
? "??????????
?
*__inference_network1_layer_call_fn_3443589?R/09:;<IJSTUVijstuv????????????????????????????????A?>
7?4
*?'
input_35?????????  
p

 
? "??????????
?
*__inference_network1_layer_call_fn_3444069?R/09:;<IJSTUVijstuv??????????????????????????????????<
5?2
(?%
inputs?????????  
p 

 
? "??????????
?
*__inference_network1_layer_call_fn_3444174?R/09:;<IJSTUVijstuv??????????????????????????????????<
5?2
(?%
inputs?????????  
p

 
? "??????????
?
%__inference_signature_wrapper_3443964?R/09:;<IJSTUVijstuv????????????????????????????????E?B
? 
;?8
6
input_35*?'
input_35?????????  "3?0
.
dense_34"?
dense_34?????????

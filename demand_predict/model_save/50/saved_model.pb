ех
ћ7Ю7
:
Add
x"T
y"T
z"T"
Ttype:
2	
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	АР
о
	ApplyAdam
var"TА	
m"TА	
v"TА
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T
out"TА" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 
x
Assign
ref"TА

value"T

output_ref"TА"	
Ttype"
validate_shapebool("
use_lockingbool(Ш
s
	AssignAdd
ref"TА

value"T

output_ref"TА" 
Ttype:
2	"
use_lockingbool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
I
ConcatOffset

concat_dim
shape*N
offset*N"
Nint(0
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

ControlTrigger
8
DivNoNan
x"T
y"T
z"T"
Ttype:	
2
y
Enter	
data"T
output"T"	
Ttype"

frame_namestring"
is_constantbool( "
parallel_iterationsint

B
Equal
x"T
y"T
z
"
Ttype:
2	
Р
)
Exit	
data"T
output"T"	
Ttype
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
,
Floor
x"T
y"T"
Ttype:
2
?
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
9
FloorMod
x"T
y"T
z"T"
Ttype:

2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
:
InvertPermutation
x"T
y"T"
Ttype0:
2	
:
Less
x"T
y"T
z
"
Ttype:
2	
$

LogicalAnd
x

y

z
Р
!
LoopCond	
input


output

q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
8
Maximum
x"T
y"T
z"T"
Ttype:

2	
Н
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
8
Minimum
x"T
y"T
z"T"
Ttype:

2	
=
Mul
x"T
y"T
z"T"
Ttype:
2	Р
.
Neg
x"T
y"T"
Ttype:

2	
2
NextIteration	
data"T
output"T"	
Ttype
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
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
6
Pow
x"T
y"T
z"T"
Ttype:

2	
Н
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	И
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
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
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
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
e
ShapeN
input"T*N
output"out_type*N"
Nint(0"	
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
=
SigmoidGrad
y"T
dy"T
z"T"
Ttype:

2
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
1
Square
x"T
y"T"
Ttype:

2	
G
SquaredDifference
x"T
y"T
z"T"
Ttype:

2	Р
A

StackPopV2

handle
elem"	elem_type"
	elem_typetypeИ
X
StackPushV2

handle	
elem"T
output"T"	
Ttype"
swap_memorybool( И
S
StackV2
max_size

handle"
	elem_typetype"

stack_namestring И
ц
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	
М
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
{
TensorArrayGatherV3

handle
indices
flow_in
value"dtype"
dtypetype"
element_shapeshape:И
`
TensorArrayGradV3

handle
flow_in
grad_handle
flow_out"
sourcestringИ
Y
TensorArrayReadV3

handle	
index
flow_in
value"dtype"
dtypetypeИ
d
TensorArrayScatterV3

handle
indices

value"T
flow_in
flow_out"	
TtypeИ
9
TensorArraySizeV3

handle
flow_in
sizeИ
ё
TensorArrayV3
size

handle
flow"
dtypetype"
element_shapeshape:"
dynamic_sizebool( "
clear_after_readbool("$
identical_element_shapesbool( "
tensor_array_namestring И
`
TensorArrayWriteV3

handle	
index

value"T
flow_in
flow_out"	
TtypeИ
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
А
TruncatedNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	И
s

VariableV2
ref"dtypeА"
shapeshape"
dtypetype"
	containerstring "
shared_namestring И
&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.14.02v1.14.0-rc1-22-gaf24dc91b5ыЦ
Z
self_variable/PlaceholderPlaceholder*
dtype0
*
_output_shapes
: *
shape: 
Ж
self_variable/Placeholder_1Placeholder*
dtype0*+
_output_shapes
:€€€€€€€€€[* 
shape:€€€€€€€€€[
~
self_variable/Placeholder_2Placeholder*
dtype0*'
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
©
3self_variable/in/Initializer/truncated_normal/shapeConst*
valueB"[      *#
_class
loc:@self_variable/in*
dtype0*
_output_shapes
:
Ь
2self_variable/in/Initializer/truncated_normal/meanConst*
valueB
 *    *#
_class
loc:@self_variable/in*
dtype0*
_output_shapes
: 
Ю
4self_variable/in/Initializer/truncated_normal/stddevConst*
valueB
 *l->*#
_class
loc:@self_variable/in*
dtype0*
_output_shapes
: 
щ
=self_variable/in/Initializer/truncated_normal/TruncatedNormalTruncatedNormal3self_variable/in/Initializer/truncated_normal/shape*
seed2 *
dtype0*
_output_shapes

:[*

seed *
T0*#
_class
loc:@self_variable/in
ы
1self_variable/in/Initializer/truncated_normal/mulMul=self_variable/in/Initializer/truncated_normal/TruncatedNormal4self_variable/in/Initializer/truncated_normal/stddev*
T0*#
_class
loc:@self_variable/in*
_output_shapes

:[
й
-self_variable/in/Initializer/truncated_normalAdd1self_variable/in/Initializer/truncated_normal/mul2self_variable/in/Initializer/truncated_normal/mean*
T0*#
_class
loc:@self_variable/in*
_output_shapes

:[
©
self_variable/in
VariableV2*#
_class
loc:@self_variable/in*
	container *
shape
:[*
dtype0*
_output_shapes

:[*
shared_name 
ў
self_variable/in/AssignAssignself_variable/in-self_variable/in/Initializer/truncated_normal*
validate_shape(*
_output_shapes

:[*
use_locking(*
T0*#
_class
loc:@self_variable/in
Б
self_variable/in/readIdentityself_variable/in*
T0*#
_class
loc:@self_variable/in*
_output_shapes

:[
Ђ
4self_variable/out/Initializer/truncated_normal/shapeConst*
valueB"      *$
_class
loc:@self_variable/out*
dtype0*
_output_shapes
:
Ю
3self_variable/out/Initializer/truncated_normal/meanConst*
valueB
 *    *$
_class
loc:@self_variable/out*
dtype0*
_output_shapes
: 
†
5self_variable/out/Initializer/truncated_normal/stddevConst*
valueB
 *–dќ?*$
_class
loc:@self_variable/out*
dtype0*
_output_shapes
: 
ь
>self_variable/out/Initializer/truncated_normal/TruncatedNormalTruncatedNormal4self_variable/out/Initializer/truncated_normal/shape*

seed *
T0*$
_class
loc:@self_variable/out*
seed2 *
dtype0*
_output_shapes

:
€
2self_variable/out/Initializer/truncated_normal/mulMul>self_variable/out/Initializer/truncated_normal/TruncatedNormal5self_variable/out/Initializer/truncated_normal/stddev*
T0*$
_class
loc:@self_variable/out*
_output_shapes

:
н
.self_variable/out/Initializer/truncated_normalAdd2self_variable/out/Initializer/truncated_normal/mul3self_variable/out/Initializer/truncated_normal/mean*
T0*$
_class
loc:@self_variable/out*
_output_shapes

:
Ђ
self_variable/out
VariableV2*
shared_name *$
_class
loc:@self_variable/out*
	container *
shape
:*
dtype0*
_output_shapes

:
Ё
self_variable/out/AssignAssignself_variable/out.self_variable/out/Initializer/truncated_normal*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*$
_class
loc:@self_variable/out
Д
self_variable/out/readIdentityself_variable/out*
T0*$
_class
loc:@self_variable/out*
_output_shapes

:
`
self_variable/ConstConst*
dtype0*
_output_shapes
:*
valueB*    
В
self_variable/Variable
VariableV2*
dtype0*
_output_shapes
:*
	container *
shape:*
shared_name 
Ќ
self_variable/Variable/AssignAssignself_variable/Variableself_variable/Const*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*)
_class
loc:@self_variable/Variable
П
self_variable/Variable/readIdentityself_variable/Variable*
T0*)
_class
loc:@self_variable/Variable*
_output_shapes
:
b
self_variable/Const_1Const*
dtype0*
_output_shapes
:*
valueB*    
Д
self_variable/Variable_1
VariableV2*
shared_name *
dtype0*
_output_shapes
:*
	container *
shape:
’
self_variable/Variable_1/AssignAssignself_variable/Variable_1self_variable/Const_1*
T0*+
_class!
loc:@self_variable/Variable_1*
validate_shape(*
_output_shapes
:*
use_locking(
Х
self_variable/Variable_1/readIdentityself_variable/Variable_1*
T0*+
_class!
loc:@self_variable/Variable_1*
_output_shapes
:
`
self_variable/Placeholder_3Placeholder*
shape:*
dtype0*
_output_shapes
:
`
self_variable/Placeholder_4Placeholder*
dtype0*
_output_shapes
:*
shape:
g
sec_lstm/Reshape/shapeConst*
valueB"€€€€[   *
dtype0*
_output_shapes
:
Р
sec_lstm/ReshapeReshapeself_variable/Placeholder_1sec_lstm/Reshape/shape*'
_output_shapes
:€€€€€€€€€[*
T0*
Tshape0
Ъ
sec_lstm/MatMulMatMulsec_lstm/Reshapeself_variable/in/read*
T0*'
_output_shapes
:€€€€€€€€€*
transpose_a( *
transpose_b( 
s
sec_lstm/addAddsec_lstm/MatMulself_variable/Variable/read*'
_output_shapes
:€€€€€€€€€*
T0
m
sec_lstm/Reshape_1/shapeConst*!
valueB"€€€€      *
dtype0*
_output_shapes
:
Й
sec_lstm/Reshape_1Reshapesec_lstm/addsec_lstm/Reshape_1/shape*
T0*
Tshape0*+
_output_shapes
:€€€€€€€€€
S
sec_lstm/rnn/RankConst*
value	B :*
dtype0*
_output_shapes
: 
Z
sec_lstm/rnn/range/startConst*
value	B :*
dtype0*
_output_shapes
: 
Z
sec_lstm/rnn/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
К
sec_lstm/rnn/rangeRangesec_lstm/rnn/range/startsec_lstm/rnn/Ranksec_lstm/rnn/range/delta*
_output_shapes
:*

Tidx0
m
sec_lstm/rnn/concat/values_0Const*
dtype0*
_output_shapes
:*
valueB"       
Z
sec_lstm/rnn/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
•
sec_lstm/rnn/concatConcatV2sec_lstm/rnn/concat/values_0sec_lstm/rnn/rangesec_lstm/rnn/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
П
sec_lstm/rnn/transpose	Transposesec_lstm/Reshape_1sec_lstm/rnn/concat*+
_output_shapes
:€€€€€€€€€*
Tperm0*
T0
h
sec_lstm/rnn/ShapeShapesec_lstm/rnn/transpose*
_output_shapes
:*
T0*
out_type0
j
 sec_lstm/rnn/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
l
"sec_lstm/rnn/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
l
"sec_lstm/rnn/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ї
sec_lstm/rnn/strided_sliceStridedSlicesec_lstm/rnn/Shape sec_lstm/rnn/strided_slice/stack"sec_lstm/rnn/strided_slice/stack_1"sec_lstm/rnn/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
У
Qsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
ы
Msec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/ExpandDims
ExpandDimssec_lstm/rnn/strided_sliceQsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/ExpandDims/dim*

Tdim0*
T0*
_output_shapes
:
Т
Hsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/ConstConst*
valueB:*
dtype0*
_output_shapes
:
Р
Nsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
ш
Isec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/concatConcatV2Msec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/ExpandDimsHsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/ConstNsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
У
Nsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
ѓ
Hsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/zerosFillIsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/concatNsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/zeros/Const*
T0*

index_type0*'
_output_shapes
:€€€€€€€€€
Х
Ssec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
€
Osec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/ExpandDims_1
ExpandDimssec_lstm/rnn/strided_sliceSsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/ExpandDims_1/dim*

Tdim0*
T0*
_output_shapes
:
Ф
Jsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/Const_1Const*
valueB:*
dtype0*
_output_shapes
:
Х
Ssec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/ExpandDims_2/dimConst*
value	B : *
dtype0*
_output_shapes
: 
€
Osec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/ExpandDims_2
ExpandDimssec_lstm/rnn/strided_sliceSsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/ExpandDims_2/dim*
_output_shapes
:*

Tdim0*
T0
Ф
Jsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/Const_2Const*
valueB:*
dtype0*
_output_shapes
:
Т
Psec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
А
Ksec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/concat_1ConcatV2Osec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/ExpandDims_2Jsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/Const_2Psec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/concat_1/axis*
T0*
N*
_output_shapes
:*

Tidx0
Х
Psec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/zeros_1/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
µ
Jsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/zeros_1FillKsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/concat_1Psec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/zeros_1/Const*
T0*

index_type0*'
_output_shapes
:€€€€€€€€€
Х
Ssec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/ExpandDims_3/dimConst*
value	B : *
dtype0*
_output_shapes
: 
€
Osec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/ExpandDims_3
ExpandDimssec_lstm/rnn/strided_sliceSsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/ExpandDims_3/dim*

Tdim0*
T0*
_output_shapes
:
Ф
Jsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/Const_3Const*
valueB:*
dtype0*
_output_shapes
:
Х
Ssec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_1/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
€
Osec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_1/ExpandDims
ExpandDimssec_lstm/rnn/strided_sliceSsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_1/ExpandDims/dim*

Tdim0*
T0*
_output_shapes
:
Ф
Jsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_1/ConstConst*
dtype0*
_output_shapes
:*
valueB:
Т
Psec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_1/concat/axisConst*
dtype0*
_output_shapes
: *
value	B : 
А
Ksec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_1/concatConcatV2Osec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_1/ExpandDimsJsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_1/ConstPsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_1/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
Х
Psec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_1/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
µ
Jsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_1/zerosFillKsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_1/concatPsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_1/zeros/Const*
T0*

index_type0*'
_output_shapes
:€€€€€€€€€
Ч
Usec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_1/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
Г
Qsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_1/ExpandDims_1
ExpandDimssec_lstm/rnn/strided_sliceUsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_1/ExpandDims_1/dim*

Tdim0*
T0*
_output_shapes
:
Ц
Lsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_1/Const_1Const*
valueB:*
dtype0*
_output_shapes
:
Ч
Usec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_1/ExpandDims_2/dimConst*
value	B : *
dtype0*
_output_shapes
: 
Г
Qsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_1/ExpandDims_2
ExpandDimssec_lstm/rnn/strided_sliceUsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_1/ExpandDims_2/dim*
_output_shapes
:*

Tdim0*
T0
Ц
Lsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_1/Const_2Const*
valueB:*
dtype0*
_output_shapes
:
Ф
Rsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_1/concat_1/axisConst*
dtype0*
_output_shapes
: *
value	B : 
И
Msec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_1/concat_1ConcatV2Qsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_1/ExpandDims_2Lsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_1/Const_2Rsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_1/concat_1/axis*
T0*
N*
_output_shapes
:*

Tidx0
Ч
Rsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_1/zeros_1/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
ї
Lsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_1/zeros_1FillMsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_1/concat_1Rsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_1/zeros_1/Const*
T0*

index_type0*'
_output_shapes
:€€€€€€€€€
Ч
Usec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_1/ExpandDims_3/dimConst*
dtype0*
_output_shapes
: *
value	B : 
Г
Qsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_1/ExpandDims_3
ExpandDimssec_lstm/rnn/strided_sliceUsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_1/ExpandDims_3/dim*
_output_shapes
:*

Tdim0*
T0
Ц
Lsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_1/Const_3Const*
dtype0*
_output_shapes
:*
valueB:
Х
Ssec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_2/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
€
Osec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_2/ExpandDims
ExpandDimssec_lstm/rnn/strided_sliceSsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_2/ExpandDims/dim*

Tdim0*
T0*
_output_shapes
:
Ф
Jsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_2/ConstConst*
dtype0*
_output_shapes
:*
valueB:
Т
Psec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_2/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
А
Ksec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_2/concatConcatV2Osec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_2/ExpandDimsJsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_2/ConstPsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_2/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
Х
Psec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_2/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
µ
Jsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_2/zerosFillKsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_2/concatPsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_2/zeros/Const*
T0*

index_type0*'
_output_shapes
:€€€€€€€€€
Ч
Usec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_2/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
Г
Qsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_2/ExpandDims_1
ExpandDimssec_lstm/rnn/strided_sliceUsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_2/ExpandDims_1/dim*
T0*
_output_shapes
:*

Tdim0
Ц
Lsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_2/Const_1Const*
dtype0*
_output_shapes
:*
valueB:
Ч
Usec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_2/ExpandDims_2/dimConst*
value	B : *
dtype0*
_output_shapes
: 
Г
Qsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_2/ExpandDims_2
ExpandDimssec_lstm/rnn/strided_sliceUsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_2/ExpandDims_2/dim*

Tdim0*
T0*
_output_shapes
:
Ц
Lsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_2/Const_2Const*
dtype0*
_output_shapes
:*
valueB:
Ф
Rsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_2/concat_1/axisConst*
dtype0*
_output_shapes
: *
value	B : 
И
Msec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_2/concat_1ConcatV2Qsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_2/ExpandDims_2Lsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_2/Const_2Rsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_2/concat_1/axis*

Tidx0*
T0*
N*
_output_shapes
:
Ч
Rsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_2/zeros_1/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
ї
Lsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_2/zeros_1FillMsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_2/concat_1Rsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_2/zeros_1/Const*'
_output_shapes
:€€€€€€€€€*
T0*

index_type0
Ч
Usec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_2/ExpandDims_3/dimConst*
dtype0*
_output_shapes
: *
value	B : 
Г
Qsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_2/ExpandDims_3
ExpandDimssec_lstm/rnn/strided_sliceUsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_2/ExpandDims_3/dim*
_output_shapes
:*

Tdim0*
T0
Ц
Lsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_2/Const_3Const*
valueB:*
dtype0*
_output_shapes
:
j
sec_lstm/rnn/Shape_1Shapesec_lstm/rnn/transpose*
_output_shapes
:*
T0*
out_type0
l
"sec_lstm/rnn/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:
n
$sec_lstm/rnn/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
n
$sec_lstm/rnn/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ƒ
sec_lstm/rnn/strided_slice_1StridedSlicesec_lstm/rnn/Shape_1"sec_lstm/rnn/strided_slice_1/stack$sec_lstm/rnn/strided_slice_1/stack_1$sec_lstm/rnn/strided_slice_1/stack_2*
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask 
j
sec_lstm/rnn/Shape_2Shapesec_lstm/rnn/transpose*
T0*
out_type0*
_output_shapes
:
l
"sec_lstm/rnn/strided_slice_2/stackConst*
valueB:*
dtype0*
_output_shapes
:
n
$sec_lstm/rnn/strided_slice_2/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
n
$sec_lstm/rnn/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ƒ
sec_lstm/rnn/strided_slice_2StridedSlicesec_lstm/rnn/Shape_2"sec_lstm/rnn/strided_slice_2/stack$sec_lstm/rnn/strided_slice_2/stack_1$sec_lstm/rnn/strided_slice_2/stack_2*
T0*
Index0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
]
sec_lstm/rnn/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
С
sec_lstm/rnn/ExpandDims
ExpandDimssec_lstm/rnn/strided_slice_2sec_lstm/rnn/ExpandDims/dim*
_output_shapes
:*

Tdim0*
T0
\
sec_lstm/rnn/ConstConst*
valueB:*
dtype0*
_output_shapes
:
\
sec_lstm/rnn/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
§
sec_lstm/rnn/concat_1ConcatV2sec_lstm/rnn/ExpandDimssec_lstm/rnn/Constsec_lstm/rnn/concat_1/axis*
T0*
N*
_output_shapes
:*

Tidx0
]
sec_lstm/rnn/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
П
sec_lstm/rnn/zerosFillsec_lstm/rnn/concat_1sec_lstm/rnn/zeros/Const*
T0*

index_type0*'
_output_shapes
:€€€€€€€€€
S
sec_lstm/rnn/timeConst*
dtype0*
_output_shapes
: *
value	B : 
Ю
sec_lstm/rnn/TensorArrayTensorArrayV3sec_lstm/rnn/strided_slice_1*$
element_shape:€€€€€€€€€*
dynamic_size( *
clear_after_read(*
identical_element_shapes(*8
tensor_array_name#!sec_lstm/rnn/dynamic_rnn/output_0*
dtype0*
_output_shapes

:: 
Я
sec_lstm/rnn/TensorArray_1TensorArrayV3sec_lstm/rnn/strided_slice_1*$
element_shape:€€€€€€€€€*
clear_after_read(*
dynamic_size( *
identical_element_shapes(*7
tensor_array_name" sec_lstm/rnn/dynamic_rnn/input_0*
dtype0*
_output_shapes

:: 
{
%sec_lstm/rnn/TensorArrayUnstack/ShapeShapesec_lstm/rnn/transpose*
_output_shapes
:*
T0*
out_type0
}
3sec_lstm/rnn/TensorArrayUnstack/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 

5sec_lstm/rnn/TensorArrayUnstack/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

5sec_lstm/rnn/TensorArrayUnstack/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Щ
-sec_lstm/rnn/TensorArrayUnstack/strided_sliceStridedSlice%sec_lstm/rnn/TensorArrayUnstack/Shape3sec_lstm/rnn/TensorArrayUnstack/strided_slice/stack5sec_lstm/rnn/TensorArrayUnstack/strided_slice/stack_15sec_lstm/rnn/TensorArrayUnstack/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
m
+sec_lstm/rnn/TensorArrayUnstack/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
m
+sec_lstm/rnn/TensorArrayUnstack/range/deltaConst*
dtype0*
_output_shapes
: *
value	B :
и
%sec_lstm/rnn/TensorArrayUnstack/rangeRange+sec_lstm/rnn/TensorArrayUnstack/range/start-sec_lstm/rnn/TensorArrayUnstack/strided_slice+sec_lstm/rnn/TensorArrayUnstack/range/delta*#
_output_shapes
:€€€€€€€€€*

Tidx0
§
Gsec_lstm/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3sec_lstm/rnn/TensorArray_1%sec_lstm/rnn/TensorArrayUnstack/rangesec_lstm/rnn/transposesec_lstm/rnn/TensorArray_1:1*
T0*)
_class
loc:@sec_lstm/rnn/transpose*
_output_shapes
: 
X
sec_lstm/rnn/Maximum/xConst*
value	B :*
dtype0*
_output_shapes
: 
v
sec_lstm/rnn/MaximumMaximumsec_lstm/rnn/Maximum/xsec_lstm/rnn/strided_slice_1*
T0*
_output_shapes
: 
t
sec_lstm/rnn/MinimumMinimumsec_lstm/rnn/strided_slice_1sec_lstm/rnn/Maximum*
T0*
_output_shapes
: 
f
$sec_lstm/rnn/while/iteration_counterConst*
dtype0*
_output_shapes
: *
value	B : 
»
sec_lstm/rnn/while/EnterEnter$sec_lstm/rnn/while/iteration_counter*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *0

frame_name" sec_lstm/rnn/while/while_context
Ј
sec_lstm/rnn/while/Enter_1Entersec_lstm/rnn/time*
parallel_iterations *
_output_shapes
: *0

frame_name" sec_lstm/rnn/while/while_context*
T0*
is_constant( 
ј
sec_lstm/rnn/while/Enter_2Entersec_lstm/rnn/TensorArray:1*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *0

frame_name" sec_lstm/rnn/while/while_context
€
sec_lstm/rnn/while/Enter_3EnterHsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/zeros*
T0*
is_constant( *
parallel_iterations *'
_output_shapes
:€€€€€€€€€*0

frame_name" sec_lstm/rnn/while/while_context
Б
sec_lstm/rnn/while/Enter_4EnterJsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/zeros_1*
T0*
is_constant( *
parallel_iterations *'
_output_shapes
:€€€€€€€€€*0

frame_name" sec_lstm/rnn/while/while_context
Б
sec_lstm/rnn/while/Enter_5EnterJsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_1/zeros*
T0*
is_constant( *
parallel_iterations *'
_output_shapes
:€€€€€€€€€*0

frame_name" sec_lstm/rnn/while/while_context
Г
sec_lstm/rnn/while/Enter_6EnterLsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_1/zeros_1*
T0*
is_constant( *
parallel_iterations *'
_output_shapes
:€€€€€€€€€*0

frame_name" sec_lstm/rnn/while/while_context
Б
sec_lstm/rnn/while/Enter_7EnterJsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_2/zeros*
T0*
is_constant( *
parallel_iterations *'
_output_shapes
:€€€€€€€€€*0

frame_name" sec_lstm/rnn/while/while_context
Г
sec_lstm/rnn/while/Enter_8EnterLsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_2/zeros_1*
T0*
is_constant( *
parallel_iterations *'
_output_shapes
:€€€€€€€€€*0

frame_name" sec_lstm/rnn/while/while_context
Й
sec_lstm/rnn/while/MergeMergesec_lstm/rnn/while/Enter sec_lstm/rnn/while/NextIteration*
T0*
N*
_output_shapes
: : 
П
sec_lstm/rnn/while/Merge_1Mergesec_lstm/rnn/while/Enter_1"sec_lstm/rnn/while/NextIteration_1*
T0*
N*
_output_shapes
: : 
П
sec_lstm/rnn/while/Merge_2Mergesec_lstm/rnn/while/Enter_2"sec_lstm/rnn/while/NextIteration_2*
T0*
N*
_output_shapes
: : 
†
sec_lstm/rnn/while/Merge_3Mergesec_lstm/rnn/while/Enter_3"sec_lstm/rnn/while/NextIteration_3*
T0*
N*)
_output_shapes
:€€€€€€€€€: 
†
sec_lstm/rnn/while/Merge_4Mergesec_lstm/rnn/while/Enter_4"sec_lstm/rnn/while/NextIteration_4*
N*)
_output_shapes
:€€€€€€€€€: *
T0
†
sec_lstm/rnn/while/Merge_5Mergesec_lstm/rnn/while/Enter_5"sec_lstm/rnn/while/NextIteration_5*
T0*
N*)
_output_shapes
:€€€€€€€€€: 
†
sec_lstm/rnn/while/Merge_6Mergesec_lstm/rnn/while/Enter_6"sec_lstm/rnn/while/NextIteration_6*
N*)
_output_shapes
:€€€€€€€€€: *
T0
†
sec_lstm/rnn/while/Merge_7Mergesec_lstm/rnn/while/Enter_7"sec_lstm/rnn/while/NextIteration_7*
T0*
N*)
_output_shapes
:€€€€€€€€€: 
†
sec_lstm/rnn/while/Merge_8Mergesec_lstm/rnn/while/Enter_8"sec_lstm/rnn/while/NextIteration_8*
T0*
N*)
_output_shapes
:€€€€€€€€€: 
y
sec_lstm/rnn/while/LessLesssec_lstm/rnn/while/Mergesec_lstm/rnn/while/Less/Enter*
T0*
_output_shapes
: 
≈
sec_lstm/rnn/while/Less/EnterEntersec_lstm/rnn/strided_slice_1*
parallel_iterations *
_output_shapes
: *0

frame_name" sec_lstm/rnn/while/while_context*
T0*
is_constant(

sec_lstm/rnn/while/Less_1Lesssec_lstm/rnn/while/Merge_1sec_lstm/rnn/while/Less_1/Enter*
_output_shapes
: *
T0
њ
sec_lstm/rnn/while/Less_1/EnterEntersec_lstm/rnn/Minimum*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *0

frame_name" sec_lstm/rnn/while/while_context
w
sec_lstm/rnn/while/LogicalAnd
LogicalAndsec_lstm/rnn/while/Lesssec_lstm/rnn/while/Less_1*
_output_shapes
: 
^
sec_lstm/rnn/while/LoopCondLoopCondsec_lstm/rnn/while/LogicalAnd*
_output_shapes
: 
™
sec_lstm/rnn/while/SwitchSwitchsec_lstm/rnn/while/Mergesec_lstm/rnn/while/LoopCond*
T0*+
_class!
loc:@sec_lstm/rnn/while/Merge*
_output_shapes
: : 
∞
sec_lstm/rnn/while/Switch_1Switchsec_lstm/rnn/while/Merge_1sec_lstm/rnn/while/LoopCond*
T0*-
_class#
!loc:@sec_lstm/rnn/while/Merge_1*
_output_shapes
: : 
∞
sec_lstm/rnn/while/Switch_2Switchsec_lstm/rnn/while/Merge_2sec_lstm/rnn/while/LoopCond*
T0*-
_class#
!loc:@sec_lstm/rnn/while/Merge_2*
_output_shapes
: : 
“
sec_lstm/rnn/while/Switch_3Switchsec_lstm/rnn/while/Merge_3sec_lstm/rnn/while/LoopCond*
T0*-
_class#
!loc:@sec_lstm/rnn/while/Merge_3*:
_output_shapes(
&:€€€€€€€€€:€€€€€€€€€
“
sec_lstm/rnn/while/Switch_4Switchsec_lstm/rnn/while/Merge_4sec_lstm/rnn/while/LoopCond*
T0*-
_class#
!loc:@sec_lstm/rnn/while/Merge_4*:
_output_shapes(
&:€€€€€€€€€:€€€€€€€€€
“
sec_lstm/rnn/while/Switch_5Switchsec_lstm/rnn/while/Merge_5sec_lstm/rnn/while/LoopCond*
T0*-
_class#
!loc:@sec_lstm/rnn/while/Merge_5*:
_output_shapes(
&:€€€€€€€€€:€€€€€€€€€
“
sec_lstm/rnn/while/Switch_6Switchsec_lstm/rnn/while/Merge_6sec_lstm/rnn/while/LoopCond*
T0*-
_class#
!loc:@sec_lstm/rnn/while/Merge_6*:
_output_shapes(
&:€€€€€€€€€:€€€€€€€€€
“
sec_lstm/rnn/while/Switch_7Switchsec_lstm/rnn/while/Merge_7sec_lstm/rnn/while/LoopCond*
T0*-
_class#
!loc:@sec_lstm/rnn/while/Merge_7*:
_output_shapes(
&:€€€€€€€€€:€€€€€€€€€
“
sec_lstm/rnn/while/Switch_8Switchsec_lstm/rnn/while/Merge_8sec_lstm/rnn/while/LoopCond*:
_output_shapes(
&:€€€€€€€€€:€€€€€€€€€*
T0*-
_class#
!loc:@sec_lstm/rnn/while/Merge_8
e
sec_lstm/rnn/while/IdentityIdentitysec_lstm/rnn/while/Switch:1*
_output_shapes
: *
T0
i
sec_lstm/rnn/while/Identity_1Identitysec_lstm/rnn/while/Switch_1:1*
T0*
_output_shapes
: 
i
sec_lstm/rnn/while/Identity_2Identitysec_lstm/rnn/while/Switch_2:1*
T0*
_output_shapes
: 
z
sec_lstm/rnn/while/Identity_3Identitysec_lstm/rnn/while/Switch_3:1*'
_output_shapes
:€€€€€€€€€*
T0
z
sec_lstm/rnn/while/Identity_4Identitysec_lstm/rnn/while/Switch_4:1*'
_output_shapes
:€€€€€€€€€*
T0
z
sec_lstm/rnn/while/Identity_5Identitysec_lstm/rnn/while/Switch_5:1*
T0*'
_output_shapes
:€€€€€€€€€
z
sec_lstm/rnn/while/Identity_6Identitysec_lstm/rnn/while/Switch_6:1*
T0*'
_output_shapes
:€€€€€€€€€
z
sec_lstm/rnn/while/Identity_7Identitysec_lstm/rnn/while/Switch_7:1*
T0*'
_output_shapes
:€€€€€€€€€
z
sec_lstm/rnn/while/Identity_8Identitysec_lstm/rnn/while/Switch_8:1*'
_output_shapes
:€€€€€€€€€*
T0
x
sec_lstm/rnn/while/add/yConst^sec_lstm/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
u
sec_lstm/rnn/while/addAddsec_lstm/rnn/while/Identitysec_lstm/rnn/while/add/y*
T0*
_output_shapes
: 
и
$sec_lstm/rnn/while/TensorArrayReadV3TensorArrayReadV3*sec_lstm/rnn/while/TensorArrayReadV3/Entersec_lstm/rnn/while/Identity_1,sec_lstm/rnn/while/TensorArrayReadV3/Enter_1*
dtype0*'
_output_shapes
:€€€€€€€€€
‘
*sec_lstm/rnn/while/TensorArrayReadV3/EnterEntersec_lstm/rnn/TensorArray_1*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context*
T0*
is_constant(
€
,sec_lstm/rnn/while/TensorArrayReadV3/Enter_1EnterGsec_lstm/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *0

frame_name" sec_lstm/rnn/while/while_context
Ї
Zsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat/axisConst^sec_lstm/rnn/while/Identity*
dtype0*
_output_shapes
: *
value	B :
…
Usec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concatConcatV2$sec_lstm/rnn/while/TensorArrayReadV3sec_lstm/rnn/while/Identity_4Zsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat/axis*
N*'
_output_shapes
:€€€€€€€€€*

Tidx0*
T0
П
esec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Initializer/random_uniform/shapeConst*
valueB"       *W
_classM
KIloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
dtype0*
_output_shapes
:
Б
csec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Initializer/random_uniform/minConst*
valueB
 *уµЊ*W
_classM
KIloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
dtype0*
_output_shapes
: 
Б
csec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Initializer/random_uniform/maxConst*
valueB
 *уµ>*W
_classM
KIloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
dtype0*
_output_shapes
: 
Н
msec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Initializer/random_uniform/RandomUniformRandomUniformesec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes

: *

seed *
T0*W
_classM
KIloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
seed2 
Ѓ
csec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Initializer/random_uniform/subSubcsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Initializer/random_uniform/maxcsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*W
_classM
KIloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel
ј
csec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Initializer/random_uniform/mulMulmsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Initializer/random_uniform/RandomUniformcsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Initializer/random_uniform/sub*
T0*W
_classM
KIloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
_output_shapes

: 
≤
_sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Initializer/random_uniformAddcsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Initializer/random_uniform/mulcsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Initializer/random_uniform/min*
T0*W
_classM
KIloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
_output_shapes

: 
С
Dsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel
VariableV2*
dtype0*
_output_shapes

: *
shared_name *W
_classM
KIloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
	container *
shape
: 
І
Ksec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/AssignAssignDsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel_sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Initializer/random_uniform*
use_locking(*
T0*W
_classM
KIloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
validate_shape(*
_output_shapes

: 
ƒ
Isec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/readIdentityDsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
_output_shapes

: *
T0
л
Usec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMulMatMulUsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat[sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul/Enter*
T0*'
_output_shapes
:€€€€€€€€€ *
transpose_a( *
transpose_b( 
Є
[sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul/EnterEnterIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/read*
parallel_iterations *
_output_shapes

: *0

frame_name" sec_lstm/rnn/while/while_context*
T0*
is_constant(
Д
csec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Initializer/random_uniform/shapeConst*
valueB: *U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
dtype0*
_output_shapes
:
э
asec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Initializer/random_uniform/minConst*
valueB
 *qƒЬЊ*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
dtype0*
_output_shapes
: 
э
asec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Initializer/random_uniform/maxConst*
valueB
 *qƒЬ>*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
dtype0*
_output_shapes
: 
Г
ksec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Initializer/random_uniform/RandomUniformRandomUniformcsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Initializer/random_uniform/shape*
dtype0*
_output_shapes
: *

seed *
T0*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
seed2 
¶
asec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Initializer/random_uniform/subSubasec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Initializer/random_uniform/maxasec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Initializer/random_uniform/min*
_output_shapes
: *
T0*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias
і
asec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Initializer/random_uniform/mulMulksec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Initializer/random_uniform/RandomUniformasec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Initializer/random_uniform/sub*
_output_shapes
: *
T0*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias
¶
]sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Initializer/random_uniformAddasec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Initializer/random_uniform/mulasec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Initializer/random_uniform/min*
T0*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
_output_shapes
: 
Е
Bsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias
VariableV2*
shared_name *U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
	container *
shape: *
dtype0*
_output_shapes
: 
Ы
Isec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/AssignAssignBsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias]sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Initializer/random_uniform*
T0*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
validate_shape(*
_output_shapes
: *
use_locking(
Љ
Gsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/readIdentityBsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
T0*
_output_shapes
: 
я
Vsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAddBiasAddUsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul\sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd/Enter*
T0*
data_formatNHWC*'
_output_shapes
:€€€€€€€€€ 
≥
\sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd/EnterEnterGsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/read*
parallel_iterations *
_output_shapes
: *0

frame_name" sec_lstm/rnn/while/while_context*
T0*
is_constant(
і
Tsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/ConstConst^sec_lstm/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Њ
^sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split/split_dimConst^sec_lstm/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
С
Tsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/splitSplit^sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split/split_dimVsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_split
е
Ssec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/ReluReluVsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split:1*
T0*'
_output_shapes
:€€€€€€€€€
Ј
Tsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add/yConst^sec_lstm/rnn/while/Identity*
dtype0*
_output_shapes
: *
valueB
 *  А?
є
Rsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/addAddVsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split:2Tsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add/y*
T0*'
_output_shapes
:€€€€€€€€€
з
Vsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/SigmoidSigmoidRsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add*
T0*'
_output_shapes
:€€€€€€€€€
В
Rsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mulMulsec_lstm/rnn/while/Identity_3Vsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid*
T0*'
_output_shapes
:€€€€€€€€€
л
Xsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_1SigmoidTsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split*'
_output_shapes
:€€€€€€€€€*
T0
Љ
Tsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1MulXsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_1Ssec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu*
T0*'
_output_shapes
:€€€€€€€€€
Ј
Tsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1AddRsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mulTsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1*'
_output_shapes
:€€€€€€€€€*
T0
е
Usec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu_1ReluTsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1*
T0*'
_output_shapes
:€€€€€€€€€
н
Xsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_2SigmoidVsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split:3*
T0*'
_output_shapes
:€€€€€€€€€
Њ
Tsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2MulUsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu_1Xsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_2*
T0*'
_output_shapes
:€€€€€€€€€
Љ
\sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1/axisConst^sec_lstm/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
э
Wsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1ConcatV2Tsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2sec_lstm/rnn/while/Identity_6\sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1/axis*

Tidx0*
T0*
N*'
_output_shapes
:€€€€€€€€€
п
Wsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_1MatMulWsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1[sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul/Enter*
T0*'
_output_shapes
:€€€€€€€€€ *
transpose_a( *
transpose_b( 
г
Xsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_1BiasAddWsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_1\sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd/Enter*
T0*
data_formatNHWC*'
_output_shapes
:€€€€€€€€€ 
ґ
Vsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Const_1Const^sec_lstm/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
ј
`sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_1/split_dimConst^sec_lstm/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Ч
Vsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_1Split`sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_1/split_dimXsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_1*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_split
й
Usec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu_2ReluXsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_1:1*
T0*'
_output_shapes
:€€€€€€€€€
є
Vsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2/yConst^sec_lstm/rnn/while/Identity*
dtype0*
_output_shapes
: *
valueB
 *  А?
њ
Tsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2AddXsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_1:2Vsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2/y*
T0*'
_output_shapes
:€€€€€€€€€
л
Xsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_3SigmoidTsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2*'
_output_shapes
:€€€€€€€€€*
T0
Ж
Tsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3Mulsec_lstm/rnn/while/Identity_5Xsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_3*
T0*'
_output_shapes
:€€€€€€€€€
н
Xsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_4SigmoidVsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_1*
T0*'
_output_shapes
:€€€€€€€€€
Њ
Tsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4MulXsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_4Usec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu_2*
T0*'
_output_shapes
:€€€€€€€€€
є
Tsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3AddTsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3Tsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4*
T0*'
_output_shapes
:€€€€€€€€€
е
Usec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu_3ReluTsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3*
T0*'
_output_shapes
:€€€€€€€€€
п
Xsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_5SigmoidXsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_1:3*'
_output_shapes
:€€€€€€€€€*
T0
Њ
Tsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5MulUsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu_3Xsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_5*
T0*'
_output_shapes
:€€€€€€€€€
Љ
\sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2/axisConst^sec_lstm/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
э
Wsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2ConcatV2Tsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5sec_lstm/rnn/while/Identity_8\sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2/axis*
T0*
N*'
_output_shapes
:€€€€€€€€€*

Tidx0
п
Wsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_2MatMulWsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2[sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul/Enter*
transpose_b( *
T0*'
_output_shapes
:€€€€€€€€€ *
transpose_a( 
г
Xsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_2BiasAddWsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_2\sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd/Enter*
T0*
data_formatNHWC*'
_output_shapes
:€€€€€€€€€ 
ґ
Vsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Const_2Const^sec_lstm/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
ј
`sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_2/split_dimConst^sec_lstm/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Ч
Vsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_2Split`sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_2/split_dimXsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_2*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_split
й
Usec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu_4ReluXsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_2:1*
T0*'
_output_shapes
:€€€€€€€€€
є
Vsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4/yConst^sec_lstm/rnn/while/Identity*
valueB
 *  А?*
dtype0*
_output_shapes
: 
њ
Tsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4AddXsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_2:2Vsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4/y*
T0*'
_output_shapes
:€€€€€€€€€
л
Xsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_6SigmoidTsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4*'
_output_shapes
:€€€€€€€€€*
T0
Ж
Tsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6Mulsec_lstm/rnn/while/Identity_7Xsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_6*
T0*'
_output_shapes
:€€€€€€€€€
н
Xsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_7SigmoidVsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_2*
T0*'
_output_shapes
:€€€€€€€€€
Њ
Tsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7MulXsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_7Usec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu_4*
T0*'
_output_shapes
:€€€€€€€€€
є
Tsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5AddTsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6Tsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7*
T0*'
_output_shapes
:€€€€€€€€€
е
Usec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu_5ReluTsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5*
T0*'
_output_shapes
:€€€€€€€€€
п
Xsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_8SigmoidXsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_2:3*
T0*'
_output_shapes
:€€€€€€€€€
Њ
Tsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8MulUsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu_5Xsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_8*
T0*'
_output_shapes
:€€€€€€€€€
®
6sec_lstm/rnn/while/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV3<sec_lstm/rnn/while/TensorArrayWrite/TensorArrayWriteV3/Entersec_lstm/rnn/while/Identity_1Tsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8sec_lstm/rnn/while/Identity_2*
_output_shapes
: *
T0*g
_class]
[Yloc:@sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8
Ќ
<sec_lstm/rnn/while/TensorArrayWrite/TensorArrayWriteV3/EnterEntersec_lstm/rnn/TensorArray*
is_constant(*
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context*
T0*g
_class]
[Yloc:@sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8*
parallel_iterations 
z
sec_lstm/rnn/while/add_1/yConst^sec_lstm/rnn/while/Identity*
dtype0*
_output_shapes
: *
value	B :
{
sec_lstm/rnn/while/add_1Addsec_lstm/rnn/while/Identity_1sec_lstm/rnn/while/add_1/y*
_output_shapes
: *
T0
j
 sec_lstm/rnn/while/NextIterationNextIterationsec_lstm/rnn/while/add*
T0*
_output_shapes
: 
n
"sec_lstm/rnn/while/NextIteration_1NextIterationsec_lstm/rnn/while/add_1*
T0*
_output_shapes
: 
М
"sec_lstm/rnn/while/NextIteration_2NextIteration6sec_lstm/rnn/while/TensorArrayWrite/TensorArrayWriteV3*
T0*
_output_shapes
: 
ї
"sec_lstm/rnn/while/NextIteration_3NextIterationTsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1*
T0*'
_output_shapes
:€€€€€€€€€
ї
"sec_lstm/rnn/while/NextIteration_4NextIterationTsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2*'
_output_shapes
:€€€€€€€€€*
T0
ї
"sec_lstm/rnn/while/NextIteration_5NextIterationTsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3*
T0*'
_output_shapes
:€€€€€€€€€
ї
"sec_lstm/rnn/while/NextIteration_6NextIterationTsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5*'
_output_shapes
:€€€€€€€€€*
T0
ї
"sec_lstm/rnn/while/NextIteration_7NextIterationTsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5*'
_output_shapes
:€€€€€€€€€*
T0
ї
"sec_lstm/rnn/while/NextIteration_8NextIterationTsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8*
T0*'
_output_shapes
:€€€€€€€€€
[
sec_lstm/rnn/while/ExitExitsec_lstm/rnn/while/Switch*
T0*
_output_shapes
: 
_
sec_lstm/rnn/while/Exit_1Exitsec_lstm/rnn/while/Switch_1*
T0*
_output_shapes
: 
_
sec_lstm/rnn/while/Exit_2Exitsec_lstm/rnn/while/Switch_2*
T0*
_output_shapes
: 
p
sec_lstm/rnn/while/Exit_3Exitsec_lstm/rnn/while/Switch_3*
T0*'
_output_shapes
:€€€€€€€€€
p
sec_lstm/rnn/while/Exit_4Exitsec_lstm/rnn/while/Switch_4*'
_output_shapes
:€€€€€€€€€*
T0
p
sec_lstm/rnn/while/Exit_5Exitsec_lstm/rnn/while/Switch_5*
T0*'
_output_shapes
:€€€€€€€€€
p
sec_lstm/rnn/while/Exit_6Exitsec_lstm/rnn/while/Switch_6*'
_output_shapes
:€€€€€€€€€*
T0
p
sec_lstm/rnn/while/Exit_7Exitsec_lstm/rnn/while/Switch_7*
T0*'
_output_shapes
:€€€€€€€€€
p
sec_lstm/rnn/while/Exit_8Exitsec_lstm/rnn/while/Switch_8*
T0*'
_output_shapes
:€€€€€€€€€
Њ
/sec_lstm/rnn/TensorArrayStack/TensorArraySizeV3TensorArraySizeV3sec_lstm/rnn/TensorArraysec_lstm/rnn/while/Exit_2*+
_class!
loc:@sec_lstm/rnn/TensorArray*
_output_shapes
: 
Ш
)sec_lstm/rnn/TensorArrayStack/range/startConst*
value	B : *+
_class!
loc:@sec_lstm/rnn/TensorArray*
dtype0*
_output_shapes
: 
Ш
)sec_lstm/rnn/TensorArrayStack/range/deltaConst*
value	B :*+
_class!
loc:@sec_lstm/rnn/TensorArray*
dtype0*
_output_shapes
: 
С
#sec_lstm/rnn/TensorArrayStack/rangeRange)sec_lstm/rnn/TensorArrayStack/range/start/sec_lstm/rnn/TensorArrayStack/TensorArraySizeV3)sec_lstm/rnn/TensorArrayStack/range/delta*+
_class!
loc:@sec_lstm/rnn/TensorArray*#
_output_shapes
:€€€€€€€€€*

Tidx0
ѓ
1sec_lstm/rnn/TensorArrayStack/TensorArrayGatherV3TensorArrayGatherV3sec_lstm/rnn/TensorArray#sec_lstm/rnn/TensorArrayStack/rangesec_lstm/rnn/while/Exit_2*
dtype0*+
_output_shapes
:€€€€€€€€€*$
element_shape:€€€€€€€€€*+
_class!
loc:@sec_lstm/rnn/TensorArray
^
sec_lstm/rnn/Const_1Const*
valueB:*
dtype0*
_output_shapes
:
U
sec_lstm/rnn/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
\
sec_lstm/rnn/range_1/startConst*
value	B :*
dtype0*
_output_shapes
: 
\
sec_lstm/rnn/range_1/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Т
sec_lstm/rnn/range_1Rangesec_lstm/rnn/range_1/startsec_lstm/rnn/Rank_1sec_lstm/rnn/range_1/delta*
_output_shapes
:*

Tidx0
o
sec_lstm/rnn/concat_2/values_0Const*
valueB"       *
dtype0*
_output_shapes
:
\
sec_lstm/rnn/concat_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
≠
sec_lstm/rnn/concat_2ConcatV2sec_lstm/rnn/concat_2/values_0sec_lstm/rnn/range_1sec_lstm/rnn/concat_2/axis*
T0*
N*
_output_shapes
:*

Tidx0
≤
sec_lstm/rnn/transpose_1	Transpose1sec_lstm/rnn/TensorArrayStack/TensorArrayGatherV3sec_lstm/rnn/concat_2*
T0*+
_output_shapes
:€€€€€€€€€*
Tperm0
i
sec_lstm/Reshape_2/shapeConst*
dtype0*
_output_shapes
:*
valueB"€€€€   
Т
sec_lstm/Reshape_2Reshapesec_lstm/rnn/while/Exit_8sec_lstm/Reshape_2/shape*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
Я
sec_lstm/MatMul_1MatMulsec_lstm/Reshape_2self_variable/out/read*
transpose_b( *
T0*'
_output_shapes
:€€€€€€€€€*
transpose_a( 
y
sec_lstm/add_1Addsec_lstm/MatMul_1self_variable/Variable_1/read*
T0*'
_output_shapes
:€€€€€€€€€
X
Variable/initial_valueConst*
dtype0*
_output_shapes
: *
value	B : 
l
Variable
VariableV2*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 
Ґ
Variable/AssignAssignVariableVariable/initial_value*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@Variable
a
Variable/readIdentityVariable*
T0*
_class
loc:@Variable*
_output_shapes
: 
k
&ExponentialDecay/initial_learning_rateConst*
valueB
 *o<*
dtype0*
_output_shapes
: 
Z
ExponentialDecay/Cast/xConst*
value
B :ъ=*
dtype0*
_output_shapes
: 
v
ExponentialDecay/CastCastExponentialDecay/Cast/x*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0
^
ExponentialDecay/Cast_1/xConst*
valueB
 *fff?*
dtype0*
_output_shapes
: 
n
ExponentialDecay/Cast_2CastVariable/read*
Truncate( *
_output_shapes
: *

DstT0*

SrcT0
t
ExponentialDecay/truedivRealDivExponentialDecay/Cast_2ExponentialDecay/Cast*
T0*
_output_shapes
: 
Z
ExponentialDecay/FloorFloorExponentialDecay/truediv*
_output_shapes
: *
T0
o
ExponentialDecay/PowPowExponentialDecay/Cast_1/xExponentialDecay/Floor*
T0*
_output_shapes
: 
v
ExponentialDecayMul&ExponentialDecay/initial_learning_rateExponentialDecay/Pow*
T0*
_output_shapes
: 
`
Reshape/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
m
ReshapeReshapesec_lstm/add_1Reshape/shape*
T0*
Tshape0*#
_output_shapes
:€€€€€€€€€
b
Reshape_1/shapeConst*
dtype0*
_output_shapes
:*
valueB:
€€€€€€€€€
~
	Reshape_1Reshapeself_variable/Placeholder_2Reshape_1/shape*
T0*
Tshape0*#
_output_shapes
:€€€€€€€€€
L
subSubReshape	Reshape_1*
T0*#
_output_shapes
:€€€€€€€€€
C
SquareSquaresub*#
_output_shapes
:€€€€€€€€€*
T0
O
ConstConst*
valueB: *
dtype0*
_output_shapes
:
Y
MeanMeanSquareConst*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
R
gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
X
gradients/grad_ys_0Const*
valueB
 *  А?*
dtype0*
_output_shapes
: 
o
gradients/FillFillgradients/Shapegradients/grad_ys_0*
_output_shapes
: *
T0*

index_type0
S
gradients/f_countConst*
value	B : *
dtype0*
_output_shapes
: 
∞
gradients/f_count_1Entergradients/f_count*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *0

frame_name" sec_lstm/rnn/while/while_context
r
gradients/MergeMergegradients/f_count_1gradients/NextIteration*
T0*
N*
_output_shapes
: : 
k
gradients/SwitchSwitchgradients/Mergesec_lstm/rnn/while/LoopCond*
_output_shapes
: : *
T0
o
gradients/Add/yConst^sec_lstm/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Z
gradients/AddAddgradients/Switch:1gradients/Add/y*
T0*
_output_shapes
: 
€7
gradients/NextIterationNextIterationgradients/Addd^gradients/sec_lstm/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/StackPushV2|^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_1_grad/MatMul_1/StackPushV2|^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_2_grad/MatMul_1/StackPushV2z^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_grad/MatMul_1/StackPushV2Ж^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/BroadcastGradientArgs/StackPushV2И^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/BroadcastGradientArgs/StackPushV2_1Ж^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/BroadcastGradientArgs/StackPushV2Ж^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/BroadcastGradientArgs/StackPushV2И^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/BroadcastGradientArgs/StackPushV2_1Ж^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/BroadcastGradientArgs/StackPushV2Ж^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/BroadcastGradientArgs/StackPushV2И^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/BroadcastGradientArgs/StackPushV2_1Д^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/BroadcastGradientArgs/StackPushV2z^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ShapeN/StackPushV2|^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ShapeN/StackPushV2_1z^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ShapeN/StackPushV2|^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ShapeN/StackPushV2_1x^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ShapeN/StackPushV2z^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ShapeN/StackPushV2_1Ж^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPushV2И^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPushV2_1t^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Mul/StackPushV2v^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Mul_1/StackPushV2Ж^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPushV2И^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPushV2_1t^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Mul/StackPushV2v^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Mul_1/StackPushV2Ж^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/BroadcastGradientArgs/StackPushV2И^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/BroadcastGradientArgs/StackPushV2_1t^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Mul/StackPushV2v^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Mul_1/StackPushV2Ж^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/BroadcastGradientArgs/StackPushV2И^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/BroadcastGradientArgs/StackPushV2_1t^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Mul/StackPushV2v^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Mul_1/StackPushV2Ж^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/BroadcastGradientArgs/StackPushV2И^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/BroadcastGradientArgs/StackPushV2_1t^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Mul/StackPushV2v^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Mul_1/StackPushV2Ж^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/BroadcastGradientArgs/StackPushV2И^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/BroadcastGradientArgs/StackPushV2_1t^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Mul/StackPushV2v^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Mul_1/StackPushV2Ж^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/BroadcastGradientArgs/StackPushV2И^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/BroadcastGradientArgs/StackPushV2_1t^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Mul/StackPushV2v^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Mul_1/StackPushV2Ж^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/BroadcastGradientArgs/StackPushV2И^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/BroadcastGradientArgs/StackPushV2_1t^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Mul/StackPushV2v^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Mul_1/StackPushV2Д^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/BroadcastGradientArgs/StackPushV2Ж^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/BroadcastGradientArgs/StackPushV2_1r^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Mul/StackPushV2t^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Mul_1/StackPushV2*
T0*
_output_shapes
: 
N
gradients/f_count_2Exitgradients/Switch*
T0*
_output_shapes
: 
S
gradients/b_countConst*
dtype0*
_output_shapes
: *
value	B :
Љ
gradients/b_count_1Entergradients/f_count_2*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *:

frame_name,*gradients/sec_lstm/rnn/while/while_context
v
gradients/Merge_1Mergegradients/b_count_1gradients/NextIteration_1*
T0*
N*
_output_shapes
: : 
x
gradients/GreaterEqualGreaterEqualgradients/Merge_1gradients/GreaterEqual/Enter*
T0*
_output_shapes
: 
√
gradients/GreaterEqual/EnterEntergradients/b_count*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *:

frame_name,*gradients/sec_lstm/rnn/while/while_context
O
gradients/b_count_2LoopCondgradients/GreaterEqual*
_output_shapes
: 
g
gradients/Switch_1Switchgradients/Merge_1gradients/b_count_2*
T0*
_output_shapes
: : 
i
gradients/SubSubgradients/Switch_1:1gradients/GreaterEqual/Enter*
T0*
_output_shapes
: 
ё
gradients/NextIteration_1NextIterationgradients/SubБ^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/BroadcastGradientArgs/b_sync*
T0*
_output_shapes
: 
P
gradients/b_count_3Exitgradients/Switch_1*
T0*
_output_shapes
: 
k
!gradients/Mean_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
М
gradients/Mean_grad/ReshapeReshapegradients/Fill!gradients/Mean_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
_
gradients/Mean_grad/ShapeShapeSquare*
T0*
out_type0*
_output_shapes
:
Ш
gradients/Mean_grad/TileTilegradients/Mean_grad/Reshapegradients/Mean_grad/Shape*#
_output_shapes
:€€€€€€€€€*

Tmultiples0*
T0
a
gradients/Mean_grad/Shape_1ShapeSquare*
T0*
out_type0*
_output_shapes
:
^
gradients/Mean_grad/Shape_2Const*
valueB *
dtype0*
_output_shapes
: 
c
gradients/Mean_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:
Ц
gradients/Mean_grad/ProdProdgradients/Mean_grad/Shape_1gradients/Mean_grad/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
e
gradients/Mean_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
Ъ
gradients/Mean_grad/Prod_1Prodgradients/Mean_grad/Shape_2gradients/Mean_grad/Const_1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
_
gradients/Mean_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: 
В
gradients/Mean_grad/MaximumMaximumgradients/Mean_grad/Prod_1gradients/Mean_grad/Maximum/y*
_output_shapes
: *
T0
А
gradients/Mean_grad/floordivFloorDivgradients/Mean_grad/Prodgradients/Mean_grad/Maximum*
T0*
_output_shapes
: 
~
gradients/Mean_grad/CastCastgradients/Mean_grad/floordiv*
Truncate( *
_output_shapes
: *

DstT0*

SrcT0
И
gradients/Mean_grad/truedivRealDivgradients/Mean_grad/Tilegradients/Mean_grad/Cast*#
_output_shapes
:€€€€€€€€€*
T0
~
gradients/Square_grad/ConstConst^gradients/Mean_grad/truediv*
valueB
 *   @*
dtype0*
_output_shapes
: 
p
gradients/Square_grad/MulMulsubgradients/Square_grad/Const*#
_output_shapes
:€€€€€€€€€*
T0
И
gradients/Square_grad/Mul_1Mulgradients/Mean_grad/truedivgradients/Square_grad/Mul*
T0*#
_output_shapes
:€€€€€€€€€
_
gradients/sub_grad/ShapeShapeReshape*
_output_shapes
:*
T0*
out_type0
c
gradients/sub_grad/Shape_1Shape	Reshape_1*
T0*
out_type0*
_output_shapes
:
і
(gradients/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_grad/Shapegradients/sub_grad/Shape_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0
§
gradients/sub_grad/SumSumgradients/Square_grad/Mul_1(gradients/sub_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
У
gradients/sub_grad/ReshapeReshapegradients/sub_grad/Sumgradients/sub_grad/Shape*
T0*
Tshape0*#
_output_shapes
:€€€€€€€€€
®
gradients/sub_grad/Sum_1Sumgradients/Square_grad/Mul_1*gradients/sub_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
Z
gradients/sub_grad/NegNeggradients/sub_grad/Sum_1*
T0*
_output_shapes
:
Ч
gradients/sub_grad/Reshape_1Reshapegradients/sub_grad/Neggradients/sub_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:€€€€€€€€€
g
#gradients/sub_grad/tuple/group_depsNoOp^gradients/sub_grad/Reshape^gradients/sub_grad/Reshape_1
÷
+gradients/sub_grad/tuple/control_dependencyIdentitygradients/sub_grad/Reshape$^gradients/sub_grad/tuple/group_deps*#
_output_shapes
:€€€€€€€€€*
T0*-
_class#
!loc:@gradients/sub_grad/Reshape
№
-gradients/sub_grad/tuple/control_dependency_1Identitygradients/sub_grad/Reshape_1$^gradients/sub_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/sub_grad/Reshape_1*#
_output_shapes
:€€€€€€€€€
j
gradients/Reshape_grad/ShapeShapesec_lstm/add_1*
T0*
out_type0*
_output_shapes
:
і
gradients/Reshape_grad/ReshapeReshape+gradients/sub_grad/tuple/control_dependencygradients/Reshape_grad/Shape*'
_output_shapes
:€€€€€€€€€*
T0*
Tshape0
t
#gradients/sec_lstm/add_1_grad/ShapeShapesec_lstm/MatMul_1*
_output_shapes
:*
T0*
out_type0
o
%gradients/sec_lstm/add_1_grad/Shape_1Const*
valueB:*
dtype0*
_output_shapes
:
’
3gradients/sec_lstm/add_1_grad/BroadcastGradientArgsBroadcastGradientArgs#gradients/sec_lstm/add_1_grad/Shape%gradients/sec_lstm/add_1_grad/Shape_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
љ
!gradients/sec_lstm/add_1_grad/SumSumgradients/Reshape_grad/Reshape3gradients/sec_lstm/add_1_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
Є
%gradients/sec_lstm/add_1_grad/ReshapeReshape!gradients/sec_lstm/add_1_grad/Sum#gradients/sec_lstm/add_1_grad/Shape*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
Ѕ
#gradients/sec_lstm/add_1_grad/Sum_1Sumgradients/Reshape_grad/Reshape5gradients/sec_lstm/add_1_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
±
'gradients/sec_lstm/add_1_grad/Reshape_1Reshape#gradients/sec_lstm/add_1_grad/Sum_1%gradients/sec_lstm/add_1_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
И
.gradients/sec_lstm/add_1_grad/tuple/group_depsNoOp&^gradients/sec_lstm/add_1_grad/Reshape(^gradients/sec_lstm/add_1_grad/Reshape_1
Ж
6gradients/sec_lstm/add_1_grad/tuple/control_dependencyIdentity%gradients/sec_lstm/add_1_grad/Reshape/^gradients/sec_lstm/add_1_grad/tuple/group_deps*'
_output_shapes
:€€€€€€€€€*
T0*8
_class.
,*loc:@gradients/sec_lstm/add_1_grad/Reshape
€
8gradients/sec_lstm/add_1_grad/tuple/control_dependency_1Identity'gradients/sec_lstm/add_1_grad/Reshape_1/^gradients/sec_lstm/add_1_grad/tuple/group_deps*
_output_shapes
:*
T0*:
_class0
.,loc:@gradients/sec_lstm/add_1_grad/Reshape_1
ў
'gradients/sec_lstm/MatMul_1_grad/MatMulMatMul6gradients/sec_lstm/add_1_grad/tuple/control_dependencyself_variable/out/read*'
_output_shapes
:€€€€€€€€€*
transpose_a( *
transpose_b(*
T0
ќ
)gradients/sec_lstm/MatMul_1_grad/MatMul_1MatMulsec_lstm/Reshape_26gradients/sec_lstm/add_1_grad/tuple/control_dependency*
T0*
_output_shapes

:*
transpose_a(*
transpose_b( 
П
1gradients/sec_lstm/MatMul_1_grad/tuple/group_depsNoOp(^gradients/sec_lstm/MatMul_1_grad/MatMul*^gradients/sec_lstm/MatMul_1_grad/MatMul_1
Р
9gradients/sec_lstm/MatMul_1_grad/tuple/control_dependencyIdentity'gradients/sec_lstm/MatMul_1_grad/MatMul2^gradients/sec_lstm/MatMul_1_grad/tuple/group_deps*
T0*:
_class0
.,loc:@gradients/sec_lstm/MatMul_1_grad/MatMul*'
_output_shapes
:€€€€€€€€€
Н
;gradients/sec_lstm/MatMul_1_grad/tuple/control_dependency_1Identity)gradients/sec_lstm/MatMul_1_grad/MatMul_12^gradients/sec_lstm/MatMul_1_grad/tuple/group_deps*
_output_shapes

:*
T0*<
_class2
0.loc:@gradients/sec_lstm/MatMul_1_grad/MatMul_1
А
'gradients/sec_lstm/Reshape_2_grad/ShapeShapesec_lstm/rnn/while/Exit_8*
T0*
out_type0*
_output_shapes
:
Ў
)gradients/sec_lstm/Reshape_2_grad/ReshapeReshape9gradients/sec_lstm/MatMul_1_grad/tuple/control_dependency'gradients/sec_lstm/Reshape_2_grad/Shape*'
_output_shapes
:€€€€€€€€€*
T0*
Tshape0
T
gradients/zerosConst*
valueB
 *    *
dtype0*
_output_shapes
: 
n
gradients/zeros_like	ZerosLikesec_lstm/rnn/while/Exit_3*
T0*'
_output_shapes
:€€€€€€€€€
p
gradients/zeros_like_1	ZerosLikesec_lstm/rnn/while/Exit_4*
T0*'
_output_shapes
:€€€€€€€€€
p
gradients/zeros_like_2	ZerosLikesec_lstm/rnn/while/Exit_5*'
_output_shapes
:€€€€€€€€€*
T0
p
gradients/zeros_like_3	ZerosLikesec_lstm/rnn/while/Exit_6*
T0*'
_output_shapes
:€€€€€€€€€
p
gradients/zeros_like_4	ZerosLikesec_lstm/rnn/while/Exit_7*
T0*'
_output_shapes
:€€€€€€€€€
€
/gradients/sec_lstm/rnn/while/Exit_8_grad/b_exitEnter)gradients/sec_lstm/Reshape_2_grad/Reshape*
T0*
is_constant( *
parallel_iterations *'
_output_shapes
:€€€€€€€€€*:

frame_name,*gradients/sec_lstm/rnn/while/while_context
‘
/gradients/sec_lstm/rnn/while/Exit_2_grad/b_exitEntergradients/zeros*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *:

frame_name,*gradients/sec_lstm/rnn/while/while_context
к
/gradients/sec_lstm/rnn/while/Exit_3_grad/b_exitEntergradients/zeros_like*
T0*
is_constant( *
parallel_iterations *'
_output_shapes
:€€€€€€€€€*:

frame_name,*gradients/sec_lstm/rnn/while/while_context
м
/gradients/sec_lstm/rnn/while/Exit_4_grad/b_exitEntergradients/zeros_like_1*
parallel_iterations *'
_output_shapes
:€€€€€€€€€*:

frame_name,*gradients/sec_lstm/rnn/while/while_context*
T0*
is_constant( 
м
/gradients/sec_lstm/rnn/while/Exit_5_grad/b_exitEntergradients/zeros_like_2*
T0*
is_constant( *
parallel_iterations *'
_output_shapes
:€€€€€€€€€*:

frame_name,*gradients/sec_lstm/rnn/while/while_context
м
/gradients/sec_lstm/rnn/while/Exit_6_grad/b_exitEntergradients/zeros_like_3*
T0*
is_constant( *
parallel_iterations *'
_output_shapes
:€€€€€€€€€*:

frame_name,*gradients/sec_lstm/rnn/while/while_context
м
/gradients/sec_lstm/rnn/while/Exit_7_grad/b_exitEntergradients/zeros_like_4*
T0*
is_constant( *
parallel_iterations *'
_output_shapes
:€€€€€€€€€*:

frame_name,*gradients/sec_lstm/rnn/while/while_context
ж
3gradients/sec_lstm/rnn/while/Switch_8_grad/b_switchMerge/gradients/sec_lstm/rnn/while/Exit_8_grad/b_exit:gradients/sec_lstm/rnn/while/Switch_8_grad_1/NextIteration*
T0*
N*)
_output_shapes
:€€€€€€€€€: 
ж
3gradients/sec_lstm/rnn/while/Switch_3_grad/b_switchMerge/gradients/sec_lstm/rnn/while/Exit_3_grad/b_exit:gradients/sec_lstm/rnn/while/Switch_3_grad_1/NextIteration*
T0*
N*)
_output_shapes
:€€€€€€€€€: 
ж
3gradients/sec_lstm/rnn/while/Switch_4_grad/b_switchMerge/gradients/sec_lstm/rnn/while/Exit_4_grad/b_exit:gradients/sec_lstm/rnn/while/Switch_4_grad_1/NextIteration*
N*)
_output_shapes
:€€€€€€€€€: *
T0
ж
3gradients/sec_lstm/rnn/while/Switch_5_grad/b_switchMerge/gradients/sec_lstm/rnn/while/Exit_5_grad/b_exit:gradients/sec_lstm/rnn/while/Switch_5_grad_1/NextIteration*
T0*
N*)
_output_shapes
:€€€€€€€€€: 
ж
3gradients/sec_lstm/rnn/while/Switch_6_grad/b_switchMerge/gradients/sec_lstm/rnn/while/Exit_6_grad/b_exit:gradients/sec_lstm/rnn/while/Switch_6_grad_1/NextIteration*
T0*
N*)
_output_shapes
:€€€€€€€€€: 
ж
3gradients/sec_lstm/rnn/while/Switch_7_grad/b_switchMerge/gradients/sec_lstm/rnn/while/Exit_7_grad/b_exit:gradients/sec_lstm/rnn/while/Switch_7_grad_1/NextIteration*
T0*
N*)
_output_shapes
:€€€€€€€€€: 
С
0gradients/sec_lstm/rnn/while/Merge_8_grad/SwitchSwitch3gradients/sec_lstm/rnn/while/Switch_8_grad/b_switchgradients/b_count_2*:
_output_shapes(
&:€€€€€€€€€:€€€€€€€€€*
T0*F
_class<
:8loc:@gradients/sec_lstm/rnn/while/Switch_8_grad/b_switch
u
:gradients/sec_lstm/rnn/while/Merge_8_grad/tuple/group_depsNoOp1^gradients/sec_lstm/rnn/while/Merge_8_grad/Switch
Ј
Bgradients/sec_lstm/rnn/while/Merge_8_grad/tuple/control_dependencyIdentity0gradients/sec_lstm/rnn/while/Merge_8_grad/Switch;^gradients/sec_lstm/rnn/while/Merge_8_grad/tuple/group_deps*
T0*F
_class<
:8loc:@gradients/sec_lstm/rnn/while/Switch_8_grad/b_switch*'
_output_shapes
:€€€€€€€€€
ї
Dgradients/sec_lstm/rnn/while/Merge_8_grad/tuple/control_dependency_1Identity2gradients/sec_lstm/rnn/while/Merge_8_grad/Switch:1;^gradients/sec_lstm/rnn/while/Merge_8_grad/tuple/group_deps*'
_output_shapes
:€€€€€€€€€*
T0*F
_class<
:8loc:@gradients/sec_lstm/rnn/while/Switch_8_grad/b_switch
С
0gradients/sec_lstm/rnn/while/Merge_3_grad/SwitchSwitch3gradients/sec_lstm/rnn/while/Switch_3_grad/b_switchgradients/b_count_2*
T0*F
_class<
:8loc:@gradients/sec_lstm/rnn/while/Switch_3_grad/b_switch*:
_output_shapes(
&:€€€€€€€€€:€€€€€€€€€
u
:gradients/sec_lstm/rnn/while/Merge_3_grad/tuple/group_depsNoOp1^gradients/sec_lstm/rnn/while/Merge_3_grad/Switch
Ј
Bgradients/sec_lstm/rnn/while/Merge_3_grad/tuple/control_dependencyIdentity0gradients/sec_lstm/rnn/while/Merge_3_grad/Switch;^gradients/sec_lstm/rnn/while/Merge_3_grad/tuple/group_deps*
T0*F
_class<
:8loc:@gradients/sec_lstm/rnn/while/Switch_3_grad/b_switch*'
_output_shapes
:€€€€€€€€€
ї
Dgradients/sec_lstm/rnn/while/Merge_3_grad/tuple/control_dependency_1Identity2gradients/sec_lstm/rnn/while/Merge_3_grad/Switch:1;^gradients/sec_lstm/rnn/while/Merge_3_grad/tuple/group_deps*'
_output_shapes
:€€€€€€€€€*
T0*F
_class<
:8loc:@gradients/sec_lstm/rnn/while/Switch_3_grad/b_switch
С
0gradients/sec_lstm/rnn/while/Merge_4_grad/SwitchSwitch3gradients/sec_lstm/rnn/while/Switch_4_grad/b_switchgradients/b_count_2*
T0*F
_class<
:8loc:@gradients/sec_lstm/rnn/while/Switch_4_grad/b_switch*:
_output_shapes(
&:€€€€€€€€€:€€€€€€€€€
u
:gradients/sec_lstm/rnn/while/Merge_4_grad/tuple/group_depsNoOp1^gradients/sec_lstm/rnn/while/Merge_4_grad/Switch
Ј
Bgradients/sec_lstm/rnn/while/Merge_4_grad/tuple/control_dependencyIdentity0gradients/sec_lstm/rnn/while/Merge_4_grad/Switch;^gradients/sec_lstm/rnn/while/Merge_4_grad/tuple/group_deps*
T0*F
_class<
:8loc:@gradients/sec_lstm/rnn/while/Switch_4_grad/b_switch*'
_output_shapes
:€€€€€€€€€
ї
Dgradients/sec_lstm/rnn/while/Merge_4_grad/tuple/control_dependency_1Identity2gradients/sec_lstm/rnn/while/Merge_4_grad/Switch:1;^gradients/sec_lstm/rnn/while/Merge_4_grad/tuple/group_deps*
T0*F
_class<
:8loc:@gradients/sec_lstm/rnn/while/Switch_4_grad/b_switch*'
_output_shapes
:€€€€€€€€€
С
0gradients/sec_lstm/rnn/while/Merge_5_grad/SwitchSwitch3gradients/sec_lstm/rnn/while/Switch_5_grad/b_switchgradients/b_count_2*
T0*F
_class<
:8loc:@gradients/sec_lstm/rnn/while/Switch_5_grad/b_switch*:
_output_shapes(
&:€€€€€€€€€:€€€€€€€€€
u
:gradients/sec_lstm/rnn/while/Merge_5_grad/tuple/group_depsNoOp1^gradients/sec_lstm/rnn/while/Merge_5_grad/Switch
Ј
Bgradients/sec_lstm/rnn/while/Merge_5_grad/tuple/control_dependencyIdentity0gradients/sec_lstm/rnn/while/Merge_5_grad/Switch;^gradients/sec_lstm/rnn/while/Merge_5_grad/tuple/group_deps*'
_output_shapes
:€€€€€€€€€*
T0*F
_class<
:8loc:@gradients/sec_lstm/rnn/while/Switch_5_grad/b_switch
ї
Dgradients/sec_lstm/rnn/while/Merge_5_grad/tuple/control_dependency_1Identity2gradients/sec_lstm/rnn/while/Merge_5_grad/Switch:1;^gradients/sec_lstm/rnn/while/Merge_5_grad/tuple/group_deps*
T0*F
_class<
:8loc:@gradients/sec_lstm/rnn/while/Switch_5_grad/b_switch*'
_output_shapes
:€€€€€€€€€
С
0gradients/sec_lstm/rnn/while/Merge_6_grad/SwitchSwitch3gradients/sec_lstm/rnn/while/Switch_6_grad/b_switchgradients/b_count_2*
T0*F
_class<
:8loc:@gradients/sec_lstm/rnn/while/Switch_6_grad/b_switch*:
_output_shapes(
&:€€€€€€€€€:€€€€€€€€€
u
:gradients/sec_lstm/rnn/while/Merge_6_grad/tuple/group_depsNoOp1^gradients/sec_lstm/rnn/while/Merge_6_grad/Switch
Ј
Bgradients/sec_lstm/rnn/while/Merge_6_grad/tuple/control_dependencyIdentity0gradients/sec_lstm/rnn/while/Merge_6_grad/Switch;^gradients/sec_lstm/rnn/while/Merge_6_grad/tuple/group_deps*
T0*F
_class<
:8loc:@gradients/sec_lstm/rnn/while/Switch_6_grad/b_switch*'
_output_shapes
:€€€€€€€€€
ї
Dgradients/sec_lstm/rnn/while/Merge_6_grad/tuple/control_dependency_1Identity2gradients/sec_lstm/rnn/while/Merge_6_grad/Switch:1;^gradients/sec_lstm/rnn/while/Merge_6_grad/tuple/group_deps*'
_output_shapes
:€€€€€€€€€*
T0*F
_class<
:8loc:@gradients/sec_lstm/rnn/while/Switch_6_grad/b_switch
С
0gradients/sec_lstm/rnn/while/Merge_7_grad/SwitchSwitch3gradients/sec_lstm/rnn/while/Switch_7_grad/b_switchgradients/b_count_2*
T0*F
_class<
:8loc:@gradients/sec_lstm/rnn/while/Switch_7_grad/b_switch*:
_output_shapes(
&:€€€€€€€€€:€€€€€€€€€
u
:gradients/sec_lstm/rnn/while/Merge_7_grad/tuple/group_depsNoOp1^gradients/sec_lstm/rnn/while/Merge_7_grad/Switch
Ј
Bgradients/sec_lstm/rnn/while/Merge_7_grad/tuple/control_dependencyIdentity0gradients/sec_lstm/rnn/while/Merge_7_grad/Switch;^gradients/sec_lstm/rnn/while/Merge_7_grad/tuple/group_deps*
T0*F
_class<
:8loc:@gradients/sec_lstm/rnn/while/Switch_7_grad/b_switch*'
_output_shapes
:€€€€€€€€€
ї
Dgradients/sec_lstm/rnn/while/Merge_7_grad/tuple/control_dependency_1Identity2gradients/sec_lstm/rnn/while/Merge_7_grad/Switch:1;^gradients/sec_lstm/rnn/while/Merge_7_grad/tuple/group_deps*
T0*F
_class<
:8loc:@gradients/sec_lstm/rnn/while/Switch_7_grad/b_switch*'
_output_shapes
:€€€€€€€€€
ђ
.gradients/sec_lstm/rnn/while/Enter_8_grad/ExitExitBgradients/sec_lstm/rnn/while/Merge_8_grad/tuple/control_dependency*
T0*'
_output_shapes
:€€€€€€€€€
ђ
.gradients/sec_lstm/rnn/while/Enter_3_grad/ExitExitBgradients/sec_lstm/rnn/while/Merge_3_grad/tuple/control_dependency*
T0*'
_output_shapes
:€€€€€€€€€
ђ
.gradients/sec_lstm/rnn/while/Enter_4_grad/ExitExitBgradients/sec_lstm/rnn/while/Merge_4_grad/tuple/control_dependency*
T0*'
_output_shapes
:€€€€€€€€€
ђ
.gradients/sec_lstm/rnn/while/Enter_5_grad/ExitExitBgradients/sec_lstm/rnn/while/Merge_5_grad/tuple/control_dependency*
T0*'
_output_shapes
:€€€€€€€€€
ђ
.gradients/sec_lstm/rnn/while/Enter_6_grad/ExitExitBgradients/sec_lstm/rnn/while/Merge_6_grad/tuple/control_dependency*
T0*'
_output_shapes
:€€€€€€€€€
ђ
.gradients/sec_lstm/rnn/while/Enter_7_grad/ExitExitBgradients/sec_lstm/rnn/while/Merge_7_grad/tuple/control_dependency*
T0*'
_output_shapes
:€€€€€€€€€
ю
igradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/ShapeShapeUsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu_5*
T0*
out_type0*
_output_shapes
:
Г
kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Shape_1ShapeXsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_8*
_output_shapes
:*
T0*
out_type0
я
ygradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/BroadcastGradientArgsBroadcastGradientArgsДgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/BroadcastGradientArgs/StackPopV2Жgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/BroadcastGradientArgs/StackPopV2_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0
»
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/BroadcastGradientArgs/ConstConst*
valueB :
€€€€€€€€€*|
_classr
pnloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Shape*
dtype0*
_output_shapes
: 
»
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/BroadcastGradientArgs/f_accStackV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/BroadcastGradientArgs/Const*|
_classr
pnloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Shape*

stack_name *
_output_shapes
:*
	elem_type0
О
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/BroadcastGradientArgs/EnterEntergradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context*
T0*
is_constant(
…
Еgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/BroadcastGradientArgs/StackPushV2StackPushV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/BroadcastGradientArgs/Enterigradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Shape^gradients/Add*
T0*
_output_shapes
:*
swap_memory( 
Ё
Дgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/BroadcastGradientArgs/StackPopV2
StackPopV2Кgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
	elem_type0*
_output_shapes
:
§
Кgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/BroadcastGradientArgs/StackPopV2/EnterEntergradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context*
T0*
is_constant(
Г8
Аgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/BroadcastGradientArgs/b_syncControlTriggerc^gradients/sec_lstm/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/StackPopV2{^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_1_grad/MatMul_1/StackPopV2{^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_2_grad/MatMul_1/StackPopV2y^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_grad/MatMul_1/StackPopV2Е^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2З^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2_1Е^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/BroadcastGradientArgs/StackPopV2Е^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/BroadcastGradientArgs/StackPopV2З^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/BroadcastGradientArgs/StackPopV2_1Е^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/BroadcastGradientArgs/StackPopV2Е^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/BroadcastGradientArgs/StackPopV2З^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/BroadcastGradientArgs/StackPopV2_1Г^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/BroadcastGradientArgs/StackPopV2y^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ShapeN/StackPopV2{^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ShapeN/StackPopV2_1y^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ShapeN/StackPopV2{^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ShapeN/StackPopV2_1w^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ShapeN/StackPopV2y^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ShapeN/StackPopV2_1Е^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2З^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1s^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Mul/StackPopV2u^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Mul_1/StackPopV2Е^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2З^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1s^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Mul/StackPopV2u^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Mul_1/StackPopV2Е^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/BroadcastGradientArgs/StackPopV2З^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/BroadcastGradientArgs/StackPopV2_1s^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Mul/StackPopV2u^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Mul_1/StackPopV2Е^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/BroadcastGradientArgs/StackPopV2З^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/BroadcastGradientArgs/StackPopV2_1s^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Mul/StackPopV2u^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Mul_1/StackPopV2Е^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/BroadcastGradientArgs/StackPopV2З^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/BroadcastGradientArgs/StackPopV2_1s^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Mul/StackPopV2u^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Mul_1/StackPopV2Е^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/BroadcastGradientArgs/StackPopV2З^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/BroadcastGradientArgs/StackPopV2_1s^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Mul/StackPopV2u^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Mul_1/StackPopV2Е^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/BroadcastGradientArgs/StackPopV2З^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/BroadcastGradientArgs/StackPopV2_1s^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Mul/StackPopV2u^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Mul_1/StackPopV2Е^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/BroadcastGradientArgs/StackPopV2З^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/BroadcastGradientArgs/StackPopV2_1s^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Mul/StackPopV2u^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Mul_1/StackPopV2Г^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2Е^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1q^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Mul/StackPopV2s^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Mul_1/StackPopV2
Ќ
Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/BroadcastGradientArgs/Const_1Const*
dtype0*
_output_shapes
: *
valueB :
€€€€€€€€€*~
_classt
rploc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Shape_1
–
Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/BroadcastGradientArgs/f_acc_1StackV2Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/BroadcastGradientArgs/Const_1*
	elem_type0*~
_classt
rploc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Shape_1*

stack_name *
_output_shapes
:
Ф
Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/BroadcastGradientArgs/Enter_1EnterБgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context
–
Зgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/BroadcastGradientArgs/Enter_1kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Shape_1^gradients/Add*
_output_shapes
:*
swap_memory( *
T0
б
Жgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2Мgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
©
Мgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterБgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context
Џ
ggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/MulMulDgradients/sec_lstm/rnn/while/Merge_8_grad/tuple/control_dependency_1rgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Mul/StackPopV2*
T0*'
_output_shapes
:€€€€€€€€€
•
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Mul/ConstConst*
valueB :
€€€€€€€€€*k
_classa
_]loc:@sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_8*
dtype0*
_output_shapes
: 
У
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Mul/f_accStackV2mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Mul/Const*
	elem_type0*k
_classa
_]loc:@sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_8*

stack_name *
_output_shapes
:
к
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Mul/EnterEntermgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Mul/f_acc*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context*
T0*
is_constant(
†
sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Mul/StackPushV2StackPushV2mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Mul/EnterXsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_8^gradients/Add*'
_output_shapes
:€€€€€€€€€*
swap_memory( *
T0
ƒ
rgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Mul/StackPopV2
StackPopV2xgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Mul/StackPopV2/Enter^gradients/Sub*
	elem_type0*'
_output_shapes
:€€€€€€€€€
€
xgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Mul/StackPopV2/EnterEntermgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Mul/f_acc*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context*
T0*
is_constant(
Т
ggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/SumSumggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Mulygradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
¶
kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/ReshapeReshapeggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/SumДgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
ё
igradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Mul_1Multgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Mul_1/StackPopV2Dgradients/sec_lstm/rnn/while/Merge_8_grad/tuple/control_dependency_1*
T0*'
_output_shapes
:€€€€€€€€€
§
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Mul_1/ConstConst*
valueB :
€€€€€€€€€*h
_class^
\Zloc:@sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu_5*
dtype0*
_output_shapes
: 
Ф
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Mul_1/f_accStackV2ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Mul_1/Const*h
_class^
\Zloc:@sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu_5*

stack_name *
_output_shapes
:*
	elem_type0
о
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Mul_1/EnterEnterogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context
°
ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Mul_1/StackPushV2StackPushV2ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Mul_1/EnterUsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu_5^gradients/Add*
T0*'
_output_shapes
:€€€€€€€€€*
swap_memory( 
»
tgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Mul_1/StackPopV2
StackPopV2zgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Mul_1/StackPopV2/Enter^gradients/Sub*'
_output_shapes
:€€€€€€€€€*
	elem_type0
Г
zgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Mul_1/StackPopV2/EnterEnterogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context
Ш
igradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Sum_1Sumigradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Mul_1{gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
ђ
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Reshape_1Reshapeigradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Sum_1Жgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/BroadcastGradientArgs/StackPopV2_1*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
Џ
tgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/tuple/group_depsNoOpl^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Reshapen^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Reshape_1
Ю
|gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/tuple/control_dependencyIdentitykgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Reshapeu^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/tuple/group_deps*'
_output_shapes
:€€€€€€€€€*
T0*~
_classt
rploc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Reshape
•
~gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/tuple/control_dependency_1Identitymgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Reshape_1u^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/tuple/group_deps*
T0*А
_classv
trloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Reshape_1*'
_output_shapes
:€€€€€€€€€
Я
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu_5_grad/ReluGradReluGrad|gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/tuple/control_dependencytgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Mul_1/StackPopV2*
T0*'
_output_shapes
:€€€€€€€€€
®
sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_8_grad/SigmoidGradSigmoidGradrgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Mul/StackPopV2~gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/tuple/control_dependency_1*'
_output_shapes
:€€€€€€€€€*
T0
ќ
gradients/AddNAddNDgradients/sec_lstm/rnn/while/Merge_7_grad/tuple/control_dependency_1mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu_5_grad/ReluGrad*
T0*F
_class<
:8loc:@gradients/sec_lstm/rnn/while/Switch_7_grad/b_switch*
N*'
_output_shapes
:€€€€€€€€€
э
igradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/ShapeShapeTsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6*
_output_shapes
:*
T0*
out_type0
€
kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/Shape_1ShapeTsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7*
_output_shapes
:*
T0*
out_type0
я
ygradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/BroadcastGradientArgsBroadcastGradientArgsДgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/BroadcastGradientArgs/StackPopV2Жgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/BroadcastGradientArgs/StackPopV2_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
»
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/BroadcastGradientArgs/ConstConst*
valueB :
€€€€€€€€€*|
_classr
pnloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/Shape*
dtype0*
_output_shapes
: 
»
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/BroadcastGradientArgs/f_accStackV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/BroadcastGradientArgs/Const*|
_classr
pnloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/Shape*

stack_name *
_output_shapes
:*
	elem_type0
О
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/BroadcastGradientArgs/EnterEntergradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context
…
Еgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/BroadcastGradientArgs/StackPushV2StackPushV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/BroadcastGradientArgs/Enterigradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/Shape^gradients/Add*
T0*
_output_shapes
:*
swap_memory( 
Ё
Дgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/BroadcastGradientArgs/StackPopV2
StackPopV2Кgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
§
Кgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/BroadcastGradientArgs/StackPopV2/EnterEntergradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context
Ќ
Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/BroadcastGradientArgs/Const_1Const*
valueB :
€€€€€€€€€*~
_classt
rploc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/Shape_1*
dtype0*
_output_shapes
: 
–
Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/BroadcastGradientArgs/f_acc_1StackV2Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/BroadcastGradientArgs/Const_1*

stack_name *
_output_shapes
:*
	elem_type0*~
_classt
rploc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/Shape_1
Ф
Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/BroadcastGradientArgs/Enter_1EnterБgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context
–
Зgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/BroadcastGradientArgs/Enter_1kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/Shape_1^gradients/Add*
_output_shapes
:*
swap_memory( *
T0
б
Жgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2Мgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
©
Мgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterБgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context
є
ggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/SumSumgradients/AddNygradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
¶
kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/ReshapeReshapeggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/SumДgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
љ
igradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/Sum_1Sumgradients/AddN{gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
ђ
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/Reshape_1Reshapeigradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/Sum_1Жgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/BroadcastGradientArgs/StackPopV2_1*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
Џ
tgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/tuple/group_depsNoOpl^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/Reshapen^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/Reshape_1
Ю
|gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/tuple/control_dependencyIdentitykgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/Reshapeu^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/tuple/group_deps*
T0*~
_classt
rploc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/Reshape*'
_output_shapes
:€€€€€€€€€
•
~gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/tuple/control_dependency_1Identitymgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/Reshape_1u^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/tuple/group_deps*
T0*А
_classv
trloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/Reshape_1*'
_output_shapes
:€€€€€€€€€
∆
igradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/ShapeShapesec_lstm/rnn/while/Identity_7*
T0*
out_type0*
_output_shapes
:
Г
kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Shape_1ShapeXsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_6*
_output_shapes
:*
T0*
out_type0
я
ygradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/BroadcastGradientArgsBroadcastGradientArgsДgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/BroadcastGradientArgs/StackPopV2Жgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/BroadcastGradientArgs/StackPopV2_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
»
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/BroadcastGradientArgs/ConstConst*
valueB :
€€€€€€€€€*|
_classr
pnloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Shape*
dtype0*
_output_shapes
: 
»
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/BroadcastGradientArgs/f_accStackV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/BroadcastGradientArgs/Const*

stack_name *
_output_shapes
:*
	elem_type0*|
_classr
pnloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Shape
О
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/BroadcastGradientArgs/EnterEntergradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context
…
Еgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/BroadcastGradientArgs/StackPushV2StackPushV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/BroadcastGradientArgs/Enterigradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Shape^gradients/Add*
T0*
_output_shapes
:*
swap_memory( 
Ё
Дgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/BroadcastGradientArgs/StackPopV2
StackPopV2Кgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
§
Кgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/BroadcastGradientArgs/StackPopV2/EnterEntergradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context
Ќ
Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/BroadcastGradientArgs/Const_1Const*
valueB :
€€€€€€€€€*~
_classt
rploc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Shape_1*
dtype0*
_output_shapes
: 
–
Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/BroadcastGradientArgs/f_acc_1StackV2Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/BroadcastGradientArgs/Const_1*~
_classt
rploc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Shape_1*

stack_name *
_output_shapes
:*
	elem_type0
Ф
Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/BroadcastGradientArgs/Enter_1EnterБgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/BroadcastGradientArgs/f_acc_1*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context*
T0*
is_constant(
–
Зgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/BroadcastGradientArgs/Enter_1kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Shape_1^gradients/Add*
T0*
_output_shapes
:*
swap_memory( 
б
Жgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2Мgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*
	elem_type0*
_output_shapes
:
©
Мgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterБgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context
Т
ggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/MulMul|gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/tuple/control_dependencyrgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Mul/StackPopV2*
T0*'
_output_shapes
:€€€€€€€€€
•
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Mul/ConstConst*
dtype0*
_output_shapes
: *
valueB :
€€€€€€€€€*k
_classa
_]loc:@sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_6
У
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Mul/f_accStackV2mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Mul/Const*
	elem_type0*k
_classa
_]loc:@sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_6*

stack_name *
_output_shapes
:
к
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Mul/EnterEntermgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Mul/f_acc*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context*
T0*
is_constant(
†
sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Mul/StackPushV2StackPushV2mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Mul/EnterXsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_6^gradients/Add*
T0*'
_output_shapes
:€€€€€€€€€*
swap_memory( 
ƒ
rgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Mul/StackPopV2
StackPopV2xgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Mul/StackPopV2/Enter^gradients/Sub*
	elem_type0*'
_output_shapes
:€€€€€€€€€
€
xgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Mul/StackPopV2/EnterEntermgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Mul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context
Т
ggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/SumSumggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Mulygradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
¶
kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/ReshapeReshapeggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/SumДgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
Ц
igradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Mul_1Multgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Mul_1/StackPopV2|gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/tuple/control_dependency*
T0*'
_output_shapes
:€€€€€€€€€
м
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Mul_1/ConstConst*
valueB :
€€€€€€€€€*0
_class&
$"loc:@sec_lstm/rnn/while/Identity_7*
dtype0*
_output_shapes
: 
№
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Mul_1/f_accStackV2ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Mul_1/Const*
	elem_type0*0
_class&
$"loc:@sec_lstm/rnn/while/Identity_7*

stack_name *
_output_shapes
:
о
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Mul_1/EnterEnterogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Mul_1/f_acc*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context*
T0*
is_constant(
й
ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Mul_1/StackPushV2StackPushV2ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Mul_1/Entersec_lstm/rnn/while/Identity_7^gradients/Add*'
_output_shapes
:€€€€€€€€€*
swap_memory( *
T0
»
tgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Mul_1/StackPopV2
StackPopV2zgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Mul_1/StackPopV2/Enter^gradients/Sub*'
_output_shapes
:€€€€€€€€€*
	elem_type0
Г
zgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Mul_1/StackPopV2/EnterEnterogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context
Ш
igradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Sum_1Sumigradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Mul_1{gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
ђ
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Reshape_1Reshapeigradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Sum_1Жgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/BroadcastGradientArgs/StackPopV2_1*'
_output_shapes
:€€€€€€€€€*
T0*
Tshape0
Џ
tgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/tuple/group_depsNoOpl^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Reshapen^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Reshape_1
Ю
|gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/tuple/control_dependencyIdentitykgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Reshapeu^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/tuple/group_deps*
T0*~
_classt
rploc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Reshape*'
_output_shapes
:€€€€€€€€€
•
~gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/tuple/control_dependency_1Identitymgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Reshape_1u^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/tuple/group_deps*
T0*А
_classv
trloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Reshape_1*'
_output_shapes
:€€€€€€€€€
Б
igradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/ShapeShapeXsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_7*
T0*
out_type0*
_output_shapes
:
А
kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Shape_1ShapeUsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu_4*
_output_shapes
:*
T0*
out_type0
я
ygradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/BroadcastGradientArgsBroadcastGradientArgsДgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/BroadcastGradientArgs/StackPopV2Жgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/BroadcastGradientArgs/StackPopV2_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
»
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/BroadcastGradientArgs/ConstConst*
valueB :
€€€€€€€€€*|
_classr
pnloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Shape*
dtype0*
_output_shapes
: 
»
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/BroadcastGradientArgs/f_accStackV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/BroadcastGradientArgs/Const*

stack_name *
_output_shapes
:*
	elem_type0*|
_classr
pnloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Shape
О
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/BroadcastGradientArgs/EnterEntergradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context
…
Еgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/BroadcastGradientArgs/StackPushV2StackPushV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/BroadcastGradientArgs/Enterigradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Shape^gradients/Add*
T0*
_output_shapes
:*
swap_memory( 
Ё
Дgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/BroadcastGradientArgs/StackPopV2
StackPopV2Кgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
§
Кgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/BroadcastGradientArgs/StackPopV2/EnterEntergradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context*
T0*
is_constant(
Ќ
Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/BroadcastGradientArgs/Const_1Const*
valueB :
€€€€€€€€€*~
_classt
rploc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Shape_1*
dtype0*
_output_shapes
: 
–
Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/BroadcastGradientArgs/f_acc_1StackV2Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/BroadcastGradientArgs/Const_1*~
_classt
rploc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Shape_1*

stack_name *
_output_shapes
:*
	elem_type0
Ф
Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/BroadcastGradientArgs/Enter_1EnterБgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context
–
Зgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/BroadcastGradientArgs/Enter_1kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Shape_1^gradients/Add*
T0*
_output_shapes
:*
swap_memory( 
б
Жgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2Мgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
©
Мgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterБgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context
Ф
ggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/MulMul~gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/tuple/control_dependency_1rgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Mul/StackPopV2*
T0*'
_output_shapes
:€€€€€€€€€
Ґ
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Mul/ConstConst*
valueB :
€€€€€€€€€*h
_class^
\Zloc:@sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu_4*
dtype0*
_output_shapes
: 
Р
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Mul/f_accStackV2mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Mul/Const*
	elem_type0*h
_class^
\Zloc:@sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu_4*

stack_name *
_output_shapes
:
к
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Mul/EnterEntermgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Mul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context
Э
sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Mul/StackPushV2StackPushV2mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Mul/EnterUsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu_4^gradients/Add*
T0*'
_output_shapes
:€€€€€€€€€*
swap_memory( 
ƒ
rgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Mul/StackPopV2
StackPopV2xgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Mul/StackPopV2/Enter^gradients/Sub*'
_output_shapes
:€€€€€€€€€*
	elem_type0
€
xgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Mul/StackPopV2/EnterEntermgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Mul/f_acc*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context*
T0*
is_constant(
Т
ggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/SumSumggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Mulygradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
¶
kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/ReshapeReshapeggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/SumДgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
Ш
igradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Mul_1Multgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Mul_1/StackPopV2~gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/tuple/control_dependency_1*'
_output_shapes
:€€€€€€€€€*
T0
І
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Mul_1/ConstConst*
valueB :
€€€€€€€€€*k
_classa
_]loc:@sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_7*
dtype0*
_output_shapes
: 
Ч
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Mul_1/f_accStackV2ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Mul_1/Const*
	elem_type0*k
_classa
_]loc:@sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_7*

stack_name *
_output_shapes
:
о
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Mul_1/EnterEnterogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Mul_1/f_acc*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context*
T0*
is_constant(
§
ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Mul_1/StackPushV2StackPushV2ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Mul_1/EnterXsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_7^gradients/Add*
T0*'
_output_shapes
:€€€€€€€€€*
swap_memory( 
»
tgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Mul_1/StackPopV2
StackPopV2zgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Mul_1/StackPopV2/Enter^gradients/Sub*'
_output_shapes
:€€€€€€€€€*
	elem_type0
Г
zgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Mul_1/StackPopV2/EnterEnterogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context
Ш
igradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Sum_1Sumigradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Mul_1{gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
ђ
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Reshape_1Reshapeigradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Sum_1Жgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/BroadcastGradientArgs/StackPopV2_1*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
Џ
tgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/tuple/group_depsNoOpl^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Reshapen^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Reshape_1
Ю
|gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/tuple/control_dependencyIdentitykgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Reshapeu^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/tuple/group_deps*'
_output_shapes
:€€€€€€€€€*
T0*~
_classt
rploc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Reshape
•
~gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/tuple/control_dependency_1Identitymgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Reshape_1u^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/tuple/group_deps*
T0*А
_classv
trloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Reshape_1*'
_output_shapes
:€€€€€€€€€
®
sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_6_grad/SigmoidGradSigmoidGradrgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Mul/StackPopV2~gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/tuple/control_dependency_1*
T0*'
_output_shapes
:€€€€€€€€€
®
sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_7_grad/SigmoidGradSigmoidGradtgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Mul_1/StackPopV2|gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/tuple/control_dependency*
T0*'
_output_shapes
:€€€€€€€€€
Я
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu_4_grad/ReluGradReluGrad~gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/tuple/control_dependency_1rgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Mul/StackPopV2*'
_output_shapes
:€€€€€€€€€*
T0
ы
:gradients/sec_lstm/rnn/while/Switch_7_grad_1/NextIterationNextIteration|gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/tuple/control_dependency*
T0*'
_output_shapes
:€€€€€€€€€
Б
igradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/ShapeShapeXsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_2:2*
T0*
out_type0*
_output_shapes
:
Њ
kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/Shape_1Const^gradients/Sub*
valueB *
dtype0*
_output_shapes
: 
√
ygradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/BroadcastGradientArgsBroadcastGradientArgsДgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/BroadcastGradientArgs/StackPopV2kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/Shape_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0
»
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/BroadcastGradientArgs/ConstConst*
valueB :
€€€€€€€€€*|
_classr
pnloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/Shape*
dtype0*
_output_shapes
: 
»
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/BroadcastGradientArgs/f_accStackV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/BroadcastGradientArgs/Const*

stack_name *
_output_shapes
:*
	elem_type0*|
_classr
pnloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/Shape
О
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/BroadcastGradientArgs/EnterEntergradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context*
T0*
is_constant(
…
Еgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/BroadcastGradientArgs/StackPushV2StackPushV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/BroadcastGradientArgs/Enterigradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/Shape^gradients/Add*
T0*
_output_shapes
:*
swap_memory( 
Ё
Дgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/BroadcastGradientArgs/StackPopV2
StackPopV2Кgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
§
Кgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/BroadcastGradientArgs/StackPopV2/EnterEntergradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context
Ю
ggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/SumSumsgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_6_grad/SigmoidGradygradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
¶
kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/ReshapeReshapeggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/SumДgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
Ґ
igradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/Sum_1Sumsgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_6_grad/SigmoidGrad{gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
€
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/Reshape_1Reshapeigradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/Sum_1kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
Џ
tgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/tuple/group_depsNoOpl^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/Reshapen^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/Reshape_1
Ю
|gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/tuple/control_dependencyIdentitykgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/Reshapeu^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/tuple/group_deps*
T0*~
_classt
rploc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/Reshape*'
_output_shapes
:€€€€€€€€€
Ф
~gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/tuple/control_dependency_1Identitymgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/Reshape_1u^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/tuple/group_deps*
T0*А
_classv
trloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/Reshape_1*
_output_shapes
: 
К
lgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_2_grad/concatConcatV2sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_7_grad/SigmoidGradmgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu_4_grad/ReluGrad|gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/tuple/control_dependencysgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_8_grad/SigmoidGradrgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_2_grad/concat/Const*

Tidx0*
T0*
N*'
_output_shapes
:€€€€€€€€€ 
ƒ
rgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_2_grad/concat/ConstConst^gradients/Sub*
dtype0*
_output_shapes
: *
value	B :
ђ
sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_2_grad/BiasAddGradBiasAddGradlgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_2_grad/concat*
T0*
data_formatNHWC*
_output_shapes
: 
е
xgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_2_grad/tuple/group_depsNoOpt^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_2_grad/BiasAddGradm^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_2_grad/concat
©
Аgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_2_grad/tuple/control_dependencyIdentitylgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_2_grad/concaty^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_2_grad/tuple/group_deps*
T0*
_classu
sqloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_2_grad/concat*'
_output_shapes
:€€€€€€€€€ 
≠
Вgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_2_grad/tuple/control_dependency_1Identitysgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_2_grad/BiasAddGrady^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_2_grad/tuple/group_deps*
T0*Ж
_class|
zxloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_2_grad/BiasAddGrad*
_output_shapes
: 
«
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_2_grad/MatMulMatMulАgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_2_grad/tuple/control_dependencysgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_2_grad/MatMul/Enter*'
_output_shapes
:€€€€€€€€€*
transpose_a( *
transpose_b(*
T0
Џ
sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_2_grad/MatMul/EnterEnterIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/read*
T0*
is_constant(*
parallel_iterations *
_output_shapes

: *:

frame_name,*gradients/sec_lstm/rnn/while/while_context
«
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_2_grad/MatMul_1MatMulzgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_2_grad/MatMul_1/StackPopV2Аgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_2_grad/tuple/control_dependency*
T0*
_output_shapes

: *
transpose_a(*
transpose_b( 
ђ
ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_2_grad/MatMul_1/ConstConst*
valueB :
€€€€€€€€€*j
_class`
^\loc:@sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2*
dtype0*
_output_shapes
: 
Ґ
ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_2_grad/MatMul_1/f_accStackV2ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_2_grad/MatMul_1/Const*j
_class`
^\loc:@sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2*

stack_name *
_output_shapes
:*
	elem_type0
ъ
ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_2_grad/MatMul_1/EnterEnterugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_2_grad/MatMul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context
ѓ
{gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_2_grad/MatMul_1/StackPushV2StackPushV2ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_2_grad/MatMul_1/EnterWsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2^gradients/Add*
T0*'
_output_shapes
:€€€€€€€€€*
swap_memory( 
’
zgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_2_grad/MatMul_1/StackPopV2
StackPopV2Аgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_2_grad/MatMul_1/StackPopV2/Enter^gradients/Sub*'
_output_shapes
:€€€€€€€€€*
	elem_type0
Р
Аgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_2_grad/MatMul_1/StackPopV2/EnterEnterugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_2_grad/MatMul_1/f_acc*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context*
T0*
is_constant(
б
wgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_2_grad/tuple/group_depsNoOpn^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_2_grad/MatMulp^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_2_grad/MatMul_1
©
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_2_grad/tuple/control_dependencyIdentitymgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_2_grad/MatMulx^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_2_grad/tuple/group_deps*
T0*А
_classv
trloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_2_grad/MatMul*'
_output_shapes
:€€€€€€€€€
І
Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_2_grad/tuple/control_dependency_1Identityogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_2_grad/MatMul_1x^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_2_grad/tuple/group_deps*
T0*В
_classx
vtloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_2_grad/MatMul_1*
_output_shapes

: 
Њ
lgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ConstConst^gradients/Sub*
value	B :*
dtype0*
_output_shapes
: 
љ
kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/RankConst^gradients/Sub*
value	B :*
dtype0*
_output_shapes
: 
т
jgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/modFloorModlgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/Constkgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/Rank*
_output_shapes
: *
T0
А
lgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ShapeShapeTsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5*
T0*
out_type0*
_output_shapes
:
±
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ShapeNShapeNxgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ShapeN/StackPopV2zgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ShapeN/StackPopV2_1*
N* 
_output_shapes
::*
T0*
out_type0
І
sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ShapeN/ConstConst*
dtype0*
_output_shapes
: *
valueB :
€€€€€€€€€*g
_class]
[Yloc:@sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5
Ы
sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ShapeN/f_accStackV2sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ShapeN/Const*g
_class]
[Yloc:@sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5*

stack_name *
_output_shapes
:*
	elem_type0
ц
sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ShapeN/EnterEntersgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ShapeN/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context
®
ygradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ShapeN/StackPushV2StackPushV2sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ShapeN/EnterTsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5^gradients/Add*
T0*'
_output_shapes
:€€€€€€€€€*
swap_memory( 
–
xgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ShapeN/StackPopV2
StackPopV2~gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ShapeN/StackPopV2/Enter^gradients/Sub*
	elem_type0*'
_output_shapes
:€€€€€€€€€
Л
~gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ShapeN/StackPopV2/EnterEntersgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ShapeN/f_acc*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context*
T0*
is_constant(
т
ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ShapeN/Const_1Const*
valueB :
€€€€€€€€€*0
_class&
$"loc:@sec_lstm/rnn/while/Identity_8*
dtype0*
_output_shapes
: 
и
ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ShapeN/f_acc_1StackV2ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ShapeN/Const_1*
	elem_type0*0
_class&
$"loc:@sec_lstm/rnn/while/Identity_8*

stack_name *
_output_shapes
:
ъ
ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ShapeN/Enter_1Enterugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ShapeN/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context
х
{gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ShapeN/StackPushV2_1StackPushV2ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ShapeN/Enter_1sec_lstm/rnn/while/Identity_8^gradients/Add*
T0*'
_output_shapes
:€€€€€€€€€*
swap_memory( 
’
zgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ShapeN/StackPopV2_1
StackPopV2Аgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ShapeN/StackPopV2_1/Enter^gradients/Sub*'
_output_shapes
:€€€€€€€€€*
	elem_type0
Р
Аgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ShapeN/StackPopV2_1/EnterEnterugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ShapeN/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context
ъ
sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ConcatOffsetConcatOffsetjgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/modmgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ShapeNogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ShapeN:1*
N* 
_output_shapes
::
Щ
lgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/SliceSlicegradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_2_grad/tuple/control_dependencysgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ConcatOffsetmgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ShapeN*
Index0*
T0*'
_output_shapes
:€€€€€€€€€
Я
ngradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/Slice_1Slicegradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_2_grad/tuple/control_dependencyugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ConcatOffset:1ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ShapeN:1*
Index0*
T0*'
_output_shapes
:€€€€€€€€€
я
wgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/tuple/group_depsNoOpm^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/Sliceo^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/Slice_1
¶
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/tuple/control_dependencyIdentitylgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/Slicex^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/tuple/group_deps*
T0*
_classu
sqloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/Slice*'
_output_shapes
:€€€€€€€€€
Ѓ
Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/tuple/control_dependency_1Identityngradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/Slice_1x^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/tuple/group_deps*
T0*Б
_classw
usloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/Slice_1*'
_output_shapes
:€€€€€€€€€
в
gradients/AddN_1AddNDgradients/sec_lstm/rnn/while/Merge_6_grad/tuple/control_dependency_1gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/tuple/control_dependency*
T0*F
_class<
:8loc:@gradients/sec_lstm/rnn/while/Switch_6_grad/b_switch*
N*'
_output_shapes
:€€€€€€€€€
ю
igradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/ShapeShapeUsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu_3*
T0*
out_type0*
_output_shapes
:
Г
kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Shape_1ShapeXsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_5*
T0*
out_type0*
_output_shapes
:
я
ygradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/BroadcastGradientArgsBroadcastGradientArgsДgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/BroadcastGradientArgs/StackPopV2Жgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/BroadcastGradientArgs/StackPopV2_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
»
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/BroadcastGradientArgs/ConstConst*
dtype0*
_output_shapes
: *
valueB :
€€€€€€€€€*|
_classr
pnloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Shape
»
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/BroadcastGradientArgs/f_accStackV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/BroadcastGradientArgs/Const*|
_classr
pnloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Shape*

stack_name *
_output_shapes
:*
	elem_type0
О
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/BroadcastGradientArgs/EnterEntergradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context
…
Еgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/BroadcastGradientArgs/StackPushV2StackPushV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/BroadcastGradientArgs/Enterigradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Shape^gradients/Add*
T0*
_output_shapes
:*
swap_memory( 
Ё
Дgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/BroadcastGradientArgs/StackPopV2
StackPopV2Кgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
§
Кgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/BroadcastGradientArgs/StackPopV2/EnterEntergradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context*
T0*
is_constant(
Ќ
Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/BroadcastGradientArgs/Const_1Const*
valueB :
€€€€€€€€€*~
_classt
rploc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Shape_1*
dtype0*
_output_shapes
: 
–
Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/BroadcastGradientArgs/f_acc_1StackV2Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/BroadcastGradientArgs/Const_1*
	elem_type0*~
_classt
rploc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Shape_1*

stack_name *
_output_shapes
:
Ф
Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/BroadcastGradientArgs/Enter_1EnterБgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context
–
Зgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/BroadcastGradientArgs/Enter_1kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Shape_1^gradients/Add*
_output_shapes
:*
swap_memory( *
T0
б
Жgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2Мgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
©
Мgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterБgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context
¶
ggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/MulMulgradients/AddN_1rgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Mul/StackPopV2*
T0*'
_output_shapes
:€€€€€€€€€
•
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Mul/ConstConst*
valueB :
€€€€€€€€€*k
_classa
_]loc:@sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_5*
dtype0*
_output_shapes
: 
У
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Mul/f_accStackV2mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Mul/Const*

stack_name *
_output_shapes
:*
	elem_type0*k
_classa
_]loc:@sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_5
к
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Mul/EnterEntermgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Mul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context
†
sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Mul/StackPushV2StackPushV2mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Mul/EnterXsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_5^gradients/Add*
T0*'
_output_shapes
:€€€€€€€€€*
swap_memory( 
ƒ
rgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Mul/StackPopV2
StackPopV2xgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Mul/StackPopV2/Enter^gradients/Sub*'
_output_shapes
:€€€€€€€€€*
	elem_type0
€
xgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Mul/StackPopV2/EnterEntermgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Mul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context
Т
ggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/SumSumggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Mulygradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
¶
kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/ReshapeReshapeggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/SumДgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/BroadcastGradientArgs/StackPopV2*'
_output_shapes
:€€€€€€€€€*
T0*
Tshape0
™
igradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Mul_1Multgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Mul_1/StackPopV2gradients/AddN_1*
T0*'
_output_shapes
:€€€€€€€€€
§
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Mul_1/ConstConst*
dtype0*
_output_shapes
: *
valueB :
€€€€€€€€€*h
_class^
\Zloc:@sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu_3
Ф
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Mul_1/f_accStackV2ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Mul_1/Const*h
_class^
\Zloc:@sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu_3*

stack_name *
_output_shapes
:*
	elem_type0
о
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Mul_1/EnterEnterogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Mul_1/f_acc*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context*
T0*
is_constant(
°
ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Mul_1/StackPushV2StackPushV2ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Mul_1/EnterUsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu_3^gradients/Add*
T0*'
_output_shapes
:€€€€€€€€€*
swap_memory( 
»
tgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Mul_1/StackPopV2
StackPopV2zgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Mul_1/StackPopV2/Enter^gradients/Sub*'
_output_shapes
:€€€€€€€€€*
	elem_type0
Г
zgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Mul_1/StackPopV2/EnterEnterogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context
Ш
igradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Sum_1Sumigradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Mul_1{gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
ђ
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Reshape_1Reshapeigradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Sum_1Жgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/BroadcastGradientArgs/StackPopV2_1*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
Џ
tgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/tuple/group_depsNoOpl^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Reshapen^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Reshape_1
Ю
|gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/tuple/control_dependencyIdentitykgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Reshapeu^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/tuple/group_deps*'
_output_shapes
:€€€€€€€€€*
T0*~
_classt
rploc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Reshape
•
~gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/tuple/control_dependency_1Identitymgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Reshape_1u^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/tuple/group_deps*'
_output_shapes
:€€€€€€€€€*
T0*А
_classv
trloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Reshape_1
Я
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu_3_grad/ReluGradReluGrad|gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/tuple/control_dependencytgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Mul_1/StackPopV2*
T0*'
_output_shapes
:€€€€€€€€€
®
sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_5_grad/SigmoidGradSigmoidGradrgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Mul/StackPopV2~gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/tuple/control_dependency_1*
T0*'
_output_shapes
:€€€€€€€€€
Б
:gradients/sec_lstm/rnn/while/Switch_8_grad_1/NextIterationNextIterationБgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/tuple/control_dependency_1*'
_output_shapes
:€€€€€€€€€*
T0
–
gradients/AddN_2AddNDgradients/sec_lstm/rnn/while/Merge_5_grad/tuple/control_dependency_1mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu_3_grad/ReluGrad*
T0*F
_class<
:8loc:@gradients/sec_lstm/rnn/while/Switch_5_grad/b_switch*
N*'
_output_shapes
:€€€€€€€€€
э
igradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/ShapeShapeTsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3*
T0*
out_type0*
_output_shapes
:
€
kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/Shape_1ShapeTsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4*
T0*
out_type0*
_output_shapes
:
я
ygradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/BroadcastGradientArgsBroadcastGradientArgsДgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/BroadcastGradientArgs/StackPopV2Жgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/BroadcastGradientArgs/StackPopV2_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
»
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/BroadcastGradientArgs/ConstConst*
valueB :
€€€€€€€€€*|
_classr
pnloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/Shape*
dtype0*
_output_shapes
: 
»
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/BroadcastGradientArgs/f_accStackV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/BroadcastGradientArgs/Const*
	elem_type0*|
_classr
pnloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/Shape*

stack_name *
_output_shapes
:
О
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/BroadcastGradientArgs/EnterEntergradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context
…
Еgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/BroadcastGradientArgs/StackPushV2StackPushV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/BroadcastGradientArgs/Enterigradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/Shape^gradients/Add*
T0*
_output_shapes
:*
swap_memory( 
Ё
Дgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/BroadcastGradientArgs/StackPopV2
StackPopV2Кgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
§
Кgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/BroadcastGradientArgs/StackPopV2/EnterEntergradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context
Ќ
Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/BroadcastGradientArgs/Const_1Const*
valueB :
€€€€€€€€€*~
_classt
rploc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/Shape_1*
dtype0*
_output_shapes
: 
–
Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/BroadcastGradientArgs/f_acc_1StackV2Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/BroadcastGradientArgs/Const_1*

stack_name *
_output_shapes
:*
	elem_type0*~
_classt
rploc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/Shape_1
Ф
Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/BroadcastGradientArgs/Enter_1EnterБgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/BroadcastGradientArgs/f_acc_1*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context*
T0*
is_constant(
–
Зgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/BroadcastGradientArgs/Enter_1kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/Shape_1^gradients/Add*
_output_shapes
:*
swap_memory( *
T0
б
Жgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2Мgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
©
Мgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterБgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context
ї
ggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/SumSumgradients/AddN_2ygradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
¶
kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/ReshapeReshapeggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/SumДgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
њ
igradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/Sum_1Sumgradients/AddN_2{gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
ђ
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/Reshape_1Reshapeigradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/Sum_1Жgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/BroadcastGradientArgs/StackPopV2_1*'
_output_shapes
:€€€€€€€€€*
T0*
Tshape0
Џ
tgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/tuple/group_depsNoOpl^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/Reshapen^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/Reshape_1
Ю
|gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/tuple/control_dependencyIdentitykgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/Reshapeu^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/tuple/group_deps*
T0*~
_classt
rploc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/Reshape*'
_output_shapes
:€€€€€€€€€
•
~gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/tuple/control_dependency_1Identitymgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/Reshape_1u^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/tuple/group_deps*
T0*А
_classv
trloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/Reshape_1*'
_output_shapes
:€€€€€€€€€
∆
igradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/ShapeShapesec_lstm/rnn/while/Identity_5*
_output_shapes
:*
T0*
out_type0
Г
kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Shape_1ShapeXsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_3*
T0*
out_type0*
_output_shapes
:
я
ygradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/BroadcastGradientArgsBroadcastGradientArgsДgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/BroadcastGradientArgs/StackPopV2Жgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/BroadcastGradientArgs/StackPopV2_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0
»
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/BroadcastGradientArgs/ConstConst*
valueB :
€€€€€€€€€*|
_classr
pnloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Shape*
dtype0*
_output_shapes
: 
»
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/BroadcastGradientArgs/f_accStackV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/BroadcastGradientArgs/Const*|
_classr
pnloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Shape*

stack_name *
_output_shapes
:*
	elem_type0
О
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/BroadcastGradientArgs/EnterEntergradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context
…
Еgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/BroadcastGradientArgs/StackPushV2StackPushV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/BroadcastGradientArgs/Enterigradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Shape^gradients/Add*
T0*
_output_shapes
:*
swap_memory( 
Ё
Дgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/BroadcastGradientArgs/StackPopV2
StackPopV2Кgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
	elem_type0*
_output_shapes
:
§
Кgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/BroadcastGradientArgs/StackPopV2/EnterEntergradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context
Ќ
Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/BroadcastGradientArgs/Const_1Const*
dtype0*
_output_shapes
: *
valueB :
€€€€€€€€€*~
_classt
rploc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Shape_1
–
Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/BroadcastGradientArgs/f_acc_1StackV2Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/BroadcastGradientArgs/Const_1*~
_classt
rploc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Shape_1*

stack_name *
_output_shapes
:*
	elem_type0
Ф
Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/BroadcastGradientArgs/Enter_1EnterБgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context
–
Зgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/BroadcastGradientArgs/Enter_1kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Shape_1^gradients/Add*
T0*
_output_shapes
:*
swap_memory( 
б
Жgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2Мgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
©
Мgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterБgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/BroadcastGradientArgs/f_acc_1*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context*
T0*
is_constant(
Т
ggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/MulMul|gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/tuple/control_dependencyrgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Mul/StackPopV2*'
_output_shapes
:€€€€€€€€€*
T0
•
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Mul/ConstConst*
dtype0*
_output_shapes
: *
valueB :
€€€€€€€€€*k
_classa
_]loc:@sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_3
У
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Mul/f_accStackV2mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Mul/Const*k
_classa
_]loc:@sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_3*

stack_name *
_output_shapes
:*
	elem_type0
к
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Mul/EnterEntermgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Mul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context
†
sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Mul/StackPushV2StackPushV2mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Mul/EnterXsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_3^gradients/Add*
T0*'
_output_shapes
:€€€€€€€€€*
swap_memory( 
ƒ
rgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Mul/StackPopV2
StackPopV2xgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Mul/StackPopV2/Enter^gradients/Sub*'
_output_shapes
:€€€€€€€€€*
	elem_type0
€
xgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Mul/StackPopV2/EnterEntermgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Mul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context
Т
ggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/SumSumggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Mulygradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
¶
kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/ReshapeReshapeggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/SumДgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/BroadcastGradientArgs/StackPopV2*'
_output_shapes
:€€€€€€€€€*
T0*
Tshape0
Ц
igradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Mul_1Multgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Mul_1/StackPopV2|gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/tuple/control_dependency*
T0*'
_output_shapes
:€€€€€€€€€
м
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Mul_1/ConstConst*
valueB :
€€€€€€€€€*0
_class&
$"loc:@sec_lstm/rnn/while/Identity_5*
dtype0*
_output_shapes
: 
№
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Mul_1/f_accStackV2ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Mul_1/Const*
	elem_type0*0
_class&
$"loc:@sec_lstm/rnn/while/Identity_5*

stack_name *
_output_shapes
:
о
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Mul_1/EnterEnterogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Mul_1/f_acc*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context*
T0*
is_constant(
й
ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Mul_1/StackPushV2StackPushV2ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Mul_1/Entersec_lstm/rnn/while/Identity_5^gradients/Add*
T0*'
_output_shapes
:€€€€€€€€€*
swap_memory( 
»
tgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Mul_1/StackPopV2
StackPopV2zgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Mul_1/StackPopV2/Enter^gradients/Sub*'
_output_shapes
:€€€€€€€€€*
	elem_type0
Г
zgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Mul_1/StackPopV2/EnterEnterogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context
Ш
igradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Sum_1Sumigradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Mul_1{gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
ђ
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Reshape_1Reshapeigradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Sum_1Жgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/BroadcastGradientArgs/StackPopV2_1*'
_output_shapes
:€€€€€€€€€*
T0*
Tshape0
Џ
tgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/tuple/group_depsNoOpl^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Reshapen^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Reshape_1
Ю
|gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/tuple/control_dependencyIdentitykgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Reshapeu^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/tuple/group_deps*'
_output_shapes
:€€€€€€€€€*
T0*~
_classt
rploc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Reshape
•
~gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/tuple/control_dependency_1Identitymgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Reshape_1u^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/tuple/group_deps*
T0*А
_classv
trloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Reshape_1*'
_output_shapes
:€€€€€€€€€
Б
igradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/ShapeShapeXsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_4*
T0*
out_type0*
_output_shapes
:
А
kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Shape_1ShapeUsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu_2*
T0*
out_type0*
_output_shapes
:
я
ygradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/BroadcastGradientArgsBroadcastGradientArgsДgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/BroadcastGradientArgs/StackPopV2Жgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/BroadcastGradientArgs/StackPopV2_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0
»
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/BroadcastGradientArgs/ConstConst*
valueB :
€€€€€€€€€*|
_classr
pnloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Shape*
dtype0*
_output_shapes
: 
»
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/BroadcastGradientArgs/f_accStackV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/BroadcastGradientArgs/Const*|
_classr
pnloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Shape*

stack_name *
_output_shapes
:*
	elem_type0
О
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/BroadcastGradientArgs/EnterEntergradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context
…
Еgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/BroadcastGradientArgs/StackPushV2StackPushV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/BroadcastGradientArgs/Enterigradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Shape^gradients/Add*
T0*
_output_shapes
:*
swap_memory( 
Ё
Дgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/BroadcastGradientArgs/StackPopV2
StackPopV2Кgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
§
Кgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/BroadcastGradientArgs/StackPopV2/EnterEntergradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context
Ќ
Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/BroadcastGradientArgs/Const_1Const*
valueB :
€€€€€€€€€*~
_classt
rploc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Shape_1*
dtype0*
_output_shapes
: 
–
Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/BroadcastGradientArgs/f_acc_1StackV2Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/BroadcastGradientArgs/Const_1*~
_classt
rploc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Shape_1*

stack_name *
_output_shapes
:*
	elem_type0
Ф
Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/BroadcastGradientArgs/Enter_1EnterБgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context
–
Зgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/BroadcastGradientArgs/Enter_1kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Shape_1^gradients/Add*
T0*
_output_shapes
:*
swap_memory( 
б
Жgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2Мgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
©
Мgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterБgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context
Ф
ggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/MulMul~gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/tuple/control_dependency_1rgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Mul/StackPopV2*
T0*'
_output_shapes
:€€€€€€€€€
Ґ
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Mul/ConstConst*
valueB :
€€€€€€€€€*h
_class^
\Zloc:@sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu_2*
dtype0*
_output_shapes
: 
Р
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Mul/f_accStackV2mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Mul/Const*

stack_name *
_output_shapes
:*
	elem_type0*h
_class^
\Zloc:@sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu_2
к
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Mul/EnterEntermgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Mul/f_acc*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context*
T0*
is_constant(
Э
sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Mul/StackPushV2StackPushV2mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Mul/EnterUsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu_2^gradients/Add*'
_output_shapes
:€€€€€€€€€*
swap_memory( *
T0
ƒ
rgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Mul/StackPopV2
StackPopV2xgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Mul/StackPopV2/Enter^gradients/Sub*
	elem_type0*'
_output_shapes
:€€€€€€€€€
€
xgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Mul/StackPopV2/EnterEntermgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Mul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context
Т
ggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/SumSumggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Mulygradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
¶
kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/ReshapeReshapeggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/SumДgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
Ш
igradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Mul_1Multgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Mul_1/StackPopV2~gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/tuple/control_dependency_1*
T0*'
_output_shapes
:€€€€€€€€€
І
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Mul_1/ConstConst*
dtype0*
_output_shapes
: *
valueB :
€€€€€€€€€*k
_classa
_]loc:@sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_4
Ч
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Mul_1/f_accStackV2ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Mul_1/Const*

stack_name *
_output_shapes
:*
	elem_type0*k
_classa
_]loc:@sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_4
о
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Mul_1/EnterEnterogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context
§
ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Mul_1/StackPushV2StackPushV2ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Mul_1/EnterXsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_4^gradients/Add*'
_output_shapes
:€€€€€€€€€*
swap_memory( *
T0
»
tgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Mul_1/StackPopV2
StackPopV2zgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Mul_1/StackPopV2/Enter^gradients/Sub*'
_output_shapes
:€€€€€€€€€*
	elem_type0
Г
zgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Mul_1/StackPopV2/EnterEnterogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context
Ш
igradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Sum_1Sumigradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Mul_1{gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
ђ
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Reshape_1Reshapeigradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Sum_1Жgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/BroadcastGradientArgs/StackPopV2_1*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
Џ
tgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/tuple/group_depsNoOpl^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Reshapen^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Reshape_1
Ю
|gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/tuple/control_dependencyIdentitykgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Reshapeu^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/tuple/group_deps*
T0*~
_classt
rploc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Reshape*'
_output_shapes
:€€€€€€€€€
•
~gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/tuple/control_dependency_1Identitymgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Reshape_1u^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/tuple/group_deps*
T0*А
_classv
trloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Reshape_1*'
_output_shapes
:€€€€€€€€€
®
sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_3_grad/SigmoidGradSigmoidGradrgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Mul/StackPopV2~gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/tuple/control_dependency_1*
T0*'
_output_shapes
:€€€€€€€€€
®
sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_4_grad/SigmoidGradSigmoidGradtgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Mul_1/StackPopV2|gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/tuple/control_dependency*
T0*'
_output_shapes
:€€€€€€€€€
Я
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu_2_grad/ReluGradReluGrad~gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/tuple/control_dependency_1rgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Mul/StackPopV2*
T0*'
_output_shapes
:€€€€€€€€€
ы
:gradients/sec_lstm/rnn/while/Switch_5_grad_1/NextIterationNextIteration|gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/tuple/control_dependency*'
_output_shapes
:€€€€€€€€€*
T0
Б
igradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/ShapeShapeXsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_1:2*
_output_shapes
:*
T0*
out_type0
Њ
kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/Shape_1Const^gradients/Sub*
valueB *
dtype0*
_output_shapes
: 
√
ygradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/BroadcastGradientArgsBroadcastGradientArgsДgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/BroadcastGradientArgs/StackPopV2kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/Shape_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0
»
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/BroadcastGradientArgs/ConstConst*
valueB :
€€€€€€€€€*|
_classr
pnloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/Shape*
dtype0*
_output_shapes
: 
»
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/BroadcastGradientArgs/f_accStackV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/BroadcastGradientArgs/Const*|
_classr
pnloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/Shape*

stack_name *
_output_shapes
:*
	elem_type0
О
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/BroadcastGradientArgs/EnterEntergradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context*
T0*
is_constant(
…
Еgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/BroadcastGradientArgs/StackPushV2StackPushV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/BroadcastGradientArgs/Enterigradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/Shape^gradients/Add*
T0*
_output_shapes
:*
swap_memory( 
Ё
Дgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/BroadcastGradientArgs/StackPopV2
StackPopV2Кgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
§
Кgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/BroadcastGradientArgs/StackPopV2/EnterEntergradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context
Ю
ggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/SumSumsgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_3_grad/SigmoidGradygradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
¶
kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/ReshapeReshapeggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/SumДgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
Ґ
igradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/Sum_1Sumsgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_3_grad/SigmoidGrad{gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
€
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/Reshape_1Reshapeigradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/Sum_1kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0
Џ
tgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/tuple/group_depsNoOpl^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/Reshapen^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/Reshape_1
Ю
|gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/tuple/control_dependencyIdentitykgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/Reshapeu^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/tuple/group_deps*
T0*~
_classt
rploc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/Reshape*'
_output_shapes
:€€€€€€€€€
Ф
~gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/tuple/control_dependency_1Identitymgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/Reshape_1u^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/tuple/group_deps*
T0*А
_classv
trloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/Reshape_1*
_output_shapes
: 
К
lgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_1_grad/concatConcatV2sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_4_grad/SigmoidGradmgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu_2_grad/ReluGrad|gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/tuple/control_dependencysgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_5_grad/SigmoidGradrgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_1_grad/concat/Const*
T0*
N*'
_output_shapes
:€€€€€€€€€ *

Tidx0
ƒ
rgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_1_grad/concat/ConstConst^gradients/Sub*
value	B :*
dtype0*
_output_shapes
: 
ђ
sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_1_grad/BiasAddGradBiasAddGradlgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_1_grad/concat*
T0*
data_formatNHWC*
_output_shapes
: 
е
xgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_1_grad/tuple/group_depsNoOpt^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_1_grad/BiasAddGradm^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_1_grad/concat
©
Аgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_1_grad/tuple/control_dependencyIdentitylgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_1_grad/concaty^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_1_grad/tuple/group_deps*
T0*
_classu
sqloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_1_grad/concat*'
_output_shapes
:€€€€€€€€€ 
≠
Вgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_1_grad/tuple/control_dependency_1Identitysgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_1_grad/BiasAddGrady^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_1_grad/tuple/group_deps*
T0*Ж
_class|
zxloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_1_grad/BiasAddGrad*
_output_shapes
: 
«
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_1_grad/MatMulMatMulАgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_1_grad/tuple/control_dependencysgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_2_grad/MatMul/Enter*
T0*'
_output_shapes
:€€€€€€€€€*
transpose_a( *
transpose_b(
«
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_1_grad/MatMul_1MatMulzgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_1_grad/MatMul_1/StackPopV2Аgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_1_grad/tuple/control_dependency*
T0*
_output_shapes

: *
transpose_a(*
transpose_b( 
ђ
ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_1_grad/MatMul_1/ConstConst*
valueB :
€€€€€€€€€*j
_class`
^\loc:@sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1*
dtype0*
_output_shapes
: 
Ґ
ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_1_grad/MatMul_1/f_accStackV2ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_1_grad/MatMul_1/Const*
	elem_type0*j
_class`
^\loc:@sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1*

stack_name *
_output_shapes
:
ъ
ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_1_grad/MatMul_1/EnterEnterugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_1_grad/MatMul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context
ѓ
{gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_1_grad/MatMul_1/StackPushV2StackPushV2ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_1_grad/MatMul_1/EnterWsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1^gradients/Add*
T0*'
_output_shapes
:€€€€€€€€€*
swap_memory( 
’
zgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_1_grad/MatMul_1/StackPopV2
StackPopV2Аgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_1_grad/MatMul_1/StackPopV2/Enter^gradients/Sub*'
_output_shapes
:€€€€€€€€€*
	elem_type0
Р
Аgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_1_grad/MatMul_1/StackPopV2/EnterEnterugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_1_grad/MatMul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context
б
wgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_1_grad/tuple/group_depsNoOpn^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_1_grad/MatMulp^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_1_grad/MatMul_1
©
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_1_grad/tuple/control_dependencyIdentitymgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_1_grad/MatMulx^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_1_grad/tuple/group_deps*
T0*А
_classv
trloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_1_grad/MatMul*'
_output_shapes
:€€€€€€€€€
І
Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_1_grad/tuple/control_dependency_1Identityogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_1_grad/MatMul_1x^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_1_grad/tuple/group_deps*
T0*В
_classx
vtloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_1_grad/MatMul_1*
_output_shapes

: 
Њ
lgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ConstConst^gradients/Sub*
value	B :*
dtype0*
_output_shapes
: 
љ
kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/RankConst^gradients/Sub*
dtype0*
_output_shapes
: *
value	B :
т
jgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/modFloorModlgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/Constkgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/Rank*
_output_shapes
: *
T0
А
lgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ShapeShapeTsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2*
T0*
out_type0*
_output_shapes
:
±
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ShapeNShapeNxgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ShapeN/StackPopV2zgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ShapeN/StackPopV2_1*
N* 
_output_shapes
::*
T0*
out_type0
І
sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ShapeN/ConstConst*
dtype0*
_output_shapes
: *
valueB :
€€€€€€€€€*g
_class]
[Yloc:@sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2
Ы
sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ShapeN/f_accStackV2sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ShapeN/Const*
	elem_type0*g
_class]
[Yloc:@sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2*

stack_name *
_output_shapes
:
ц
sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ShapeN/EnterEntersgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ShapeN/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context
®
ygradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ShapeN/StackPushV2StackPushV2sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ShapeN/EnterTsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2^gradients/Add*'
_output_shapes
:€€€€€€€€€*
swap_memory( *
T0
–
xgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ShapeN/StackPopV2
StackPopV2~gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ShapeN/StackPopV2/Enter^gradients/Sub*
	elem_type0*'
_output_shapes
:€€€€€€€€€
Л
~gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ShapeN/StackPopV2/EnterEntersgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ShapeN/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context
т
ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ShapeN/Const_1Const*
valueB :
€€€€€€€€€*0
_class&
$"loc:@sec_lstm/rnn/while/Identity_6*
dtype0*
_output_shapes
: 
и
ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ShapeN/f_acc_1StackV2ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ShapeN/Const_1*
	elem_type0*0
_class&
$"loc:@sec_lstm/rnn/while/Identity_6*

stack_name *
_output_shapes
:
ъ
ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ShapeN/Enter_1Enterugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ShapeN/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context
х
{gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ShapeN/StackPushV2_1StackPushV2ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ShapeN/Enter_1sec_lstm/rnn/while/Identity_6^gradients/Add*'
_output_shapes
:€€€€€€€€€*
swap_memory( *
T0
’
zgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ShapeN/StackPopV2_1
StackPopV2Аgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ShapeN/StackPopV2_1/Enter^gradients/Sub*'
_output_shapes
:€€€€€€€€€*
	elem_type0
Р
Аgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ShapeN/StackPopV2_1/EnterEnterugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ShapeN/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context
ъ
sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ConcatOffsetConcatOffsetjgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/modmgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ShapeNogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ShapeN:1*
N* 
_output_shapes
::
Щ
lgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/SliceSlicegradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_1_grad/tuple/control_dependencysgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ConcatOffsetmgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ShapeN*
Index0*
T0*'
_output_shapes
:€€€€€€€€€
Я
ngradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/Slice_1Slicegradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_1_grad/tuple/control_dependencyugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ConcatOffset:1ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ShapeN:1*
Index0*
T0*'
_output_shapes
:€€€€€€€€€
я
wgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/tuple/group_depsNoOpm^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/Sliceo^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/Slice_1
¶
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/tuple/control_dependencyIdentitylgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/Slicex^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/tuple/group_deps*
T0*
_classu
sqloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/Slice*'
_output_shapes
:€€€€€€€€€
Ѓ
Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/tuple/control_dependency_1Identityngradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/Slice_1x^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/tuple/group_deps*
T0*Б
_classw
usloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/Slice_1*'
_output_shapes
:€€€€€€€€€
в
gradients/AddN_3AddNDgradients/sec_lstm/rnn/while/Merge_4_grad/tuple/control_dependency_1gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/tuple/control_dependency*
N*'
_output_shapes
:€€€€€€€€€*
T0*F
_class<
:8loc:@gradients/sec_lstm/rnn/while/Switch_4_grad/b_switch
ю
igradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/ShapeShapeUsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu_1*
T0*
out_type0*
_output_shapes
:
Г
kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Shape_1ShapeXsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_2*
T0*
out_type0*
_output_shapes
:
я
ygradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgsДgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2Жgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
»
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/ConstConst*
valueB :
€€€€€€€€€*|
_classr
pnloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Shape*
dtype0*
_output_shapes
: 
»
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/f_accStackV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/Const*|
_classr
pnloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Shape*

stack_name *
_output_shapes
:*
	elem_type0
О
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/EnterEntergradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context
…
Еgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPushV2StackPushV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/Enterigradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Shape^gradients/Add*
T0*
_output_shapes
:*
swap_memory( 
Ё
Дgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2
StackPopV2Кgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
§
Кgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2/EnterEntergradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context
Ќ
Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/Const_1Const*
dtype0*
_output_shapes
: *
valueB :
€€€€€€€€€*~
_classt
rploc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Shape_1
–
Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc_1StackV2Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/Const_1*

stack_name *
_output_shapes
:*
	elem_type0*~
_classt
rploc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Shape_1
Ф
Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/Enter_1EnterБgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc_1*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context*
T0*
is_constant(
–
Зgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/Enter_1kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Shape_1^gradients/Add*
T0*
_output_shapes
:*
swap_memory( 
б
Жgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2Мgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
©
Мgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterБgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context
¶
ggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/MulMulgradients/AddN_3rgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Mul/StackPopV2*
T0*'
_output_shapes
:€€€€€€€€€
•
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Mul/ConstConst*
valueB :
€€€€€€€€€*k
_classa
_]loc:@sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_2*
dtype0*
_output_shapes
: 
У
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Mul/f_accStackV2mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Mul/Const*

stack_name *
_output_shapes
:*
	elem_type0*k
_classa
_]loc:@sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_2
к
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Mul/EnterEntermgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Mul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context
†
sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Mul/StackPushV2StackPushV2mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Mul/EnterXsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_2^gradients/Add*
T0*'
_output_shapes
:€€€€€€€€€*
swap_memory( 
ƒ
rgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Mul/StackPopV2
StackPopV2xgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Mul/StackPopV2/Enter^gradients/Sub*'
_output_shapes
:€€€€€€€€€*
	elem_type0
€
xgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Mul/StackPopV2/EnterEntermgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Mul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context
Т
ggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/SumSumggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Mulygradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
¶
kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/ReshapeReshapeggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/SumДgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
™
igradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Mul_1Multgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Mul_1/StackPopV2gradients/AddN_3*'
_output_shapes
:€€€€€€€€€*
T0
§
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Mul_1/ConstConst*
dtype0*
_output_shapes
: *
valueB :
€€€€€€€€€*h
_class^
\Zloc:@sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu_1
Ф
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Mul_1/f_accStackV2ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Mul_1/Const*h
_class^
\Zloc:@sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu_1*

stack_name *
_output_shapes
:*
	elem_type0
о
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Mul_1/EnterEnterogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context
°
ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Mul_1/StackPushV2StackPushV2ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Mul_1/EnterUsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu_1^gradients/Add*'
_output_shapes
:€€€€€€€€€*
swap_memory( *
T0
»
tgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Mul_1/StackPopV2
StackPopV2zgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Mul_1/StackPopV2/Enter^gradients/Sub*'
_output_shapes
:€€€€€€€€€*
	elem_type0
Г
zgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Mul_1/StackPopV2/EnterEnterogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context
Ш
igradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Sum_1Sumigradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Mul_1{gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
ђ
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Reshape_1Reshapeigradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Sum_1Жgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1*'
_output_shapes
:€€€€€€€€€*
T0*
Tshape0
Џ
tgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/tuple/group_depsNoOpl^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Reshapen^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Reshape_1
Ю
|gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/tuple/control_dependencyIdentitykgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Reshapeu^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/tuple/group_deps*'
_output_shapes
:€€€€€€€€€*
T0*~
_classt
rploc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Reshape
•
~gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/tuple/control_dependency_1Identitymgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Reshape_1u^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/tuple/group_deps*
T0*А
_classv
trloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Reshape_1*'
_output_shapes
:€€€€€€€€€
Я
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu_1_grad/ReluGradReluGrad|gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/tuple/control_dependencytgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Mul_1/StackPopV2*
T0*'
_output_shapes
:€€€€€€€€€
®
sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_2_grad/SigmoidGradSigmoidGradrgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Mul/StackPopV2~gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/tuple/control_dependency_1*
T0*'
_output_shapes
:€€€€€€€€€
Б
:gradients/sec_lstm/rnn/while/Switch_6_grad_1/NextIterationNextIterationБgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/tuple/control_dependency_1*
T0*'
_output_shapes
:€€€€€€€€€
–
gradients/AddN_4AddNDgradients/sec_lstm/rnn/while/Merge_3_grad/tuple/control_dependency_1mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu_1_grad/ReluGrad*
T0*F
_class<
:8loc:@gradients/sec_lstm/rnn/while/Switch_3_grad/b_switch*
N*'
_output_shapes
:€€€€€€€€€
ы
igradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/ShapeShapeRsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul*
T0*
out_type0*
_output_shapes
:
€
kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/Shape_1ShapeTsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1*
T0*
out_type0*
_output_shapes
:
я
ygradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/BroadcastGradientArgsBroadcastGradientArgsДgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2Жgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
»
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/BroadcastGradientArgs/ConstConst*
valueB :
€€€€€€€€€*|
_classr
pnloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/Shape*
dtype0*
_output_shapes
: 
»
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/BroadcastGradientArgs/f_accStackV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/BroadcastGradientArgs/Const*

stack_name *
_output_shapes
:*
	elem_type0*|
_classr
pnloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/Shape
О
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/BroadcastGradientArgs/EnterEntergradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context
…
Еgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/BroadcastGradientArgs/StackPushV2StackPushV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/BroadcastGradientArgs/Enterigradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/Shape^gradients/Add*
T0*
_output_shapes
:*
swap_memory( 
Ё
Дgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2
StackPopV2Кgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
§
Кgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2/EnterEntergradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context
Ќ
Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/BroadcastGradientArgs/Const_1Const*
valueB :
€€€€€€€€€*~
_classt
rploc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/Shape_1*
dtype0*
_output_shapes
: 
–
Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/BroadcastGradientArgs/f_acc_1StackV2Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/BroadcastGradientArgs/Const_1*

stack_name *
_output_shapes
:*
	elem_type0*~
_classt
rploc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/Shape_1
Ф
Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/BroadcastGradientArgs/Enter_1EnterБgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/BroadcastGradientArgs/f_acc_1*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context*
T0*
is_constant(
–
Зgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/BroadcastGradientArgs/Enter_1kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/Shape_1^gradients/Add*
T0*
_output_shapes
:*
swap_memory( 
б
Жgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2Мgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
©
Мgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterБgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context
ї
ggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/SumSumgradients/AddN_4ygradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
¶
kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/ReshapeReshapeggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/SumДgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2*'
_output_shapes
:€€€€€€€€€*
T0*
Tshape0
њ
igradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/Sum_1Sumgradients/AddN_4{gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
ђ
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/Reshape_1Reshapeigradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/Sum_1Жgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2_1*'
_output_shapes
:€€€€€€€€€*
T0*
Tshape0
Џ
tgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/tuple/group_depsNoOpl^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/Reshapen^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/Reshape_1
Ю
|gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/tuple/control_dependencyIdentitykgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/Reshapeu^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/tuple/group_deps*
T0*~
_classt
rploc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/Reshape*'
_output_shapes
:€€€€€€€€€
•
~gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/tuple/control_dependency_1Identitymgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/Reshape_1u^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/tuple/group_deps*'
_output_shapes
:€€€€€€€€€*
T0*А
_classv
trloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/Reshape_1
ƒ
ggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/ShapeShapesec_lstm/rnn/while/Identity_3*
_output_shapes
:*
T0*
out_type0
€
igradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Shape_1ShapeVsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid*
_output_shapes
:*
T0*
out_type0
ў
wgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/BroadcastGradientArgsBroadcastGradientArgsВgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2Дgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
ƒ
}gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/BroadcastGradientArgs/ConstConst*
valueB :
€€€€€€€€€*z
_classp
nlloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Shape*
dtype0*
_output_shapes
: 
¬
}gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/BroadcastGradientArgs/f_accStackV2}gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/BroadcastGradientArgs/Const*z
_classp
nlloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Shape*

stack_name *
_output_shapes
:*
	elem_type0
К
}gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/BroadcastGradientArgs/EnterEnter}gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context
√
Гgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/BroadcastGradientArgs/StackPushV2StackPushV2}gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/BroadcastGradientArgs/Enterggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Shape^gradients/Add*
T0*
_output_shapes
:*
swap_memory( 
ў
Вgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2
StackPopV2Иgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
	elem_type0*
_output_shapes
:
†
Иgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2/EnterEnter}gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context
»
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/BroadcastGradientArgs/Const_1Const*
valueB :
€€€€€€€€€*|
_classr
pnloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Shape_1*
dtype0*
_output_shapes
: 
»
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/BroadcastGradientArgs/f_acc_1StackV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/BroadcastGradientArgs/Const_1*
	elem_type0*|
_classr
pnloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Shape_1*

stack_name *
_output_shapes
:
О
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/BroadcastGradientArgs/Enter_1Entergradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/BroadcastGradientArgs/f_acc_1*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context*
T0*
is_constant(
…
Еgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/BroadcastGradientArgs/Enter_1igradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Shape_1^gradients/Add*
T0*
_output_shapes
:*
swap_memory( 
Ё
Дgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2Кgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*
	elem_type0*
_output_shapes
:
§
Кgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1/EnterEntergradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context
О
egradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/MulMul|gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/tuple/control_dependencypgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Mul/StackPopV2*
T0*'
_output_shapes
:€€€€€€€€€
°
kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Mul/ConstConst*
dtype0*
_output_shapes
: *
valueB :
€€€€€€€€€*i
_class_
][loc:@sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid
Н
kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Mul/f_accStackV2kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Mul/Const*
	elem_type0*i
_class_
][loc:@sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid*

stack_name *
_output_shapes
:
ж
kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Mul/EnterEnterkgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Mul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context
Ъ
qgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Mul/StackPushV2StackPushV2kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Mul/EnterVsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid^gradients/Add*
T0*'
_output_shapes
:€€€€€€€€€*
swap_memory( 
ј
pgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Mul/StackPopV2
StackPopV2vgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Mul/StackPopV2/Enter^gradients/Sub*'
_output_shapes
:€€€€€€€€€*
	elem_type0
ы
vgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Mul/StackPopV2/EnterEnterkgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Mul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context
М
egradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/SumSumegradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Mulwgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
†
igradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/ReshapeReshapeegradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/SumВgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2*'
_output_shapes
:€€€€€€€€€*
T0*
Tshape0
Т
ggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Mul_1Mulrgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Mul_1/StackPopV2|gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/tuple/control_dependency*
T0*'
_output_shapes
:€€€€€€€€€
к
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Mul_1/ConstConst*
valueB :
€€€€€€€€€*0
_class&
$"loc:@sec_lstm/rnn/while/Identity_3*
dtype0*
_output_shapes
: 
Ў
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Mul_1/f_accStackV2mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Mul_1/Const*0
_class&
$"loc:@sec_lstm/rnn/while/Identity_3*

stack_name *
_output_shapes
:*
	elem_type0
к
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Mul_1/EnterEntermgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Mul_1/f_acc*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context*
T0*
is_constant(
е
sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Mul_1/StackPushV2StackPushV2mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Mul_1/Entersec_lstm/rnn/while/Identity_3^gradients/Add*'
_output_shapes
:€€€€€€€€€*
swap_memory( *
T0
ƒ
rgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Mul_1/StackPopV2
StackPopV2xgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Mul_1/StackPopV2/Enter^gradients/Sub*
	elem_type0*'
_output_shapes
:€€€€€€€€€
€
xgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Mul_1/StackPopV2/EnterEntermgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Mul_1/f_acc*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context*
T0*
is_constant(
Т
ggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Sum_1Sumggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Mul_1ygradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
¶
kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Reshape_1Reshapeggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Sum_1Дgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1*'
_output_shapes
:€€€€€€€€€*
T0*
Tshape0
‘
rgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/tuple/group_depsNoOpj^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Reshapel^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Reshape_1
Ц
zgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/tuple/control_dependencyIdentityigradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Reshapes^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/tuple/group_deps*
T0*|
_classr
pnloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Reshape*'
_output_shapes
:€€€€€€€€€
Ь
|gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/tuple/control_dependency_1Identitykgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Reshape_1s^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/tuple/group_deps*
T0*~
_classt
rploc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Reshape_1*'
_output_shapes
:€€€€€€€€€
Б
igradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/ShapeShapeXsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_1*
_output_shapes
:*
T0*
out_type0
ю
kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Shape_1ShapeSsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu*
T0*
out_type0*
_output_shapes
:
я
ygradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsДgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2Жgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
»
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/ConstConst*
valueB :
€€€€€€€€€*|
_classr
pnloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Shape*
dtype0*
_output_shapes
: 
»
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/f_accStackV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/Const*
	elem_type0*|
_classr
pnloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Shape*

stack_name *
_output_shapes
:
О
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/EnterEntergradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context*
T0*
is_constant(
…
Еgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPushV2StackPushV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/Enterigradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Shape^gradients/Add*
_output_shapes
:*
swap_memory( *
T0
Ё
Дgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2
StackPopV2Кgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
§
Кgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2/EnterEntergradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context
Ќ
Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/Const_1Const*
dtype0*
_output_shapes
: *
valueB :
€€€€€€€€€*~
_classt
rploc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Shape_1
–
Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/f_acc_1StackV2Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/Const_1*~
_classt
rploc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Shape_1*

stack_name *
_output_shapes
:*
	elem_type0
Ф
Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/Enter_1EnterБgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context
–
Зgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/Enter_1kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Shape_1^gradients/Add*
T0*
_output_shapes
:*
swap_memory( 
б
Жgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2Мgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*
	elem_type0*
_output_shapes
:
©
Мgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterБgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context
Ф
ggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/MulMul~gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/tuple/control_dependency_1rgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Mul/StackPopV2*
T0*'
_output_shapes
:€€€€€€€€€
†
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Mul/ConstConst*
valueB :
€€€€€€€€€*f
_class\
ZXloc:@sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu*
dtype0*
_output_shapes
: 
О
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Mul/f_accStackV2mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Mul/Const*f
_class\
ZXloc:@sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu*

stack_name *
_output_shapes
:*
	elem_type0
к
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Mul/EnterEntermgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Mul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context
Ы
sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Mul/StackPushV2StackPushV2mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Mul/EnterSsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu^gradients/Add*
T0*'
_output_shapes
:€€€€€€€€€*
swap_memory( 
ƒ
rgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Mul/StackPopV2
StackPopV2xgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Mul/StackPopV2/Enter^gradients/Sub*'
_output_shapes
:€€€€€€€€€*
	elem_type0
€
xgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Mul/StackPopV2/EnterEntermgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Mul/f_acc*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context*
T0*
is_constant(
Т
ggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/SumSumggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Mulygradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
¶
kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/ReshapeReshapeggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/SumДgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
Ш
igradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Mul_1Multgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Mul_1/StackPopV2~gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/tuple/control_dependency_1*
T0*'
_output_shapes
:€€€€€€€€€
І
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Mul_1/ConstConst*
dtype0*
_output_shapes
: *
valueB :
€€€€€€€€€*k
_classa
_]loc:@sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_1
Ч
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Mul_1/f_accStackV2ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Mul_1/Const*

stack_name *
_output_shapes
:*
	elem_type0*k
_classa
_]loc:@sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_1
о
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Mul_1/EnterEnterogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context
§
ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Mul_1/StackPushV2StackPushV2ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Mul_1/EnterXsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_1^gradients/Add*
T0*'
_output_shapes
:€€€€€€€€€*
swap_memory( 
»
tgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Mul_1/StackPopV2
StackPopV2zgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Mul_1/StackPopV2/Enter^gradients/Sub*'
_output_shapes
:€€€€€€€€€*
	elem_type0
Г
zgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Mul_1/StackPopV2/EnterEnterogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context
Ш
igradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Sum_1Sumigradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Mul_1{gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
ђ
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Reshape_1Reshapeigradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Sum_1Жgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
Џ
tgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/tuple/group_depsNoOpl^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Reshapen^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Reshape_1
Ю
|gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/tuple/control_dependencyIdentitykgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Reshapeu^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/tuple/group_deps*
T0*~
_classt
rploc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Reshape*'
_output_shapes
:€€€€€€€€€
•
~gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/tuple/control_dependency_1Identitymgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Reshape_1u^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/tuple/group_deps*
T0*А
_classv
trloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Reshape_1*'
_output_shapes
:€€€€€€€€€
Ґ
qgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_grad/SigmoidGradSigmoidGradpgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Mul/StackPopV2|gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/tuple/control_dependency_1*
T0*'
_output_shapes
:€€€€€€€€€
®
sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_1_grad/SigmoidGradSigmoidGradtgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Mul_1/StackPopV2|gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/tuple/control_dependency*
T0*'
_output_shapes
:€€€€€€€€€
Э
kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu_grad/ReluGradReluGrad~gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/tuple/control_dependency_1rgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Mul/StackPopV2*
T0*'
_output_shapes
:€€€€€€€€€
щ
:gradients/sec_lstm/rnn/while/Switch_3_grad_1/NextIterationNextIterationzgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/tuple/control_dependency*
T0*'
_output_shapes
:€€€€€€€€€
э
ggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/ShapeShapeVsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split:2*
T0*
out_type0*
_output_shapes
:
Љ
igradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/Shape_1Const^gradients/Sub*
valueB *
dtype0*
_output_shapes
: 
љ
wgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/BroadcastGradientArgsBroadcastGradientArgsВgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/BroadcastGradientArgs/StackPopV2igradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/Shape_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0
ƒ
}gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/BroadcastGradientArgs/ConstConst*
valueB :
€€€€€€€€€*z
_classp
nlloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/Shape*
dtype0*
_output_shapes
: 
¬
}gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/BroadcastGradientArgs/f_accStackV2}gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/BroadcastGradientArgs/Const*z
_classp
nlloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/Shape*

stack_name *
_output_shapes
:*
	elem_type0
К
}gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/BroadcastGradientArgs/EnterEnter}gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context*
T0*
is_constant(
√
Гgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/BroadcastGradientArgs/StackPushV2StackPushV2}gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/BroadcastGradientArgs/Enterggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/Shape^gradients/Add*
T0*
_output_shapes
:*
swap_memory( 
ў
Вgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/BroadcastGradientArgs/StackPopV2
StackPopV2Иgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
†
Иgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/BroadcastGradientArgs/StackPopV2/EnterEnter}gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context
Ш
egradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/SumSumqgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_grad/SigmoidGradwgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
†
igradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/ReshapeReshapeegradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/SumВgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/BroadcastGradientArgs/StackPopV2*'
_output_shapes
:€€€€€€€€€*
T0*
Tshape0
Ь
ggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/Sum_1Sumqgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_grad/SigmoidGradygradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
щ
kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/Reshape_1Reshapeggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/Sum_1igradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0
‘
rgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/tuple/group_depsNoOpj^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/Reshapel^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/Reshape_1
Ц
zgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/tuple/control_dependencyIdentityigradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/Reshapes^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/tuple/group_deps*
T0*|
_classr
pnloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/Reshape*'
_output_shapes
:€€€€€€€€€
Л
|gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/tuple/control_dependency_1Identitykgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/Reshape_1s^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/tuple/group_deps*
T0*~
_classt
rploc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/Reshape_1*
_output_shapes
: 
В
jgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_grad/concatConcatV2sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_1_grad/SigmoidGradkgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu_grad/ReluGradzgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/tuple/control_dependencysgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_2_grad/SigmoidGradpgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_grad/concat/Const*
T0*
N*'
_output_shapes
:€€€€€€€€€ *

Tidx0
¬
pgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_grad/concat/ConstConst^gradients/Sub*
value	B :*
dtype0*
_output_shapes
: 
®
qgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_grad/BiasAddGradBiasAddGradjgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_grad/concat*
T0*
data_formatNHWC*
_output_shapes
: 
я
vgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_grad/tuple/group_depsNoOpr^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_grad/BiasAddGradk^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_grad/concat
†
~gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_grad/tuple/control_dependencyIdentityjgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_grad/concatw^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_grad/tuple/group_deps*
T0*}
_classs
qoloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_grad/concat*'
_output_shapes
:€€€€€€€€€ 
•
Аgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_grad/tuple/control_dependency_1Identityqgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_grad/BiasAddGradw^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_grad/tuple/group_deps*
T0*Д
_classz
xvloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_grad/BiasAddGrad*
_output_shapes
: 
¬
kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_grad/MatMulMatMul~gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_grad/tuple/control_dependencysgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_2_grad/MatMul/Enter*'
_output_shapes
:€€€€€€€€€*
transpose_a( *
transpose_b(*
T0
ј
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_grad/MatMul_1MatMulxgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_grad/MatMul_1/StackPopV2~gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_grad/tuple/control_dependency*
T0*
_output_shapes

: *
transpose_a(*
transpose_b( 
®
sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_grad/MatMul_1/ConstConst*
dtype0*
_output_shapes
: *
valueB :
€€€€€€€€€*h
_class^
\Zloc:@sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat
Ь
sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_grad/MatMul_1/f_accStackV2sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_grad/MatMul_1/Const*h
_class^
\Zloc:@sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat*

stack_name *
_output_shapes
:*
	elem_type0
ц
sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_grad/MatMul_1/EnterEntersgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_grad/MatMul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context
©
ygradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_grad/MatMul_1/StackPushV2StackPushV2sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_grad/MatMul_1/EnterUsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat^gradients/Add*
T0*'
_output_shapes
:€€€€€€€€€*
swap_memory( 
–
xgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_grad/MatMul_1/StackPopV2
StackPopV2~gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_grad/MatMul_1/StackPopV2/Enter^gradients/Sub*'
_output_shapes
:€€€€€€€€€*
	elem_type0
Л
~gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_grad/MatMul_1/StackPopV2/EnterEntersgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_grad/MatMul_1/f_acc*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context*
T0*
is_constant(
џ
ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_grad/tuple/group_depsNoOpl^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_grad/MatMuln^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_grad/MatMul_1
†
}gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_grad/tuple/control_dependencyIdentitykgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_grad/MatMulv^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_grad/tuple/group_deps*
T0*~
_classt
rploc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_grad/MatMul*'
_output_shapes
:€€€€€€€€€
Ю
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_grad/tuple/control_dependency_1Identitymgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_grad/MatMul_1v^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_grad/tuple/group_deps*
_output_shapes

: *
T0*А
_classv
trloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_grad/MatMul_1
№
gradients/AddN_5AddNВgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_2_grad/tuple/control_dependency_1Вgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_1_grad/tuple/control_dependency_1Аgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_grad/tuple/control_dependency_1*
T0*Ж
_class|
zxloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_2_grad/BiasAddGrad*
N*
_output_shapes
: 
Њ
qgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd/Enter_grad/b_accConst*
valueB *    *
dtype0*
_output_shapes
: 
ю
sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd/Enter_grad/b_acc_1Enterqgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd/Enter_grad/b_acc*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *:

frame_name,*gradients/sec_lstm/rnn/while/while_context
Ь
sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd/Enter_grad/b_acc_2Mergesgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd/Enter_grad/b_acc_1ygradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd/Enter_grad/NextIteration*
N*
_output_shapes

: : *
T0
±
rgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd/Enter_grad/SwitchSwitchsgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd/Enter_grad/b_acc_2gradients/b_count_2*
T0* 
_output_shapes
: : 
£
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd/Enter_grad/AddAddtgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd/Enter_grad/Switch:1gradients/AddN_5*
T0*
_output_shapes
: 
†
ygradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd/Enter_grad/NextIterationNextIterationogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd/Enter_grad/Add*
_output_shapes
: *
T0
Ф
sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd/Enter_grad/b_acc_3Exitrgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd/Enter_grad/Switch*
_output_shapes
: *
T0
Љ
jgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ConstConst^gradients/Sub*
value	B :*
dtype0*
_output_shapes
: 
ї
igradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/RankConst^gradients/Sub*
value	B :*
dtype0*
_output_shapes
: 
м
hgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/modFloorModjgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/Constigradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/Rank*
T0*
_output_shapes
: 
ќ
jgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ShapeShape$sec_lstm/rnn/while/TensorArrayReadV3*
T0*
out_type0*
_output_shapes
:
Ђ
kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ShapeNShapeNvgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ShapeN/StackPopV2xgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ShapeN/StackPopV2_1*
T0*
out_type0*
N* 
_output_shapes
::
х
qgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ShapeN/ConstConst*
dtype0*
_output_shapes
: *
valueB :
€€€€€€€€€*7
_class-
+)loc:@sec_lstm/rnn/while/TensorArrayReadV3
з
qgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ShapeN/f_accStackV2qgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ShapeN/Const*

stack_name *
_output_shapes
:*
	elem_type0*7
_class-
+)loc:@sec_lstm/rnn/while/TensorArrayReadV3
т
qgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ShapeN/EnterEnterqgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ShapeN/f_acc*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context*
T0*
is_constant(
ф
wgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ShapeN/StackPushV2StackPushV2qgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ShapeN/Enter$sec_lstm/rnn/while/TensorArrayReadV3^gradients/Add*
T0*'
_output_shapes
:€€€€€€€€€*
swap_memory( 
ћ
vgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ShapeN/StackPopV2
StackPopV2|gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ShapeN/StackPopV2/Enter^gradients/Sub*
	elem_type0*'
_output_shapes
:€€€€€€€€€
З
|gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ShapeN/StackPopV2/EnterEnterqgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ShapeN/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context
р
sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ShapeN/Const_1Const*
valueB :
€€€€€€€€€*0
_class&
$"loc:@sec_lstm/rnn/while/Identity_4*
dtype0*
_output_shapes
: 
д
sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ShapeN/f_acc_1StackV2sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ShapeN/Const_1*0
_class&
$"loc:@sec_lstm/rnn/while/Identity_4*

stack_name *
_output_shapes
:*
	elem_type0
ц
sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ShapeN/Enter_1Entersgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ShapeN/f_acc_1*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context*
T0*
is_constant(
с
ygradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ShapeN/StackPushV2_1StackPushV2sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ShapeN/Enter_1sec_lstm/rnn/while/Identity_4^gradients/Add*'
_output_shapes
:€€€€€€€€€*
swap_memory( *
T0
–
xgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ShapeN/StackPopV2_1
StackPopV2~gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ShapeN/StackPopV2_1/Enter^gradients/Sub*'
_output_shapes
:€€€€€€€€€*
	elem_type0
Л
~gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ShapeN/StackPopV2_1/EnterEntersgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ShapeN/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context
т
qgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ConcatOffsetConcatOffsethgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/modkgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ShapeNmgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ShapeN:1*
N* 
_output_shapes
::
С
jgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/SliceSlice}gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_grad/tuple/control_dependencyqgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ConcatOffsetkgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ShapeN*
Index0*
T0*'
_output_shapes
:€€€€€€€€€
Ч
lgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/Slice_1Slice}gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_grad/tuple/control_dependencysgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ConcatOffset:1mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ShapeN:1*
Index0*
T0*'
_output_shapes
:€€€€€€€€€
ў
ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/tuple/group_depsNoOpk^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/Slicem^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/Slice_1
Ю
}gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/tuple/control_dependencyIdentityjgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/Slicev^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/tuple/group_deps*
T0*}
_classs
qoloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/Slice*'
_output_shapes
:€€€€€€€€€
§
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/tuple/control_dependency_1Identitylgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/Slice_1v^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/tuple/group_deps*
T0*
_classu
sqloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/Slice_1*'
_output_shapes
:€€€€€€€€€
Ў
gradients/AddN_6AddNБgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_2_grad/tuple/control_dependency_1Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_1_grad/tuple/control_dependency_1gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_grad/tuple/control_dependency_1*
T0*В
_classx
vtloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_2_grad/MatMul_1*
N*
_output_shapes

: 
≈
pgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul/Enter_grad/b_accConst*
valueB *    *
dtype0*
_output_shapes

: 
А
rgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul/Enter_grad/b_acc_1Enterpgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul/Enter_grad/b_acc*
T0*
is_constant( *
parallel_iterations *
_output_shapes

: *:

frame_name,*gradients/sec_lstm/rnn/while/while_context
Э
rgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul/Enter_grad/b_acc_2Mergergradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul/Enter_grad/b_acc_1xgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul/Enter_grad/NextIteration*
T0*
N* 
_output_shapes
: : 
Ј
qgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul/Enter_grad/SwitchSwitchrgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul/Enter_grad/b_acc_2gradients/b_count_2*(
_output_shapes
: : *
T0
•
ngradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul/Enter_grad/AddAddsgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul/Enter_grad/Switch:1gradients/AddN_6*
T0*
_output_shapes

: 
Ґ
xgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul/Enter_grad/NextIterationNextIterationngradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul/Enter_grad/Add*
T0*
_output_shapes

: 
Ц
rgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul/Enter_grad/b_acc_3Exitqgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul/Enter_grad/Switch*
T0*
_output_shapes

: 
™
Ugradients/sec_lstm/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3[gradients/sec_lstm/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter]gradients/sec_lstm/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1^gradients/Sub*
source	gradients*=
_class3
1/loc:@sec_lstm/rnn/while/TensorArrayReadV3/Enter*
_output_shapes

:: 
ќ
[gradients/sec_lstm/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/EnterEntersec_lstm/rnn/TensorArray_1*
is_constant(*
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context*
T0*=
_class3
1/loc:@sec_lstm/rnn/while/TensorArrayReadV3/Enter*
parallel_iterations 
щ
]gradients/sec_lstm/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1EnterGsec_lstm/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
is_constant(*
_output_shapes
: *:

frame_name,*gradients/sec_lstm/rnn/while/while_context*
T0*=
_class3
1/loc:@sec_lstm/rnn/while/TensorArrayReadV3/Enter*
parallel_iterations 
ф
Qgradients/sec_lstm/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/gradient_flowIdentity]gradients/sec_lstm/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1V^gradients/sec_lstm/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3*
T0*=
_class3
1/loc:@sec_lstm/rnn/while/TensorArrayReadV3/Enter*
_output_shapes
: 
Ы
Wgradients/sec_lstm/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV3Ugradients/sec_lstm/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3bgradients/sec_lstm/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/StackPopV2}gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/tuple/control_dependencyQgradients/sec_lstm/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/gradient_flow*
T0*
_output_shapes
: 
Џ
]gradients/sec_lstm/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/ConstConst*
dtype0*
_output_shapes
: *
valueB :
€€€€€€€€€*0
_class&
$"loc:@sec_lstm/rnn/while/Identity_1
Є
]gradients/sec_lstm/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/f_accStackV2]gradients/sec_lstm/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/Const*0
_class&
$"loc:@sec_lstm/rnn/while/Identity_1*

stack_name *
_output_shapes
:*
	elem_type0
 
]gradients/sec_lstm/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/EnterEnter]gradients/sec_lstm/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context
і
cgradients/sec_lstm/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/StackPushV2StackPushV2]gradients/sec_lstm/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/Entersec_lstm/rnn/while/Identity_1^gradients/Add*
T0*
_output_shapes
: *
swap_memory( 
У
bgradients/sec_lstm/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/StackPopV2
StackPopV2hgradients/sec_lstm/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/StackPopV2/Enter^gradients/Sub*
	elem_type0*
_output_shapes
: 
я
hgradients/sec_lstm/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/StackPopV2/EnterEnter]gradients/sec_lstm/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context
Ж
Agradients/sec_lstm/rnn/while/TensorArrayReadV3/Enter_1_grad/b_accConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ъ
Cgradients/sec_lstm/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_1EnterAgradients/sec_lstm/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *:

frame_name,*gradients/sec_lstm/rnn/while/while_context
И
Cgradients/sec_lstm/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_2MergeCgradients/sec_lstm/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_1Igradients/sec_lstm/rnn/while/TensorArrayReadV3/Enter_1_grad/NextIteration*
T0*
N*
_output_shapes
: : 
…
Bgradients/sec_lstm/rnn/while/TensorArrayReadV3/Enter_1_grad/SwitchSwitchCgradients/sec_lstm/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_2gradients/b_count_2*
T0*
_output_shapes
: : 
Ж
?gradients/sec_lstm/rnn/while/TensorArrayReadV3/Enter_1_grad/AddAddDgradients/sec_lstm/rnn/while/TensorArrayReadV3/Enter_1_grad/Switch:1Wgradients/sec_lstm/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3*
T0*
_output_shapes
: 
Љ
Igradients/sec_lstm/rnn/while/TensorArrayReadV3/Enter_1_grad/NextIterationNextIteration?gradients/sec_lstm/rnn/while/TensorArrayReadV3/Enter_1_grad/Add*
_output_shapes
: *
T0
∞
Cgradients/sec_lstm/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3ExitBgradients/sec_lstm/rnn/while/TensorArrayReadV3/Enter_1_grad/Switch*
_output_shapes
: *
T0
ю
:gradients/sec_lstm/rnn/while/Switch_4_grad_1/NextIterationNextIterationgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/tuple/control_dependency_1*
T0*'
_output_shapes
:€€€€€€€€€
“
xgradients/sec_lstm/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3sec_lstm/rnn/TensorArray_1Cgradients/sec_lstm/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3*
source	gradients*-
_class#
!loc:@sec_lstm/rnn/TensorArray_1*
_output_shapes

:: 
Р
tgradients/sec_lstm/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/gradient_flowIdentityCgradients/sec_lstm/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3y^gradients/sec_lstm/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV3*
T0*-
_class#
!loc:@sec_lstm/rnn/TensorArray_1*
_output_shapes
: 
т
jgradients/sec_lstm/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3TensorArrayGatherV3xgradients/sec_lstm/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV3%sec_lstm/rnn/TensorArrayUnstack/rangetgradients/sec_lstm/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/gradient_flow*
dtype0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
element_shape:
Ґ
ggradients/sec_lstm/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/group_depsNoOpk^gradients/sec_lstm/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3D^gradients/sec_lstm/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3
Ж
ogradients/sec_lstm/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/control_dependencyIdentityjgradients/sec_lstm/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3h^gradients/sec_lstm/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/group_deps*+
_output_shapes
:€€€€€€€€€*
T0*}
_classs
qoloc:@gradients/sec_lstm/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3
•
qgradients/sec_lstm/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/control_dependency_1IdentityCgradients/sec_lstm/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3h^gradients/sec_lstm/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/group_deps*
T0*V
_classL
JHloc:@gradients/sec_lstm/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3*
_output_shapes
: 
Ж
7gradients/sec_lstm/rnn/transpose_grad/InvertPermutationInvertPermutationsec_lstm/rnn/concat*
_output_shapes
:*
T0
©
/gradients/sec_lstm/rnn/transpose_grad/transpose	Transposeogradients/sec_lstm/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/control_dependency7gradients/sec_lstm/rnn/transpose_grad/InvertPermutation*
T0*+
_output_shapes
:€€€€€€€€€*
Tperm0
s
'gradients/sec_lstm/Reshape_1_grad/ShapeShapesec_lstm/add*
T0*
out_type0*
_output_shapes
:
ќ
)gradients/sec_lstm/Reshape_1_grad/ReshapeReshape/gradients/sec_lstm/rnn/transpose_grad/transpose'gradients/sec_lstm/Reshape_1_grad/Shape*'
_output_shapes
:€€€€€€€€€*
T0*
Tshape0
p
!gradients/sec_lstm/add_grad/ShapeShapesec_lstm/MatMul*
T0*
out_type0*
_output_shapes
:
m
#gradients/sec_lstm/add_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB:
ѕ
1gradients/sec_lstm/add_grad/BroadcastGradientArgsBroadcastGradientArgs!gradients/sec_lstm/add_grad/Shape#gradients/sec_lstm/add_grad/Shape_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
ƒ
gradients/sec_lstm/add_grad/SumSum)gradients/sec_lstm/Reshape_1_grad/Reshape1gradients/sec_lstm/add_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
≤
#gradients/sec_lstm/add_grad/ReshapeReshapegradients/sec_lstm/add_grad/Sum!gradients/sec_lstm/add_grad/Shape*'
_output_shapes
:€€€€€€€€€*
T0*
Tshape0
»
!gradients/sec_lstm/add_grad/Sum_1Sum)gradients/sec_lstm/Reshape_1_grad/Reshape3gradients/sec_lstm/add_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
Ђ
%gradients/sec_lstm/add_grad/Reshape_1Reshape!gradients/sec_lstm/add_grad/Sum_1#gradients/sec_lstm/add_grad/Shape_1*
_output_shapes
:*
T0*
Tshape0
В
,gradients/sec_lstm/add_grad/tuple/group_depsNoOp$^gradients/sec_lstm/add_grad/Reshape&^gradients/sec_lstm/add_grad/Reshape_1
ю
4gradients/sec_lstm/add_grad/tuple/control_dependencyIdentity#gradients/sec_lstm/add_grad/Reshape-^gradients/sec_lstm/add_grad/tuple/group_deps*
T0*6
_class,
*(loc:@gradients/sec_lstm/add_grad/Reshape*'
_output_shapes
:€€€€€€€€€
ч
6gradients/sec_lstm/add_grad/tuple/control_dependency_1Identity%gradients/sec_lstm/add_grad/Reshape_1-^gradients/sec_lstm/add_grad/tuple/group_deps*
T0*8
_class.
,*loc:@gradients/sec_lstm/add_grad/Reshape_1*
_output_shapes
:
‘
%gradients/sec_lstm/MatMul_grad/MatMulMatMul4gradients/sec_lstm/add_grad/tuple/control_dependencyself_variable/in/read*
transpose_b(*
T0*'
_output_shapes
:€€€€€€€€€[*
transpose_a( 
»
'gradients/sec_lstm/MatMul_grad/MatMul_1MatMulsec_lstm/Reshape4gradients/sec_lstm/add_grad/tuple/control_dependency*
transpose_b( *
T0*
_output_shapes

:[*
transpose_a(
Й
/gradients/sec_lstm/MatMul_grad/tuple/group_depsNoOp&^gradients/sec_lstm/MatMul_grad/MatMul(^gradients/sec_lstm/MatMul_grad/MatMul_1
И
7gradients/sec_lstm/MatMul_grad/tuple/control_dependencyIdentity%gradients/sec_lstm/MatMul_grad/MatMul0^gradients/sec_lstm/MatMul_grad/tuple/group_deps*'
_output_shapes
:€€€€€€€€€[*
T0*8
_class.
,*loc:@gradients/sec_lstm/MatMul_grad/MatMul
Е
9gradients/sec_lstm/MatMul_grad/tuple/control_dependency_1Identity'gradients/sec_lstm/MatMul_grad/MatMul_10^gradients/sec_lstm/MatMul_grad/tuple/group_deps*
T0*:
_class0
.,loc:@gradients/sec_lstm/MatMul_grad/MatMul_1*
_output_shapes

:[
µ
beta1_power/initial_valueConst*
valueB
 *fff?*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
dtype0*
_output_shapes
: 
∆
beta1_power
VariableV2*
dtype0*
_output_shapes
: *
shared_name *U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
	container *
shape: 
е
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
T0*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
validate_shape(*
_output_shapes
: *
use_locking(
°
beta1_power/readIdentitybeta1_power*
T0*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
_output_shapes
: 
µ
beta2_power/initial_valueConst*
valueB
 *wЊ?*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
dtype0*
_output_shapes
: 
∆
beta2_power
VariableV2*
shared_name *U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
	container *
shape: *
dtype0*
_output_shapes
: 
е
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
use_locking(*
T0*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
validate_shape(*
_output_shapes
: 
°
beta2_power/readIdentitybeta2_power*
T0*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
_output_shapes
: 
°
'self_variable/in/Adam/Initializer/zerosConst*#
_class
loc:@self_variable/in*
valueB[*    *
dtype0*
_output_shapes

:[
Ѓ
self_variable/in/Adam
VariableV2*#
_class
loc:@self_variable/in*
	container *
shape
:[*
dtype0*
_output_shapes

:[*
shared_name 
Ё
self_variable/in/Adam/AssignAssignself_variable/in/Adam'self_variable/in/Adam/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@self_variable/in*
validate_shape(*
_output_shapes

:[
Л
self_variable/in/Adam/readIdentityself_variable/in/Adam*
T0*#
_class
loc:@self_variable/in*
_output_shapes

:[
£
)self_variable/in/Adam_1/Initializer/zerosConst*
dtype0*
_output_shapes

:[*#
_class
loc:@self_variable/in*
valueB[*    
∞
self_variable/in/Adam_1
VariableV2*
	container *
shape
:[*
dtype0*
_output_shapes

:[*
shared_name *#
_class
loc:@self_variable/in
г
self_variable/in/Adam_1/AssignAssignself_variable/in/Adam_1)self_variable/in/Adam_1/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@self_variable/in*
validate_shape(*
_output_shapes

:[
П
self_variable/in/Adam_1/readIdentityself_variable/in/Adam_1*
T0*#
_class
loc:@self_variable/in*
_output_shapes

:[
£
(self_variable/out/Adam/Initializer/zerosConst*$
_class
loc:@self_variable/out*
valueB*    *
dtype0*
_output_shapes

:
∞
self_variable/out/Adam
VariableV2*$
_class
loc:@self_variable/out*
	container *
shape
:*
dtype0*
_output_shapes

:*
shared_name 
б
self_variable/out/Adam/AssignAssignself_variable/out/Adam(self_variable/out/Adam/Initializer/zeros*
use_locking(*
T0*$
_class
loc:@self_variable/out*
validate_shape(*
_output_shapes

:
О
self_variable/out/Adam/readIdentityself_variable/out/Adam*
T0*$
_class
loc:@self_variable/out*
_output_shapes

:
•
*self_variable/out/Adam_1/Initializer/zerosConst*
dtype0*
_output_shapes

:*$
_class
loc:@self_variable/out*
valueB*    
≤
self_variable/out/Adam_1
VariableV2*
dtype0*
_output_shapes

:*
shared_name *$
_class
loc:@self_variable/out*
	container *
shape
:
з
self_variable/out/Adam_1/AssignAssignself_variable/out/Adam_1*self_variable/out/Adam_1/Initializer/zeros*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*$
_class
loc:@self_variable/out
Т
self_variable/out/Adam_1/readIdentityself_variable/out/Adam_1*
T0*$
_class
loc:@self_variable/out*
_output_shapes

:
•
-self_variable/Variable/Adam/Initializer/zerosConst*)
_class
loc:@self_variable/Variable*
valueB*    *
dtype0*
_output_shapes
:
≤
self_variable/Variable/Adam
VariableV2*
dtype0*
_output_shapes
:*
shared_name *)
_class
loc:@self_variable/Variable*
	container *
shape:
с
"self_variable/Variable/Adam/AssignAssignself_variable/Variable/Adam-self_variable/Variable/Adam/Initializer/zeros*
use_locking(*
T0*)
_class
loc:@self_variable/Variable*
validate_shape(*
_output_shapes
:
Щ
 self_variable/Variable/Adam/readIdentityself_variable/Variable/Adam*
T0*)
_class
loc:@self_variable/Variable*
_output_shapes
:
І
/self_variable/Variable/Adam_1/Initializer/zerosConst*)
_class
loc:@self_variable/Variable*
valueB*    *
dtype0*
_output_shapes
:
і
self_variable/Variable/Adam_1
VariableV2*
dtype0*
_output_shapes
:*
shared_name *)
_class
loc:@self_variable/Variable*
	container *
shape:
ч
$self_variable/Variable/Adam_1/AssignAssignself_variable/Variable/Adam_1/self_variable/Variable/Adam_1/Initializer/zeros*
T0*)
_class
loc:@self_variable/Variable*
validate_shape(*
_output_shapes
:*
use_locking(
Э
"self_variable/Variable/Adam_1/readIdentityself_variable/Variable/Adam_1*
_output_shapes
:*
T0*)
_class
loc:@self_variable/Variable
©
/self_variable/Variable_1/Adam/Initializer/zerosConst*
dtype0*
_output_shapes
:*+
_class!
loc:@self_variable/Variable_1*
valueB*    
ґ
self_variable/Variable_1/Adam
VariableV2*
dtype0*
_output_shapes
:*
shared_name *+
_class!
loc:@self_variable/Variable_1*
	container *
shape:
щ
$self_variable/Variable_1/Adam/AssignAssignself_variable/Variable_1/Adam/self_variable/Variable_1/Adam/Initializer/zeros*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*+
_class!
loc:@self_variable/Variable_1
Я
"self_variable/Variable_1/Adam/readIdentityself_variable/Variable_1/Adam*
T0*+
_class!
loc:@self_variable/Variable_1*
_output_shapes
:
Ђ
1self_variable/Variable_1/Adam_1/Initializer/zerosConst*+
_class!
loc:@self_variable/Variable_1*
valueB*    *
dtype0*
_output_shapes
:
Є
self_variable/Variable_1/Adam_1
VariableV2*
dtype0*
_output_shapes
:*
shared_name *+
_class!
loc:@self_variable/Variable_1*
	container *
shape:
€
&self_variable/Variable_1/Adam_1/AssignAssignself_variable/Variable_1/Adam_11self_variable/Variable_1/Adam_1/Initializer/zeros*
use_locking(*
T0*+
_class!
loc:@self_variable/Variable_1*
validate_shape(*
_output_shapes
:
£
$self_variable/Variable_1/Adam_1/readIdentityself_variable/Variable_1/Adam_1*
T0*+
_class!
loc:@self_variable/Variable_1*
_output_shapes
:
Й
[sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adam/Initializer/zerosConst*W
_classM
KIloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
valueB *    *
dtype0*
_output_shapes

: 
Ц
Isec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adam
VariableV2*
dtype0*
_output_shapes

: *
shared_name *W
_classM
KIloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
	container *
shape
: 
≠
Psec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adam/AssignAssignIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adam[sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adam/Initializer/zeros*
T0*W
_classM
KIloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
validate_shape(*
_output_shapes

: *
use_locking(
І
Nsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adam/readIdentityIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adam*
T0*W
_classM
KIloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
_output_shapes

: 
Л
]sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adam_1/Initializer/zerosConst*W
_classM
KIloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
valueB *    *
dtype0*
_output_shapes

: 
Ш
Ksec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adam_1
VariableV2*
dtype0*
_output_shapes

: *
shared_name *W
_classM
KIloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
	container *
shape
: 
≥
Rsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adam_1/AssignAssignKsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adam_1]sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*W
_classM
KIloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
validate_shape(*
_output_shapes

: 
Ђ
Psec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adam_1/readIdentityKsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adam_1*
T0*W
_classM
KIloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
_output_shapes

: 
э
Ysec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adam/Initializer/zerosConst*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
valueB *    *
dtype0*
_output_shapes
: 
К
Gsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adam
VariableV2*
shape: *
dtype0*
_output_shapes
: *
shared_name *U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
	container 
°
Nsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adam/AssignAssignGsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/AdamYsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adam/Initializer/zeros*
T0*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
validate_shape(*
_output_shapes
: *
use_locking(
Э
Lsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adam/readIdentityGsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adam*
T0*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
_output_shapes
: 
€
[sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adam_1/Initializer/zerosConst*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
valueB *    *
dtype0*
_output_shapes
: 
М
Isec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adam_1
VariableV2*
shared_name *U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
	container *
shape: *
dtype0*
_output_shapes
: 
І
Psec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adam_1/AssignAssignIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adam_1[sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
validate_shape(*
_output_shapes
: 
°
Nsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adam_1/readIdentityIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adam_1*
T0*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
_output_shapes
: 
O

Adam/beta1Const*
dtype0*
_output_shapes
: *
valueB
 *fff?
O

Adam/beta2Const*
dtype0*
_output_shapes
: *
valueB
 *wЊ?
Q
Adam/epsilonConst*
valueB
 *wћ+2*
dtype0*
_output_shapes
: 
Б
&Adam/update_self_variable/in/ApplyAdam	ApplyAdamself_variable/inself_variable/in/Adamself_variable/in/Adam_1beta1_power/readbeta2_power/readExponentialDecay
Adam/beta1
Adam/beta2Adam/epsilon9gradients/sec_lstm/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*#
_class
loc:@self_variable/in*
use_nesterov( *
_output_shapes

:[
И
'Adam/update_self_variable/out/ApplyAdam	ApplyAdamself_variable/outself_variable/out/Adamself_variable/out/Adam_1beta1_power/readbeta2_power/readExponentialDecay
Adam/beta1
Adam/beta2Adam/epsilon;gradients/sec_lstm/MatMul_1_grad/tuple/control_dependency_1*
use_locking( *
T0*$
_class
loc:@self_variable/out*
use_nesterov( *
_output_shapes

:
Ш
,Adam/update_self_variable/Variable/ApplyAdam	ApplyAdamself_variable/Variableself_variable/Variable/Adamself_variable/Variable/Adam_1beta1_power/readbeta2_power/readExponentialDecay
Adam/beta1
Adam/beta2Adam/epsilon6gradients/sec_lstm/add_grad/tuple/control_dependency_1*
use_locking( *
T0*)
_class
loc:@self_variable/Variable*
use_nesterov( *
_output_shapes
:
§
.Adam/update_self_variable/Variable_1/ApplyAdam	ApplyAdamself_variable/Variable_1self_variable/Variable_1/Adamself_variable/Variable_1/Adam_1beta1_power/readbeta2_power/readExponentialDecay
Adam/beta1
Adam/beta2Adam/epsilon8gradients/sec_lstm/add_1_grad/tuple/control_dependency_1*
use_locking( *
T0*+
_class!
loc:@self_variable/Variable_1*
use_nesterov( *
_output_shapes
:
Њ
ZAdam/update_sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/ApplyAdam	ApplyAdamDsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernelIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/AdamKsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adam_1beta1_power/readbeta2_power/readExponentialDecay
Adam/beta1
Adam/beta2Adam/epsilonrgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul/Enter_grad/b_acc_3*
use_nesterov( *
_output_shapes

: *
use_locking( *
T0*W
_classM
KIloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel
±
XAdam/update_sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/ApplyAdam	ApplyAdamBsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/biasGsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/AdamIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adam_1beta1_power/readbeta2_power/readExponentialDecay
Adam/beta1
Adam/beta2Adam/epsilonsgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd/Enter_grad/b_acc_3*
use_locking( *
T0*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
use_nesterov( *
_output_shapes
: 
Р
Adam/mulMulbeta1_power/read
Adam/beta1Y^Adam/update_sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/ApplyAdam[^Adam/update_sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/ApplyAdam-^Adam/update_self_variable/Variable/ApplyAdam/^Adam/update_self_variable/Variable_1/ApplyAdam'^Adam/update_self_variable/in/ApplyAdam(^Adam/update_self_variable/out/ApplyAdam*
T0*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
_output_shapes
: 
Ќ
Adam/AssignAssignbeta1_powerAdam/mul*
validate_shape(*
_output_shapes
: *
use_locking( *
T0*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias
Т

Adam/mul_1Mulbeta2_power/read
Adam/beta2Y^Adam/update_sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/ApplyAdam[^Adam/update_sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/ApplyAdam-^Adam/update_self_variable/Variable/ApplyAdam/^Adam/update_self_variable/Variable_1/ApplyAdam'^Adam/update_self_variable/in/ApplyAdam(^Adam/update_self_variable/out/ApplyAdam*
T0*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
_output_shapes
: 
—
Adam/Assign_1Assignbeta2_power
Adam/mul_1*
use_locking( *
T0*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
validate_shape(*
_output_shapes
: 
Ь
Adam/updateNoOp^Adam/Assign^Adam/Assign_1Y^Adam/update_sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/ApplyAdam[^Adam/update_sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/ApplyAdam-^Adam/update_self_variable/Variable/ApplyAdam/^Adam/update_self_variable/Variable_1/ApplyAdam'^Adam/update_self_variable/in/ApplyAdam(^Adam/update_self_variable/out/ApplyAdam
w

Adam/valueConst^Adam/update*
value	B :*
_class
loc:@Variable*
dtype0*
_output_shapes
: 
x
Adam	AssignAddVariable
Adam/value*
_output_shapes
: *
use_locking( *
T0*
_class
loc:@Variable
Ш
$mean_squared_error/SquaredDifferenceSquaredDifferenceself_variable/Placeholder_2sec_lstm/add_1*
T0*'
_output_shapes
:€€€€€€€€€
t
/mean_squared_error/assert_broadcastable/weightsConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
x
5mean_squared_error/assert_broadcastable/weights/shapeConst*
dtype0*
_output_shapes
: *
valueB 
v
4mean_squared_error/assert_broadcastable/weights/rankConst*
value	B : *
dtype0*
_output_shapes
: 
Ш
4mean_squared_error/assert_broadcastable/values/shapeShape$mean_squared_error/SquaredDifference*
T0*
out_type0*
_output_shapes
:
u
3mean_squared_error/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 
K
Cmean_squared_error/assert_broadcastable/static_scalar_check_successNoOp
§
mean_squared_error/Cast/xConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
valueB
 *  А?*
dtype0*
_output_shapes
: 
Р
mean_squared_error/MulMul$mean_squared_error/SquaredDifferencemean_squared_error/Cast/x*'
_output_shapes
:€€€€€€€€€*
T0
ѓ
mean_squared_error/ConstConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
dtype0*
_output_shapes
:*
valueB"       
Н
mean_squared_error/SumSummean_squared_error/Mulmean_squared_error/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
±
&mean_squared_error/num_present/Equal/yConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 
С
$mean_squared_error/num_present/EqualEqualmean_squared_error/Cast/x&mean_squared_error/num_present/Equal/y*
T0*
_output_shapes
: 
і
)mean_squared_error/num_present/zeros_likeConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 
Ј
.mean_squared_error/num_present/ones_like/ShapeConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 
є
.mean_squared_error/num_present/ones_like/ConstConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
valueB
 *  А?*
dtype0*
_output_shapes
: 
√
(mean_squared_error/num_present/ones_likeFill.mean_squared_error/num_present/ones_like/Shape.mean_squared_error/num_present/ones_like/Const*
T0*

index_type0*
_output_shapes
: 
Ћ
%mean_squared_error/num_present/SelectSelect$mean_squared_error/num_present/Equal)mean_squared_error/num_present/zeros_like(mean_squared_error/num_present/ones_like*
_output_shapes
: *
T0
№
Smean_squared_error/num_present/broadcast_weights/assert_broadcastable/weights/shapeConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 
Џ
Rmean_squared_error/num_present/broadcast_weights/assert_broadcastable/weights/rankConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
dtype0*
_output_shapes
: *
value	B : 
ь
Rmean_squared_error/num_present/broadcast_weights/assert_broadcastable/values/shapeShape$mean_squared_error/SquaredDifferenceD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
T0*
out_type0*
_output_shapes
:
ў
Qmean_squared_error/num_present/broadcast_weights/assert_broadcastable/values/rankConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
dtype0*
_output_shapes
: *
value	B :
ѓ
amean_squared_error/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_successNoOpD^mean_squared_error/assert_broadcastable/static_scalar_check_success
ќ
@mean_squared_error/num_present/broadcast_weights/ones_like/ShapeShape$mean_squared_error/SquaredDifferenceD^mean_squared_error/assert_broadcastable/static_scalar_check_successb^mean_squared_error/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_success*
T0*
out_type0*
_output_shapes
:
ѓ
@mean_squared_error/num_present/broadcast_weights/ones_like/ConstConstD^mean_squared_error/assert_broadcastable/static_scalar_check_successb^mean_squared_error/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_success*
valueB
 *  А?*
dtype0*
_output_shapes
: 
К
:mean_squared_error/num_present/broadcast_weights/ones_likeFill@mean_squared_error/num_present/broadcast_weights/ones_like/Shape@mean_squared_error/num_present/broadcast_weights/ones_like/Const*
T0*

index_type0*'
_output_shapes
:€€€€€€€€€
ћ
0mean_squared_error/num_present/broadcast_weightsMul%mean_squared_error/num_present/Select:mean_squared_error/num_present/broadcast_weights/ones_like*
T0*'
_output_shapes
:€€€€€€€€€
ї
$mean_squared_error/num_present/ConstConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
valueB"       *
dtype0*
_output_shapes
:
ї
mean_squared_error/num_presentSum0mean_squared_error/num_present/broadcast_weights$mean_squared_error/num_present/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
£
mean_squared_error/Const_1ConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 
С
mean_squared_error/Sum_1Summean_squared_error/Summean_squared_error/Const_1*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0

mean_squared_error/valueDivNoNanmean_squared_error/Sum_1mean_squared_error/num_present*
T0*
_output_shapes
: 
√
initNoOp^Variable/Assign^beta1_power/Assign^beta2_power/AssignO^sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adam/AssignQ^sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adam_1/AssignJ^sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/AssignQ^sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adam/AssignS^sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adam_1/AssignL^sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Assign#^self_variable/Variable/Adam/Assign%^self_variable/Variable/Adam_1/Assign^self_variable/Variable/Assign%^self_variable/Variable_1/Adam/Assign'^self_variable/Variable_1/Adam_1/Assign ^self_variable/Variable_1/Assign^self_variable/in/Adam/Assign^self_variable/in/Adam_1/Assign^self_variable/in/Assign^self_variable/out/Adam/Assign ^self_variable/out/Adam_1/Assign^self_variable/out/Assign
Y
save/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
n
save/filenamePlaceholderWithDefaultsave/filename/input*
dtype0*
_output_shapes
: *
shape: 
e

save/ConstPlaceholderWithDefaultsave/filename*
dtype0*
_output_shapes
: *
shape: 
Д
save/StringJoin/inputs_1Const*
dtype0*
_output_shapes
: *<
value3B1 B+_temp_54893156bb974429982875f65f4e43a3/part
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
k
save/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
М
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
А
save/SaveV2/tensor_namesConst"/device:CPU:0*§
valueЪBЧBVariableBbeta1_powerBbeta2_powerBBsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/biasBGsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/AdamBIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adam_1BDsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernelBIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/AdamBKsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adam_1Bself_variable/VariableBself_variable/Variable/AdamBself_variable/Variable/Adam_1Bself_variable/Variable_1Bself_variable/Variable_1/AdamBself_variable/Variable_1/Adam_1Bself_variable/inBself_variable/in/AdamBself_variable/in/Adam_1Bself_variable/outBself_variable/out/AdamBself_variable/out/Adam_1*
dtype0*
_output_shapes
:
Ь
save/SaveV2/shape_and_slicesConst"/device:CPU:0*=
value4B2B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
¶
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesVariablebeta1_powerbeta2_powerBsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/biasGsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/AdamIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adam_1Dsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernelIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/AdamKsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adam_1self_variable/Variableself_variable/Variable/Adamself_variable/Variable/Adam_1self_variable/Variable_1self_variable/Variable_1/Adamself_variable/Variable_1/Adam_1self_variable/inself_variable/in/Adamself_variable/in/Adam_1self_variable/outself_variable/out/Adamself_variable/out/Adam_1"/device:CPU:0*#
dtypes
2
†
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
ђ
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*
N*
_output_shapes
:*
T0*

axis 
М
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0*
delete_old_dirs(
Й
save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 
Г
save/RestoreV2/tensor_namesConst"/device:CPU:0*§
valueЪBЧBVariableBbeta1_powerBbeta2_powerBBsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/biasBGsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/AdamBIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adam_1BDsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernelBIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/AdamBKsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adam_1Bself_variable/VariableBself_variable/Variable/AdamBself_variable/Variable/Adam_1Bself_variable/Variable_1Bself_variable/Variable_1/AdamBself_variable/Variable_1/Adam_1Bself_variable/inBself_variable/in/AdamBself_variable/in/Adam_1Bself_variable/outBself_variable/out/AdamBself_variable/out/Adam_1*
dtype0*
_output_shapes
:
Я
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*=
value4B2B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
Г
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*h
_output_shapesV
T:::::::::::::::::::::*#
dtypes
2
Ц
save/AssignAssignVariablesave/RestoreV2*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: 
„
save/Assign_1Assignbeta1_powersave/RestoreV2:1*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias
„
save/Assign_2Assignbeta2_powersave/RestoreV2:2*
use_locking(*
T0*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
validate_shape(*
_output_shapes
: 
Т
save/Assign_3AssignBsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/biassave/RestoreV2:3*
use_locking(*
T0*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
validate_shape(*
_output_shapes
: 
Ч
save/Assign_4AssignGsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adamsave/RestoreV2:4*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias
Щ
save/Assign_5AssignIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adam_1save/RestoreV2:5*
use_locking(*
T0*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
validate_shape(*
_output_shapes
: 
Ъ
save/Assign_6AssignDsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernelsave/RestoreV2:6*
use_locking(*
T0*W
_classM
KIloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
validate_shape(*
_output_shapes

: 
Я
save/Assign_7AssignIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adamsave/RestoreV2:7*
use_locking(*
T0*W
_classM
KIloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
validate_shape(*
_output_shapes

: 
°
save/Assign_8AssignKsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adam_1save/RestoreV2:8*
T0*W
_classM
KIloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
validate_shape(*
_output_shapes

: *
use_locking(
Ї
save/Assign_9Assignself_variable/Variablesave/RestoreV2:9*
T0*)
_class
loc:@self_variable/Variable*
validate_shape(*
_output_shapes
:*
use_locking(
Ѕ
save/Assign_10Assignself_variable/Variable/Adamsave/RestoreV2:10*
T0*)
_class
loc:@self_variable/Variable*
validate_shape(*
_output_shapes
:*
use_locking(
√
save/Assign_11Assignself_variable/Variable/Adam_1save/RestoreV2:11*
use_locking(*
T0*)
_class
loc:@self_variable/Variable*
validate_shape(*
_output_shapes
:
ј
save/Assign_12Assignself_variable/Variable_1save/RestoreV2:12*
use_locking(*
T0*+
_class!
loc:@self_variable/Variable_1*
validate_shape(*
_output_shapes
:
≈
save/Assign_13Assignself_variable/Variable_1/Adamsave/RestoreV2:13*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*+
_class!
loc:@self_variable/Variable_1
«
save/Assign_14Assignself_variable/Variable_1/Adam_1save/RestoreV2:14*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*+
_class!
loc:@self_variable/Variable_1
і
save/Assign_15Assignself_variable/insave/RestoreV2:15*
T0*#
_class
loc:@self_variable/in*
validate_shape(*
_output_shapes

:[*
use_locking(
є
save/Assign_16Assignself_variable/in/Adamsave/RestoreV2:16*
validate_shape(*
_output_shapes

:[*
use_locking(*
T0*#
_class
loc:@self_variable/in
ї
save/Assign_17Assignself_variable/in/Adam_1save/RestoreV2:17*
T0*#
_class
loc:@self_variable/in*
validate_shape(*
_output_shapes

:[*
use_locking(
ґ
save/Assign_18Assignself_variable/outsave/RestoreV2:18*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*$
_class
loc:@self_variable/out
ї
save/Assign_19Assignself_variable/out/Adamsave/RestoreV2:19*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*$
_class
loc:@self_variable/out
љ
save/Assign_20Assignself_variable/out/Adam_1save/RestoreV2:20*
T0*$
_class
loc:@self_variable/out*
validate_shape(*
_output_shapes

:*
use_locking(
у
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_20^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
-
save/restore_allNoOp^save/restore_shard
[
save_1/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
r
save_1/filenamePlaceholderWithDefaultsave_1/filename/input*
dtype0*
_output_shapes
: *
shape: 
i
save_1/ConstPlaceholderWithDefaultsave_1/filename*
dtype0*
_output_shapes
: *
shape: 
Ж
save_1/StringJoin/inputs_1Const*<
value3B1 B+_temp_2da826a90f4a4e8b8a7082f6de75c214/part*
dtype0*
_output_shapes
: 
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
S
save_1/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
m
save_1/ShardedFilename/shardConst"/device:CPU:0*
dtype0*
_output_shapes
: *
value	B : 
Ф
save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards"/device:CPU:0*
_output_shapes
: 
В
save_1/SaveV2/tensor_namesConst"/device:CPU:0*§
valueЪBЧBVariableBbeta1_powerBbeta2_powerBBsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/biasBGsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/AdamBIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adam_1BDsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernelBIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/AdamBKsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adam_1Bself_variable/VariableBself_variable/Variable/AdamBself_variable/Variable/Adam_1Bself_variable/Variable_1Bself_variable/Variable_1/AdamBself_variable/Variable_1/Adam_1Bself_variable/inBself_variable/in/AdamBself_variable/in/Adam_1Bself_variable/outBself_variable/out/AdamBself_variable/out/Adam_1*
dtype0*
_output_shapes
:
Ю
save_1/SaveV2/shape_and_slicesConst"/device:CPU:0*=
value4B2B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
Ѓ
save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicesVariablebeta1_powerbeta2_powerBsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/biasGsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/AdamIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adam_1Dsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernelIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/AdamKsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adam_1self_variable/Variableself_variable/Variable/Adamself_variable/Variable/Adam_1self_variable/Variable_1self_variable/Variable_1/Adamself_variable/Variable_1/Adam_1self_variable/inself_variable/in/Adamself_variable/in/Adam_1self_variable/outself_variable/out/Adamself_variable/out/Adam_1"/device:CPU:0*#
dtypes
2
®
save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2"/device:CPU:0*
T0*)
_class
loc:@save_1/ShardedFilename*
_output_shapes
: 
≤
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:
Т
save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const"/device:CPU:0*
delete_old_dirs(
С
save_1/IdentityIdentitysave_1/Const^save_1/MergeV2Checkpoints^save_1/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 
Е
save_1/RestoreV2/tensor_namesConst"/device:CPU:0*§
valueЪBЧBVariableBbeta1_powerBbeta2_powerBBsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/biasBGsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/AdamBIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adam_1BDsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernelBIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/AdamBKsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adam_1Bself_variable/VariableBself_variable/Variable/AdamBself_variable/Variable/Adam_1Bself_variable/Variable_1Bself_variable/Variable_1/AdamBself_variable/Variable_1/Adam_1Bself_variable/inBself_variable/in/AdamBself_variable/in/Adam_1Bself_variable/outBself_variable/out/AdamBself_variable/out/Adam_1*
dtype0*
_output_shapes
:
°
!save_1/RestoreV2/shape_and_slicesConst"/device:CPU:0*=
value4B2B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
Л
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices"/device:CPU:0*#
dtypes
2*h
_output_shapesV
T:::::::::::::::::::::
Ъ
save_1/AssignAssignVariablesave_1/RestoreV2*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: 
џ
save_1/Assign_1Assignbeta1_powersave_1/RestoreV2:1*
T0*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
validate_shape(*
_output_shapes
: *
use_locking(
џ
save_1/Assign_2Assignbeta2_powersave_1/RestoreV2:2*
use_locking(*
T0*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
validate_shape(*
_output_shapes
: 
Ц
save_1/Assign_3AssignBsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/biassave_1/RestoreV2:3*
use_locking(*
T0*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
validate_shape(*
_output_shapes
: 
Ы
save_1/Assign_4AssignGsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adamsave_1/RestoreV2:4*
T0*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
validate_shape(*
_output_shapes
: *
use_locking(
Э
save_1/Assign_5AssignIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adam_1save_1/RestoreV2:5*
use_locking(*
T0*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
validate_shape(*
_output_shapes
: 
Ю
save_1/Assign_6AssignDsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernelsave_1/RestoreV2:6*
validate_shape(*
_output_shapes

: *
use_locking(*
T0*W
_classM
KIloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel
£
save_1/Assign_7AssignIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adamsave_1/RestoreV2:7*
use_locking(*
T0*W
_classM
KIloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
validate_shape(*
_output_shapes

: 
•
save_1/Assign_8AssignKsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adam_1save_1/RestoreV2:8*
T0*W
_classM
KIloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
validate_shape(*
_output_shapes

: *
use_locking(
Њ
save_1/Assign_9Assignself_variable/Variablesave_1/RestoreV2:9*
T0*)
_class
loc:@self_variable/Variable*
validate_shape(*
_output_shapes
:*
use_locking(
≈
save_1/Assign_10Assignself_variable/Variable/Adamsave_1/RestoreV2:10*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*)
_class
loc:@self_variable/Variable
«
save_1/Assign_11Assignself_variable/Variable/Adam_1save_1/RestoreV2:11*
T0*)
_class
loc:@self_variable/Variable*
validate_shape(*
_output_shapes
:*
use_locking(
ƒ
save_1/Assign_12Assignself_variable/Variable_1save_1/RestoreV2:12*
T0*+
_class!
loc:@self_variable/Variable_1*
validate_shape(*
_output_shapes
:*
use_locking(
…
save_1/Assign_13Assignself_variable/Variable_1/Adamsave_1/RestoreV2:13*
use_locking(*
T0*+
_class!
loc:@self_variable/Variable_1*
validate_shape(*
_output_shapes
:
Ћ
save_1/Assign_14Assignself_variable/Variable_1/Adam_1save_1/RestoreV2:14*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*+
_class!
loc:@self_variable/Variable_1
Є
save_1/Assign_15Assignself_variable/insave_1/RestoreV2:15*
T0*#
_class
loc:@self_variable/in*
validate_shape(*
_output_shapes

:[*
use_locking(
љ
save_1/Assign_16Assignself_variable/in/Adamsave_1/RestoreV2:16*
T0*#
_class
loc:@self_variable/in*
validate_shape(*
_output_shapes

:[*
use_locking(
њ
save_1/Assign_17Assignself_variable/in/Adam_1save_1/RestoreV2:17*
use_locking(*
T0*#
_class
loc:@self_variable/in*
validate_shape(*
_output_shapes

:[
Ї
save_1/Assign_18Assignself_variable/outsave_1/RestoreV2:18*
use_locking(*
T0*$
_class
loc:@self_variable/out*
validate_shape(*
_output_shapes

:
њ
save_1/Assign_19Assignself_variable/out/Adamsave_1/RestoreV2:19*
use_locking(*
T0*$
_class
loc:@self_variable/out*
validate_shape(*
_output_shapes

:
Ѕ
save_1/Assign_20Assignself_variable/out/Adam_1save_1/RestoreV2:20*
T0*$
_class
loc:@self_variable/out*
validate_shape(*
_output_shapes

:*
use_locking(
Я
save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_10^save_1/Assign_11^save_1/Assign_12^save_1/Assign_13^save_1/Assign_14^save_1/Assign_15^save_1/Assign_16^save_1/Assign_17^save_1/Assign_18^save_1/Assign_19^save_1/Assign_2^save_1/Assign_20^save_1/Assign_3^save_1/Assign_4^save_1/Assign_5^save_1/Assign_6^save_1/Assign_7^save_1/Assign_8^save_1/Assign_9
1
save_1/restore_allNoOp^save_1/restore_shard
[
save_2/filename/inputConst*
dtype0*
_output_shapes
: *
valueB Bmodel
r
save_2/filenamePlaceholderWithDefaultsave_2/filename/input*
shape: *
dtype0*
_output_shapes
: 
i
save_2/ConstPlaceholderWithDefaultsave_2/filename*
dtype0*
_output_shapes
: *
shape: 
Ж
save_2/StringJoin/inputs_1Const*<
value3B1 B+_temp_a96f0f24c0ed4ebda525d19e30536343/part*
dtype0*
_output_shapes
: 
{
save_2/StringJoin
StringJoinsave_2/Constsave_2/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
S
save_2/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
m
save_2/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
Ф
save_2/ShardedFilenameShardedFilenamesave_2/StringJoinsave_2/ShardedFilename/shardsave_2/num_shards"/device:CPU:0*
_output_shapes
: 
В
save_2/SaveV2/tensor_namesConst"/device:CPU:0*§
valueЪBЧBVariableBbeta1_powerBbeta2_powerBBsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/biasBGsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/AdamBIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adam_1BDsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernelBIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/AdamBKsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adam_1Bself_variable/VariableBself_variable/Variable/AdamBself_variable/Variable/Adam_1Bself_variable/Variable_1Bself_variable/Variable_1/AdamBself_variable/Variable_1/Adam_1Bself_variable/inBself_variable/in/AdamBself_variable/in/Adam_1Bself_variable/outBself_variable/out/AdamBself_variable/out/Adam_1*
dtype0*
_output_shapes
:
Ю
save_2/SaveV2/shape_and_slicesConst"/device:CPU:0*=
value4B2B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
Ѓ
save_2/SaveV2SaveV2save_2/ShardedFilenamesave_2/SaveV2/tensor_namessave_2/SaveV2/shape_and_slicesVariablebeta1_powerbeta2_powerBsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/biasGsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/AdamIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adam_1Dsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernelIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/AdamKsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adam_1self_variable/Variableself_variable/Variable/Adamself_variable/Variable/Adam_1self_variable/Variable_1self_variable/Variable_1/Adamself_variable/Variable_1/Adam_1self_variable/inself_variable/in/Adamself_variable/in/Adam_1self_variable/outself_variable/out/Adamself_variable/out/Adam_1"/device:CPU:0*#
dtypes
2
®
save_2/control_dependencyIdentitysave_2/ShardedFilename^save_2/SaveV2"/device:CPU:0*
T0*)
_class
loc:@save_2/ShardedFilename*
_output_shapes
: 
≤
-save_2/MergeV2Checkpoints/checkpoint_prefixesPacksave_2/ShardedFilename^save_2/control_dependency"/device:CPU:0*
N*
_output_shapes
:*
T0*

axis 
Т
save_2/MergeV2CheckpointsMergeV2Checkpoints-save_2/MergeV2Checkpoints/checkpoint_prefixessave_2/Const"/device:CPU:0*
delete_old_dirs(
С
save_2/IdentityIdentitysave_2/Const^save_2/MergeV2Checkpoints^save_2/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 
Е
save_2/RestoreV2/tensor_namesConst"/device:CPU:0*§
valueЪBЧBVariableBbeta1_powerBbeta2_powerBBsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/biasBGsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/AdamBIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adam_1BDsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernelBIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/AdamBKsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adam_1Bself_variable/VariableBself_variable/Variable/AdamBself_variable/Variable/Adam_1Bself_variable/Variable_1Bself_variable/Variable_1/AdamBself_variable/Variable_1/Adam_1Bself_variable/inBself_variable/in/AdamBself_variable/in/Adam_1Bself_variable/outBself_variable/out/AdamBself_variable/out/Adam_1*
dtype0*
_output_shapes
:
°
!save_2/RestoreV2/shape_and_slicesConst"/device:CPU:0*=
value4B2B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
Л
save_2/RestoreV2	RestoreV2save_2/Constsave_2/RestoreV2/tensor_names!save_2/RestoreV2/shape_and_slices"/device:CPU:0*h
_output_shapesV
T:::::::::::::::::::::*#
dtypes
2
Ъ
save_2/AssignAssignVariablesave_2/RestoreV2*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: 
џ
save_2/Assign_1Assignbeta1_powersave_2/RestoreV2:1*
use_locking(*
T0*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
validate_shape(*
_output_shapes
: 
џ
save_2/Assign_2Assignbeta2_powersave_2/RestoreV2:2*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias
Ц
save_2/Assign_3AssignBsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/biassave_2/RestoreV2:3*
T0*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
validate_shape(*
_output_shapes
: *
use_locking(
Ы
save_2/Assign_4AssignGsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adamsave_2/RestoreV2:4*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias
Э
save_2/Assign_5AssignIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adam_1save_2/RestoreV2:5*
T0*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
validate_shape(*
_output_shapes
: *
use_locking(
Ю
save_2/Assign_6AssignDsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernelsave_2/RestoreV2:6*
use_locking(*
T0*W
_classM
KIloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
validate_shape(*
_output_shapes

: 
£
save_2/Assign_7AssignIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adamsave_2/RestoreV2:7*
use_locking(*
T0*W
_classM
KIloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
validate_shape(*
_output_shapes

: 
•
save_2/Assign_8AssignKsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adam_1save_2/RestoreV2:8*
use_locking(*
T0*W
_classM
KIloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
validate_shape(*
_output_shapes

: 
Њ
save_2/Assign_9Assignself_variable/Variablesave_2/RestoreV2:9*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*)
_class
loc:@self_variable/Variable
≈
save_2/Assign_10Assignself_variable/Variable/Adamsave_2/RestoreV2:10*
use_locking(*
T0*)
_class
loc:@self_variable/Variable*
validate_shape(*
_output_shapes
:
«
save_2/Assign_11Assignself_variable/Variable/Adam_1save_2/RestoreV2:11*
T0*)
_class
loc:@self_variable/Variable*
validate_shape(*
_output_shapes
:*
use_locking(
ƒ
save_2/Assign_12Assignself_variable/Variable_1save_2/RestoreV2:12*
use_locking(*
T0*+
_class!
loc:@self_variable/Variable_1*
validate_shape(*
_output_shapes
:
…
save_2/Assign_13Assignself_variable/Variable_1/Adamsave_2/RestoreV2:13*
use_locking(*
T0*+
_class!
loc:@self_variable/Variable_1*
validate_shape(*
_output_shapes
:
Ћ
save_2/Assign_14Assignself_variable/Variable_1/Adam_1save_2/RestoreV2:14*
use_locking(*
T0*+
_class!
loc:@self_variable/Variable_1*
validate_shape(*
_output_shapes
:
Є
save_2/Assign_15Assignself_variable/insave_2/RestoreV2:15*
use_locking(*
T0*#
_class
loc:@self_variable/in*
validate_shape(*
_output_shapes

:[
љ
save_2/Assign_16Assignself_variable/in/Adamsave_2/RestoreV2:16*
use_locking(*
T0*#
_class
loc:@self_variable/in*
validate_shape(*
_output_shapes

:[
њ
save_2/Assign_17Assignself_variable/in/Adam_1save_2/RestoreV2:17*
use_locking(*
T0*#
_class
loc:@self_variable/in*
validate_shape(*
_output_shapes

:[
Ї
save_2/Assign_18Assignself_variable/outsave_2/RestoreV2:18*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*$
_class
loc:@self_variable/out
њ
save_2/Assign_19Assignself_variable/out/Adamsave_2/RestoreV2:19*
use_locking(*
T0*$
_class
loc:@self_variable/out*
validate_shape(*
_output_shapes

:
Ѕ
save_2/Assign_20Assignself_variable/out/Adam_1save_2/RestoreV2:20*
use_locking(*
T0*$
_class
loc:@self_variable/out*
validate_shape(*
_output_shapes

:
Я
save_2/restore_shardNoOp^save_2/Assign^save_2/Assign_1^save_2/Assign_10^save_2/Assign_11^save_2/Assign_12^save_2/Assign_13^save_2/Assign_14^save_2/Assign_15^save_2/Assign_16^save_2/Assign_17^save_2/Assign_18^save_2/Assign_19^save_2/Assign_2^save_2/Assign_20^save_2/Assign_3^save_2/Assign_4^save_2/Assign_5^save_2/Assign_6^save_2/Assign_7^save_2/Assign_8^save_2/Assign_9
1
save_2/restore_allNoOp^save_2/restore_shard
[
save_3/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
r
save_3/filenamePlaceholderWithDefaultsave_3/filename/input*
dtype0*
_output_shapes
: *
shape: 
i
save_3/ConstPlaceholderWithDefaultsave_3/filename*
shape: *
dtype0*
_output_shapes
: 
Ж
save_3/StringJoin/inputs_1Const*<
value3B1 B+_temp_a82a1814e1514b958fadbbce32001a3d/part*
dtype0*
_output_shapes
: 
{
save_3/StringJoin
StringJoinsave_3/Constsave_3/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
S
save_3/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
m
save_3/ShardedFilename/shardConst"/device:CPU:0*
dtype0*
_output_shapes
: *
value	B : 
Ф
save_3/ShardedFilenameShardedFilenamesave_3/StringJoinsave_3/ShardedFilename/shardsave_3/num_shards"/device:CPU:0*
_output_shapes
: 
В
save_3/SaveV2/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*§
valueЪBЧBVariableBbeta1_powerBbeta2_powerBBsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/biasBGsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/AdamBIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adam_1BDsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernelBIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/AdamBKsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adam_1Bself_variable/VariableBself_variable/Variable/AdamBself_variable/Variable/Adam_1Bself_variable/Variable_1Bself_variable/Variable_1/AdamBself_variable/Variable_1/Adam_1Bself_variable/inBself_variable/in/AdamBself_variable/in/Adam_1Bself_variable/outBself_variable/out/AdamBself_variable/out/Adam_1
Ю
save_3/SaveV2/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*=
value4B2B B B B B B B B B B B B B B B B B B B B B 
Ѓ
save_3/SaveV2SaveV2save_3/ShardedFilenamesave_3/SaveV2/tensor_namessave_3/SaveV2/shape_and_slicesVariablebeta1_powerbeta2_powerBsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/biasGsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/AdamIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adam_1Dsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernelIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/AdamKsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adam_1self_variable/Variableself_variable/Variable/Adamself_variable/Variable/Adam_1self_variable/Variable_1self_variable/Variable_1/Adamself_variable/Variable_1/Adam_1self_variable/inself_variable/in/Adamself_variable/in/Adam_1self_variable/outself_variable/out/Adamself_variable/out/Adam_1"/device:CPU:0*#
dtypes
2
®
save_3/control_dependencyIdentitysave_3/ShardedFilename^save_3/SaveV2"/device:CPU:0*
T0*)
_class
loc:@save_3/ShardedFilename*
_output_shapes
: 
≤
-save_3/MergeV2Checkpoints/checkpoint_prefixesPacksave_3/ShardedFilename^save_3/control_dependency"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:
Т
save_3/MergeV2CheckpointsMergeV2Checkpoints-save_3/MergeV2Checkpoints/checkpoint_prefixessave_3/Const"/device:CPU:0*
delete_old_dirs(
С
save_3/IdentityIdentitysave_3/Const^save_3/MergeV2Checkpoints^save_3/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 
Е
save_3/RestoreV2/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*§
valueЪBЧBVariableBbeta1_powerBbeta2_powerBBsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/biasBGsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/AdamBIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adam_1BDsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernelBIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/AdamBKsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adam_1Bself_variable/VariableBself_variable/Variable/AdamBself_variable/Variable/Adam_1Bself_variable/Variable_1Bself_variable/Variable_1/AdamBself_variable/Variable_1/Adam_1Bself_variable/inBself_variable/in/AdamBself_variable/in/Adam_1Bself_variable/outBself_variable/out/AdamBself_variable/out/Adam_1
°
!save_3/RestoreV2/shape_and_slicesConst"/device:CPU:0*=
value4B2B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
Л
save_3/RestoreV2	RestoreV2save_3/Constsave_3/RestoreV2/tensor_names!save_3/RestoreV2/shape_and_slices"/device:CPU:0*h
_output_shapesV
T:::::::::::::::::::::*#
dtypes
2
Ъ
save_3/AssignAssignVariablesave_3/RestoreV2*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: *
use_locking(
џ
save_3/Assign_1Assignbeta1_powersave_3/RestoreV2:1*
T0*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
validate_shape(*
_output_shapes
: *
use_locking(
џ
save_3/Assign_2Assignbeta2_powersave_3/RestoreV2:2*
use_locking(*
T0*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
validate_shape(*
_output_shapes
: 
Ц
save_3/Assign_3AssignBsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/biassave_3/RestoreV2:3*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias
Ы
save_3/Assign_4AssignGsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adamsave_3/RestoreV2:4*
use_locking(*
T0*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
validate_shape(*
_output_shapes
: 
Э
save_3/Assign_5AssignIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adam_1save_3/RestoreV2:5*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias
Ю
save_3/Assign_6AssignDsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernelsave_3/RestoreV2:6*
validate_shape(*
_output_shapes

: *
use_locking(*
T0*W
_classM
KIloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel
£
save_3/Assign_7AssignIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adamsave_3/RestoreV2:7*
use_locking(*
T0*W
_classM
KIloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
validate_shape(*
_output_shapes

: 
•
save_3/Assign_8AssignKsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adam_1save_3/RestoreV2:8*
use_locking(*
T0*W
_classM
KIloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
validate_shape(*
_output_shapes

: 
Њ
save_3/Assign_9Assignself_variable/Variablesave_3/RestoreV2:9*
use_locking(*
T0*)
_class
loc:@self_variable/Variable*
validate_shape(*
_output_shapes
:
≈
save_3/Assign_10Assignself_variable/Variable/Adamsave_3/RestoreV2:10*
use_locking(*
T0*)
_class
loc:@self_variable/Variable*
validate_shape(*
_output_shapes
:
«
save_3/Assign_11Assignself_variable/Variable/Adam_1save_3/RestoreV2:11*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*)
_class
loc:@self_variable/Variable
ƒ
save_3/Assign_12Assignself_variable/Variable_1save_3/RestoreV2:12*
use_locking(*
T0*+
_class!
loc:@self_variable/Variable_1*
validate_shape(*
_output_shapes
:
…
save_3/Assign_13Assignself_variable/Variable_1/Adamsave_3/RestoreV2:13*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*+
_class!
loc:@self_variable/Variable_1
Ћ
save_3/Assign_14Assignself_variable/Variable_1/Adam_1save_3/RestoreV2:14*
use_locking(*
T0*+
_class!
loc:@self_variable/Variable_1*
validate_shape(*
_output_shapes
:
Є
save_3/Assign_15Assignself_variable/insave_3/RestoreV2:15*
T0*#
_class
loc:@self_variable/in*
validate_shape(*
_output_shapes

:[*
use_locking(
љ
save_3/Assign_16Assignself_variable/in/Adamsave_3/RestoreV2:16*
use_locking(*
T0*#
_class
loc:@self_variable/in*
validate_shape(*
_output_shapes

:[
њ
save_3/Assign_17Assignself_variable/in/Adam_1save_3/RestoreV2:17*
use_locking(*
T0*#
_class
loc:@self_variable/in*
validate_shape(*
_output_shapes

:[
Ї
save_3/Assign_18Assignself_variable/outsave_3/RestoreV2:18*
use_locking(*
T0*$
_class
loc:@self_variable/out*
validate_shape(*
_output_shapes

:
њ
save_3/Assign_19Assignself_variable/out/Adamsave_3/RestoreV2:19*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*$
_class
loc:@self_variable/out
Ѕ
save_3/Assign_20Assignself_variable/out/Adam_1save_3/RestoreV2:20*
use_locking(*
T0*$
_class
loc:@self_variable/out*
validate_shape(*
_output_shapes

:
Я
save_3/restore_shardNoOp^save_3/Assign^save_3/Assign_1^save_3/Assign_10^save_3/Assign_11^save_3/Assign_12^save_3/Assign_13^save_3/Assign_14^save_3/Assign_15^save_3/Assign_16^save_3/Assign_17^save_3/Assign_18^save_3/Assign_19^save_3/Assign_2^save_3/Assign_20^save_3/Assign_3^save_3/Assign_4^save_3/Assign_5^save_3/Assign_6^save_3/Assign_7^save_3/Assign_8^save_3/Assign_9
1
save_3/restore_allNoOp^save_3/restore_shard"&B
save_3/Const:0save_3/Identity:0save_3/restore_all (5 @F8"(
losses

mean_squared_error/value:0"П	
trainable_variablesчф
y
self_variable/in:0self_variable/in/Assignself_variable/in/read:02/self_variable/in/Initializer/truncated_normal:08
}
self_variable/out:0self_variable/out/Assignself_variable/out/read:020self_variable/out/Initializer/truncated_normal:08
q
self_variable/Variable:0self_variable/Variable/Assignself_variable/Variable/read:02self_variable/Const:08
y
self_variable/Variable_1:0self_variable/Variable_1/Assignself_variable/Variable_1/read:02self_variable/Const_1:08
«
Fsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel:0Ksec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/AssignKsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/read:02asec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Initializer/random_uniform:08
њ
Dsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias:0Isec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/AssignIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/read:02_sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Initializer/random_uniform:08"
train_op

Adam"ч
	variablesйж
y
self_variable/in:0self_variable/in/Assignself_variable/in/read:02/self_variable/in/Initializer/truncated_normal:08
}
self_variable/out:0self_variable/out/Assignself_variable/out/read:020self_variable/out/Initializer/truncated_normal:08
q
self_variable/Variable:0self_variable/Variable/Assignself_variable/Variable/read:02self_variable/Const:08
y
self_variable/Variable_1:0self_variable/Variable_1/Assignself_variable/Variable_1/read:02self_variable/Const_1:08
«
Fsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel:0Ksec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/AssignKsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/read:02asec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Initializer/random_uniform:08
њ
Dsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias:0Isec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/AssignIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/read:02_sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Initializer/random_uniform:08
H

Variable:0Variable/AssignVariable/read:02Variable/initial_value:0
T
beta1_power:0beta1_power/Assignbeta1_power/read:02beta1_power/initial_value:0
T
beta2_power:0beta2_power/Assignbeta2_power/read:02beta2_power/initial_value:0
А
self_variable/in/Adam:0self_variable/in/Adam/Assignself_variable/in/Adam/read:02)self_variable/in/Adam/Initializer/zeros:0
И
self_variable/in/Adam_1:0self_variable/in/Adam_1/Assignself_variable/in/Adam_1/read:02+self_variable/in/Adam_1/Initializer/zeros:0
Д
self_variable/out/Adam:0self_variable/out/Adam/Assignself_variable/out/Adam/read:02*self_variable/out/Adam/Initializer/zeros:0
М
self_variable/out/Adam_1:0self_variable/out/Adam_1/Assignself_variable/out/Adam_1/read:02,self_variable/out/Adam_1/Initializer/zeros:0
Ш
self_variable/Variable/Adam:0"self_variable/Variable/Adam/Assign"self_variable/Variable/Adam/read:02/self_variable/Variable/Adam/Initializer/zeros:0
†
self_variable/Variable/Adam_1:0$self_variable/Variable/Adam_1/Assign$self_variable/Variable/Adam_1/read:021self_variable/Variable/Adam_1/Initializer/zeros:0
†
self_variable/Variable_1/Adam:0$self_variable/Variable_1/Adam/Assign$self_variable/Variable_1/Adam/read:021self_variable/Variable_1/Adam/Initializer/zeros:0
®
!self_variable/Variable_1/Adam_1:0&self_variable/Variable_1/Adam_1/Assign&self_variable/Variable_1/Adam_1/read:023self_variable/Variable_1/Adam_1/Initializer/zeros:0
–
Ksec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adam:0Psec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adam/AssignPsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adam/read:02]sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adam/Initializer/zeros:0
Ў
Msec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adam_1:0Rsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adam_1/AssignRsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adam_1/read:02_sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adam_1/Initializer/zeros:0
»
Isec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adam:0Nsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adam/AssignNsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adam/read:02[sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adam/Initializer/zeros:0
–
Ksec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adam_1:0Psec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adam_1/AssignPsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adam_1/read:02]sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adam_1/Initializer/zeros:0"Їы
while_contextІы£ы
Яы
 sec_lstm/rnn/while/while_context *sec_lstm/rnn/while/LoopCond:02sec_lstm/rnn/while/Merge:0:sec_lstm/rnn/while/Identity:0Bsec_lstm/rnn/while/Exit:0Bsec_lstm/rnn/while/Exit_1:0Bsec_lstm/rnn/while/Exit_2:0Bsec_lstm/rnn/while/Exit_3:0Bsec_lstm/rnn/while/Exit_4:0Bsec_lstm/rnn/while/Exit_5:0Bsec_lstm/rnn/while/Exit_6:0Bsec_lstm/rnn/while/Exit_7:0Bsec_lstm/rnn/while/Exit_8:0Bgradients/f_count_2:0JЊх
gradients/Add/y:0
gradients/Add:0
gradients/Merge:0
gradients/Merge:1
gradients/NextIteration:0
gradients/Switch:0
gradients/Switch:1
gradients/f_count:0
gradients/f_count_1:0
gradients/f_count_2:0
_gradients/sec_lstm/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/Enter:0
egradients/sec_lstm/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/StackPushV2:0
_gradients/sec_lstm/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/f_acc:0
wgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_1_grad/MatMul_1/Enter:0
}gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_1_grad/MatMul_1/StackPushV2:0
wgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_1_grad/MatMul_1/f_acc:0
wgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_2_grad/MatMul_1/Enter:0
}gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_2_grad/MatMul_1/StackPushV2:0
wgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_2_grad/MatMul_1/f_acc:0
ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_grad/MatMul_1/Enter:0
{gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_grad/MatMul_1/StackPushV2:0
ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_grad/MatMul_1/f_acc:0
Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/BroadcastGradientArgs/Enter:0
Гgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/BroadcastGradientArgs/Enter_1:0
Зgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/BroadcastGradientArgs/StackPushV2:0
Йgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/BroadcastGradientArgs/StackPushV2_1:0
Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/BroadcastGradientArgs/f_acc:0
Гgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/BroadcastGradientArgs/f_acc_1:0
kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/Shape:0
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/Shape_1:0
Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/BroadcastGradientArgs/Enter:0
Зgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/BroadcastGradientArgs/StackPushV2:0
Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/BroadcastGradientArgs/f_acc:0
kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/Shape:0
Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/BroadcastGradientArgs/Enter:0
Гgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/BroadcastGradientArgs/Enter_1:0
Зgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/BroadcastGradientArgs/StackPushV2:0
Йgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/BroadcastGradientArgs/StackPushV2_1:0
Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/BroadcastGradientArgs/f_acc:0
Гgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/BroadcastGradientArgs/f_acc_1:0
kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/Shape:0
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/Shape_1:0
Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/BroadcastGradientArgs/Enter:0
Зgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/BroadcastGradientArgs/StackPushV2:0
Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/BroadcastGradientArgs/f_acc:0
kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/Shape:0
Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/BroadcastGradientArgs/Enter:0
Гgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/BroadcastGradientArgs/Enter_1:0
Зgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/BroadcastGradientArgs/StackPushV2:0
Йgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/BroadcastGradientArgs/StackPushV2_1:0
Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/BroadcastGradientArgs/f_acc:0
Гgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/BroadcastGradientArgs/f_acc_1:0
kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/Shape:0
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/Shape_1:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/BroadcastGradientArgs/Enter:0
Еgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/BroadcastGradientArgs/StackPushV2:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/BroadcastGradientArgs/f_acc:0
igradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/Shape:0
ngradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/Shape:0
ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ShapeN/Enter:0
wgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ShapeN/Enter_1:0
{gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ShapeN/StackPushV2:0
}gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ShapeN/StackPushV2_1:0
ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ShapeN/f_acc:0
wgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ShapeN/f_acc_1:0
ngradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/Shape:0
ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ShapeN/Enter:0
wgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ShapeN/Enter_1:0
{gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ShapeN/StackPushV2:0
}gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ShapeN/StackPushV2_1:0
ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ShapeN/f_acc:0
wgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ShapeN/f_acc_1:0
lgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/Shape:0
sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ShapeN/Enter:0
ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ShapeN/Enter_1:0
ygradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ShapeN/StackPushV2:0
{gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ShapeN/StackPushV2_1:0
sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ShapeN/f_acc:0
ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ShapeN/f_acc_1:0
Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/Enter:0
Гgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/Enter_1:0
Зgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPushV2:0
Йgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPushV2_1:0
Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/f_acc:0
Гgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/f_acc_1:0
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Mul/Enter:0
ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Mul/StackPushV2:0
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Mul/f_acc:0
qgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Mul_1/Enter:0
wgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Mul_1/StackPushV2:0
qgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Mul_1/f_acc:0
kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Shape:0
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Shape_1:0
Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/Enter:0
Гgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/Enter_1:0
Зgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPushV2:0
Йgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPushV2_1:0
Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc:0
Гgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc_1:0
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Mul/Enter:0
ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Mul/StackPushV2:0
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Mul/f_acc:0
qgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Mul_1/Enter:0
wgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Mul_1/StackPushV2:0
qgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Mul_1/f_acc:0
kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Shape:0
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Shape_1:0
Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/BroadcastGradientArgs/Enter:0
Гgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/BroadcastGradientArgs/Enter_1:0
Зgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/BroadcastGradientArgs/StackPushV2:0
Йgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/BroadcastGradientArgs/StackPushV2_1:0
Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/BroadcastGradientArgs/f_acc:0
Гgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/BroadcastGradientArgs/f_acc_1:0
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Mul/Enter:0
ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Mul/StackPushV2:0
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Mul/f_acc:0
qgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Mul_1/Enter:0
wgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Mul_1/StackPushV2:0
qgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Mul_1/f_acc:0
kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Shape:0
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Shape_1:0
Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/BroadcastGradientArgs/Enter:0
Гgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/BroadcastGradientArgs/Enter_1:0
Зgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/BroadcastGradientArgs/StackPushV2:0
Йgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/BroadcastGradientArgs/StackPushV2_1:0
Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/BroadcastGradientArgs/f_acc:0
Гgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/BroadcastGradientArgs/f_acc_1:0
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Mul/Enter:0
ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Mul/StackPushV2:0
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Mul/f_acc:0
qgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Mul_1/Enter:0
wgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Mul_1/StackPushV2:0
qgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Mul_1/f_acc:0
kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Shape:0
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Shape_1:0
Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/BroadcastGradientArgs/Enter:0
Гgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/BroadcastGradientArgs/Enter_1:0
Зgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/BroadcastGradientArgs/StackPushV2:0
Йgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/BroadcastGradientArgs/StackPushV2_1:0
Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/BroadcastGradientArgs/f_acc:0
Гgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/BroadcastGradientArgs/f_acc_1:0
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Mul/Enter:0
ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Mul/StackPushV2:0
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Mul/f_acc:0
qgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Mul_1/Enter:0
wgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Mul_1/StackPushV2:0
qgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Mul_1/f_acc:0
kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Shape:0
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Shape_1:0
Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/BroadcastGradientArgs/Enter:0
Гgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/BroadcastGradientArgs/Enter_1:0
Зgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/BroadcastGradientArgs/StackPushV2:0
Йgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/BroadcastGradientArgs/StackPushV2_1:0
Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/BroadcastGradientArgs/f_acc:0
Гgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/BroadcastGradientArgs/f_acc_1:0
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Mul/Enter:0
ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Mul/StackPushV2:0
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Mul/f_acc:0
qgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Mul_1/Enter:0
wgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Mul_1/StackPushV2:0
qgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Mul_1/f_acc:0
kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Shape:0
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Shape_1:0
Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/BroadcastGradientArgs/Enter:0
Гgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/BroadcastGradientArgs/Enter_1:0
Зgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/BroadcastGradientArgs/StackPushV2:0
Йgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/BroadcastGradientArgs/StackPushV2_1:0
Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/BroadcastGradientArgs/f_acc:0
Гgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/BroadcastGradientArgs/f_acc_1:0
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Mul/Enter:0
ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Mul/StackPushV2:0
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Mul/f_acc:0
qgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Mul_1/Enter:0
wgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Mul_1/StackPushV2:0
qgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Mul_1/f_acc:0
kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Shape:0
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Shape_1:0
Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/BroadcastGradientArgs/Enter:0
Гgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/BroadcastGradientArgs/Enter_1:0
Зgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/BroadcastGradientArgs/StackPushV2:0
Йgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/BroadcastGradientArgs/StackPushV2_1:0
Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/BroadcastGradientArgs/f_acc:0
Гgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/BroadcastGradientArgs/f_acc_1:0
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Mul/Enter:0
ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Mul/StackPushV2:0
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Mul/f_acc:0
qgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Mul_1/Enter:0
wgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Mul_1/StackPushV2:0
qgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Mul_1/f_acc:0
kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Shape:0
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Shape_1:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/BroadcastGradientArgs/Enter:0
Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/BroadcastGradientArgs/Enter_1:0
Еgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/BroadcastGradientArgs/StackPushV2:0
Зgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/BroadcastGradientArgs/StackPushV2_1:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/BroadcastGradientArgs/f_acc:0
Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/BroadcastGradientArgs/f_acc_1:0
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Mul/Enter:0
sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Mul/StackPushV2:0
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Mul/f_acc:0
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Mul_1/Enter:0
ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Mul_1/StackPushV2:0
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Mul_1/f_acc:0
igradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Shape:0
kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Shape_1:0
sec_lstm/rnn/Minimum:0
sec_lstm/rnn/TensorArray:0
Isec_lstm/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0
sec_lstm/rnn/TensorArray_1:0
Isec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/read:0
Ksec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/read:0
sec_lstm/rnn/strided_slice_1:0
sec_lstm/rnn/while/Enter:0
sec_lstm/rnn/while/Enter_1:0
sec_lstm/rnn/while/Enter_2:0
sec_lstm/rnn/while/Enter_3:0
sec_lstm/rnn/while/Enter_4:0
sec_lstm/rnn/while/Enter_5:0
sec_lstm/rnn/while/Enter_6:0
sec_lstm/rnn/while/Enter_7:0
sec_lstm/rnn/while/Enter_8:0
sec_lstm/rnn/while/Exit:0
sec_lstm/rnn/while/Exit_1:0
sec_lstm/rnn/while/Exit_2:0
sec_lstm/rnn/while/Exit_3:0
sec_lstm/rnn/while/Exit_4:0
sec_lstm/rnn/while/Exit_5:0
sec_lstm/rnn/while/Exit_6:0
sec_lstm/rnn/while/Exit_7:0
sec_lstm/rnn/while/Exit_8:0
sec_lstm/rnn/while/Identity:0
sec_lstm/rnn/while/Identity_1:0
sec_lstm/rnn/while/Identity_2:0
sec_lstm/rnn/while/Identity_3:0
sec_lstm/rnn/while/Identity_4:0
sec_lstm/rnn/while/Identity_5:0
sec_lstm/rnn/while/Identity_6:0
sec_lstm/rnn/while/Identity_7:0
sec_lstm/rnn/while/Identity_8:0
sec_lstm/rnn/while/Less/Enter:0
sec_lstm/rnn/while/Less:0
!sec_lstm/rnn/while/Less_1/Enter:0
sec_lstm/rnn/while/Less_1:0
sec_lstm/rnn/while/LogicalAnd:0
sec_lstm/rnn/while/LoopCond:0
sec_lstm/rnn/while/Merge:0
sec_lstm/rnn/while/Merge:1
sec_lstm/rnn/while/Merge_1:0
sec_lstm/rnn/while/Merge_1:1
sec_lstm/rnn/while/Merge_2:0
sec_lstm/rnn/while/Merge_2:1
sec_lstm/rnn/while/Merge_3:0
sec_lstm/rnn/while/Merge_3:1
sec_lstm/rnn/while/Merge_4:0
sec_lstm/rnn/while/Merge_4:1
sec_lstm/rnn/while/Merge_5:0
sec_lstm/rnn/while/Merge_5:1
sec_lstm/rnn/while/Merge_6:0
sec_lstm/rnn/while/Merge_6:1
sec_lstm/rnn/while/Merge_7:0
sec_lstm/rnn/while/Merge_7:1
sec_lstm/rnn/while/Merge_8:0
sec_lstm/rnn/while/Merge_8:1
"sec_lstm/rnn/while/NextIteration:0
$sec_lstm/rnn/while/NextIteration_1:0
$sec_lstm/rnn/while/NextIteration_2:0
$sec_lstm/rnn/while/NextIteration_3:0
$sec_lstm/rnn/while/NextIteration_4:0
$sec_lstm/rnn/while/NextIteration_5:0
$sec_lstm/rnn/while/NextIteration_6:0
$sec_lstm/rnn/while/NextIteration_7:0
$sec_lstm/rnn/while/NextIteration_8:0
sec_lstm/rnn/while/Switch:0
sec_lstm/rnn/while/Switch:1
sec_lstm/rnn/while/Switch_1:0
sec_lstm/rnn/while/Switch_1:1
sec_lstm/rnn/while/Switch_2:0
sec_lstm/rnn/while/Switch_2:1
sec_lstm/rnn/while/Switch_3:0
sec_lstm/rnn/while/Switch_3:1
sec_lstm/rnn/while/Switch_4:0
sec_lstm/rnn/while/Switch_4:1
sec_lstm/rnn/while/Switch_5:0
sec_lstm/rnn/while/Switch_5:1
sec_lstm/rnn/while/Switch_6:0
sec_lstm/rnn/while/Switch_6:1
sec_lstm/rnn/while/Switch_7:0
sec_lstm/rnn/while/Switch_7:1
sec_lstm/rnn/while/Switch_8:0
sec_lstm/rnn/while/Switch_8:1
,sec_lstm/rnn/while/TensorArrayReadV3/Enter:0
.sec_lstm/rnn/while/TensorArrayReadV3/Enter_1:0
&sec_lstm/rnn/while/TensorArrayReadV3:0
>sec_lstm/rnn/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0
8sec_lstm/rnn/while/TensorArrayWrite/TensorArrayWriteV3:0
sec_lstm/rnn/while/add/y:0
sec_lstm/rnn/while/add:0
sec_lstm/rnn/while/add_1/y:0
sec_lstm/rnn/while/add_1:0
^sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd/Enter:0
Xsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd:0
Zsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_1:0
Zsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_2:0
Vsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Const:0
Xsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Const_1:0
Xsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Const_2:0
]sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul/Enter:0
Wsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul:0
Ysec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_1:0
Ysec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_2:0
Usec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu:0
Wsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu_1:0
Wsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu_2:0
Wsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu_3:0
Wsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu_4:0
Wsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu_5:0
Xsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid:0
Zsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_1:0
Zsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_2:0
Zsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_3:0
Zsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_4:0
Zsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_5:0
Zsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_6:0
Zsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_7:0
Zsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_8:0
Vsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add/y:0
Tsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add:0
Vsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1:0
Xsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2/y:0
Vsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2:0
Vsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3:0
Xsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4/y:0
Vsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4:0
Vsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5:0
\sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat/axis:0
Wsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat:0
^sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1/axis:0
Ysec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1:0
^sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2/axis:0
Ysec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2:0
Tsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul:0
Vsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1:0
Vsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2:0
Vsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3:0
Vsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4:0
Vsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5:0
Vsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6:0
Vsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7:0
Vsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8:0
`sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split/split_dim:0
Vsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split:0
Vsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split:1
Vsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split:2
Vsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split:3
bsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_1/split_dim:0
Xsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_1:0
Xsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_1:1
Xsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_1:2
Xsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_1:3
bsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_2/split_dim:0
Xsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_2:0
Xsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_2:1
Xsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_2:2
Xsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_2:3И
Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/BroadcastGradientArgs/f_acc:0Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/BroadcastGradientArgs/Enter:0И
Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/BroadcastGradientArgs/f_acc:0Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/BroadcastGradientArgs/Enter:0М
Гgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/BroadcastGradientArgs/f_acc_1:0Гgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/BroadcastGradientArgs/Enter_1:0ж
qgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Mul_1/f_acc:0qgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Mul_1/Enter:0в
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Mul/f_acc:0ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Mul/Enter:0в
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Mul_1/f_acc:0ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Mul_1/Enter:0И
Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/BroadcastGradientArgs/f_acc:0Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/BroadcastGradientArgs/Enter:0{
Isec_lstm/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0.sec_lstm/rnn/while/TensorArrayReadV3/Enter_1:0И
Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/BroadcastGradientArgs/f_acc:0Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/BroadcastGradientArgs/Enter:0ж
qgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Mul_1/f_acc:0qgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Mul_1/Enter:0И
Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/BroadcastGradientArgs/f_acc:0Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/BroadcastGradientArgs/Enter:0в
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Mul/f_acc:0ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Mul/Enter:0к
sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ShapeN/f_acc:0sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ShapeN/Enter:0ж
qgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Mul_1/f_acc:0qgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Mul_1/Enter:0ё
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Mul/f_acc:0mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Mul/Enter:0о
ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ShapeN/f_acc:0ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ShapeN/Enter:0В
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/BroadcastGradientArgs/f_acc:0gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/BroadcastGradientArgs/Enter:0ж
qgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Mul_1/f_acc:0qgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Mul_1/Enter:0в
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Mul/f_acc:0ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Mul/Enter:0М
Гgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc_1:0Гgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/Enter_1:0т
wgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_2_grad/MatMul_1/f_acc:0wgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_2_grad/MatMul_1/Enter:0Ђ
Isec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/read:0^sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd/Enter:0;
sec_lstm/rnn/Minimum:0!sec_lstm/rnn/while/Less_1/Enter:0М
Гgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/BroadcastGradientArgs/f_acc_1:0Гgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/BroadcastGradientArgs/Enter_1:0в
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Mul/f_acc:0ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Mul/Enter:0М
Гgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/BroadcastGradientArgs/f_acc_1:0Гgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/BroadcastGradientArgs/Enter_1:0В
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/BroadcastGradientArgs/f_acc:0gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/BroadcastGradientArgs/Enter:0И
Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/BroadcastGradientArgs/f_acc_1:0Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/BroadcastGradientArgs/Enter_1:0т
wgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ShapeN/f_acc_1:0wgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ShapeN/Enter_1:0о
ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ShapeN/f_acc_1:0ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ShapeN/Enter_1:0М
Гgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/BroadcastGradientArgs/f_acc_1:0Гgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/BroadcastGradientArgs/Enter_1:0М
Гgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/BroadcastGradientArgs/f_acc_1:0Гgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/BroadcastGradientArgs/Enter_1:0ђ
Ksec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/read:0]sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul/Enter:0\
sec_lstm/rnn/TensorArray:0>sec_lstm/rnn/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0ж
qgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Mul_1/f_acc:0qgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Mul_1/Enter:0в
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Mul/f_acc:0ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Mul/Enter:0L
sec_lstm/rnn/TensorArray_1:0,sec_lstm/rnn/while/TensorArrayReadV3/Enter:0A
sec_lstm/rnn/strided_slice_1:0sec_lstm/rnn/while/Less/Enter:0ж
qgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Mul_1/f_acc:0qgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Mul_1/Enter:0М
Гgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/BroadcastGradientArgs/f_acc_1:0Гgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/BroadcastGradientArgs/Enter_1:0М
Гgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/BroadcastGradientArgs/f_acc_1:0Гgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/BroadcastGradientArgs/Enter_1:0ж
qgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Mul_1/f_acc:0qgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Mul_1/Enter:0И
Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/BroadcastGradientArgs/f_acc:0Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/BroadcastGradientArgs/Enter:0в
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Mul/f_acc:0ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Mul/Enter:0т
wgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_1_grad/MatMul_1/f_acc:0wgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_1_grad/MatMul_1/Enter:0¬
_gradients/sec_lstm/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/f_acc:0_gradients/sec_lstm/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/Enter:0И
Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/BroadcastGradientArgs/f_acc:0Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/BroadcastGradientArgs/Enter:0М
Гgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/BroadcastGradientArgs/f_acc_1:0Гgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/BroadcastGradientArgs/Enter_1:0ж
qgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Mul_1/f_acc:0qgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Mul_1/Enter:0И
Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/BroadcastGradientArgs/f_acc:0Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/BroadcastGradientArgs/Enter:0И
Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/BroadcastGradientArgs/f_acc:0Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/BroadcastGradientArgs/Enter:0в
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Mul/f_acc:0ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Mul/Enter:0И
Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/BroadcastGradientArgs/f_acc:0Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/BroadcastGradientArgs/Enter:0о
ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_grad/MatMul_1/f_acc:0ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_grad/MatMul_1/Enter:0И
Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/BroadcastGradientArgs/f_acc:0Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/BroadcastGradientArgs/Enter:0о
ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ShapeN/f_acc:0ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ShapeN/Enter:0М
Гgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/f_acc_1:0Гgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/Enter_1:0И
Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc:0Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/Enter:0т
wgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ShapeN/f_acc_1:0wgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ShapeN/Enter_1:0в
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Mul/f_acc:0ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Mul/Enter:0И
Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/f_acc:0Бgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/Enter:0М
Гgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/BroadcastGradientArgs/f_acc_1:0Гgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/BroadcastGradientArgs/Enter_1:0Rsec_lstm/rnn/while/Enter:0Rsec_lstm/rnn/while/Enter_1:0Rsec_lstm/rnn/while/Enter_2:0Rsec_lstm/rnn/while/Enter_3:0Rsec_lstm/rnn/while/Enter_4:0Rsec_lstm/rnn/while/Enter_5:0Rsec_lstm/rnn/while/Enter_6:0Rsec_lstm/rnn/while/Enter_7:0Rsec_lstm/rnn/while/Enter_8:0Rgradients/f_count_1:0Zsec_lstm/rnn/strided_slice_1:0*∆
predict_dataµ
9
output_keep_prob%
self_variable/Placeholder_4:0
8
input_keep_prob%
self_variable/Placeholder_3:0
0
is_training!
self_variable/Placeholder:0
 
?
fea8
self_variable/Placeholder_1:0€€€€€€€€€[/
pred'
sec_lstm/add_1:0€€€€€€€€€tensorflow/serving/predict

đ#Í#
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
2	

ApplyGradientDescent
var"T

alpha"T

delta"T
out"T" 
Ttype:
2	"
use_lockingbool( 
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
h
BatchMatMul
x"T
y"T
output"T"
Ttype:
	2"
adj_xbool( "
adj_ybool( 
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
;
Diag
diagonal"T
output"T"
Ttype:

2	
>
DiagPart

input"T
diagonal"T"
Ttype:

2	
S
DynamicStitch
indices*N
data"T*N
merged"T"
Nint(0"	
Ttype
,
Exp
x"T
y"T"
Ttype:

2
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

GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"
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
:
InvertPermutation
x"T
y"T"
Ttype0:
2	
,
Log
x"T
y"T"
Ttype:

2
p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2
;
Maximum
x"T
y"T
z"T"
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
;
Minimum
x"T
y"T
z"T"
Ttype:

2	
=
Mul
x"T
y"T
z"T"
Ttype:
2	
.
Neg
x"T
y"T"
Ttype:

2	
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

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
)
Rank

input"T

output"	
Ttype
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
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
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
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
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
-
Sqrt
x"T
y"T"
Ttype:

2
:
SqrtGrad
y"T
dy"T
z"T"
Ttype:

2
1
Square
x"T
y"T"
Ttype:

2	
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
ö
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

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
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
Á
UnsortedSegmentSum	
data"T
segment_ids"Tindices
num_segments"Tnumsegments
output"T" 
Ttype:
2	"
Tindicestype:
2	" 
Tnumsegmentstype0:
2	
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring 
E
Where

input"T	
index	"%
Ttype0
:
2	
"
LabelModel*1.12.02
b'unknown'¸ă
Z
zerosConst*
valueB*    *
dtype0*
_output_shapes

:
j
mu
VariableV2*
dtype0*
shared_name *
shape:*
	container *
_output_shapes
:

	mu/AssignAssignmuzeros*
T0*
use_locking(*
validate_shape( *
_class
	loc:@mu*
_output_shapes

:
Q
mu/readIdentitymu*
T0*
_class
	loc:@mu*
_output_shapes
:
a
zeros_1/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
R
zeros_1/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
n
zeros_1Fillzeros_1/shape_as_tensorzeros_1/Const*
T0*

index_type0*
_output_shapes
:
i
P
VariableV2*
dtype0*
shared_name *
shape:*
	container *
_output_shapes
:

P/AssignAssignPzeros_1*
T0*
use_locking(*
validate_shape( *
_class

loc:@P*
_output_shapes
:
N
P/readIdentityP*
T0*
_class

loc:@P*
_output_shapes
:
Y
zeros_2Const*
valueB
Z *
dtype0
*
_output_shapes

:

mask
VariableV2*
dtype0
*
shared_name *
shape:*
	container *0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

mask/AssignAssignmaskzeros_2*
T0
*
use_locking(*
validate_shape( *
_class
	loc:@mask*
_output_shapes

:
o
	mask/readIdentitymask*
T0
*
_class
	loc:@mask*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
a
zeros_3/shape_as_tensorConst*
valueB: *
dtype0*
_output_shapes
:
R
zeros_3/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
l
zeros_3Fillzeros_3/shape_as_tensorzeros_3/Const*
T0*

index_type0*
_output_shapes
: 
i
O
VariableV2*
dtype0*
shared_name *
shape:*
	container *
_output_shapes
:

O/AssignAssignOzeros_3*
T0*
use_locking(*
validate_shape( *
_class

loc:@O*
_output_shapes
: 
N
O/readIdentityO*
T0*
_class

loc:@O*
_output_shapes
:
U
lr/initial_valueConst*
valueB
 *
×#<*
dtype0*
_output_shapes
: 
f
lr
VariableV2*
dtype0*
shared_name *
shape: *
	container *
_output_shapes
: 

	lr/AssignAssignlrlr/initial_value*
T0*
use_locking(*
validate_shape(*
_class
	loc:@lr*
_output_shapes
: 
O
lr/readIdentitylr*
T0*
_class
	loc:@lr*
_output_shapes
: 
N
learning_ratePlaceholder*
dtype0*
shape: *
_output_shapes
: 
J
l_augPlaceholder*
dtype0*
shape:*
_output_shapes
:
L
mu_initPlaceholder*
dtype0*
shape:*
_output_shapes
:
a
p_initPlaceholder*
dtype0*
shape:˙˙˙˙˙˙˙˙˙*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
K
o_initPlaceholder*
dtype0*
shape:*
_output_shapes
:
~
	mask_initPlaceholder*
dtype0
*%
shape:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
¨
mask_initializedAssignmask	mask_init*
T0
*
use_locking(*
validate_shape( *
_class
	loc:@mask*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

lr_initializedAssignlrlearning_rate*
T0*
use_locking(*
validate_shape( *
_class
	loc:@lr*
_output_shapes
: 
S
ShapeShapel_aug*
T0*
out_type0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
]
strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
_
strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
_
strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ů
strided_sliceStridedSliceShapestrided_slice/stackstrided_slice/stack_1strided_slice/stack_2*
Index0*
end_mask *
shrink_axis_mask*
T0*

begin_mask *
new_axis_mask *
ellipsis_mask *
_output_shapes
: 
^
ToFloatCaststrided_slice*

DstT0*
Truncate( *

SrcT0*
_output_shapes
: 
>
transpose/RankRankl_aug*
T0*
_output_shapes
: 
Q
transpose/sub/yConst*
value	B :*
dtype0*
_output_shapes
: 
V
transpose/subSubtranspose/Ranktranspose/sub/y*
T0*
_output_shapes
: 
W
transpose/Range/startConst*
value	B : *
dtype0*
_output_shapes
: 
W
transpose/Range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 

transpose/RangeRangetranspose/Range/starttranspose/Ranktranspose/Range/delta*

Tidx0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
d
transpose/sub_1Subtranspose/subtranspose/Range*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
^
	transpose	Transposel_augtranspose/sub_1*
T0*
Tperm0*
_output_shapes
:
d
MatMulBatchMatMul	transposel_aug*
T0*
adj_y( *
adj_x( *
_output_shapes
:
F
truedivRealDivMatMulToFloat*
T0*
_output_shapes
:

o_initializedAssignOtruediv*
T0*
use_locking(*
validate_shape( *
_class

loc:@O*
_output_shapes
:

o_setterAssignOo_init*
T0*
use_locking(*
validate_shape( *
_class

loc:@O*
_output_shapes
:
=
o_diagDiagPartO/read*
T0*
_output_shapes
:

mu_initializedAssignmumu_init*
T0*
use_locking(*
validate_shape( *
_class
	loc:@mu*
_output_shapes
:
O
DiagDiagp_init*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

p_initializedAssignPDiag*
T0*
use_locking(*
validate_shape( *
_class

loc:@P*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
\
clip_by_value/Minimum/yConst*
valueB
 *¤p}?*
dtype0*
_output_shapes
: 
e
clip_by_value/MinimumMinimummu/readclip_by_value/Minimum/y*
T0*
_output_shapes
:
T
clip_by_value/yConst*
valueB
 *
×#<*
dtype0*
_output_shapes
: 
c
clip_by_valueMaximumclip_by_value/Minimumclip_by_value/y*
T0*
_output_shapes
:
U
Shape_1Shapel_aug*
T0*
out_type0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
_
strided_slice_1/stackConst*
valueB:*
dtype0*
_output_shapes
:
a
strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
a
strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

strided_slice_1StridedSliceShape_1strided_slice_1/stackstrided_slice_1/stack_1strided_slice_1/stack_2*
Index0*
end_mask *
shrink_axis_mask*
T0*

begin_mask *
new_axis_mask *
ellipsis_mask *
_output_shapes
: 
e
ones/Reshape/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
o
ones/ReshapeReshapestrided_slice_1ones/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
O

ones/ConstConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
onesFillones/Reshape
ones/Const*
T0*

index_type0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
O
Diag_1Diagones*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
<
LogLogclip_by_value*
T0*
_output_shapes
:

MatMul_1MatMulDiag_1Log*
T0*
transpose_b( *
transpose_a( *0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
?
DiagPartDiagPartP/read*
T0*
_output_shapes
:
9
Log_1LogDiagPart*
T0*
_output_shapes
:
>
addAddMatMul_1Log_1*
T0*
_output_shapes
:
`
MatMul_2BatchMatMull_augadd*
T0*
adj_y( *
adj_x( *
_output_shapes
:
7
ExpExpMatMul_2*
T0*
_output_shapes
:
W
Sum/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
f
SumSumExpSum/reduction_indices*
	keep_dims(*
T0*

Tidx0*
_output_shapes
:
E
probabilitiesRealDivExpSum*
T0*
_output_shapes
:
B
transpose_1/RankRankmu/read*
T0*
_output_shapes
: 
S
transpose_1/sub/yConst*
value	B :*
dtype0*
_output_shapes
: 
\
transpose_1/subSubtranspose_1/Ranktranspose_1/sub/y*
T0*
_output_shapes
: 
Y
transpose_1/Range/startConst*
value	B : *
dtype0*
_output_shapes
: 
Y
transpose_1/Range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 

transpose_1/RangeRangetranspose_1/Range/starttranspose_1/Ranktranspose_1/Range/delta*

Tidx0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
j
transpose_1/sub_1Subtranspose_1/subtranspose_1/Range*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
d
transpose_1	Transposemu/readtranspose_1/sub_1*
T0*
Tperm0*
_output_shapes
:
f
PxMuTBatchMatMulP/readtranspose_1*
T0*
adj_y( *
adj_x( *
_output_shapes
:
d
muxPxMuTBatchMatMulmu/readPxMuT*
T0*
adj_y( *
adj_x( *
_output_shapes
:
?
subSubO/readmuxPxMuT*
T0*
_output_shapes
:
^
boolean_mask/ShapeShapesub*
T0*
out_type0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
j
 boolean_mask/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
l
"boolean_mask/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"boolean_mask/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ç
boolean_mask/strided_sliceStridedSliceboolean_mask/Shape boolean_mask/strided_slice/stack"boolean_mask/strided_slice/stack_1"boolean_mask/strided_slice/stack_2*
Index0*
end_mask *
shrink_axis_mask *
T0*

begin_mask *
new_axis_mask *
ellipsis_mask *#
_output_shapes
:˙˙˙˙˙˙˙˙˙
m
#boolean_mask/Prod/reduction_indicesConst*
valueB: *
dtype0*
_output_shapes
:

boolean_mask/ProdProdboolean_mask/strided_slice#boolean_mask/Prod/reduction_indices*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
`
boolean_mask/Shape_1Shapesub*
T0*
out_type0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
l
"boolean_mask/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:
n
$boolean_mask/strided_slice_1/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
n
$boolean_mask/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ń
boolean_mask/strided_slice_1StridedSliceboolean_mask/Shape_1"boolean_mask/strided_slice_1/stack$boolean_mask/strided_slice_1/stack_1$boolean_mask/strided_slice_1/stack_2*
Index0*
end_mask *
shrink_axis_mask *
T0*

begin_mask*
new_axis_mask *
ellipsis_mask *#
_output_shapes
:˙˙˙˙˙˙˙˙˙
`
boolean_mask/Shape_2Shapesub*
T0*
out_type0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
l
"boolean_mask/strided_slice_2/stackConst*
valueB:*
dtype0*
_output_shapes
:
n
$boolean_mask/strided_slice_2/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
n
$boolean_mask/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ń
boolean_mask/strided_slice_2StridedSliceboolean_mask/Shape_2"boolean_mask/strided_slice_2/stack$boolean_mask/strided_slice_2/stack_1$boolean_mask/strided_slice_2/stack_2*
Index0*
end_mask*
shrink_axis_mask *
T0*

begin_mask *
new_axis_mask *
ellipsis_mask *#
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
boolean_mask/concat/values_1Packboolean_mask/Prod*

axis *
T0*
N*
_output_shapes
:
Z
boolean_mask/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Ö
boolean_mask/concatConcatV2boolean_mask/strided_slice_1boolean_mask/concat/values_1boolean_mask/strided_slice_2boolean_mask/concat/axis*
T0*
N*

Tidx0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
j
boolean_mask/ReshapeReshapesubboolean_mask/concat*
T0*
Tshape0*
_output_shapes
:
o
boolean_mask/Reshape_1/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:

boolean_mask/Reshape_1Reshape	mask/readboolean_mask/Reshape_1/shape*
T0
*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
boolean_mask/WhereWhereboolean_mask/Reshape_1*
T0
*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
x
boolean_mask/SqueezeSqueezeboolean_mask/Where*
T0	*
squeeze_dims
*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
\
boolean_mask/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Ż
boolean_mask/GatherV2GatherV2boolean_mask/Reshapeboolean_mask/Squeezeboolean_mask/GatherV2/axis*
Taxis0*
Tparams0*
Tindices0	*
_output_shapes
:
`
norm/mulMulboolean_mask/GatherV2boolean_mask/GatherV2*
T0*
_output_shapes
:
<
	norm/RankRanknorm/mul*
T0*
_output_shapes
: 
R
norm/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
R
norm/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
s

norm/rangeRangenorm/range/start	norm/Ranknorm/range/delta*

Tidx0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
norm/SumSumnorm/mul
norm/range*
	keep_dims(*
T0*

Tidx0*
_output_shapes
:
>
	norm/SqrtSqrtnorm/Sum*
T0*
_output_shapes
:
Y
norm/SqueezeSqueeze	norm/Sqrt*
T0*
squeeze_dims
 *
_output_shapes
:
A
loss_1Squarenorm/Squeeze*
T0*
_output_shapes
:
a
MuxPBatchMatMulmu/readP/read*
T0*
adj_y( *
adj_x( *
_output_shapes
:
Y
Sum_1/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
k
Sum_1SumMuxPSum_1/reduction_indices*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
A

DiagPart_1DiagPartO/read*
T0*
_output_shapes
:
B
sub_1SubSum_1
DiagPart_1*
T0*
_output_shapes
:
B

norm_1/mulMulsub_1sub_1*
T0*
_output_shapes
:
@
norm_1/RankRank
norm_1/mul*
T0*
_output_shapes
: 
T
norm_1/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
T
norm_1/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
{
norm_1/rangeRangenorm_1/range/startnorm_1/Ranknorm_1/range/delta*

Tidx0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
k

norm_1/SumSum
norm_1/mulnorm_1/range*
	keep_dims(*
T0*

Tidx0*
_output_shapes
:
B
norm_1/SqrtSqrt
norm_1/Sum*
T0*
_output_shapes
:
]
norm_1/SqueezeSqueezenorm_1/Sqrt*
T0*
squeeze_dims
 *
_output_shapes
:
C
loss_2Squarenorm_1/Squeeze*
T0*
_output_shapes
:
?
add_1Addloss_1loss_2*
T0*
_output_shapes
:
]
gradients/ShapeShapeadd_1*
T0*
out_type0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
X
gradients/grad_ys_0Const*
valueB
 *  ?*
dtype0*
_output_shapes
: 
q
gradients/FillFillgradients/Shapegradients/grad_ys_0*
T0*

index_type0*
_output_shapes
:
i
gradients/add_1_grad/ShapeShapeloss_1*
T0*
out_type0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
k
gradients/add_1_grad/Shape_1Shapeloss_2*
T0*
out_type0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
ş
*gradients/add_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_1_grad/Shapegradients/add_1_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙

gradients/add_1_grad/SumSumgradients/Fill*gradients/add_1_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:

gradients/add_1_grad/ReshapeReshapegradients/add_1_grad/Sumgradients/add_1_grad/Shape*
T0*
Tshape0*
_output_shapes
:

gradients/add_1_grad/Sum_1Sumgradients/Fill,gradients/add_1_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:

gradients/add_1_grad/Reshape_1Reshapegradients/add_1_grad/Sum_1gradients/add_1_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
m
%gradients/add_1_grad/tuple/group_depsNoOp^gradients/add_1_grad/Reshape^gradients/add_1_grad/Reshape_1
Ó
-gradients/add_1_grad/tuple/control_dependencyIdentitygradients/add_1_grad/Reshape&^gradients/add_1_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/add_1_grad/Reshape*
_output_shapes
:
Ů
/gradients/add_1_grad/tuple/control_dependency_1Identitygradients/add_1_grad/Reshape_1&^gradients/add_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/add_1_grad/Reshape_1*
_output_shapes
:

gradients/loss_1_grad/ConstConst.^gradients/add_1_grad/tuple/control_dependency*
valueB
 *   @*
dtype0*
_output_shapes
: 
n
gradients/loss_1_grad/MulMulnorm/Squeezegradients/loss_1_grad/Const*
T0*
_output_shapes
:

gradients/loss_1_grad/Mul_1Mul-gradients/add_1_grad/tuple/control_dependencygradients/loss_1_grad/Mul*
T0*
_output_shapes
:

gradients/loss_2_grad/ConstConst0^gradients/add_1_grad/tuple/control_dependency_1*
valueB
 *   @*
dtype0*
_output_shapes
: 
p
gradients/loss_2_grad/MulMulnorm_1/Squeezegradients/loss_2_grad/Const*
T0*
_output_shapes
:

gradients/loss_2_grad/Mul_1Mul/gradients/add_1_grad/tuple/control_dependency_1gradients/loss_2_grad/Mul*
T0*
_output_shapes
:
s
!gradients/norm/Squeeze_grad/ShapeShape	norm/Sqrt*
T0*
out_type0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

#gradients/norm/Squeeze_grad/ReshapeReshapegradients/loss_1_grad/Mul_1!gradients/norm/Squeeze_grad/Shape*
T0*
Tshape0*
_output_shapes
:
w
#gradients/norm_1/Squeeze_grad/ShapeShapenorm_1/Sqrt*
T0*
out_type0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ł
%gradients/norm_1/Squeeze_grad/ReshapeReshapegradients/loss_2_grad/Mul_1#gradients/norm_1/Squeeze_grad/Shape*
T0*
Tshape0*
_output_shapes
:

!gradients/norm/Sqrt_grad/SqrtGradSqrtGrad	norm/Sqrt#gradients/norm/Squeeze_grad/Reshape*
T0*
_output_shapes
:

#gradients/norm_1/Sqrt_grad/SqrtGradSqrtGradnorm_1/Sqrt%gradients/norm_1/Squeeze_grad/Reshape*
T0*
_output_shapes
:
n
gradients/norm/Sum_grad/ShapeShapenorm/mul*
T0*
out_type0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ś
gradients/norm/Sum_grad/SizeSizegradients/norm/Sum_grad/Shape*
T0*
out_type0*0
_class&
$"loc:@gradients/norm/Sum_grad/Shape*
_output_shapes
: 
Ź
gradients/norm/Sum_grad/addAdd
norm/rangegradients/norm/Sum_grad/Size*
T0*0
_class&
$"loc:@gradients/norm/Sum_grad/Shape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Â
gradients/norm/Sum_grad/modFloorModgradients/norm/Sum_grad/addgradients/norm/Sum_grad/Size*
T0*0
_class&
$"loc:@gradients/norm/Sum_grad/Shape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ź
gradients/norm/Sum_grad/Shape_1Shapegradients/norm/Sum_grad/mod*
T0*
out_type0*0
_class&
$"loc:@gradients/norm/Sum_grad/Shape*
_output_shapes
:

#gradients/norm/Sum_grad/range/startConst*
value	B : *
dtype0*0
_class&
$"loc:@gradients/norm/Sum_grad/Shape*
_output_shapes
: 

#gradients/norm/Sum_grad/range/deltaConst*
value	B :*
dtype0*0
_class&
$"loc:@gradients/norm/Sum_grad/Shape*
_output_shapes
: 
ń
gradients/norm/Sum_grad/rangeRange#gradients/norm/Sum_grad/range/startgradients/norm/Sum_grad/Size#gradients/norm/Sum_grad/range/delta*

Tidx0*0
_class&
$"loc:@gradients/norm/Sum_grad/Shape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

"gradients/norm/Sum_grad/Fill/valueConst*
value	B :*
dtype0*0
_class&
$"loc:@gradients/norm/Sum_grad/Shape*
_output_shapes
: 
Ű
gradients/norm/Sum_grad/FillFillgradients/norm/Sum_grad/Shape_1"gradients/norm/Sum_grad/Fill/value*
T0*

index_type0*0
_class&
$"loc:@gradients/norm/Sum_grad/Shape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

%gradients/norm/Sum_grad/DynamicStitchDynamicStitchgradients/norm/Sum_grad/rangegradients/norm/Sum_grad/modgradients/norm/Sum_grad/Shapegradients/norm/Sum_grad/Fill*
T0*
N*0
_class&
$"loc:@gradients/norm/Sum_grad/Shape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

!gradients/norm/Sum_grad/Maximum/yConst*
value	B :*
dtype0*0
_class&
$"loc:@gradients/norm/Sum_grad/Shape*
_output_shapes
: 
Ô
gradients/norm/Sum_grad/MaximumMaximum%gradients/norm/Sum_grad/DynamicStitch!gradients/norm/Sum_grad/Maximum/y*
T0*0
_class&
$"loc:@gradients/norm/Sum_grad/Shape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ě
 gradients/norm/Sum_grad/floordivFloorDivgradients/norm/Sum_grad/Shapegradients/norm/Sum_grad/Maximum*
T0*0
_class&
$"loc:@gradients/norm/Sum_grad/Shape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ľ
gradients/norm/Sum_grad/ReshapeReshape!gradients/norm/Sqrt_grad/SqrtGrad%gradients/norm/Sum_grad/DynamicStitch*
T0*
Tshape0*
_output_shapes
:

gradients/norm/Sum_grad/TileTilegradients/norm/Sum_grad/Reshape gradients/norm/Sum_grad/floordiv*
T0*

Tmultiples0*
_output_shapes
:
r
gradients/norm_1/Sum_grad/ShapeShape
norm_1/mul*
T0*
out_type0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ź
gradients/norm_1/Sum_grad/SizeSizegradients/norm_1/Sum_grad/Shape*
T0*
out_type0*2
_class(
&$loc:@gradients/norm_1/Sum_grad/Shape*
_output_shapes
: 
´
gradients/norm_1/Sum_grad/addAddnorm_1/rangegradients/norm_1/Sum_grad/Size*
T0*2
_class(
&$loc:@gradients/norm_1/Sum_grad/Shape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ę
gradients/norm_1/Sum_grad/modFloorModgradients/norm_1/Sum_grad/addgradients/norm_1/Sum_grad/Size*
T0*2
_class(
&$loc:@gradients/norm_1/Sum_grad/Shape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
˛
!gradients/norm_1/Sum_grad/Shape_1Shapegradients/norm_1/Sum_grad/mod*
T0*
out_type0*2
_class(
&$loc:@gradients/norm_1/Sum_grad/Shape*
_output_shapes
:

%gradients/norm_1/Sum_grad/range/startConst*
value	B : *
dtype0*2
_class(
&$loc:@gradients/norm_1/Sum_grad/Shape*
_output_shapes
: 

%gradients/norm_1/Sum_grad/range/deltaConst*
value	B :*
dtype0*2
_class(
&$loc:@gradients/norm_1/Sum_grad/Shape*
_output_shapes
: 
ű
gradients/norm_1/Sum_grad/rangeRange%gradients/norm_1/Sum_grad/range/startgradients/norm_1/Sum_grad/Size%gradients/norm_1/Sum_grad/range/delta*

Tidx0*2
_class(
&$loc:@gradients/norm_1/Sum_grad/Shape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

$gradients/norm_1/Sum_grad/Fill/valueConst*
value	B :*
dtype0*2
_class(
&$loc:@gradients/norm_1/Sum_grad/Shape*
_output_shapes
: 
ă
gradients/norm_1/Sum_grad/FillFill!gradients/norm_1/Sum_grad/Shape_1$gradients/norm_1/Sum_grad/Fill/value*
T0*

index_type0*2
_class(
&$loc:@gradients/norm_1/Sum_grad/Shape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
¤
'gradients/norm_1/Sum_grad/DynamicStitchDynamicStitchgradients/norm_1/Sum_grad/rangegradients/norm_1/Sum_grad/modgradients/norm_1/Sum_grad/Shapegradients/norm_1/Sum_grad/Fill*
T0*
N*2
_class(
&$loc:@gradients/norm_1/Sum_grad/Shape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

#gradients/norm_1/Sum_grad/Maximum/yConst*
value	B :*
dtype0*2
_class(
&$loc:@gradients/norm_1/Sum_grad/Shape*
_output_shapes
: 
Ü
!gradients/norm_1/Sum_grad/MaximumMaximum'gradients/norm_1/Sum_grad/DynamicStitch#gradients/norm_1/Sum_grad/Maximum/y*
T0*2
_class(
&$loc:@gradients/norm_1/Sum_grad/Shape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ô
"gradients/norm_1/Sum_grad/floordivFloorDivgradients/norm_1/Sum_grad/Shape!gradients/norm_1/Sum_grad/Maximum*
T0*2
_class(
&$loc:@gradients/norm_1/Sum_grad/Shape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ť
!gradients/norm_1/Sum_grad/ReshapeReshape#gradients/norm_1/Sqrt_grad/SqrtGrad'gradients/norm_1/Sum_grad/DynamicStitch*
T0*
Tshape0*
_output_shapes
:
˘
gradients/norm_1/Sum_grad/TileTile!gradients/norm_1/Sum_grad/Reshape"gradients/norm_1/Sum_grad/floordiv*
T0*

Tmultiples0*
_output_shapes
:
{
gradients/norm/mul_grad/ShapeShapeboolean_mask/GatherV2*
T0*
out_type0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
}
gradients/norm/mul_grad/Shape_1Shapeboolean_mask/GatherV2*
T0*
out_type0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ă
-gradients/norm/mul_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/norm/mul_grad/Shapegradients/norm/mul_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
z
gradients/norm/mul_grad/MulMulgradients/norm/Sum_grad/Tileboolean_mask/GatherV2*
T0*
_output_shapes
:
Ž
gradients/norm/mul_grad/SumSumgradients/norm/mul_grad/Mul-gradients/norm/mul_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:

gradients/norm/mul_grad/ReshapeReshapegradients/norm/mul_grad/Sumgradients/norm/mul_grad/Shape*
T0*
Tshape0*
_output_shapes
:
|
gradients/norm/mul_grad/Mul_1Mulboolean_mask/GatherV2gradients/norm/Sum_grad/Tile*
T0*
_output_shapes
:
´
gradients/norm/mul_grad/Sum_1Sumgradients/norm/mul_grad/Mul_1/gradients/norm/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:

!gradients/norm/mul_grad/Reshape_1Reshapegradients/norm/mul_grad/Sum_1gradients/norm/mul_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
v
(gradients/norm/mul_grad/tuple/group_depsNoOp ^gradients/norm/mul_grad/Reshape"^gradients/norm/mul_grad/Reshape_1
ß
0gradients/norm/mul_grad/tuple/control_dependencyIdentitygradients/norm/mul_grad/Reshape)^gradients/norm/mul_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/norm/mul_grad/Reshape*
_output_shapes
:
ĺ
2gradients/norm/mul_grad/tuple/control_dependency_1Identity!gradients/norm/mul_grad/Reshape_1)^gradients/norm/mul_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients/norm/mul_grad/Reshape_1*
_output_shapes
:
m
gradients/norm_1/mul_grad/ShapeShapesub_1*
T0*
out_type0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
o
!gradients/norm_1/mul_grad/Shape_1Shapesub_1*
T0*
out_type0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
É
/gradients/norm_1/mul_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/norm_1/mul_grad/Shape!gradients/norm_1/mul_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
n
gradients/norm_1/mul_grad/MulMulgradients/norm_1/Sum_grad/Tilesub_1*
T0*
_output_shapes
:
´
gradients/norm_1/mul_grad/SumSumgradients/norm_1/mul_grad/Mul/gradients/norm_1/mul_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:

!gradients/norm_1/mul_grad/ReshapeReshapegradients/norm_1/mul_grad/Sumgradients/norm_1/mul_grad/Shape*
T0*
Tshape0*
_output_shapes
:
p
gradients/norm_1/mul_grad/Mul_1Mulsub_1gradients/norm_1/Sum_grad/Tile*
T0*
_output_shapes
:
ş
gradients/norm_1/mul_grad/Sum_1Sumgradients/norm_1/mul_grad/Mul_11gradients/norm_1/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
Ł
#gradients/norm_1/mul_grad/Reshape_1Reshapegradients/norm_1/mul_grad/Sum_1!gradients/norm_1/mul_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
|
*gradients/norm_1/mul_grad/tuple/group_depsNoOp"^gradients/norm_1/mul_grad/Reshape$^gradients/norm_1/mul_grad/Reshape_1
ç
2gradients/norm_1/mul_grad/tuple/control_dependencyIdentity!gradients/norm_1/mul_grad/Reshape+^gradients/norm_1/mul_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients/norm_1/mul_grad/Reshape*
_output_shapes
:
í
4gradients/norm_1/mul_grad/tuple/control_dependency_1Identity#gradients/norm_1/mul_grad/Reshape_1+^gradients/norm_1/mul_grad/tuple/group_deps*
T0*6
_class,
*(loc:@gradients/norm_1/mul_grad/Reshape_1*
_output_shapes
:
Ü
gradients/AddNAddN0gradients/norm/mul_grad/tuple/control_dependency2gradients/norm/mul_grad/tuple/control_dependency_1*
T0*
N*2
_class(
&$loc:@gradients/norm/mul_grad/Reshape*
_output_shapes
:
°
*gradients/boolean_mask/GatherV2_grad/ShapeShapeboolean_mask/Reshape*
T0*
out_type0	*'
_class
loc:@boolean_mask/Reshape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ö
,gradients/boolean_mask/GatherV2_grad/ToInt32Cast*gradients/boolean_mask/GatherV2_grad/Shape*

DstT0*
Truncate( *

SrcT0	*'
_class
loc:@boolean_mask/Reshape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
x
)gradients/boolean_mask/GatherV2_grad/SizeSizeboolean_mask/Squeeze*
T0	*
out_type0*
_output_shapes
: 
u
3gradients/boolean_mask/GatherV2_grad/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
Î
/gradients/boolean_mask/GatherV2_grad/ExpandDims
ExpandDims)gradients/boolean_mask/GatherV2_grad/Size3gradients/boolean_mask/GatherV2_grad/ExpandDims/dim*
T0*

Tdim0*
_output_shapes
:

8gradients/boolean_mask/GatherV2_grad/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:

:gradients/boolean_mask/GatherV2_grad/strided_slice/stack_1Const*
valueB: *
dtype0*
_output_shapes
:

:gradients/boolean_mask/GatherV2_grad/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Á
2gradients/boolean_mask/GatherV2_grad/strided_sliceStridedSlice,gradients/boolean_mask/GatherV2_grad/ToInt328gradients/boolean_mask/GatherV2_grad/strided_slice/stack:gradients/boolean_mask/GatherV2_grad/strided_slice/stack_1:gradients/boolean_mask/GatherV2_grad/strided_slice/stack_2*
Index0*
end_mask*
shrink_axis_mask *
T0*

begin_mask *
new_axis_mask *
ellipsis_mask *#
_output_shapes
:˙˙˙˙˙˙˙˙˙
r
0gradients/boolean_mask/GatherV2_grad/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 

+gradients/boolean_mask/GatherV2_grad/concatConcatV2/gradients/boolean_mask/GatherV2_grad/ExpandDims2gradients/boolean_mask/GatherV2_grad/strided_slice0gradients/boolean_mask/GatherV2_grad/concat/axis*
T0*
N*

Tidx0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ľ
,gradients/boolean_mask/GatherV2_grad/ReshapeReshapegradients/AddN+gradients/boolean_mask/GatherV2_grad/concat*
T0*
Tshape0*
_output_shapes
:
ź
.gradients/boolean_mask/GatherV2_grad/Reshape_1Reshapeboolean_mask/Squeeze/gradients/boolean_mask/GatherV2_grad/ExpandDims*
T0	*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
ä
gradients/AddN_1AddN2gradients/norm_1/mul_grad/tuple/control_dependency4gradients/norm_1/mul_grad/tuple/control_dependency_1*
T0*
N*4
_class*
(&loc:@gradients/norm_1/mul_grad/Reshape*
_output_shapes
:
h
gradients/sub_1_grad/ShapeShapeSum_1*
T0*
out_type0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
o
gradients/sub_1_grad/Shape_1Shape
DiagPart_1*
T0*
out_type0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
ş
*gradients/sub_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_1_grad/Shapegradients/sub_1_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙

gradients/sub_1_grad/SumSumgradients/AddN_1*gradients/sub_1_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:

gradients/sub_1_grad/ReshapeReshapegradients/sub_1_grad/Sumgradients/sub_1_grad/Shape*
T0*
Tshape0*
_output_shapes
:
Ą
gradients/sub_1_grad/Sum_1Sumgradients/AddN_1,gradients/sub_1_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
^
gradients/sub_1_grad/NegNeggradients/sub_1_grad/Sum_1*
T0*
_output_shapes
:

gradients/sub_1_grad/Reshape_1Reshapegradients/sub_1_grad/Neggradients/sub_1_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
m
%gradients/sub_1_grad/tuple/group_depsNoOp^gradients/sub_1_grad/Reshape^gradients/sub_1_grad/Reshape_1
Ó
-gradients/sub_1_grad/tuple/control_dependencyIdentitygradients/sub_1_grad/Reshape&^gradients/sub_1_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/sub_1_grad/Reshape*
_output_shapes
:
Ů
/gradients/sub_1_grad/tuple/control_dependency_1Identitygradients/sub_1_grad/Reshape_1&^gradients/sub_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/sub_1_grad/Reshape_1*
_output_shapes
:
u
)gradients/boolean_mask/Reshape_grad/ShapeShapesub*
T0*
out_type0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

?gradients/boolean_mask/Reshape_grad/Reshape/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

Agradients/boolean_mask/Reshape_grad/Reshape/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

Agradients/boolean_mask/Reshape_grad/Reshape/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Đ
9gradients/boolean_mask/Reshape_grad/Reshape/strided_sliceStridedSlice,gradients/boolean_mask/GatherV2_grad/ToInt32?gradients/boolean_mask/Reshape_grad/Reshape/strided_slice/stackAgradients/boolean_mask/Reshape_grad/Reshape/strided_slice/stack_1Agradients/boolean_mask/Reshape_grad/Reshape/strided_slice/stack_2*
Index0*
end_mask *
shrink_axis_mask*
T0*

begin_mask *
new_axis_mask *
ellipsis_mask *
_output_shapes
: 
¨
2gradients/boolean_mask/Reshape_grad/Reshape/tensorUnsortedSegmentSum,gradients/boolean_mask/GatherV2_grad/Reshape.gradients/boolean_mask/GatherV2_grad/Reshape_19gradients/boolean_mask/Reshape_grad/Reshape/strided_slice*
T0*
Tindices0	*
Tnumsegments0*
_output_shapes
:
Ć
+gradients/boolean_mask/Reshape_grad/ReshapeReshape2gradients/boolean_mask/Reshape_grad/Reshape/tensor)gradients/boolean_mask/Reshape_grad/Shape*
T0*
Tshape0*
_output_shapes
:
g
gradients/Sum_1_grad/ShapeShapeMuxP*
T0*
out_type0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

gradients/Sum_1_grad/SizeSizegradients/Sum_1_grad/Shape*
T0*
out_type0*-
_class#
!loc:@gradients/Sum_1_grad/Shape*
_output_shapes
: 
Ł
gradients/Sum_1_grad/addAddSum_1/reduction_indicesgradients/Sum_1_grad/Size*
T0*-
_class#
!loc:@gradients/Sum_1_grad/Shape*
_output_shapes
: 
Š
gradients/Sum_1_grad/modFloorModgradients/Sum_1_grad/addgradients/Sum_1_grad/Size*
T0*-
_class#
!loc:@gradients/Sum_1_grad/Shape*
_output_shapes
: 

gradients/Sum_1_grad/Shape_1Const*
valueB *
dtype0*-
_class#
!loc:@gradients/Sum_1_grad/Shape*
_output_shapes
: 

 gradients/Sum_1_grad/range/startConst*
value	B : *
dtype0*-
_class#
!loc:@gradients/Sum_1_grad/Shape*
_output_shapes
: 

 gradients/Sum_1_grad/range/deltaConst*
value	B :*
dtype0*-
_class#
!loc:@gradients/Sum_1_grad/Shape*
_output_shapes
: 
â
gradients/Sum_1_grad/rangeRange gradients/Sum_1_grad/range/startgradients/Sum_1_grad/Size gradients/Sum_1_grad/range/delta*

Tidx0*-
_class#
!loc:@gradients/Sum_1_grad/Shape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

gradients/Sum_1_grad/Fill/valueConst*
value	B :*
dtype0*-
_class#
!loc:@gradients/Sum_1_grad/Shape*
_output_shapes
: 
Â
gradients/Sum_1_grad/FillFillgradients/Sum_1_grad/Shape_1gradients/Sum_1_grad/Fill/value*
T0*

index_type0*-
_class#
!loc:@gradients/Sum_1_grad/Shape*
_output_shapes
: 

"gradients/Sum_1_grad/DynamicStitchDynamicStitchgradients/Sum_1_grad/rangegradients/Sum_1_grad/modgradients/Sum_1_grad/Shapegradients/Sum_1_grad/Fill*
T0*
N*-
_class#
!loc:@gradients/Sum_1_grad/Shape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

gradients/Sum_1_grad/Maximum/yConst*
value	B :*
dtype0*-
_class#
!loc:@gradients/Sum_1_grad/Shape*
_output_shapes
: 
Č
gradients/Sum_1_grad/MaximumMaximum"gradients/Sum_1_grad/DynamicStitchgradients/Sum_1_grad/Maximum/y*
T0*-
_class#
!loc:@gradients/Sum_1_grad/Shape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ŕ
gradients/Sum_1_grad/floordivFloorDivgradients/Sum_1_grad/Shapegradients/Sum_1_grad/Maximum*
T0*-
_class#
!loc:@gradients/Sum_1_grad/Shape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ť
gradients/Sum_1_grad/ReshapeReshape-gradients/sub_1_grad/tuple/control_dependency"gradients/Sum_1_grad/DynamicStitch*
T0*
Tshape0*
_output_shapes
:

gradients/Sum_1_grad/TileTilegradients/Sum_1_grad/Reshapegradients/Sum_1_grad/floordiv*
T0*

Tmultiples0*
_output_shapes
:
g
gradients/sub_grad/ShapeShapeO/read*
T0*
out_type0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
k
gradients/sub_grad/Shape_1ShapemuxPxMuT*
T0*
out_type0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
´
(gradients/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_grad/Shapegradients/sub_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
´
gradients/sub_grad/SumSum+gradients/boolean_mask/Reshape_grad/Reshape(gradients/sub_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:

gradients/sub_grad/ReshapeReshapegradients/sub_grad/Sumgradients/sub_grad/Shape*
T0*
Tshape0*
_output_shapes
:
¸
gradients/sub_grad/Sum_1Sum+gradients/boolean_mask/Reshape_grad/Reshape*gradients/sub_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
Z
gradients/sub_grad/NegNeggradients/sub_grad/Sum_1*
T0*
_output_shapes
:

gradients/sub_grad/Reshape_1Reshapegradients/sub_grad/Neggradients/sub_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
g
#gradients/sub_grad/tuple/group_depsNoOp^gradients/sub_grad/Reshape^gradients/sub_grad/Reshape_1
Ë
+gradients/sub_grad/tuple/control_dependencyIdentitygradients/sub_grad/Reshape$^gradients/sub_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/sub_grad/Reshape*
_output_shapes
:
Ń
-gradients/sub_grad/tuple/control_dependency_1Identitygradients/sub_grad/Reshape_1$^gradients/sub_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/sub_grad/Reshape_1*
_output_shapes
:

gradients/MuxP_grad/MatMulBatchMatMulgradients/Sum_1_grad/TileP/read*
T0*
adj_y(*
adj_x( *
_output_shapes
:

gradients/MuxP_grad/MatMul_1BatchMatMulmu/readgradients/Sum_1_grad/Tile*
T0*
adj_y( *
adj_x(*
_output_shapes
:
h
$gradients/MuxP_grad/tuple/group_depsNoOp^gradients/MuxP_grad/MatMul^gradients/MuxP_grad/MatMul_1
Í
,gradients/MuxP_grad/tuple/control_dependencyIdentitygradients/MuxP_grad/MatMul%^gradients/MuxP_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/MuxP_grad/MatMul*
_output_shapes
:
Ó
.gradients/MuxP_grad/tuple/control_dependency_1Identitygradients/MuxP_grad/MatMul_1%^gradients/MuxP_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/MuxP_grad/MatMul_1*
_output_shapes
:
 
gradients/muxPxMuT_grad/MatMulBatchMatMul-gradients/sub_grad/tuple/control_dependency_1PxMuT*
T0*
adj_y(*
adj_x( *
_output_shapes
:
¤
 gradients/muxPxMuT_grad/MatMul_1BatchMatMulmu/read-gradients/sub_grad/tuple/control_dependency_1*
T0*
adj_y( *
adj_x(*
_output_shapes
:
t
(gradients/muxPxMuT_grad/tuple/group_depsNoOp^gradients/muxPxMuT_grad/MatMul!^gradients/muxPxMuT_grad/MatMul_1
Ý
0gradients/muxPxMuT_grad/tuple/control_dependencyIdentitygradients/muxPxMuT_grad/MatMul)^gradients/muxPxMuT_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/muxPxMuT_grad/MatMul*
_output_shapes
:
ă
2gradients/muxPxMuT_grad/tuple/control_dependency_1Identity gradients/muxPxMuT_grad/MatMul_1)^gradients/muxPxMuT_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/muxPxMuT_grad/MatMul_1*
_output_shapes
:
¨
gradients/PxMuT_grad/MatMulBatchMatMul2gradients/muxPxMuT_grad/tuple/control_dependency_1transpose_1*
T0*
adj_y(*
adj_x( *
_output_shapes
:
Ľ
gradients/PxMuT_grad/MatMul_1BatchMatMulP/read2gradients/muxPxMuT_grad/tuple/control_dependency_1*
T0*
adj_y( *
adj_x(*
_output_shapes
:
k
%gradients/PxMuT_grad/tuple/group_depsNoOp^gradients/PxMuT_grad/MatMul^gradients/PxMuT_grad/MatMul_1
Ń
-gradients/PxMuT_grad/tuple/control_dependencyIdentitygradients/PxMuT_grad/MatMul&^gradients/PxMuT_grad/tuple/group_deps*
T0*.
_class$
" loc:@gradients/PxMuT_grad/MatMul*
_output_shapes
:
×
/gradients/PxMuT_grad/tuple/control_dependency_1Identitygradients/PxMuT_grad/MatMul_1&^gradients/PxMuT_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/PxMuT_grad/MatMul_1*
_output_shapes
:

,gradients/transpose_1_grad/InvertPermutationInvertPermutationtranspose_1/sub_1*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ŕ
$gradients/transpose_1_grad/transpose	Transpose/gradients/PxMuT_grad/tuple/control_dependency_1,gradients/transpose_1_grad/InvertPermutation*
T0*
Tperm0*
_output_shapes
:
ů
gradients/AddN_2AddN,gradients/MuxP_grad/tuple/control_dependency0gradients/muxPxMuT_grad/tuple/control_dependency$gradients/transpose_1_grad/transpose*
T0*
N*-
_class#
!loc:@gradients/MuxP_grad/MatMul*
_output_shapes
:
Ť
'train_op/update_mu/ApplyGradientDescentApplyGradientDescentmulr/readgradients/AddN_2*
T0*
use_locking( *
_class
	loc:@mu*
_output_shapes
:
:
train_opNoOp(^train_op/update_mu/ApplyGradientDescent
K

train_lossIdentityadd_1	^train_op*
T0*
_output_shapes
:
H
initNoOp	^O/Assign	^P/Assign
^lr/Assign^mask/Assign
^mu/Assign
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 

save/StringJoin/inputs_1Const*<
value3B1 B+_temp_2d9196ec94ce4f989231d182314d2f8f/part*
dtype0*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
	separator *
_output_shapes
: 
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

save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 

save/SaveV2/tensor_namesConst"/device:CPU:0*'
valueBBOBPBlrBmaskBmu*
dtype0*
_output_shapes
:
|
save/SaveV2/shape_and_slicesConst"/device:CPU:0*
valueBB B B B B *
dtype0*
_output_shapes
:

save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesOPlrmaskmu"/device:CPU:0*
dtypes	
2

 
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
Ź
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*

axis *
T0*
N*
_output_shapes
:

save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0*
delete_old_dirs(

save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 

save/RestoreV2/tensor_namesConst"/device:CPU:0*'
valueBBOBPBlrBmaskBmu*
dtype0*
_output_shapes
:

save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
valueBB B B B B *
dtype0*
_output_shapes
:
ł
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*
dtypes	
2
*(
_output_shapes
:::::

save/AssignAssignOsave/RestoreV2*
T0*
use_locking(*
validate_shape( *
_class

loc:@O*
_output_shapes
:

save/Assign_1AssignPsave/RestoreV2:1*
T0*
use_locking(*
validate_shape( *
_class

loc:@P*
_output_shapes
:

save/Assign_2Assignlrsave/RestoreV2:2*
T0*
use_locking(*
validate_shape(*
_class
	loc:@lr*
_output_shapes
: 

save/Assign_3Assignmasksave/RestoreV2:3*
T0
*
use_locking(*
validate_shape( *
_class
	loc:@mask*
_output_shapes
:

save/Assign_4Assignmusave/RestoreV2:4*
T0*
use_locking(*
validate_shape( *
_class
	loc:@mu*
_output_shapes
:
h
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4
-
save/restore_allNoOp^save/restore_shard"<
save/Const:0save/Identity:0save/restore_all (5 @F8"B
trainable_variables+)
'
mu:0	mu/Assign	mu/read:02zeros:08"ç
	variablesŮÖ
'
mu:0	mu/Assign	mu/read:02zeros:08
$
P:0P/AssignP/read:02	zeros_1:0
-
mask:0mask/Assignmask/read:02	zeros_2:0
$
O:0O/AssignO/read:02	zeros_3:0
0
lr:0	lr/Assign	lr/read:02lr/initial_value:0"
train_op


train_op*R

generate_OD

L_aug
l_aug:0
O
o_initialized:0e
generate_O
??
??
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ?
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
?
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype?
.
Identity

input"T
output"T"	
Ttype
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype?
b
LookupTableImportV2
table_handle
keys"Tin
values"Tout"
Tintype"
Touttype?
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
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
?
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	?
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
f
TopKV2

input"T
k
values"T
indices"
sortedbool("
Ttype:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.9.12v2.9.0-18-gd8ce9f9c3018??	
l

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name5277*
value_dtype0	
p
dense_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_5/bias
i
 dense_5/bias/Read/ReadVariableOpReadVariableOpdense_5/bias*
_output_shapes
: *
dtype0
x
dense_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *
shared_namedense_5/kernel
q
"dense_5/kernel/Read/ReadVariableOpReadVariableOpdense_5/kernel*
_output_shapes

:@ *
dtype0
p
dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_4/bias
i
 dense_4/bias/Read/ReadVariableOpReadVariableOpdense_4/bias*
_output_shapes
:@*
dtype0
x
dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: @*
shared_namedense_4/kernel
q
"dense_4/kernel/Read/ReadVariableOpReadVariableOpdense_4/kernel*
_output_shapes

: @*
dtype0
?
embedding_2/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	? *'
shared_nameembedding_2/embeddings
?
*embedding_2/embeddings/Read/ReadVariableOpReadVariableOpembedding_2/embeddings*
_output_shapes
:	? *
dtype0
q

candidatesVarHandleOp*
_output_shapes
: *
dtype0*
shape:	? *
shared_name
candidates
j
candidates/Read/ReadVariableOpReadVariableOp
candidates*
_output_shapes
:	? *
dtype0
o
identifiersVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameidentifiers
h
identifiers/Read/ReadVariableOpReadVariableOpidentifiers*
_output_shapes	
:?*
dtype0
G
ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 
?$
Const_1Const*
_output_shapes	
:?*
dtype0*?$
value?$B?$?B0B1B2B3B4B5B6B7B8B9B10B11B12B13B14B15B16B17B18B19B20B21B22B23B24B25B26B27B28B29B30B31B32B33B34B35B36B37B38B39B40B41B42B43B44B45B46B47B48B49B50B51B52B53B54B55B56B57B58B59B60B61B62B63B64B65B66B67B68B69B70B71B72B73B74B75B76B77B78B79B80B81B82B83B84B85B86B87B88B89B90B91B92B93B94B95B96B97B98B99B100B101B102B103B104B105B106B107B108B109B110B111B112B113B114B115B116B117B118B119B120B121B122B123B124B125B126B127B128B129B130B131B132B133B134B135B136B137B138B139B140B141B142B143B144B145B146B147B148B149B150B151B152B153B154B155B156B157B158B159B160B161B162B163B164B165B166B167B168B169B170B171B172B173B174B175B176B177B178B179B180B181B182B183B184B185B186B187B188B189B190B191B192B193B194B195B196B197B198B199B200B201B202B203B204B205B206B207B208B209B210B211B212B213B214B215B216B217B218B219B220B221B222B223B224B225B226B227B228B229B230B231B232B233B234B235B236B237B238B239B240B241B242B243B244B245B246B247B248B249B250B251B252B253B254B255B256B257B258B259B260B261B262B263B264B265B266B267B268B269B270B271B272B273B274B275B276B277B278B279B280B281B282B283B284B285B286B287B288B289B290B291B292B293B294B295B296B297B298B299B300B301B302B303B304B305B306B307B308B309B310B311B312B313B314B315B316B317B318B319B320B321B322B323B324B325B326B327B328B329B330B331B332B333B334B335B336B337B338B339B340B341B342B343B344B345B346B347B348B349B350B351B352B353B354B355B356B357B358B359B360B361B362B363B364B365B366B367B368B369B370B371B372B373B374B375B376B377B378B379B380B381B382B383B384B385B386B387B388B389B390B391B392B393B394B395B396B397B398B399B400B401B402B403B404B405B406B407B408B409B410B411B412B413B414B415B416B417B418B419B420B421B422B423B424B425B426B427B428B429B430B431B432B433B434B435B436B437B438B439B440B441B442B443B444B445B446B447B448B449B450B451B452B453B454B455B456B457B458B459B460B461B462B463B464B465B466B467B468B469B470B471B472B473B474B475B476B477B478B479B480B481B482B483B484B485B486B487B488B489B490B491B492B493B494B495B496B497B498B499B500B501B502B503B504B505B506B507B508B509B510B511B512B513B514B515B516B517B518B519B520B521B522B523B524B525B526B527B528B529B530B531B532B533B534B535B536B537B538B539B540B541B542B543B544B545B546B547B548B549B550B551B552B553B554B555B556B557B558B559B560B561B562B563B564B565B566B567B568B569B570B571B572B573B574B575B576B577B578B579B580B581B582B583B584B585B586B587B588B589B590B591B592B593B594B595B596B597B598B599B600B601B602B603B604B605B606B607B608B609B610B611B612B613B614B615B616B617B618B619B620B621B622B623B624B625B626B627B628B629B630B631B632B633B634B635B636B637B638B639B640B641B642B643B644B645B646B647B648B649B650B651B652B653B654B655B656B657B658B659B660B661B662B663B664B665B666B667B668B669B670B671B672B673B674B675B676B677B678B679B680B681B682B683B684B685B686B687B688B689B690B691B692B693B694B695B696B697B698B699B700B701B702B703B704B705B706B707B708B709B710B711B712B713B714B715B716B717B718B719B720B721B722B723B724B725B726B727B728B729B730B731B732B733B734B735B736B737B738B739B740B741B742B743B744B745B746B747B748B749B750B751B752B753B754B755B756B757B758B759B760B761B762B763B764B765B766B767B768B769B770B771B772B773B774B775B776B777B778B779B780B781B782B783B784B785B786B787B788B789B790B791B792B793B794B795B796B797B798B799B800B801B802B803B804B805B806B807B808B809B810B811B812B813B814B815B816B817B818B819B820B821B822B823B824B825B826B827B828B829B830B831B832B833B834B835B836B837B838B839B840B841B842B843B844B845B846B847B848B849B850B851B852B853B854B855B856B857B858B859B860B861B862B863B864B865B866B867B868B869B870B871B872B873B874B875B876B877B878B879B880B881B882B883B884B885B886B887B888B889B890B891B892B893B894B895B896B897B898B899B900B901B902B903B904B905B906B907B908B909B910B911B912B913B914B915B916B917B918B919B920B921B922B923B924B925B926B927B928B929B930B931B932B933B934B935B936B937B938B939B940B941B942
?;
Const_2Const*
_output_shapes	
:?*
dtype0	*?;
value?;B?;	?"?:                                                        	       
                                                                                                                                                                  !       "       #       $       %       &       '       (       )       *       +       ,       -       .       /       0       1       2       3       4       5       6       7       8       9       :       ;       <       =       >       ?       @       A       B       C       D       E       F       G       H       I       J       K       L       M       N       O       P       Q       R       S       T       U       V       W       X       Y       Z       [       \       ]       ^       _       `       a       b       c       d       e       f       g       h       i       j       k       l       m       n       o       p       q       r       s       t       u       v       w       x       y       z       {       |       }       ~              ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?                                                              	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      
?
StatefulPartitionedCallStatefulPartitionedCall
hash_tableConst_1Const_2*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *#
fR
__inference_<lambda>_55833
&
NoOpNoOp^StatefulPartitionedCall
?0
Const_3Const"/device:CPU:0*
_output_shapes
: *
dtype0*?0
value?0B?0 B?0
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
query_model
	identifiers
	_identifiers


candidates

_candidates
query_with_exclusions

signatures*
5
0
1
2
3
4
	5

6*
'
0
1
2
3
4*
* 
?
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
trace_0
trace_1
trace_2
trace_3* 
6
trace_0
trace_1
trace_2
trace_3* 
* 
?
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses
%embedding_model
&dense_layers*
KE
VARIABLE_VALUEidentifiers&identifiers/.ATTRIBUTES/VARIABLE_VALUE*
IC
VARIABLE_VALUE
candidates%candidates/.ATTRIBUTES/VARIABLE_VALUE*
* 

'serving_default* 
VP
VARIABLE_VALUEembedding_2/embeddings&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEdense_4/kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEdense_4/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEdense_5/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEdense_5/bias&variables/4/.ATTRIBUTES/VARIABLE_VALUE*

	0

1*

0*
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
'
0
1
2
3
4*
'
0
1
2
3
4*
* 
?
(non_trainable_variables

)layers
*metrics
+layer_regularization_losses
,layer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses*
6
-trace_0
.trace_1
/trace_2
0trace_3* 
6
1trace_0
2trace_1
3trace_2
4trace_3* 
?
5	variables
6trainable_variables
7regularization_losses
8	keras_api
9__call__
*:&call_and_return_all_conditional_losses
;user_embedding*
?
<layer_with_weights-0
<layer-0
=layer_with_weights-1
=layer-1
>	variables
?trainable_variables
@regularization_losses
A	keras_api
B__call__
*C&call_and_return_all_conditional_losses*
* 
* 

%0
&1*
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

0*

0*
* 
?
Dnon_trainable_variables

Elayers
Fmetrics
Glayer_regularization_losses
Hlayer_metrics
5	variables
6trainable_variables
7regularization_losses
9__call__
*:&call_and_return_all_conditional_losses
&:"call_and_return_conditional_losses*
6
Itrace_0
Jtrace_1
Ktrace_2
Ltrace_3* 
6
Mtrace_0
Ntrace_1
Otrace_2
Ptrace_3* 
?
Qlayer-0
Rlayer_with_weights-0
Rlayer-1
S	variables
Ttrainable_variables
Uregularization_losses
V	keras_api
W__call__
*X&call_and_return_all_conditional_losses*
?
Y	variables
Ztrainable_variables
[regularization_losses
\	keras_api
]__call__
*^&call_and_return_all_conditional_losses

kernel
bias*
?
_	variables
`trainable_variables
aregularization_losses
b	keras_api
c__call__
*d&call_and_return_all_conditional_losses

kernel
bias*
 
0
1
2
3*
 
0
1
2
3*
* 
?
enon_trainable_variables

flayers
gmetrics
hlayer_regularization_losses
ilayer_metrics
>	variables
?trainable_variables
@regularization_losses
B__call__
*C&call_and_return_all_conditional_losses
&C"call_and_return_conditional_losses*
6
jtrace_0
ktrace_1
ltrace_2
mtrace_3* 
6
ntrace_0
otrace_1
ptrace_2
qtrace_3* 
* 

;0*
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
#
r	keras_api
slookup_table* 
?
t	variables
utrainable_variables
vregularization_losses
w	keras_api
x__call__
*y&call_and_return_all_conditional_losses

embeddings*

0*

0*
* 
?
znon_trainable_variables

{layers
|metrics
}layer_regularization_losses
~layer_metrics
S	variables
Ttrainable_variables
Uregularization_losses
W__call__
*X&call_and_return_all_conditional_losses
&X"call_and_return_conditional_losses*
9
trace_0
?trace_1
?trace_2
?trace_3* 
:
?trace_0
?trace_1
?trace_2
?trace_3* 

0
1*

0
1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
Y	variables
Ztrainable_variables
[regularization_losses
]__call__
*^&call_and_return_all_conditional_losses
&^"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 

0
1*

0
1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
_	variables
`trainable_variables
aregularization_losses
c__call__
*d&call_and_return_all_conditional_losses
&d"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
* 

<0
=1*
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
V
?_initializer
?_create_resource
?_initialize
?_destroy_resource* 

0*

0*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
t	variables
utrainable_variables
vregularization_losses
x__call__
*y&call_and_return_all_conditional_losses
&y"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
* 

Q0
R1*
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

?trace_0* 

?trace_0* 

?trace_0* 
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
r
serving_default_input_1Placeholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCall_1StatefulPartitionedCallserving_default_input_1
hash_tableConstembedding_2/embeddingsdense_4/kerneldense_4/biasdense_5/kerneldense_5/bias
candidatesidentifiers*
Tin
2
	*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????
:?????????
*)
_read_only_resource_inputs
		*0
config_proto 

CPU

GPU2*0J 8? *,
f'R%
#__inference_signature_wrapper_55372
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameidentifiers/Read/ReadVariableOpcandidates/Read/ReadVariableOp*embedding_2/embeddings/Read/ReadVariableOp"dense_4/kernel/Read/ReadVariableOp dense_4/bias/Read/ReadVariableOp"dense_5/kernel/Read/ReadVariableOp dense_5/bias/Read/ReadVariableOpConst_3*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *'
f"R 
__inference__traced_save_55883
?
StatefulPartitionedCall_3StatefulPartitionedCallsaver_filenameidentifiers
candidatesembedding_2/embeddingsdense_4/kerneldense_4/biasdense_5/kerneldense_5/bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? **
f%R#
!__inference__traced_restore_55914??
?
?
G__inference_sequential_5_layer_call_and_return_conditional_losses_54857

inputs
dense_4_54835: @
dense_4_54837:@
dense_5_54851:@ 
dense_5_54853: 
identity??dense_4/StatefulPartitionedCall?dense_5/StatefulPartitionedCall?
dense_4/StatefulPartitionedCallStatefulPartitionedCallinputsdense_4_54835dense_4_54837*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_54834?
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_54851dense_5_54853*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_54850w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? : : : : 2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
H__inference_query_model_1_layer_call_and_return_conditional_losses_55051

inputs
user_model_1_55034
user_model_1_55036	%
user_model_1_55038:	? $
sequential_5_55041: @ 
sequential_5_55043:@$
sequential_5_55045:@  
sequential_5_55047: 
identity??$sequential_5/StatefulPartitionedCall?$user_model_1/StatefulPartitionedCall?
$user_model_1/StatefulPartitionedCallStatefulPartitionedCallinputsuser_model_1_55034user_model_1_55036user_model_1_55038*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_user_model_1_layer_call_and_return_conditional_losses_54770?
$sequential_5/StatefulPartitionedCallStatefulPartitionedCall-user_model_1/StatefulPartitionedCall:output:0sequential_5_55041sequential_5_55043sequential_5_55045sequential_5_55047*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_sequential_5_layer_call_and_return_conditional_losses_54917|
IdentityIdentity-sequential_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp%^sequential_5/StatefulPartitionedCall%^user_model_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : : : : : 2L
$sequential_5/StatefulPartitionedCall$sequential_5/StatefulPartitionedCall2L
$user_model_1/StatefulPartitionedCall$user_model_1/StatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?

?
G__inference_user_model_1_layer_call_and_return_conditional_losses_54735
user_id
sequential_4_54725
sequential_4_54727	%
sequential_4_54729:	? 
identity??$sequential_4/StatefulPartitionedCall?
$sequential_4/StatefulPartitionedCallStatefulPartitionedCalluser_idsequential_4_54725sequential_4_54727sequential_4_54729*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_sequential_4_layer_call_and_return_conditional_losses_54635S
concat/concat_dimConst*
_output_shapes
: *
dtype0*
value	B :z
concat/concatIdentity-sequential_4/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:????????? e
IdentityIdentityconcat/concat:output:0^NoOp*
T0*'
_output_shapes
:????????? m
NoOpNoOp%^sequential_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 2L
$sequential_4/StatefulPartitionedCall$sequential_4/StatefulPartitionedCall:L H
#
_output_shapes
:?????????
!
_user_specified_name	user_id:

_output_shapes
: 
?
?
G__inference_sequential_5_layer_call_and_return_conditional_losses_54917

inputs
dense_4_54906: @
dense_4_54908:@
dense_5_54911:@ 
dense_5_54913: 
identity??dense_4/StatefulPartitionedCall?dense_5/StatefulPartitionedCall?
dense_4/StatefulPartitionedCallStatefulPartitionedCallinputsdense_4_54906dense_4_54908*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_54834?
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_54911dense_5_54913*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_54850w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? : : : : 2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
H__inference_query_model_1_layer_call_and_return_conditional_losses_55107
input_1
user_model_1_55090
user_model_1_55092	%
user_model_1_55094:	? $
sequential_5_55097: @ 
sequential_5_55099:@$
sequential_5_55101:@  
sequential_5_55103: 
identity??$sequential_5/StatefulPartitionedCall?$user_model_1/StatefulPartitionedCall?
$user_model_1/StatefulPartitionedCallStatefulPartitionedCallinput_1user_model_1_55090user_model_1_55092user_model_1_55094*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_user_model_1_layer_call_and_return_conditional_losses_54735?
$sequential_5/StatefulPartitionedCallStatefulPartitionedCall-user_model_1/StatefulPartitionedCall:output:0sequential_5_55097sequential_5_55099sequential_5_55101sequential_5_55103*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_sequential_5_layer_call_and_return_conditional_losses_54857|
IdentityIdentity-sequential_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp%^sequential_5/StatefulPartitionedCall%^user_model_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : : : : : 2L
$sequential_5/StatefulPartitionedCall$sequential_5/StatefulPartitionedCall2L
$user_model_1/StatefulPartitionedCall$user_model_1/StatefulPartitionedCall:L H
#
_output_shapes
:?????????
!
_user_specified_name	input_1:

_output_shapes
: 
?
?
F__inference_embedding_2_layer_call_and_return_conditional_losses_55807

inputs	)
embedding_lookup_55801:	? 
identity??embedding_lookup?
embedding_lookupResourceGatherembedding_lookup_55801inputs*
Tindices0	*)
_class
loc:@embedding_lookup/55801*'
_output_shapes
:????????? *
dtype0?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/55801*'
_output_shapes
:????????? }
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? s
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:????????? Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:?????????: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
,__inference_sequential_4_layer_call_fn_55726

inputs
unknown
	unknown_0	
	unknown_1:	? 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_sequential_4_layer_call_and_return_conditional_losses_54676o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
?
G__inference_sequential_4_layer_call_and_return_conditional_losses_55752

inputs>
:string_lookup_2_none_lookup_lookuptablefindv2_table_handle?
;string_lookup_2_none_lookup_lookuptablefindv2_default_value	5
"embedding_2_embedding_lookup_55746:	? 
identity??embedding_2/embedding_lookup?-string_lookup_2/None_Lookup/LookupTableFindV2?
-string_lookup_2/None_Lookup/LookupTableFindV2LookupTableFindV2:string_lookup_2_none_lookup_lookuptablefindv2_table_handleinputs;string_lookup_2_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
string_lookup_2/IdentityIdentity6string_lookup_2/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
embedding_2/embedding_lookupResourceGather"embedding_2_embedding_lookup_55746!string_lookup_2/Identity:output:0*
Tindices0	*5
_class+
)'loc:@embedding_2/embedding_lookup/55746*'
_output_shapes
:????????? *
dtype0?
%embedding_2/embedding_lookup/IdentityIdentity%embedding_2/embedding_lookup:output:0*
T0*5
_class+
)'loc:@embedding_2/embedding_lookup/55746*'
_output_shapes
:????????? ?
'embedding_2/embedding_lookup/Identity_1Identity.embedding_2/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? 
IdentityIdentity0embedding_2/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp^embedding_2/embedding_lookup.^string_lookup_2/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 2<
embedding_2/embedding_lookupembedding_2/embedding_lookup2^
-string_lookup_2/None_Lookup/LookupTableFindV2-string_lookup_2/None_Lookup/LookupTableFindV2:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
:
__inference__creator_55812
identity??
hash_tablel

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name5277*
value_dtype0	W
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: S
NoOpNoOp^hash_table*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
?
?
F__inference_brute_force_layer_call_and_return_conditional_losses_55316
input_1
query_model_1_55290
query_model_1_55292	&
query_model_1_55294:	? %
query_model_1_55296: @!
query_model_1_55298:@%
query_model_1_55300:@ !
query_model_1_55302: 1
matmul_readvariableop_resource:	? 
gather_resource:	?

identity_1

identity_2??Gather?MatMul/ReadVariableOp?%query_model_1/StatefulPartitionedCall?
%query_model_1/StatefulPartitionedCallStatefulPartitionedCallinput_1query_model_1_55290query_model_1_55292query_model_1_55294query_model_1_55296query_model_1_55298query_model_1_55300query_model_1_55302*
Tin

2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_query_model_1_layer_call_and_return_conditional_losses_54993u
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	? *
dtype0?
MatMulMatMul.query_model_1/StatefulPartitionedCall:output:0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????*
transpose_b(J
TopKV2/kConst*
_output_shapes
: *
dtype0*
value	B :
z
TopKV2TopKV2MatMul:product:0TopKV2/k:output:0*
T0*:
_output_shapes(
&:?????????
:?????????
?
GatherResourceGathergather_resourceTopKV2:indices:0*
Tindices0*'
_output_shapes
:?????????
*
dtype0W
IdentityIdentityGather:output:0*
T0*'
_output_shapes
:?????????
`

Identity_1IdentityTopKV2:values:0^NoOp*
T0*'
_output_shapes
:?????????
b

Identity_2IdentityIdentity:output:0^NoOp*
T0*'
_output_shapes
:?????????
?
NoOpNoOp^Gather^MatMul/ReadVariableOp&^query_model_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : : : 2
GatherGather2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2N
%query_model_1/StatefulPartitionedCall%query_model_1/StatefulPartitionedCall:L H
#
_output_shapes
:?????????
!
_user_specified_name	input_1:

_output_shapes
: 
?:
?	
F__inference_brute_force_layer_call_and_return_conditional_losses_55460
queriesf
bquery_model_1_user_model_1_sequential_4_string_lookup_2_none_lookup_lookuptablefindv2_table_handleg
cquery_model_1_user_model_1_sequential_4_string_lookup_2_none_lookup_lookuptablefindv2_default_value	]
Jquery_model_1_user_model_1_sequential_4_embedding_2_embedding_lookup_55429:	? S
Aquery_model_1_sequential_5_dense_4_matmul_readvariableop_resource: @P
Bquery_model_1_sequential_5_dense_4_biasadd_readvariableop_resource:@S
Aquery_model_1_sequential_5_dense_5_matmul_readvariableop_resource:@ P
Bquery_model_1_sequential_5_dense_5_biasadd_readvariableop_resource: 1
matmul_readvariableop_resource:	? 
gather_resource:	?

identity_1

identity_2??Gather?MatMul/ReadVariableOp?9query_model_1/sequential_5/dense_4/BiasAdd/ReadVariableOp?8query_model_1/sequential_5/dense_4/MatMul/ReadVariableOp?9query_model_1/sequential_5/dense_5/BiasAdd/ReadVariableOp?8query_model_1/sequential_5/dense_5/MatMul/ReadVariableOp?Dquery_model_1/user_model_1/sequential_4/embedding_2/embedding_lookup?Uquery_model_1/user_model_1/sequential_4/string_lookup_2/None_Lookup/LookupTableFindV2?
Uquery_model_1/user_model_1/sequential_4/string_lookup_2/None_Lookup/LookupTableFindV2LookupTableFindV2bquery_model_1_user_model_1_sequential_4_string_lookup_2_none_lookup_lookuptablefindv2_table_handlequeriescquery_model_1_user_model_1_sequential_4_string_lookup_2_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
@query_model_1/user_model_1/sequential_4/string_lookup_2/IdentityIdentity^query_model_1/user_model_1/sequential_4/string_lookup_2/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
Dquery_model_1/user_model_1/sequential_4/embedding_2/embedding_lookupResourceGatherJquery_model_1_user_model_1_sequential_4_embedding_2_embedding_lookup_55429Iquery_model_1/user_model_1/sequential_4/string_lookup_2/Identity:output:0*
Tindices0	*]
_classS
QOloc:@query_model_1/user_model_1/sequential_4/embedding_2/embedding_lookup/55429*'
_output_shapes
:????????? *
dtype0?
Mquery_model_1/user_model_1/sequential_4/embedding_2/embedding_lookup/IdentityIdentityMquery_model_1/user_model_1/sequential_4/embedding_2/embedding_lookup:output:0*
T0*]
_classS
QOloc:@query_model_1/user_model_1/sequential_4/embedding_2/embedding_lookup/55429*'
_output_shapes
:????????? ?
Oquery_model_1/user_model_1/sequential_4/embedding_2/embedding_lookup/Identity_1IdentityVquery_model_1/user_model_1/sequential_4/embedding_2/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? n
,query_model_1/user_model_1/concat/concat_dimConst*
_output_shapes
: *
dtype0*
value	B :?
(query_model_1/user_model_1/concat/concatIdentityXquery_model_1/user_model_1/sequential_4/embedding_2/embedding_lookup/Identity_1:output:0*
T0*'
_output_shapes
:????????? ?
8query_model_1/sequential_5/dense_4/MatMul/ReadVariableOpReadVariableOpAquery_model_1_sequential_5_dense_4_matmul_readvariableop_resource*
_output_shapes

: @*
dtype0?
)query_model_1/sequential_5/dense_4/MatMulMatMul1query_model_1/user_model_1/concat/concat:output:0@query_model_1/sequential_5/dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
9query_model_1/sequential_5/dense_4/BiasAdd/ReadVariableOpReadVariableOpBquery_model_1_sequential_5_dense_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
*query_model_1/sequential_5/dense_4/BiasAddBiasAdd3query_model_1/sequential_5/dense_4/MatMul:product:0Aquery_model_1/sequential_5/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
'query_model_1/sequential_5/dense_4/ReluRelu3query_model_1/sequential_5/dense_4/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@?
8query_model_1/sequential_5/dense_5/MatMul/ReadVariableOpReadVariableOpAquery_model_1_sequential_5_dense_5_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0?
)query_model_1/sequential_5/dense_5/MatMulMatMul5query_model_1/sequential_5/dense_4/Relu:activations:0@query_model_1/sequential_5/dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ?
9query_model_1/sequential_5/dense_5/BiasAdd/ReadVariableOpReadVariableOpBquery_model_1_sequential_5_dense_5_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
*query_model_1/sequential_5/dense_5/BiasAddBiasAdd3query_model_1/sequential_5/dense_5/MatMul:product:0Aquery_model_1/sequential_5/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? u
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	? *
dtype0?
MatMulMatMul3query_model_1/sequential_5/dense_5/BiasAdd:output:0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????*
transpose_b(J
TopKV2/kConst*
_output_shapes
: *
dtype0*
value	B :
z
TopKV2TopKV2MatMul:product:0TopKV2/k:output:0*
T0*:
_output_shapes(
&:?????????
:?????????
?
GatherResourceGathergather_resourceTopKV2:indices:0*
Tindices0*'
_output_shapes
:?????????
*
dtype0W
IdentityIdentityGather:output:0*
T0*'
_output_shapes
:?????????
`

Identity_1IdentityTopKV2:values:0^NoOp*
T0*'
_output_shapes
:?????????
b

Identity_2IdentityIdentity:output:0^NoOp*
T0*'
_output_shapes
:?????????
?
NoOpNoOp^Gather^MatMul/ReadVariableOp:^query_model_1/sequential_5/dense_4/BiasAdd/ReadVariableOp9^query_model_1/sequential_5/dense_4/MatMul/ReadVariableOp:^query_model_1/sequential_5/dense_5/BiasAdd/ReadVariableOp9^query_model_1/sequential_5/dense_5/MatMul/ReadVariableOpE^query_model_1/user_model_1/sequential_4/embedding_2/embedding_lookupV^query_model_1/user_model_1/sequential_4/string_lookup_2/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : : : 2
GatherGather2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2v
9query_model_1/sequential_5/dense_4/BiasAdd/ReadVariableOp9query_model_1/sequential_5/dense_4/BiasAdd/ReadVariableOp2t
8query_model_1/sequential_5/dense_4/MatMul/ReadVariableOp8query_model_1/sequential_5/dense_4/MatMul/ReadVariableOp2v
9query_model_1/sequential_5/dense_5/BiasAdd/ReadVariableOp9query_model_1/sequential_5/dense_5/BiasAdd/ReadVariableOp2t
8query_model_1/sequential_5/dense_5/MatMul/ReadVariableOp8query_model_1/sequential_5/dense_5/MatMul/ReadVariableOp2?
Dquery_model_1/user_model_1/sequential_4/embedding_2/embedding_lookupDquery_model_1/user_model_1/sequential_4/embedding_2/embedding_lookup2?
Uquery_model_1/user_model_1/sequential_4/string_lookup_2/None_Lookup/LookupTableFindV2Uquery_model_1/user_model_1/sequential_4/string_lookup_2/None_Lookup/LookupTableFindV2:L H
#
_output_shapes
:?????????
!
_user_specified_name	queries:

_output_shapes
: 
?
?
__inference_<lambda>_558337
3key_value_init5276_lookuptableimportv2_table_handle/
+key_value_init5276_lookuptableimportv2_keys1
-key_value_init5276_lookuptableimportv2_values	
identity??&key_value_init5276/LookupTableImportV2?
&key_value_init5276/LookupTableImportV2LookupTableImportV23key_value_init5276_lookuptableimportv2_table_handle+key_value_init5276_lookuptableimportv2_keys-key_value_init5276_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: o
NoOpNoOp'^key_value_init5276/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
: :?:?2P
&key_value_init5276/LookupTableImportV2&key_value_init5276/LookupTableImportV2:!

_output_shapes	
:?:!

_output_shapes	
:?
?
?
+__inference_brute_force_layer_call_fn_55397
queries
unknown
	unknown_0	
	unknown_1:	? 
	unknown_2: @
	unknown_3:@
	unknown_4:@ 
	unknown_5: 
	unknown_6:	? 
	unknown_7:	?
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallqueriesunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
	*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????
:?????????
*)
_read_only_resource_inputs
		*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_brute_force_layer_call_and_return_conditional_losses_55160o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:L H
#
_output_shapes
:?????????
!
_user_specified_name	queries:

_output_shapes
: 
?
?
G__inference_sequential_4_layer_call_and_return_conditional_losses_55739

inputs>
:string_lookup_2_none_lookup_lookuptablefindv2_table_handle?
;string_lookup_2_none_lookup_lookuptablefindv2_default_value	5
"embedding_2_embedding_lookup_55733:	? 
identity??embedding_2/embedding_lookup?-string_lookup_2/None_Lookup/LookupTableFindV2?
-string_lookup_2/None_Lookup/LookupTableFindV2LookupTableFindV2:string_lookup_2_none_lookup_lookuptablefindv2_table_handleinputs;string_lookup_2_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
string_lookup_2/IdentityIdentity6string_lookup_2/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
embedding_2/embedding_lookupResourceGather"embedding_2_embedding_lookup_55733!string_lookup_2/Identity:output:0*
Tindices0	*5
_class+
)'loc:@embedding_2/embedding_lookup/55733*'
_output_shapes
:????????? *
dtype0?
%embedding_2/embedding_lookup/IdentityIdentity%embedding_2/embedding_lookup:output:0*
T0*5
_class+
)'loc:@embedding_2/embedding_lookup/55733*'
_output_shapes
:????????? ?
'embedding_2/embedding_lookup/Identity_1Identity.embedding_2/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? 
IdentityIdentity0embedding_2/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp^embedding_2/embedding_lookup.^string_lookup_2/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 2<
embedding_2/embedding_lookupembedding_2/embedding_lookup2^
-string_lookup_2/None_Lookup/LookupTableFindV2-string_lookup_2/None_Lookup/LookupTableFindV2:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?

?
G__inference_user_model_1_layer_call_and_return_conditional_losses_54803
input_1
sequential_4_54793
sequential_4_54795	%
sequential_4_54797:	? 
identity??$sequential_4/StatefulPartitionedCall?
$sequential_4/StatefulPartitionedCallStatefulPartitionedCallinput_1sequential_4_54793sequential_4_54795sequential_4_54797*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_sequential_4_layer_call_and_return_conditional_losses_54635S
concat/concat_dimConst*
_output_shapes
: *
dtype0*
value	B :z
concat/concatIdentity-sequential_4/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:????????? e
IdentityIdentityconcat/concat:output:0^NoOp*
T0*'
_output_shapes
:????????? m
NoOpNoOp%^sequential_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 2L
$sequential_4/StatefulPartitionedCall$sequential_4/StatefulPartitionedCall:L H
#
_output_shapes
:?????????
!
_user_specified_name	input_1:

_output_shapes
: 
?
?
G__inference_sequential_5_layer_call_and_return_conditional_losses_55687

inputs8
&dense_4_matmul_readvariableop_resource: @5
'dense_4_biasadd_readvariableop_resource:@8
&dense_5_matmul_readvariableop_resource:@ 5
'dense_5_biasadd_readvariableop_resource: 
identity??dense_4/BiasAdd/ReadVariableOp?dense_4/MatMul/ReadVariableOp?dense_5/BiasAdd/ReadVariableOp?dense_5/MatMul/ReadVariableOp?
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource*
_output_shapes

: @*
dtype0y
dense_4/MatMulMatMulinputs%dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@`
dense_4/ReluReludense_4/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@?
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0?
dense_5/MatMulMatMuldense_4/Relu:activations:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ?
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? g
IdentityIdentitydense_5/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? : : : : 2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
G__inference_sequential_4_layer_call_and_return_conditional_losses_54635

inputs>
:string_lookup_2_none_lookup_lookuptablefindv2_table_handle?
;string_lookup_2_none_lookup_lookuptablefindv2_default_value	$
embedding_2_54631:	? 
identity??#embedding_2/StatefulPartitionedCall?-string_lookup_2/None_Lookup/LookupTableFindV2?
-string_lookup_2/None_Lookup/LookupTableFindV2LookupTableFindV2:string_lookup_2_none_lookup_lookuptablefindv2_table_handleinputs;string_lookup_2_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
string_lookup_2/IdentityIdentity6string_lookup_2/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
#embedding_2/StatefulPartitionedCallStatefulPartitionedCall!string_lookup_2/Identity:output:0embedding_2_54631*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_embedding_2_layer_call_and_return_conditional_losses_54630{
IdentityIdentity,embedding_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp$^embedding_2/StatefulPartitionedCall.^string_lookup_2/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 2J
#embedding_2/StatefulPartitionedCall#embedding_2/StatefulPartitionedCall2^
-string_lookup_2/None_Lookup/LookupTableFindV2-string_lookup_2/None_Lookup/LookupTableFindV2:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
?
,__inference_user_model_1_layer_call_fn_55614
user_id
unknown
	unknown_0	
	unknown_1:	? 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalluser_idunknown	unknown_0	unknown_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_user_model_1_layer_call_and_return_conditional_losses_54770o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:L H
#
_output_shapes
:?????????
!
_user_specified_name	user_id:

_output_shapes
: 
?
?
H__inference_query_model_1_layer_call_and_return_conditional_losses_55127
input_1
user_model_1_55110
user_model_1_55112	%
user_model_1_55114:	? $
sequential_5_55117: @ 
sequential_5_55119:@$
sequential_5_55121:@  
sequential_5_55123: 
identity??$sequential_5/StatefulPartitionedCall?$user_model_1/StatefulPartitionedCall?
$user_model_1/StatefulPartitionedCallStatefulPartitionedCallinput_1user_model_1_55110user_model_1_55112user_model_1_55114*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_user_model_1_layer_call_and_return_conditional_losses_54770?
$sequential_5/StatefulPartitionedCallStatefulPartitionedCall-user_model_1/StatefulPartitionedCall:output:0sequential_5_55117sequential_5_55119sequential_5_55121sequential_5_55123*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_sequential_5_layer_call_and_return_conditional_losses_54917|
IdentityIdentity-sequential_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp%^sequential_5/StatefulPartitionedCall%^user_model_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : : : : : 2L
$sequential_5/StatefulPartitionedCall$sequential_5/StatefulPartitionedCall2L
$user_model_1/StatefulPartitionedCall$user_model_1/StatefulPartitionedCall:L H
#
_output_shapes
:?????????
!
_user_specified_name	input_1:

_output_shapes
: 
?
?
F__inference_brute_force_layer_call_and_return_conditional_losses_55239
queries
query_model_1_55213
query_model_1_55215	&
query_model_1_55217:	? %
query_model_1_55219: @!
query_model_1_55221:@%
query_model_1_55223:@ !
query_model_1_55225: 1
matmul_readvariableop_resource:	? 
gather_resource:	?

identity_1

identity_2??Gather?MatMul/ReadVariableOp?%query_model_1/StatefulPartitionedCall?
%query_model_1/StatefulPartitionedCallStatefulPartitionedCallqueriesquery_model_1_55213query_model_1_55215query_model_1_55217query_model_1_55219query_model_1_55221query_model_1_55223query_model_1_55225*
Tin

2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_query_model_1_layer_call_and_return_conditional_losses_55051u
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	? *
dtype0?
MatMulMatMul.query_model_1/StatefulPartitionedCall:output:0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????*
transpose_b(J
TopKV2/kConst*
_output_shapes
: *
dtype0*
value	B :
z
TopKV2TopKV2MatMul:product:0TopKV2/k:output:0*
T0*:
_output_shapes(
&:?????????
:?????????
?
GatherResourceGathergather_resourceTopKV2:indices:0*
Tindices0*'
_output_shapes
:?????????
*
dtype0W
IdentityIdentityGather:output:0*
T0*'
_output_shapes
:?????????
`

Identity_1IdentityTopKV2:values:0^NoOp*
T0*'
_output_shapes
:?????????
b

Identity_2IdentityIdentity:output:0^NoOp*
T0*'
_output_shapes
:?????????
?
NoOpNoOp^Gather^MatMul/ReadVariableOp&^query_model_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : : : 2
GatherGather2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2N
%query_model_1/StatefulPartitionedCall%query_model_1/StatefulPartitionedCall:L H
#
_output_shapes
:?????????
!
_user_specified_name	queries:

_output_shapes
: 
?

?
G__inference_user_model_1_layer_call_and_return_conditional_losses_54816
input_1
sequential_4_54806
sequential_4_54808	%
sequential_4_54810:	? 
identity??$sequential_4/StatefulPartitionedCall?
$sequential_4/StatefulPartitionedCallStatefulPartitionedCallinput_1sequential_4_54806sequential_4_54808sequential_4_54810*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_sequential_4_layer_call_and_return_conditional_losses_54676S
concat/concat_dimConst*
_output_shapes
: *
dtype0*
value	B :z
concat/concatIdentity-sequential_4/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:????????? e
IdentityIdentityconcat/concat:output:0^NoOp*
T0*'
_output_shapes
:????????? m
NoOpNoOp%^sequential_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 2L
$sequential_4/StatefulPartitionedCall$sequential_4/StatefulPartitionedCall:L H
#
_output_shapes
:?????????
!
_user_specified_name	input_1:

_output_shapes
: 
?	
?
B__inference_dense_5_layer_call_and_return_conditional_losses_55791

inputs0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:????????? w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
G__inference_sequential_4_layer_call_and_return_conditional_losses_54676

inputs>
:string_lookup_2_none_lookup_lookuptablefindv2_table_handle?
;string_lookup_2_none_lookup_lookuptablefindv2_default_value	$
embedding_2_54672:	? 
identity??#embedding_2/StatefulPartitionedCall?-string_lookup_2/None_Lookup/LookupTableFindV2?
-string_lookup_2/None_Lookup/LookupTableFindV2LookupTableFindV2:string_lookup_2_none_lookup_lookuptablefindv2_table_handleinputs;string_lookup_2_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
string_lookup_2/IdentityIdentity6string_lookup_2/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
#embedding_2/StatefulPartitionedCallStatefulPartitionedCall!string_lookup_2/Identity:output:0embedding_2_54672*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_embedding_2_layer_call_and_return_conditional_losses_54630{
IdentityIdentity,embedding_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp$^embedding_2/StatefulPartitionedCall.^string_lookup_2/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 2J
#embedding_2/StatefulPartitionedCall#embedding_2/StatefulPartitionedCall2^
-string_lookup_2/None_Lookup/LookupTableFindV2-string_lookup_2/None_Lookup/LookupTableFindV2:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
?
G__inference_user_model_1_layer_call_and_return_conditional_losses_55644
user_idK
Gsequential_4_string_lookup_2_none_lookup_lookuptablefindv2_table_handleL
Hsequential_4_string_lookup_2_none_lookup_lookuptablefindv2_default_value	B
/sequential_4_embedding_2_embedding_lookup_55636:	? 
identity??)sequential_4/embedding_2/embedding_lookup?:sequential_4/string_lookup_2/None_Lookup/LookupTableFindV2?
:sequential_4/string_lookup_2/None_Lookup/LookupTableFindV2LookupTableFindV2Gsequential_4_string_lookup_2_none_lookup_lookuptablefindv2_table_handleuser_idHsequential_4_string_lookup_2_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
%sequential_4/string_lookup_2/IdentityIdentityCsequential_4/string_lookup_2/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
)sequential_4/embedding_2/embedding_lookupResourceGather/sequential_4_embedding_2_embedding_lookup_55636.sequential_4/string_lookup_2/Identity:output:0*
Tindices0	*B
_class8
64loc:@sequential_4/embedding_2/embedding_lookup/55636*'
_output_shapes
:????????? *
dtype0?
2sequential_4/embedding_2/embedding_lookup/IdentityIdentity2sequential_4/embedding_2/embedding_lookup:output:0*
T0*B
_class8
64loc:@sequential_4/embedding_2/embedding_lookup/55636*'
_output_shapes
:????????? ?
4sequential_4/embedding_2/embedding_lookup/Identity_1Identity;sequential_4/embedding_2/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? S
concat/concat_dimConst*
_output_shapes
: *
dtype0*
value	B :?
concat/concatIdentity=sequential_4/embedding_2/embedding_lookup/Identity_1:output:0*
T0*'
_output_shapes
:????????? e
IdentityIdentityconcat/concat:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp*^sequential_4/embedding_2/embedding_lookup;^sequential_4/string_lookup_2/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 2V
)sequential_4/embedding_2/embedding_lookup)sequential_4/embedding_2/embedding_lookup2x
:sequential_4/string_lookup_2/None_Lookup/LookupTableFindV2:sequential_4/string_lookup_2/None_Lookup/LookupTableFindV2:L H
#
_output_shapes
:?????????
!
_user_specified_name	user_id:

_output_shapes
: 
?
?
__inference__traced_save_55883
file_prefix*
&savev2_identifiers_read_readvariableop)
%savev2_candidates_read_readvariableop5
1savev2_embedding_2_embeddings_read_readvariableop-
)savev2_dense_4_kernel_read_readvariableop+
'savev2_dense_4_bias_read_readvariableop-
)savev2_dense_5_kernel_read_readvariableop+
'savev2_dense_5_bias_read_readvariableop
savev2_const_3

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
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B&identifiers/.ATTRIBUTES/VARIABLE_VALUEB%candidates/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH}
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*#
valueBB B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0&savev2_identifiers_read_readvariableop%savev2_candidates_read_readvariableop1savev2_embedding_2_embeddings_read_readvariableop)savev2_dense_4_kernel_read_readvariableop'savev2_dense_4_bias_read_readvariableop)savev2_dense_5_kernel_read_readvariableop'savev2_dense_5_bias_read_readvariableopsavev2_const_3"/device:CPU:0*
_output_shapes
 *
dtypes

2?
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

identity_1Identity_1:output:0*T
_input_shapesC
A: :?:	? :	? : @:@:@ : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:!

_output_shapes	
:?:%!

_output_shapes
:	? :%!

_output_shapes
:	? :$ 

_output_shapes

: @: 

_output_shapes
:@:$ 

_output_shapes

:@ : 

_output_shapes
: :

_output_shapes
: 
?*
?
H__inference_query_model_1_layer_call_and_return_conditional_losses_55564

inputsX
Tuser_model_1_sequential_4_string_lookup_2_none_lookup_lookuptablefindv2_table_handleY
Uuser_model_1_sequential_4_string_lookup_2_none_lookup_lookuptablefindv2_default_value	O
<user_model_1_sequential_4_embedding_2_embedding_lookup_55543:	? E
3sequential_5_dense_4_matmul_readvariableop_resource: @B
4sequential_5_dense_4_biasadd_readvariableop_resource:@E
3sequential_5_dense_5_matmul_readvariableop_resource:@ B
4sequential_5_dense_5_biasadd_readvariableop_resource: 
identity??+sequential_5/dense_4/BiasAdd/ReadVariableOp?*sequential_5/dense_4/MatMul/ReadVariableOp?+sequential_5/dense_5/BiasAdd/ReadVariableOp?*sequential_5/dense_5/MatMul/ReadVariableOp?6user_model_1/sequential_4/embedding_2/embedding_lookup?Guser_model_1/sequential_4/string_lookup_2/None_Lookup/LookupTableFindV2?
Guser_model_1/sequential_4/string_lookup_2/None_Lookup/LookupTableFindV2LookupTableFindV2Tuser_model_1_sequential_4_string_lookup_2_none_lookup_lookuptablefindv2_table_handleinputsUuser_model_1_sequential_4_string_lookup_2_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
2user_model_1/sequential_4/string_lookup_2/IdentityIdentityPuser_model_1/sequential_4/string_lookup_2/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
6user_model_1/sequential_4/embedding_2/embedding_lookupResourceGather<user_model_1_sequential_4_embedding_2_embedding_lookup_55543;user_model_1/sequential_4/string_lookup_2/Identity:output:0*
Tindices0	*O
_classE
CAloc:@user_model_1/sequential_4/embedding_2/embedding_lookup/55543*'
_output_shapes
:????????? *
dtype0?
?user_model_1/sequential_4/embedding_2/embedding_lookup/IdentityIdentity?user_model_1/sequential_4/embedding_2/embedding_lookup:output:0*
T0*O
_classE
CAloc:@user_model_1/sequential_4/embedding_2/embedding_lookup/55543*'
_output_shapes
:????????? ?
Auser_model_1/sequential_4/embedding_2/embedding_lookup/Identity_1IdentityHuser_model_1/sequential_4/embedding_2/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? `
user_model_1/concat/concat_dimConst*
_output_shapes
: *
dtype0*
value	B :?
user_model_1/concat/concatIdentityJuser_model_1/sequential_4/embedding_2/embedding_lookup/Identity_1:output:0*
T0*'
_output_shapes
:????????? ?
*sequential_5/dense_4/MatMul/ReadVariableOpReadVariableOp3sequential_5_dense_4_matmul_readvariableop_resource*
_output_shapes

: @*
dtype0?
sequential_5/dense_4/MatMulMatMul#user_model_1/concat/concat:output:02sequential_5/dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
+sequential_5/dense_4/BiasAdd/ReadVariableOpReadVariableOp4sequential_5_dense_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
sequential_5/dense_4/BiasAddBiasAdd%sequential_5/dense_4/MatMul:product:03sequential_5/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@z
sequential_5/dense_4/ReluRelu%sequential_5/dense_4/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@?
*sequential_5/dense_5/MatMul/ReadVariableOpReadVariableOp3sequential_5_dense_5_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0?
sequential_5/dense_5/MatMulMatMul'sequential_5/dense_4/Relu:activations:02sequential_5/dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ?
+sequential_5/dense_5/BiasAdd/ReadVariableOpReadVariableOp4sequential_5_dense_5_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
sequential_5/dense_5/BiasAddBiasAdd%sequential_5/dense_5/MatMul:product:03sequential_5/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? t
IdentityIdentity%sequential_5/dense_5/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp,^sequential_5/dense_4/BiasAdd/ReadVariableOp+^sequential_5/dense_4/MatMul/ReadVariableOp,^sequential_5/dense_5/BiasAdd/ReadVariableOp+^sequential_5/dense_5/MatMul/ReadVariableOp7^user_model_1/sequential_4/embedding_2/embedding_lookupH^user_model_1/sequential_4/string_lookup_2/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : : : : : 2Z
+sequential_5/dense_4/BiasAdd/ReadVariableOp+sequential_5/dense_4/BiasAdd/ReadVariableOp2X
*sequential_5/dense_4/MatMul/ReadVariableOp*sequential_5/dense_4/MatMul/ReadVariableOp2Z
+sequential_5/dense_5/BiasAdd/ReadVariableOp+sequential_5/dense_5/BiasAdd/ReadVariableOp2X
*sequential_5/dense_5/MatMul/ReadVariableOp*sequential_5/dense_5/MatMul/ReadVariableOp2p
6user_model_1/sequential_4/embedding_2/embedding_lookup6user_model_1/sequential_4/embedding_2/embedding_lookup2?
Guser_model_1/sequential_4/string_lookup_2/None_Lookup/LookupTableFindV2Guser_model_1/sequential_4/string_lookup_2/None_Lookup/LookupTableFindV2:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
?
,__inference_sequential_5_layer_call_fn_54868
dense_4_input
unknown: @
	unknown_0:@
	unknown_1:@ 
	unknown_2: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldense_4_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_sequential_5_layer_call_and_return_conditional_losses_54857o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
'
_output_shapes
:????????? 
'
_user_specified_namedense_4_input
?
?
,__inference_sequential_4_layer_call_fn_54696
string_lookup_2_input
unknown
	unknown_0	
	unknown_1:	? 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallstring_lookup_2_inputunknown	unknown_0	unknown_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_sequential_4_layer_call_and_return_conditional_losses_54676o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
#
_output_shapes
:?????????
/
_user_specified_namestring_lookup_2_input:

_output_shapes
: 
?
?
+__inference_brute_force_layer_call_fn_55183
input_1
unknown
	unknown_0	
	unknown_1:	? 
	unknown_2: @
	unknown_3:@
	unknown_4:@ 
	unknown_5: 
	unknown_6:	? 
	unknown_7:	?
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
	*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????
:?????????
*)
_read_only_resource_inputs
		*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_brute_force_layer_call_and_return_conditional_losses_55160o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:L H
#
_output_shapes
:?????????
!
_user_specified_name	input_1:

_output_shapes
: 
?
?
H__inference_query_model_1_layer_call_and_return_conditional_losses_54993

inputs
user_model_1_54976
user_model_1_54978	%
user_model_1_54980:	? $
sequential_5_54983: @ 
sequential_5_54985:@$
sequential_5_54987:@  
sequential_5_54989: 
identity??$sequential_5/StatefulPartitionedCall?$user_model_1/StatefulPartitionedCall?
$user_model_1/StatefulPartitionedCallStatefulPartitionedCallinputsuser_model_1_54976user_model_1_54978user_model_1_54980*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_user_model_1_layer_call_and_return_conditional_losses_54735?
$sequential_5/StatefulPartitionedCallStatefulPartitionedCall-user_model_1/StatefulPartitionedCall:output:0sequential_5_54983sequential_5_54985sequential_5_54987sequential_5_54989*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_sequential_5_layer_call_and_return_conditional_losses_54857|
IdentityIdentity-sequential_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp%^sequential_5/StatefulPartitionedCall%^user_model_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : : : : : 2L
$sequential_5/StatefulPartitionedCall$sequential_5/StatefulPartitionedCall2L
$user_model_1/StatefulPartitionedCall$user_model_1/StatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
?
,__inference_sequential_4_layer_call_fn_54644
string_lookup_2_input
unknown
	unknown_0	
	unknown_1:	? 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallstring_lookup_2_inputunknown	unknown_0	unknown_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_sequential_4_layer_call_and_return_conditional_losses_54635o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
#
_output_shapes
:?????????
/
_user_specified_namestring_lookup_2_input:

_output_shapes
: 
?

?
B__inference_dense_4_layer_call_and_return_conditional_losses_54834

inputs0
matmul_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: @*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
,__inference_sequential_5_layer_call_fn_55657

inputs
unknown: @
	unknown_0:@
	unknown_1:@ 
	unknown_2: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_sequential_5_layer_call_and_return_conditional_losses_54857o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?	
?
-__inference_query_model_1_layer_call_fn_55087
input_1
unknown
	unknown_0	
	unknown_1:	? 
	unknown_2: @
	unknown_3:@
	unknown_4:@ 
	unknown_5: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_query_model_1_layer_call_and_return_conditional_losses_55051o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:L H
#
_output_shapes
:?????????
!
_user_specified_name	input_1:

_output_shapes
: 
?
?
,__inference_sequential_5_layer_call_fn_54941
dense_4_input
unknown: @
	unknown_0:@
	unknown_1:@ 
	unknown_2: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldense_4_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_sequential_5_layer_call_and_return_conditional_losses_54917o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
'
_output_shapes
:????????? 
'
_user_specified_namedense_4_input
?
?
F__inference_embedding_2_layer_call_and_return_conditional_losses_54630

inputs	)
embedding_lookup_54624:	? 
identity??embedding_lookup?
embedding_lookupResourceGatherembedding_lookup_54624inputs*
Tindices0	*)
_class
loc:@embedding_lookup/54624*'
_output_shapes
:????????? *
dtype0?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/54624*'
_output_shapes
:????????? }
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? s
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:????????? Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:?????????: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
,__inference_user_model_1_layer_call_fn_54744
input_1
unknown
	unknown_0	
	unknown_1:	? 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_user_model_1_layer_call_and_return_conditional_losses_54735o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:L H
#
_output_shapes
:?????????
!
_user_specified_name	input_1:

_output_shapes
: 
?

?
#__inference_signature_wrapper_55372
input_1
unknown
	unknown_0	
	unknown_1:	? 
	unknown_2: @
	unknown_3:@
	unknown_4:@ 
	unknown_5: 
	unknown_6:	? 
	unknown_7:	?
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
	*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????
:?????????
*)
_read_only_resource_inputs
		*0
config_proto 

CPU

GPU2*0J 8? *)
f$R"
 __inference__wrapped_model_54610o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:L H
#
_output_shapes
:?????????
!
_user_specified_name	input_1:

_output_shapes
: 
?

?
G__inference_user_model_1_layer_call_and_return_conditional_losses_54770
user_id
sequential_4_54760
sequential_4_54762	%
sequential_4_54764:	? 
identity??$sequential_4/StatefulPartitionedCall?
$sequential_4/StatefulPartitionedCallStatefulPartitionedCalluser_idsequential_4_54760sequential_4_54762sequential_4_54764*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_sequential_4_layer_call_and_return_conditional_losses_54676S
concat/concat_dimConst*
_output_shapes
: *
dtype0*
value	B :z
concat/concatIdentity-sequential_4/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:????????? e
IdentityIdentityconcat/concat:output:0^NoOp*
T0*'
_output_shapes
:????????? m
NoOpNoOp%^sequential_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 2L
$sequential_4/StatefulPartitionedCall$sequential_4/StatefulPartitionedCall:L H
#
_output_shapes
:?????????
!
_user_specified_name	user_id:

_output_shapes
: 
?
?
+__inference_brute_force_layer_call_fn_55287
input_1
unknown
	unknown_0	
	unknown_1:	? 
	unknown_2: @
	unknown_3:@
	unknown_4:@ 
	unknown_5: 
	unknown_6:	? 
	unknown_7:	?
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
	*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????
:?????????
*)
_read_only_resource_inputs
		*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_brute_force_layer_call_and_return_conditional_losses_55239o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:L H
#
_output_shapes
:?????????
!
_user_specified_name	input_1:

_output_shapes
: 
?	
?
-__inference_query_model_1_layer_call_fn_55010
input_1
unknown
	unknown_0	
	unknown_1:	? 
	unknown_2: @
	unknown_3:@
	unknown_4:@ 
	unknown_5: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_query_model_1_layer_call_and_return_conditional_losses_54993o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:L H
#
_output_shapes
:?????????
!
_user_specified_name	input_1:

_output_shapes
: 
?
?
,__inference_user_model_1_layer_call_fn_55603
user_id
unknown
	unknown_0	
	unknown_1:	? 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalluser_idunknown	unknown_0	unknown_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_user_model_1_layer_call_and_return_conditional_losses_54735o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:L H
#
_output_shapes
:?????????
!
_user_specified_name	user_id:

_output_shapes
: 
?
?
G__inference_sequential_5_layer_call_and_return_conditional_losses_55704

inputs8
&dense_4_matmul_readvariableop_resource: @5
'dense_4_biasadd_readvariableop_resource:@8
&dense_5_matmul_readvariableop_resource:@ 5
'dense_5_biasadd_readvariableop_resource: 
identity??dense_4/BiasAdd/ReadVariableOp?dense_4/MatMul/ReadVariableOp?dense_5/BiasAdd/ReadVariableOp?dense_5/MatMul/ReadVariableOp?
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource*
_output_shapes

: @*
dtype0y
dense_4/MatMulMatMulinputs%dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@`
dense_4/ReluReludense_4/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@?
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0?
dense_5/MatMulMatMuldense_4/Relu:activations:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ?
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? g
IdentityIdentitydense_5/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? : : : : 2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?	
?
-__inference_query_model_1_layer_call_fn_55517

inputs
unknown
	unknown_0	
	unknown_1:	? 
	unknown_2: @
	unknown_3:@
	unknown_4:@ 
	unknown_5: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_query_model_1_layer_call_and_return_conditional_losses_54993o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?	
?
-__inference_query_model_1_layer_call_fn_55536

inputs
unknown
	unknown_0	
	unknown_1:	? 
	unknown_2: @
	unknown_3:@
	unknown_4:@ 
	unknown_5: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_query_model_1_layer_call_and_return_conditional_losses_55051o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?

?
B__inference_dense_4_layer_call_and_return_conditional_losses_55772

inputs0
matmul_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: @*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
+__inference_embedding_2_layer_call_fn_55798

inputs	
unknown:	? 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_embedding_2_layer_call_and_return_conditional_losses_54630o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:?????????: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
G__inference_user_model_1_layer_call_and_return_conditional_losses_55629
user_idK
Gsequential_4_string_lookup_2_none_lookup_lookuptablefindv2_table_handleL
Hsequential_4_string_lookup_2_none_lookup_lookuptablefindv2_default_value	B
/sequential_4_embedding_2_embedding_lookup_55621:	? 
identity??)sequential_4/embedding_2/embedding_lookup?:sequential_4/string_lookup_2/None_Lookup/LookupTableFindV2?
:sequential_4/string_lookup_2/None_Lookup/LookupTableFindV2LookupTableFindV2Gsequential_4_string_lookup_2_none_lookup_lookuptablefindv2_table_handleuser_idHsequential_4_string_lookup_2_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
%sequential_4/string_lookup_2/IdentityIdentityCsequential_4/string_lookup_2/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
)sequential_4/embedding_2/embedding_lookupResourceGather/sequential_4_embedding_2_embedding_lookup_55621.sequential_4/string_lookup_2/Identity:output:0*
Tindices0	*B
_class8
64loc:@sequential_4/embedding_2/embedding_lookup/55621*'
_output_shapes
:????????? *
dtype0?
2sequential_4/embedding_2/embedding_lookup/IdentityIdentity2sequential_4/embedding_2/embedding_lookup:output:0*
T0*B
_class8
64loc:@sequential_4/embedding_2/embedding_lookup/55621*'
_output_shapes
:????????? ?
4sequential_4/embedding_2/embedding_lookup/Identity_1Identity;sequential_4/embedding_2/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? S
concat/concat_dimConst*
_output_shapes
: *
dtype0*
value	B :?
concat/concatIdentity=sequential_4/embedding_2/embedding_lookup/Identity_1:output:0*
T0*'
_output_shapes
:????????? e
IdentityIdentityconcat/concat:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp*^sequential_4/embedding_2/embedding_lookup;^sequential_4/string_lookup_2/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 2V
)sequential_4/embedding_2/embedding_lookup)sequential_4/embedding_2/embedding_lookup2x
:sequential_4/string_lookup_2/None_Lookup/LookupTableFindV2:sequential_4/string_lookup_2/None_Lookup/LookupTableFindV2:L H
#
_output_shapes
:?????????
!
_user_specified_name	user_id:

_output_shapes
: 
?
?
F__inference_brute_force_layer_call_and_return_conditional_losses_55345
input_1
query_model_1_55319
query_model_1_55321	&
query_model_1_55323:	? %
query_model_1_55325: @!
query_model_1_55327:@%
query_model_1_55329:@ !
query_model_1_55331: 1
matmul_readvariableop_resource:	? 
gather_resource:	?

identity_1

identity_2??Gather?MatMul/ReadVariableOp?%query_model_1/StatefulPartitionedCall?
%query_model_1/StatefulPartitionedCallStatefulPartitionedCallinput_1query_model_1_55319query_model_1_55321query_model_1_55323query_model_1_55325query_model_1_55327query_model_1_55329query_model_1_55331*
Tin

2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_query_model_1_layer_call_and_return_conditional_losses_55051u
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	? *
dtype0?
MatMulMatMul.query_model_1/StatefulPartitionedCall:output:0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????*
transpose_b(J
TopKV2/kConst*
_output_shapes
: *
dtype0*
value	B :
z
TopKV2TopKV2MatMul:product:0TopKV2/k:output:0*
T0*:
_output_shapes(
&:?????????
:?????????
?
GatherResourceGathergather_resourceTopKV2:indices:0*
Tindices0*'
_output_shapes
:?????????
*
dtype0W
IdentityIdentityGather:output:0*
T0*'
_output_shapes
:?????????
`

Identity_1IdentityTopKV2:values:0^NoOp*
T0*'
_output_shapes
:?????????
b

Identity_2IdentityIdentity:output:0^NoOp*
T0*'
_output_shapes
:?????????
?
NoOpNoOp^Gather^MatMul/ReadVariableOp&^query_model_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : : : 2
GatherGather2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2N
%query_model_1/StatefulPartitionedCall%query_model_1/StatefulPartitionedCall:L H
#
_output_shapes
:?????????
!
_user_specified_name	input_1:

_output_shapes
: 
?C
?
 __inference__wrapped_model_54610
input_1r
nbrute_force_query_model_1_user_model_1_sequential_4_string_lookup_2_none_lookup_lookuptablefindv2_table_handles
obrute_force_query_model_1_user_model_1_sequential_4_string_lookup_2_none_lookup_lookuptablefindv2_default_value	i
Vbrute_force_query_model_1_user_model_1_sequential_4_embedding_2_embedding_lookup_54579:	? _
Mbrute_force_query_model_1_sequential_5_dense_4_matmul_readvariableop_resource: @\
Nbrute_force_query_model_1_sequential_5_dense_4_biasadd_readvariableop_resource:@_
Mbrute_force_query_model_1_sequential_5_dense_5_matmul_readvariableop_resource:@ \
Nbrute_force_query_model_1_sequential_5_dense_5_biasadd_readvariableop_resource: =
*brute_force_matmul_readvariableop_resource:	? *
brute_force_gather_resource:	?
identity

identity_1??brute_force/Gather?!brute_force/MatMul/ReadVariableOp?Ebrute_force/query_model_1/sequential_5/dense_4/BiasAdd/ReadVariableOp?Dbrute_force/query_model_1/sequential_5/dense_4/MatMul/ReadVariableOp?Ebrute_force/query_model_1/sequential_5/dense_5/BiasAdd/ReadVariableOp?Dbrute_force/query_model_1/sequential_5/dense_5/MatMul/ReadVariableOp?Pbrute_force/query_model_1/user_model_1/sequential_4/embedding_2/embedding_lookup?abrute_force/query_model_1/user_model_1/sequential_4/string_lookup_2/None_Lookup/LookupTableFindV2?
abrute_force/query_model_1/user_model_1/sequential_4/string_lookup_2/None_Lookup/LookupTableFindV2LookupTableFindV2nbrute_force_query_model_1_user_model_1_sequential_4_string_lookup_2_none_lookup_lookuptablefindv2_table_handleinput_1obrute_force_query_model_1_user_model_1_sequential_4_string_lookup_2_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
Lbrute_force/query_model_1/user_model_1/sequential_4/string_lookup_2/IdentityIdentityjbrute_force/query_model_1/user_model_1/sequential_4/string_lookup_2/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
Pbrute_force/query_model_1/user_model_1/sequential_4/embedding_2/embedding_lookupResourceGatherVbrute_force_query_model_1_user_model_1_sequential_4_embedding_2_embedding_lookup_54579Ubrute_force/query_model_1/user_model_1/sequential_4/string_lookup_2/Identity:output:0*
Tindices0	*i
_class_
][loc:@brute_force/query_model_1/user_model_1/sequential_4/embedding_2/embedding_lookup/54579*'
_output_shapes
:????????? *
dtype0?
Ybrute_force/query_model_1/user_model_1/sequential_4/embedding_2/embedding_lookup/IdentityIdentityYbrute_force/query_model_1/user_model_1/sequential_4/embedding_2/embedding_lookup:output:0*
T0*i
_class_
][loc:@brute_force/query_model_1/user_model_1/sequential_4/embedding_2/embedding_lookup/54579*'
_output_shapes
:????????? ?
[brute_force/query_model_1/user_model_1/sequential_4/embedding_2/embedding_lookup/Identity_1Identitybbrute_force/query_model_1/user_model_1/sequential_4/embedding_2/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? z
8brute_force/query_model_1/user_model_1/concat/concat_dimConst*
_output_shapes
: *
dtype0*
value	B :?
4brute_force/query_model_1/user_model_1/concat/concatIdentitydbrute_force/query_model_1/user_model_1/sequential_4/embedding_2/embedding_lookup/Identity_1:output:0*
T0*'
_output_shapes
:????????? ?
Dbrute_force/query_model_1/sequential_5/dense_4/MatMul/ReadVariableOpReadVariableOpMbrute_force_query_model_1_sequential_5_dense_4_matmul_readvariableop_resource*
_output_shapes

: @*
dtype0?
5brute_force/query_model_1/sequential_5/dense_4/MatMulMatMul=brute_force/query_model_1/user_model_1/concat/concat:output:0Lbrute_force/query_model_1/sequential_5/dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
Ebrute_force/query_model_1/sequential_5/dense_4/BiasAdd/ReadVariableOpReadVariableOpNbrute_force_query_model_1_sequential_5_dense_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
6brute_force/query_model_1/sequential_5/dense_4/BiasAddBiasAdd?brute_force/query_model_1/sequential_5/dense_4/MatMul:product:0Mbrute_force/query_model_1/sequential_5/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
3brute_force/query_model_1/sequential_5/dense_4/ReluRelu?brute_force/query_model_1/sequential_5/dense_4/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@?
Dbrute_force/query_model_1/sequential_5/dense_5/MatMul/ReadVariableOpReadVariableOpMbrute_force_query_model_1_sequential_5_dense_5_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0?
5brute_force/query_model_1/sequential_5/dense_5/MatMulMatMulAbrute_force/query_model_1/sequential_5/dense_4/Relu:activations:0Lbrute_force/query_model_1/sequential_5/dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ?
Ebrute_force/query_model_1/sequential_5/dense_5/BiasAdd/ReadVariableOpReadVariableOpNbrute_force_query_model_1_sequential_5_dense_5_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
6brute_force/query_model_1/sequential_5/dense_5/BiasAddBiasAdd?brute_force/query_model_1/sequential_5/dense_5/MatMul:product:0Mbrute_force/query_model_1/sequential_5/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ?
!brute_force/MatMul/ReadVariableOpReadVariableOp*brute_force_matmul_readvariableop_resource*
_output_shapes
:	? *
dtype0?
brute_force/MatMulMatMul?brute_force/query_model_1/sequential_5/dense_5/BiasAdd:output:0)brute_force/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????*
transpose_b(V
brute_force/TopKV2/kConst*
_output_shapes
: *
dtype0*
value	B :
?
brute_force/TopKV2TopKV2brute_force/MatMul:product:0brute_force/TopKV2/k:output:0*
T0*:
_output_shapes(
&:?????????
:?????????
?
brute_force/GatherResourceGatherbrute_force_gather_resourcebrute_force/TopKV2:indices:0*
Tindices0*'
_output_shapes
:?????????
*
dtype0o
brute_force/IdentityIdentitybrute_force/Gather:output:0*
T0*'
_output_shapes
:?????????
j
IdentityIdentitybrute_force/TopKV2:values:0^NoOp*
T0*'
_output_shapes
:?????????
n

Identity_1Identitybrute_force/Identity:output:0^NoOp*
T0*'
_output_shapes
:?????????
?
NoOpNoOp^brute_force/Gather"^brute_force/MatMul/ReadVariableOpF^brute_force/query_model_1/sequential_5/dense_4/BiasAdd/ReadVariableOpE^brute_force/query_model_1/sequential_5/dense_4/MatMul/ReadVariableOpF^brute_force/query_model_1/sequential_5/dense_5/BiasAdd/ReadVariableOpE^brute_force/query_model_1/sequential_5/dense_5/MatMul/ReadVariableOpQ^brute_force/query_model_1/user_model_1/sequential_4/embedding_2/embedding_lookupb^brute_force/query_model_1/user_model_1/sequential_4/string_lookup_2/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : : : 2(
brute_force/Gatherbrute_force/Gather2F
!brute_force/MatMul/ReadVariableOp!brute_force/MatMul/ReadVariableOp2?
Ebrute_force/query_model_1/sequential_5/dense_4/BiasAdd/ReadVariableOpEbrute_force/query_model_1/sequential_5/dense_4/BiasAdd/ReadVariableOp2?
Dbrute_force/query_model_1/sequential_5/dense_4/MatMul/ReadVariableOpDbrute_force/query_model_1/sequential_5/dense_4/MatMul/ReadVariableOp2?
Ebrute_force/query_model_1/sequential_5/dense_5/BiasAdd/ReadVariableOpEbrute_force/query_model_1/sequential_5/dense_5/BiasAdd/ReadVariableOp2?
Dbrute_force/query_model_1/sequential_5/dense_5/MatMul/ReadVariableOpDbrute_force/query_model_1/sequential_5/dense_5/MatMul/ReadVariableOp2?
Pbrute_force/query_model_1/user_model_1/sequential_4/embedding_2/embedding_lookupPbrute_force/query_model_1/user_model_1/sequential_4/embedding_2/embedding_lookup2?
abrute_force/query_model_1/user_model_1/sequential_4/string_lookup_2/None_Lookup/LookupTableFindV2abrute_force/query_model_1/user_model_1/sequential_4/string_lookup_2/None_Lookup/LookupTableFindV2:L H
#
_output_shapes
:?????????
!
_user_specified_name	input_1:

_output_shapes
: 
?
?
,__inference_sequential_5_layer_call_fn_55670

inputs
unknown: @
	unknown_0:@
	unknown_1:@ 
	unknown_2: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_sequential_5_layer_call_and_return_conditional_losses_54917o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
G__inference_sequential_5_layer_call_and_return_conditional_losses_54969
dense_4_input
dense_4_54958: @
dense_4_54960:@
dense_5_54963:@ 
dense_5_54965: 
identity??dense_4/StatefulPartitionedCall?dense_5/StatefulPartitionedCall?
dense_4/StatefulPartitionedCallStatefulPartitionedCalldense_4_inputdense_4_54958dense_4_54960*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_54834?
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_54963dense_5_54965*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_54850w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? : : : : 2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall:V R
'
_output_shapes
:????????? 
'
_user_specified_namedense_4_input
?
?
+__inference_brute_force_layer_call_fn_55422
queries
unknown
	unknown_0	
	unknown_1:	? 
	unknown_2: @
	unknown_3:@
	unknown_4:@ 
	unknown_5: 
	unknown_6:	? 
	unknown_7:	?
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallqueriesunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
	*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????
:?????????
*)
_read_only_resource_inputs
		*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_brute_force_layer_call_and_return_conditional_losses_55239o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:L H
#
_output_shapes
:?????????
!
_user_specified_name	queries:

_output_shapes
: 
?
?
'__inference_dense_4_layer_call_fn_55761

inputs
unknown: @
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_54834o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
'__inference_dense_5_layer_call_fn_55781

inputs
unknown:@ 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_54850o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?	
?
B__inference_dense_5_layer_call_and_return_conditional_losses_54850

inputs0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:????????? w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?*
?
H__inference_query_model_1_layer_call_and_return_conditional_losses_55592

inputsX
Tuser_model_1_sequential_4_string_lookup_2_none_lookup_lookuptablefindv2_table_handleY
Uuser_model_1_sequential_4_string_lookup_2_none_lookup_lookuptablefindv2_default_value	O
<user_model_1_sequential_4_embedding_2_embedding_lookup_55571:	? E
3sequential_5_dense_4_matmul_readvariableop_resource: @B
4sequential_5_dense_4_biasadd_readvariableop_resource:@E
3sequential_5_dense_5_matmul_readvariableop_resource:@ B
4sequential_5_dense_5_biasadd_readvariableop_resource: 
identity??+sequential_5/dense_4/BiasAdd/ReadVariableOp?*sequential_5/dense_4/MatMul/ReadVariableOp?+sequential_5/dense_5/BiasAdd/ReadVariableOp?*sequential_5/dense_5/MatMul/ReadVariableOp?6user_model_1/sequential_4/embedding_2/embedding_lookup?Guser_model_1/sequential_4/string_lookup_2/None_Lookup/LookupTableFindV2?
Guser_model_1/sequential_4/string_lookup_2/None_Lookup/LookupTableFindV2LookupTableFindV2Tuser_model_1_sequential_4_string_lookup_2_none_lookup_lookuptablefindv2_table_handleinputsUuser_model_1_sequential_4_string_lookup_2_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
2user_model_1/sequential_4/string_lookup_2/IdentityIdentityPuser_model_1/sequential_4/string_lookup_2/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
6user_model_1/sequential_4/embedding_2/embedding_lookupResourceGather<user_model_1_sequential_4_embedding_2_embedding_lookup_55571;user_model_1/sequential_4/string_lookup_2/Identity:output:0*
Tindices0	*O
_classE
CAloc:@user_model_1/sequential_4/embedding_2/embedding_lookup/55571*'
_output_shapes
:????????? *
dtype0?
?user_model_1/sequential_4/embedding_2/embedding_lookup/IdentityIdentity?user_model_1/sequential_4/embedding_2/embedding_lookup:output:0*
T0*O
_classE
CAloc:@user_model_1/sequential_4/embedding_2/embedding_lookup/55571*'
_output_shapes
:????????? ?
Auser_model_1/sequential_4/embedding_2/embedding_lookup/Identity_1IdentityHuser_model_1/sequential_4/embedding_2/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? `
user_model_1/concat/concat_dimConst*
_output_shapes
: *
dtype0*
value	B :?
user_model_1/concat/concatIdentityJuser_model_1/sequential_4/embedding_2/embedding_lookup/Identity_1:output:0*
T0*'
_output_shapes
:????????? ?
*sequential_5/dense_4/MatMul/ReadVariableOpReadVariableOp3sequential_5_dense_4_matmul_readvariableop_resource*
_output_shapes

: @*
dtype0?
sequential_5/dense_4/MatMulMatMul#user_model_1/concat/concat:output:02sequential_5/dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
+sequential_5/dense_4/BiasAdd/ReadVariableOpReadVariableOp4sequential_5_dense_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
sequential_5/dense_4/BiasAddBiasAdd%sequential_5/dense_4/MatMul:product:03sequential_5/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@z
sequential_5/dense_4/ReluRelu%sequential_5/dense_4/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@?
*sequential_5/dense_5/MatMul/ReadVariableOpReadVariableOp3sequential_5_dense_5_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0?
sequential_5/dense_5/MatMulMatMul'sequential_5/dense_4/Relu:activations:02sequential_5/dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ?
+sequential_5/dense_5/BiasAdd/ReadVariableOpReadVariableOp4sequential_5_dense_5_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
sequential_5/dense_5/BiasAddBiasAdd%sequential_5/dense_5/MatMul:product:03sequential_5/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? t
IdentityIdentity%sequential_5/dense_5/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp,^sequential_5/dense_4/BiasAdd/ReadVariableOp+^sequential_5/dense_4/MatMul/ReadVariableOp,^sequential_5/dense_5/BiasAdd/ReadVariableOp+^sequential_5/dense_5/MatMul/ReadVariableOp7^user_model_1/sequential_4/embedding_2/embedding_lookupH^user_model_1/sequential_4/string_lookup_2/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : : : : : 2Z
+sequential_5/dense_4/BiasAdd/ReadVariableOp+sequential_5/dense_4/BiasAdd/ReadVariableOp2X
*sequential_5/dense_4/MatMul/ReadVariableOp*sequential_5/dense_4/MatMul/ReadVariableOp2Z
+sequential_5/dense_5/BiasAdd/ReadVariableOp+sequential_5/dense_5/BiasAdd/ReadVariableOp2X
*sequential_5/dense_5/MatMul/ReadVariableOp*sequential_5/dense_5/MatMul/ReadVariableOp2p
6user_model_1/sequential_4/embedding_2/embedding_lookup6user_model_1/sequential_4/embedding_2/embedding_lookup2?
Guser_model_1/sequential_4/string_lookup_2/None_Lookup/LookupTableFindV2Guser_model_1/sequential_4/string_lookup_2/None_Lookup/LookupTableFindV2:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
,
__inference__destroyer_55825
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
?
G__inference_sequential_4_layer_call_and_return_conditional_losses_54718
string_lookup_2_input>
:string_lookup_2_none_lookup_lookuptablefindv2_table_handle?
;string_lookup_2_none_lookup_lookuptablefindv2_default_value	$
embedding_2_54714:	? 
identity??#embedding_2/StatefulPartitionedCall?-string_lookup_2/None_Lookup/LookupTableFindV2?
-string_lookup_2/None_Lookup/LookupTableFindV2LookupTableFindV2:string_lookup_2_none_lookup_lookuptablefindv2_table_handlestring_lookup_2_input;string_lookup_2_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
string_lookup_2/IdentityIdentity6string_lookup_2/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
#embedding_2/StatefulPartitionedCallStatefulPartitionedCall!string_lookup_2/Identity:output:0embedding_2_54714*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_embedding_2_layer_call_and_return_conditional_losses_54630{
IdentityIdentity,embedding_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp$^embedding_2/StatefulPartitionedCall.^string_lookup_2/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 2J
#embedding_2/StatefulPartitionedCall#embedding_2/StatefulPartitionedCall2^
-string_lookup_2/None_Lookup/LookupTableFindV2-string_lookup_2/None_Lookup/LookupTableFindV2:Z V
#
_output_shapes
:?????????
/
_user_specified_namestring_lookup_2_input:

_output_shapes
: 
?
?
G__inference_sequential_5_layer_call_and_return_conditional_losses_54955
dense_4_input
dense_4_54944: @
dense_4_54946:@
dense_5_54949:@ 
dense_5_54951: 
identity??dense_4/StatefulPartitionedCall?dense_5/StatefulPartitionedCall?
dense_4/StatefulPartitionedCallStatefulPartitionedCalldense_4_inputdense_4_54944dense_4_54946*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_54834?
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_54949dense_5_54951*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_54850w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? : : : : 2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall:V R
'
_output_shapes
:????????? 
'
_user_specified_namedense_4_input
?
?
,__inference_sequential_4_layer_call_fn_55715

inputs
unknown
	unknown_0	
	unknown_1:	? 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_sequential_4_layer_call_and_return_conditional_losses_54635o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
?
!__inference__traced_restore_55914
file_prefix+
assignvariableop_identifiers:	?0
assignvariableop_1_candidates:	? <
)assignvariableop_2_embedding_2_embeddings:	? 3
!assignvariableop_3_dense_4_kernel: @-
assignvariableop_4_dense_4_bias:@3
!assignvariableop_5_dense_5_kernel:@ -
assignvariableop_6_dense_5_bias: 

identity_8??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_2?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B&identifiers/.ATTRIBUTES/VARIABLE_VALUEB%candidates/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*#
valueBB B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*4
_output_shapes"
 ::::::::*
dtypes

2[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOpassignvariableop_identifiersIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOpassignvariableop_1_candidatesIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp)assignvariableop_2_embedding_2_embeddingsIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOp!assignvariableop_3_dense_4_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOpassignvariableop_4_dense_4_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOp!assignvariableop_5_dense_5_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOpassignvariableop_6_dense_5_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?

Identity_7Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^NoOp"/device:CPU:0*
T0*
_output_shapes
: U

Identity_8IdentityIdentity_7:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6*"
_acd_function_control_output(*
_output_shapes
 "!

identity_8Identity_8:output:0*#
_input_shapes
: : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_6:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
?
,__inference_user_model_1_layer_call_fn_54790
input_1
unknown
	unknown_0	
	unknown_1:	? 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_user_model_1_layer_call_and_return_conditional_losses_54770o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:L H
#
_output_shapes
:?????????
!
_user_specified_name	input_1:

_output_shapes
: 
?
?
F__inference_brute_force_layer_call_and_return_conditional_losses_55160
queries
query_model_1_55134
query_model_1_55136	&
query_model_1_55138:	? %
query_model_1_55140: @!
query_model_1_55142:@%
query_model_1_55144:@ !
query_model_1_55146: 1
matmul_readvariableop_resource:	? 
gather_resource:	?

identity_1

identity_2??Gather?MatMul/ReadVariableOp?%query_model_1/StatefulPartitionedCall?
%query_model_1/StatefulPartitionedCallStatefulPartitionedCallqueriesquery_model_1_55134query_model_1_55136query_model_1_55138query_model_1_55140query_model_1_55142query_model_1_55144query_model_1_55146*
Tin

2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_query_model_1_layer_call_and_return_conditional_losses_54993u
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	? *
dtype0?
MatMulMatMul.query_model_1/StatefulPartitionedCall:output:0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????*
transpose_b(J
TopKV2/kConst*
_output_shapes
: *
dtype0*
value	B :
z
TopKV2TopKV2MatMul:product:0TopKV2/k:output:0*
T0*:
_output_shapes(
&:?????????
:?????????
?
GatherResourceGathergather_resourceTopKV2:indices:0*
Tindices0*'
_output_shapes
:?????????
*
dtype0W
IdentityIdentityGather:output:0*
T0*'
_output_shapes
:?????????
`

Identity_1IdentityTopKV2:values:0^NoOp*
T0*'
_output_shapes
:?????????
b

Identity_2IdentityIdentity:output:0^NoOp*
T0*'
_output_shapes
:?????????
?
NoOpNoOp^Gather^MatMul/ReadVariableOp&^query_model_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : : : 2
GatherGather2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2N
%query_model_1/StatefulPartitionedCall%query_model_1/StatefulPartitionedCall:L H
#
_output_shapes
:?????????
!
_user_specified_name	queries:

_output_shapes
: 
?:
?	
F__inference_brute_force_layer_call_and_return_conditional_losses_55498
queriesf
bquery_model_1_user_model_1_sequential_4_string_lookup_2_none_lookup_lookuptablefindv2_table_handleg
cquery_model_1_user_model_1_sequential_4_string_lookup_2_none_lookup_lookuptablefindv2_default_value	]
Jquery_model_1_user_model_1_sequential_4_embedding_2_embedding_lookup_55467:	? S
Aquery_model_1_sequential_5_dense_4_matmul_readvariableop_resource: @P
Bquery_model_1_sequential_5_dense_4_biasadd_readvariableop_resource:@S
Aquery_model_1_sequential_5_dense_5_matmul_readvariableop_resource:@ P
Bquery_model_1_sequential_5_dense_5_biasadd_readvariableop_resource: 1
matmul_readvariableop_resource:	? 
gather_resource:	?

identity_1

identity_2??Gather?MatMul/ReadVariableOp?9query_model_1/sequential_5/dense_4/BiasAdd/ReadVariableOp?8query_model_1/sequential_5/dense_4/MatMul/ReadVariableOp?9query_model_1/sequential_5/dense_5/BiasAdd/ReadVariableOp?8query_model_1/sequential_5/dense_5/MatMul/ReadVariableOp?Dquery_model_1/user_model_1/sequential_4/embedding_2/embedding_lookup?Uquery_model_1/user_model_1/sequential_4/string_lookup_2/None_Lookup/LookupTableFindV2?
Uquery_model_1/user_model_1/sequential_4/string_lookup_2/None_Lookup/LookupTableFindV2LookupTableFindV2bquery_model_1_user_model_1_sequential_4_string_lookup_2_none_lookup_lookuptablefindv2_table_handlequeriescquery_model_1_user_model_1_sequential_4_string_lookup_2_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
@query_model_1/user_model_1/sequential_4/string_lookup_2/IdentityIdentity^query_model_1/user_model_1/sequential_4/string_lookup_2/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
Dquery_model_1/user_model_1/sequential_4/embedding_2/embedding_lookupResourceGatherJquery_model_1_user_model_1_sequential_4_embedding_2_embedding_lookup_55467Iquery_model_1/user_model_1/sequential_4/string_lookup_2/Identity:output:0*
Tindices0	*]
_classS
QOloc:@query_model_1/user_model_1/sequential_4/embedding_2/embedding_lookup/55467*'
_output_shapes
:????????? *
dtype0?
Mquery_model_1/user_model_1/sequential_4/embedding_2/embedding_lookup/IdentityIdentityMquery_model_1/user_model_1/sequential_4/embedding_2/embedding_lookup:output:0*
T0*]
_classS
QOloc:@query_model_1/user_model_1/sequential_4/embedding_2/embedding_lookup/55467*'
_output_shapes
:????????? ?
Oquery_model_1/user_model_1/sequential_4/embedding_2/embedding_lookup/Identity_1IdentityVquery_model_1/user_model_1/sequential_4/embedding_2/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? n
,query_model_1/user_model_1/concat/concat_dimConst*
_output_shapes
: *
dtype0*
value	B :?
(query_model_1/user_model_1/concat/concatIdentityXquery_model_1/user_model_1/sequential_4/embedding_2/embedding_lookup/Identity_1:output:0*
T0*'
_output_shapes
:????????? ?
8query_model_1/sequential_5/dense_4/MatMul/ReadVariableOpReadVariableOpAquery_model_1_sequential_5_dense_4_matmul_readvariableop_resource*
_output_shapes

: @*
dtype0?
)query_model_1/sequential_5/dense_4/MatMulMatMul1query_model_1/user_model_1/concat/concat:output:0@query_model_1/sequential_5/dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
9query_model_1/sequential_5/dense_4/BiasAdd/ReadVariableOpReadVariableOpBquery_model_1_sequential_5_dense_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
*query_model_1/sequential_5/dense_4/BiasAddBiasAdd3query_model_1/sequential_5/dense_4/MatMul:product:0Aquery_model_1/sequential_5/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
'query_model_1/sequential_5/dense_4/ReluRelu3query_model_1/sequential_5/dense_4/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@?
8query_model_1/sequential_5/dense_5/MatMul/ReadVariableOpReadVariableOpAquery_model_1_sequential_5_dense_5_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0?
)query_model_1/sequential_5/dense_5/MatMulMatMul5query_model_1/sequential_5/dense_4/Relu:activations:0@query_model_1/sequential_5/dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ?
9query_model_1/sequential_5/dense_5/BiasAdd/ReadVariableOpReadVariableOpBquery_model_1_sequential_5_dense_5_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
*query_model_1/sequential_5/dense_5/BiasAddBiasAdd3query_model_1/sequential_5/dense_5/MatMul:product:0Aquery_model_1/sequential_5/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? u
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	? *
dtype0?
MatMulMatMul3query_model_1/sequential_5/dense_5/BiasAdd:output:0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????*
transpose_b(J
TopKV2/kConst*
_output_shapes
: *
dtype0*
value	B :
z
TopKV2TopKV2MatMul:product:0TopKV2/k:output:0*
T0*:
_output_shapes(
&:?????????
:?????????
?
GatherResourceGathergather_resourceTopKV2:indices:0*
Tindices0*'
_output_shapes
:?????????
*
dtype0W
IdentityIdentityGather:output:0*
T0*'
_output_shapes
:?????????
`

Identity_1IdentityTopKV2:values:0^NoOp*
T0*'
_output_shapes
:?????????
b

Identity_2IdentityIdentity:output:0^NoOp*
T0*'
_output_shapes
:?????????
?
NoOpNoOp^Gather^MatMul/ReadVariableOp:^query_model_1/sequential_5/dense_4/BiasAdd/ReadVariableOp9^query_model_1/sequential_5/dense_4/MatMul/ReadVariableOp:^query_model_1/sequential_5/dense_5/BiasAdd/ReadVariableOp9^query_model_1/sequential_5/dense_5/MatMul/ReadVariableOpE^query_model_1/user_model_1/sequential_4/embedding_2/embedding_lookupV^query_model_1/user_model_1/sequential_4/string_lookup_2/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : : : 2
GatherGather2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2v
9query_model_1/sequential_5/dense_4/BiasAdd/ReadVariableOp9query_model_1/sequential_5/dense_4/BiasAdd/ReadVariableOp2t
8query_model_1/sequential_5/dense_4/MatMul/ReadVariableOp8query_model_1/sequential_5/dense_4/MatMul/ReadVariableOp2v
9query_model_1/sequential_5/dense_5/BiasAdd/ReadVariableOp9query_model_1/sequential_5/dense_5/BiasAdd/ReadVariableOp2t
8query_model_1/sequential_5/dense_5/MatMul/ReadVariableOp8query_model_1/sequential_5/dense_5/MatMul/ReadVariableOp2?
Dquery_model_1/user_model_1/sequential_4/embedding_2/embedding_lookupDquery_model_1/user_model_1/sequential_4/embedding_2/embedding_lookup2?
Uquery_model_1/user_model_1/sequential_4/string_lookup_2/None_Lookup/LookupTableFindV2Uquery_model_1/user_model_1/sequential_4/string_lookup_2/None_Lookup/LookupTableFindV2:L H
#
_output_shapes
:?????????
!
_user_specified_name	queries:

_output_shapes
: 
?
?
G__inference_sequential_4_layer_call_and_return_conditional_losses_54707
string_lookup_2_input>
:string_lookup_2_none_lookup_lookuptablefindv2_table_handle?
;string_lookup_2_none_lookup_lookuptablefindv2_default_value	$
embedding_2_54703:	? 
identity??#embedding_2/StatefulPartitionedCall?-string_lookup_2/None_Lookup/LookupTableFindV2?
-string_lookup_2/None_Lookup/LookupTableFindV2LookupTableFindV2:string_lookup_2_none_lookup_lookuptablefindv2_table_handlestring_lookup_2_input;string_lookup_2_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
string_lookup_2/IdentityIdentity6string_lookup_2/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
#embedding_2/StatefulPartitionedCallStatefulPartitionedCall!string_lookup_2/Identity:output:0embedding_2_54703*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_embedding_2_layer_call_and_return_conditional_losses_54630{
IdentityIdentity,embedding_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp$^embedding_2/StatefulPartitionedCall.^string_lookup_2/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 2J
#embedding_2/StatefulPartitionedCall#embedding_2/StatefulPartitionedCall2^
-string_lookup_2/None_Lookup/LookupTableFindV2-string_lookup_2/None_Lookup/LookupTableFindV2:Z V
#
_output_shapes
:?????????
/
_user_specified_namestring_lookup_2_input:

_output_shapes
: 
?
?
__inference__initializer_558207
3key_value_init5276_lookuptableimportv2_table_handle/
+key_value_init5276_lookuptableimportv2_keys1
-key_value_init5276_lookuptableimportv2_values	
identity??&key_value_init5276/LookupTableImportV2?
&key_value_init5276/LookupTableImportV2LookupTableImportV23key_value_init5276_lookuptableimportv2_table_handle+key_value_init5276_lookuptableimportv2_keys-key_value_init5276_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: o
NoOpNoOp'^key_value_init5276/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
: :?:?2P
&key_value_init5276/LookupTableImportV2&key_value_init5276/LookupTableImportV2:!

_output_shapes	
:?:!

_output_shapes	
:?"?L
saver_filename:0StatefulPartitionedCall_2:0StatefulPartitionedCall_38"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
7
input_1,
serving_default_input_1:0?????????>
output_12
StatefulPartitionedCall_1:0?????????
>
output_22
StatefulPartitionedCall_1:1?????????
tensorflow/serving/predict:??
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
query_model
	identifiers
	_identifiers


candidates

_candidates
query_with_exclusions

signatures"
_tf_keras_model
Q
0
1
2
3
4
	5

6"
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
 "
trackable_list_wrapper
?
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?
trace_0
trace_1
trace_2
trace_32?
+__inference_brute_force_layer_call_fn_55183
+__inference_brute_force_layer_call_fn_55397
+__inference_brute_force_layer_call_fn_55422
+__inference_brute_force_layer_call_fn_55287?
???
FullArgSpec/
args'?$
jself
	jqueries
jk

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ztrace_0ztrace_1ztrace_2ztrace_3
?
trace_0
trace_1
trace_2
trace_32?
F__inference_brute_force_layer_call_and_return_conditional_losses_55460
F__inference_brute_force_layer_call_and_return_conditional_losses_55498
F__inference_brute_force_layer_call_and_return_conditional_losses_55316
F__inference_brute_force_layer_call_and_return_conditional_losses_55345?
???
FullArgSpec/
args'?$
jself
	jqueries
jk

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ztrace_0ztrace_1ztrace_2ztrace_3
?B?
 __inference__wrapped_model_54610input_1"?
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
?
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses
%embedding_model
&dense_layers"
_tf_keras_model
:?2identifiers
:	? 2
candidates
?2??
???
FullArgSpec1
args)?&
jself
	jqueries
j
exclusions
jk
varargs
 
varkw
 
defaults?

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
,
'serving_default"
signature_map
):'	? 2embedding_2/embeddings
 : @2dense_4/kernel
:@2dense_4/bias
 :@ 2dense_5/kernel
: 2dense_5/bias
.
	0

1"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
+__inference_brute_force_layer_call_fn_55183input_1"?
???
FullArgSpec/
args'?$
jself
	jqueries
jk

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
+__inference_brute_force_layer_call_fn_55397queries"?
???
FullArgSpec/
args'?$
jself
	jqueries
jk

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
+__inference_brute_force_layer_call_fn_55422queries"?
???
FullArgSpec/
args'?$
jself
	jqueries
jk

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
+__inference_brute_force_layer_call_fn_55287input_1"?
???
FullArgSpec/
args'?$
jself
	jqueries
jk

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
F__inference_brute_force_layer_call_and_return_conditional_losses_55460queries"?
???
FullArgSpec/
args'?$
jself
	jqueries
jk

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
F__inference_brute_force_layer_call_and_return_conditional_losses_55498queries"?
???
FullArgSpec/
args'?$
jself
	jqueries
jk

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
F__inference_brute_force_layer_call_and_return_conditional_losses_55316input_1"?
???
FullArgSpec/
args'?$
jself
	jqueries
jk

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
F__inference_brute_force_layer_call_and_return_conditional_losses_55345input_1"?
???
FullArgSpec/
args'?$
jself
	jqueries
jk

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
C
0
1
2
3
4"
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
 "
trackable_list_wrapper
?
(non_trainable_variables

)layers
*metrics
+layer_regularization_losses
,layer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses"
_generic_user_object
?
-trace_0
.trace_1
/trace_2
0trace_32?
-__inference_query_model_1_layer_call_fn_55010
-__inference_query_model_1_layer_call_fn_55517
-__inference_query_model_1_layer_call_fn_55536
-__inference_query_model_1_layer_call_fn_55087?
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
 z-trace_0z.trace_1z/trace_2z0trace_3
?
1trace_0
2trace_1
3trace_2
4trace_32?
H__inference_query_model_1_layer_call_and_return_conditional_losses_55564
H__inference_query_model_1_layer_call_and_return_conditional_losses_55592
H__inference_query_model_1_layer_call_and_return_conditional_losses_55107
H__inference_query_model_1_layer_call_and_return_conditional_losses_55127?
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
 z1trace_0z2trace_1z3trace_2z4trace_3
?
5	variables
6trainable_variables
7regularization_losses
8	keras_api
9__call__
*:&call_and_return_all_conditional_losses
;user_embedding"
_tf_keras_model
?
<layer_with_weights-0
<layer-0
=layer_with_weights-1
=layer-1
>	variables
?trainable_variables
@regularization_losses
A	keras_api
B__call__
*C&call_and_return_all_conditional_losses"
_tf_keras_sequential
?B?
#__inference_signature_wrapper_55372input_1"?
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
.
%0
&1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
-__inference_query_model_1_layer_call_fn_55010input_1"?
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
-__inference_query_model_1_layer_call_fn_55517inputs"?
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
-__inference_query_model_1_layer_call_fn_55536inputs"?
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
-__inference_query_model_1_layer_call_fn_55087input_1"?
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
H__inference_query_model_1_layer_call_and_return_conditional_losses_55564inputs"?
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
H__inference_query_model_1_layer_call_and_return_conditional_losses_55592inputs"?
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
H__inference_query_model_1_layer_call_and_return_conditional_losses_55107input_1"?
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
H__inference_query_model_1_layer_call_and_return_conditional_losses_55127input_1"?
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
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Dnon_trainable_variables

Elayers
Fmetrics
Glayer_regularization_losses
Hlayer_metrics
5	variables
6trainable_variables
7regularization_losses
9__call__
*:&call_and_return_all_conditional_losses
&:"call_and_return_conditional_losses"
_generic_user_object
?
Itrace_0
Jtrace_1
Ktrace_2
Ltrace_32?
,__inference_user_model_1_layer_call_fn_54744
,__inference_user_model_1_layer_call_fn_55603
,__inference_user_model_1_layer_call_fn_55614
,__inference_user_model_1_layer_call_fn_54790?
???
FullArgSpec*
args"?
jself
	juser_id

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
 zItrace_0zJtrace_1zKtrace_2zLtrace_3
?
Mtrace_0
Ntrace_1
Otrace_2
Ptrace_32?
G__inference_user_model_1_layer_call_and_return_conditional_losses_55629
G__inference_user_model_1_layer_call_and_return_conditional_losses_55644
G__inference_user_model_1_layer_call_and_return_conditional_losses_54803
G__inference_user_model_1_layer_call_and_return_conditional_losses_54816?
???
FullArgSpec*
args"?
jself
	juser_id

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
 zMtrace_0zNtrace_1zOtrace_2zPtrace_3
?
Qlayer-0
Rlayer_with_weights-0
Rlayer-1
S	variables
Ttrainable_variables
Uregularization_losses
V	keras_api
W__call__
*X&call_and_return_all_conditional_losses"
_tf_keras_sequential
?
Y	variables
Ztrainable_variables
[regularization_losses
\	keras_api
]__call__
*^&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
?
_	variables
`trainable_variables
aregularization_losses
b	keras_api
c__call__
*d&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
<
0
1
2
3"
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
 "
trackable_list_wrapper
?
enon_trainable_variables

flayers
gmetrics
hlayer_regularization_losses
ilayer_metrics
>	variables
?trainable_variables
@regularization_losses
B__call__
*C&call_and_return_all_conditional_losses
&C"call_and_return_conditional_losses"
_generic_user_object
?
jtrace_0
ktrace_1
ltrace_2
mtrace_32?
,__inference_sequential_5_layer_call_fn_54868
,__inference_sequential_5_layer_call_fn_55657
,__inference_sequential_5_layer_call_fn_55670
,__inference_sequential_5_layer_call_fn_54941?
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
 zjtrace_0zktrace_1zltrace_2zmtrace_3
?
ntrace_0
otrace_1
ptrace_2
qtrace_32?
G__inference_sequential_5_layer_call_and_return_conditional_losses_55687
G__inference_sequential_5_layer_call_and_return_conditional_losses_55704
G__inference_sequential_5_layer_call_and_return_conditional_losses_54955
G__inference_sequential_5_layer_call_and_return_conditional_losses_54969?
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
 zntrace_0zotrace_1zptrace_2zqtrace_3
 "
trackable_list_wrapper
'
;0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
,__inference_user_model_1_layer_call_fn_54744input_1"?
???
FullArgSpec*
args"?
jself
	juser_id

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
,__inference_user_model_1_layer_call_fn_55603user_id"?
???
FullArgSpec*
args"?
jself
	juser_id

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
,__inference_user_model_1_layer_call_fn_55614user_id"?
???
FullArgSpec*
args"?
jself
	juser_id

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
,__inference_user_model_1_layer_call_fn_54790input_1"?
???
FullArgSpec*
args"?
jself
	juser_id

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
G__inference_user_model_1_layer_call_and_return_conditional_losses_55629user_id"?
???
FullArgSpec*
args"?
jself
	juser_id

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
G__inference_user_model_1_layer_call_and_return_conditional_losses_55644user_id"?
???
FullArgSpec*
args"?
jself
	juser_id

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
G__inference_user_model_1_layer_call_and_return_conditional_losses_54803input_1"?
???
FullArgSpec*
args"?
jself
	juser_id

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
G__inference_user_model_1_layer_call_and_return_conditional_losses_54816input_1"?
???
FullArgSpec*
args"?
jself
	juser_id

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
:
r	keras_api
slookup_table"
_tf_keras_layer
?
t	variables
utrainable_variables
vregularization_losses
w	keras_api
x__call__
*y&call_and_return_all_conditional_losses

embeddings"
_tf_keras_layer
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
znon_trainable_variables

{layers
|metrics
}layer_regularization_losses
~layer_metrics
S	variables
Ttrainable_variables
Uregularization_losses
W__call__
*X&call_and_return_all_conditional_losses
&X"call_and_return_conditional_losses"
_generic_user_object
?
trace_0
?trace_1
?trace_2
?trace_32?
,__inference_sequential_4_layer_call_fn_54644
,__inference_sequential_4_layer_call_fn_55715
,__inference_sequential_4_layer_call_fn_55726
,__inference_sequential_4_layer_call_fn_54696?
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
 ztrace_0z?trace_1z?trace_2z?trace_3
?
?trace_0
?trace_1
?trace_2
?trace_32?
G__inference_sequential_4_layer_call_and_return_conditional_losses_55739
G__inference_sequential_4_layer_call_and_return_conditional_losses_55752
G__inference_sequential_4_layer_call_and_return_conditional_losses_54707
G__inference_sequential_4_layer_call_and_return_conditional_losses_54718?
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
 z?trace_0z?trace_1z?trace_2z?trace_3
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
Y	variables
Ztrainable_variables
[regularization_losses
]__call__
*^&call_and_return_all_conditional_losses
&^"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
'__inference_dense_4_layer_call_fn_55761?
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
 z?trace_0
?
?trace_02?
B__inference_dense_4_layer_call_and_return_conditional_losses_55772?
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
 z?trace_0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
_	variables
`trainable_variables
aregularization_losses
c__call__
*d&call_and_return_all_conditional_losses
&d"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
'__inference_dense_5_layer_call_fn_55781?
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
 z?trace_0
?
?trace_02?
B__inference_dense_5_layer_call_and_return_conditional_losses_55791?
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
 z?trace_0
 "
trackable_list_wrapper
.
<0
=1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
,__inference_sequential_5_layer_call_fn_54868dense_4_input"?
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
?B?
,__inference_sequential_5_layer_call_fn_55657inputs"?
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
?B?
,__inference_sequential_5_layer_call_fn_55670inputs"?
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
?B?
,__inference_sequential_5_layer_call_fn_54941dense_4_input"?
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
?B?
G__inference_sequential_5_layer_call_and_return_conditional_losses_55687inputs"?
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
?B?
G__inference_sequential_5_layer_call_and_return_conditional_losses_55704inputs"?
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
?B?
G__inference_sequential_5_layer_call_and_return_conditional_losses_54955dense_4_input"?
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
?B?
G__inference_sequential_5_layer_call_and_return_conditional_losses_54969dense_4_input"?
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
"
_generic_user_object
j
?_initializer
?_create_resource
?_initialize
?_destroy_resourceR jtf.StaticHashTable
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
t	variables
utrainable_variables
vregularization_losses
x__call__
*y&call_and_return_all_conditional_losses
&y"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
+__inference_embedding_2_layer_call_fn_55798?
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
 z?trace_0
?
?trace_02?
F__inference_embedding_2_layer_call_and_return_conditional_losses_55807?
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
 z?trace_0
 "
trackable_list_wrapper
.
Q0
R1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
,__inference_sequential_4_layer_call_fn_54644string_lookup_2_input"?
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
?B?
,__inference_sequential_4_layer_call_fn_55715inputs"?
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
?B?
,__inference_sequential_4_layer_call_fn_55726inputs"?
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
?B?
,__inference_sequential_4_layer_call_fn_54696string_lookup_2_input"?
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
?B?
G__inference_sequential_4_layer_call_and_return_conditional_losses_55739inputs"?
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
?B?
G__inference_sequential_4_layer_call_and_return_conditional_losses_55752inputs"?
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
?B?
G__inference_sequential_4_layer_call_and_return_conditional_losses_54707string_lookup_2_input"?
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
?B?
G__inference_sequential_4_layer_call_and_return_conditional_losses_54718string_lookup_2_input"?
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
'__inference_dense_4_layer_call_fn_55761inputs"?
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
B__inference_dense_4_layer_call_and_return_conditional_losses_55772inputs"?
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
'__inference_dense_5_layer_call_fn_55781inputs"?
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
B__inference_dense_5_layer_call_and_return_conditional_losses_55791inputs"?
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
_generic_user_object
?
?trace_02?
__inference__creator_55812?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? z?trace_0
?
?trace_02?
__inference__initializer_55820?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? z?trace_0
?
?trace_02?
__inference__destroyer_55825?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? z?trace_0
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
+__inference_embedding_2_layer_call_fn_55798inputs"?
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
F__inference_embedding_2_layer_call_and_return_conditional_losses_55807inputs"?
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
__inference__creator_55812"?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?B?
__inference__initializer_55820"?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?B?
__inference__destroyer_55825"?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
J
Constjtf.TrackableConstant
!J	
Const_1jtf.TrackableConstant
!J	
Const_2jtf.TrackableConstant6
__inference__creator_55812?

? 
? "? 8
__inference__destroyer_55825?

? 
? "? A
__inference__initializer_55820s???

? 
? "? ?
 __inference__wrapped_model_54610?
s?
	,?)
"?
?
input_1?????????
? "c?`
.
output_1"?
output_1?????????

.
output_2"?
output_2?????????
?
F__inference_brute_force_layer_call_and_return_conditional_losses_55316?
s?
	4?1
*?'
?
input_1?????????

 
p 
? "K?H
A?>
?
0/0?????????

?
0/1?????????

? ?
F__inference_brute_force_layer_call_and_return_conditional_losses_55345?
s?
	4?1
*?'
?
input_1?????????

 
p
? "K?H
A?>
?
0/0?????????

?
0/1?????????

? ?
F__inference_brute_force_layer_call_and_return_conditional_losses_55460?
s?
	4?1
*?'
?
queries?????????

 
p 
? "K?H
A?>
?
0/0?????????

?
0/1?????????

? ?
F__inference_brute_force_layer_call_and_return_conditional_losses_55498?
s?
	4?1
*?'
?
queries?????????

 
p
? "K?H
A?>
?
0/0?????????

?
0/1?????????

? ?
+__inference_brute_force_layer_call_fn_55183?
s?
	4?1
*?'
?
input_1?????????

 
p 
? "=?:
?
0?????????

?
1?????????
?
+__inference_brute_force_layer_call_fn_55287?
s?
	4?1
*?'
?
input_1?????????

 
p
? "=?:
?
0?????????

?
1?????????
?
+__inference_brute_force_layer_call_fn_55397?
s?
	4?1
*?'
?
queries?????????

 
p 
? "=?:
?
0?????????

?
1?????????
?
+__inference_brute_force_layer_call_fn_55422?
s?
	4?1
*?'
?
queries?????????

 
p
? "=?:
?
0?????????

?
1?????????
?
B__inference_dense_4_layer_call_and_return_conditional_losses_55772\/?,
%?"
 ?
inputs????????? 
? "%?"
?
0?????????@
? z
'__inference_dense_4_layer_call_fn_55761O/?,
%?"
 ?
inputs????????? 
? "??????????@?
B__inference_dense_5_layer_call_and_return_conditional_losses_55791\/?,
%?"
 ?
inputs?????????@
? "%?"
?
0????????? 
? z
'__inference_dense_5_layer_call_fn_55781O/?,
%?"
 ?
inputs?????????@
? "?????????? ?
F__inference_embedding_2_layer_call_and_return_conditional_losses_55807W+?(
!?
?
inputs?????????	
? "%?"
?
0????????? 
? y
+__inference_embedding_2_layer_call_fn_55798J+?(
!?
?
inputs?????????	
? "?????????? ?
H__inference_query_model_1_layer_call_and_return_conditional_losses_55107cs?0?-
&?#
?
input_1?????????
p 
? "%?"
?
0????????? 
? ?
H__inference_query_model_1_layer_call_and_return_conditional_losses_55127cs?0?-
&?#
?
input_1?????????
p
? "%?"
?
0????????? 
? ?
H__inference_query_model_1_layer_call_and_return_conditional_losses_55564bs?/?,
%?"
?
inputs?????????
p 
? "%?"
?
0????????? 
? ?
H__inference_query_model_1_layer_call_and_return_conditional_losses_55592bs?/?,
%?"
?
inputs?????????
p
? "%?"
?
0????????? 
? ?
-__inference_query_model_1_layer_call_fn_55010Vs?0?-
&?#
?
input_1?????????
p 
? "?????????? ?
-__inference_query_model_1_layer_call_fn_55087Vs?0?-
&?#
?
input_1?????????
p
? "?????????? ?
-__inference_query_model_1_layer_call_fn_55517Us?/?,
%?"
?
inputs?????????
p 
? "?????????? ?
-__inference_query_model_1_layer_call_fn_55536Us?/?,
%?"
?
inputs?????????
p
? "?????????? ?
G__inference_sequential_4_layer_call_and_return_conditional_losses_54707qs?B??
8?5
+?(
string_lookup_2_input?????????
p 

 
? "%?"
?
0????????? 
? ?
G__inference_sequential_4_layer_call_and_return_conditional_losses_54718qs?B??
8?5
+?(
string_lookup_2_input?????????
p

 
? "%?"
?
0????????? 
? ?
G__inference_sequential_4_layer_call_and_return_conditional_losses_55739bs?3?0
)?&
?
inputs?????????
p 

 
? "%?"
?
0????????? 
? ?
G__inference_sequential_4_layer_call_and_return_conditional_losses_55752bs?3?0
)?&
?
inputs?????????
p

 
? "%?"
?
0????????? 
? ?
,__inference_sequential_4_layer_call_fn_54644ds?B??
8?5
+?(
string_lookup_2_input?????????
p 

 
? "?????????? ?
,__inference_sequential_4_layer_call_fn_54696ds?B??
8?5
+?(
string_lookup_2_input?????????
p

 
? "?????????? ?
,__inference_sequential_4_layer_call_fn_55715Us?3?0
)?&
?
inputs?????????
p 

 
? "?????????? ?
,__inference_sequential_4_layer_call_fn_55726Us?3?0
)?&
?
inputs?????????
p

 
? "?????????? ?
G__inference_sequential_5_layer_call_and_return_conditional_losses_54955m>?;
4?1
'?$
dense_4_input????????? 
p 

 
? "%?"
?
0????????? 
? ?
G__inference_sequential_5_layer_call_and_return_conditional_losses_54969m>?;
4?1
'?$
dense_4_input????????? 
p

 
? "%?"
?
0????????? 
? ?
G__inference_sequential_5_layer_call_and_return_conditional_losses_55687f7?4
-?*
 ?
inputs????????? 
p 

 
? "%?"
?
0????????? 
? ?
G__inference_sequential_5_layer_call_and_return_conditional_losses_55704f7?4
-?*
 ?
inputs????????? 
p

 
? "%?"
?
0????????? 
? ?
,__inference_sequential_5_layer_call_fn_54868`>?;
4?1
'?$
dense_4_input????????? 
p 

 
? "?????????? ?
,__inference_sequential_5_layer_call_fn_54941`>?;
4?1
'?$
dense_4_input????????? 
p

 
? "?????????? ?
,__inference_sequential_5_layer_call_fn_55657Y7?4
-?*
 ?
inputs????????? 
p 

 
? "?????????? ?
,__inference_sequential_5_layer_call_fn_55670Y7?4
-?*
 ?
inputs????????? 
p

 
? "?????????? ?
#__inference_signature_wrapper_55372?
s?
	7?4
? 
-?*
(
input_1?
input_1?????????"c?`
.
output_1"?
output_1?????????

.
output_2"?
output_2?????????
?
G__inference_user_model_1_layer_call_and_return_conditional_losses_54803_s?0?-
&?#
?
input_1?????????
p 
? "%?"
?
0????????? 
? ?
G__inference_user_model_1_layer_call_and_return_conditional_losses_54816_s?0?-
&?#
?
input_1?????????
p
? "%?"
?
0????????? 
? ?
G__inference_user_model_1_layer_call_and_return_conditional_losses_55629_s?0?-
&?#
?
user_id?????????
p 
? "%?"
?
0????????? 
? ?
G__inference_user_model_1_layer_call_and_return_conditional_losses_55644_s?0?-
&?#
?
user_id?????????
p
? "%?"
?
0????????? 
? ?
,__inference_user_model_1_layer_call_fn_54744Rs?0?-
&?#
?
input_1?????????
p 
? "?????????? ?
,__inference_user_model_1_layer_call_fn_54790Rs?0?-
&?#
?
input_1?????????
p
? "?????????? ?
,__inference_user_model_1_layer_call_fn_55603Rs?0?-
&?#
?
user_id?????????
p 
? "?????????? ?
,__inference_user_model_1_layer_call_fn_55614Rs?0?-
&?#
?
user_id?????????
p
? "?????????? 
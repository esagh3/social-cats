create operator family public.gist_float4_ops using gist;

alter operator family public.gist_float4_ops using gist add
	operator 6 <>(real,real),
	operator 15 public.<->(real, real) for order by float_ops,
	function 1(real, real) public.gbt_float4_consistent(internal, real, smallint, oid, internal),
	function 2(real, real) public.gbt_float4_union(internal, internal),
	function 3(real, real) public.gbt_float4_compress(internal),
	function 4(real, real) public.gbt_decompress(internal),
	function 5(real, real) public.gbt_float4_penalty(internal, internal, internal),
	function 6(real, real) public.gbt_float4_picksplit(internal, internal),
	function 7(real, real) public.gbt_float4_same(gbtreekey8, gbtreekey8, internal),
	function 8(real, real) public.gbt_float4_distance(internal, real, smallint, oid, internal),
	function 9(real, real) public.gbt_float4_fetch(internal);

alter operator family public.gist_float4_ops using gist owner to streaming_user;

create operator class public.gist_float4_ops default for type real using gist as storage gbtreekey8
	operator 1 <(real,real),
	operator 2 <=(real,real),
	operator 3 =(real,real),
	operator 4 >=(real,real),
	operator 5 >(real,real),
	function 1(real, real) public.gbt_float4_consistent(internal, real, smallint, oid, internal),
	function 2(real, real) public.gbt_float4_union(internal, internal),
	function 3(real, real) public.gbt_float4_compress(internal),
	function 4(real, real) public.gbt_decompress(internal),
	function 5(real, real) public.gbt_float4_penalty(internal, internal, internal),
	function 6(real, real) public.gbt_float4_picksplit(internal, internal),
	function 7(real, real) public.gbt_float4_same(gbtreekey8, gbtreekey8, internal);

alter operator class public.gist_float4_ops using gist owner to streaming_user;


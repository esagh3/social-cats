create operator family public.gist_oid_ops using gist;

alter operator family public.gist_oid_ops using gist add
	operator 6 <>(oid,oid),
	operator 15 public.<->(oid, oid) for order by oid_ops,
	function 1(oid, oid) public.gbt_oid_consistent(internal, oid, smallint, oid, internal),
	function 2(oid, oid) public.gbt_oid_union(internal, internal),
	function 3(oid, oid) public.gbt_oid_compress(internal),
	function 4(oid, oid) public.gbt_decompress(internal),
	function 5(oid, oid) public.gbt_oid_penalty(internal, internal, internal),
	function 6(oid, oid) public.gbt_oid_picksplit(internal, internal),
	function 7(oid, oid) public.gbt_oid_same(gbtreekey8, gbtreekey8, internal),
	function 8(oid, oid) public.gbt_oid_distance(internal, oid, smallint, oid, internal),
	function 9(oid, oid) public.gbt_oid_fetch(internal);

alter operator family public.gist_oid_ops using gist owner to streaming_user;

create operator class public.gist_oid_ops default for type oid using gist as storage gbtreekey8
	operator 1 <(oid,oid),
	operator 2 <=(oid,oid),
	operator 3 =(oid,oid),
	operator 4 >=(oid,oid),
	operator 5 >(oid,oid),
	function 1(oid, oid) public.gbt_oid_consistent(internal, oid, smallint, oid, internal),
	function 2(oid, oid) public.gbt_oid_union(internal, internal),
	function 3(oid, oid) public.gbt_oid_compress(internal),
	function 4(oid, oid) public.gbt_decompress(internal),
	function 5(oid, oid) public.gbt_oid_penalty(internal, internal, internal),
	function 6(oid, oid) public.gbt_oid_picksplit(internal, internal),
	function 7(oid, oid) public.gbt_oid_same(gbtreekey8, gbtreekey8, internal);

alter operator class public.gist_oid_ops using gist owner to streaming_user;


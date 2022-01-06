create operator family public.gist_int4_ops using gist;

alter operator family public.gist_int4_ops using gist add
	operator 6 <>(integer,integer),
	operator 15 public.<->(integer, integer) for order by integer_ops,
	function 1(integer, integer) public.gbt_int4_consistent(internal, integer, smallint, oid, internal),
	function 2(integer, integer) public.gbt_int4_union(internal, internal),
	function 3(integer, integer) public.gbt_int4_compress(internal),
	function 4(integer, integer) public.gbt_decompress(internal),
	function 5(integer, integer) public.gbt_int4_penalty(internal, internal, internal),
	function 6(integer, integer) public.gbt_int4_picksplit(internal, internal),
	function 7(integer, integer) public.gbt_int4_same(gbtreekey8, gbtreekey8, internal),
	function 8(integer, integer) public.gbt_int4_distance(internal, integer, smallint, oid, internal),
	function 9(integer, integer) public.gbt_int4_fetch(internal);

alter operator family public.gist_int4_ops using gist owner to streaming_user;

create operator class public.gist_int4_ops default for type integer using gist as storage gbtreekey8
	operator 1 <(integer,integer),
	operator 2 <=(integer,integer),
	operator 3 =(integer,integer),
	operator 4 >=(integer,integer),
	operator 5 >(integer,integer),
	function 1(integer, integer) public.gbt_int4_consistent(internal, integer, smallint, oid, internal),
	function 2(integer, integer) public.gbt_int4_union(internal, internal),
	function 3(integer, integer) public.gbt_int4_compress(internal),
	function 4(integer, integer) public.gbt_decompress(internal),
	function 5(integer, integer) public.gbt_int4_penalty(internal, internal, internal),
	function 6(integer, integer) public.gbt_int4_picksplit(internal, internal),
	function 7(integer, integer) public.gbt_int4_same(gbtreekey8, gbtreekey8, internal);

alter operator class public.gist_int4_ops using gist owner to streaming_user;


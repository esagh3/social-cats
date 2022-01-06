create operator family public.gist_enum_ops using gist;

alter operator family public.gist_enum_ops using gist add
	operator 6 <>(anyenum,anyenum),
	function 1(anyenum, anyenum) public.gbt_enum_consistent(internal, anyenum, smallint, oid, internal),
	function 2(anyenum, anyenum) public.gbt_enum_union(internal, internal),
	function 3(anyenum, anyenum) public.gbt_enum_compress(internal),
	function 4(anyenum, anyenum) public.gbt_decompress(internal),
	function 5(anyenum, anyenum) public.gbt_enum_penalty(internal, internal, internal),
	function 6(anyenum, anyenum) public.gbt_enum_picksplit(internal, internal),
	function 7(anyenum, anyenum) public.gbt_enum_same(gbtreekey8, gbtreekey8, internal),
	function 9(anyenum, anyenum) public.gbt_enum_fetch(internal);

alter operator family public.gist_enum_ops using gist owner to streaming_user;

create operator class public.gist_enum_ops default for type anyenum using gist as storage gbtreekey8
	operator 1 <(anyenum,anyenum),
	operator 2 <=(anyenum,anyenum),
	operator 3 =(anyenum,anyenum),
	operator 4 >=(anyenum,anyenum),
	operator 5 >(anyenum,anyenum),
	function 1(anyenum, anyenum) public.gbt_enum_consistent(internal, anyenum, smallint, oid, internal),
	function 2(anyenum, anyenum) public.gbt_enum_union(internal, internal),
	function 3(anyenum, anyenum) public.gbt_enum_compress(internal),
	function 4(anyenum, anyenum) public.gbt_decompress(internal),
	function 5(anyenum, anyenum) public.gbt_enum_penalty(internal, internal, internal),
	function 6(anyenum, anyenum) public.gbt_enum_picksplit(internal, internal),
	function 7(anyenum, anyenum) public.gbt_enum_same(gbtreekey8, gbtreekey8, internal);

alter operator class public.gist_enum_ops using gist owner to streaming_user;


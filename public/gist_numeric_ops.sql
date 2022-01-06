create operator family public.gist_numeric_ops using gist;

alter operator family public.gist_numeric_ops using gist add
	operator 6 <>(numeric,numeric),
	function 1(numeric, numeric) public.gbt_numeric_consistent(internal, numeric, smallint, oid, internal),
	function 2(numeric, numeric) public.gbt_numeric_union(internal, internal),
	function 3(numeric, numeric) public.gbt_numeric_compress(internal),
	function 4(numeric, numeric) public.gbt_var_decompress(internal),
	function 5(numeric, numeric) public.gbt_numeric_penalty(internal, internal, internal),
	function 6(numeric, numeric) public.gbt_numeric_picksplit(internal, internal),
	function 7(numeric, numeric) public.gbt_numeric_same(gbtreekey_var, gbtreekey_var, internal),
	function 9(numeric, numeric) public.gbt_var_fetch(internal);

alter operator family public.gist_numeric_ops using gist owner to streaming_user;

create operator class public.gist_numeric_ops default for type numeric using gist as storage gbtreekey_var
	operator 1 <(numeric,numeric),
	operator 2 <=(numeric,numeric),
	operator 3 =(numeric,numeric),
	operator 4 >=(numeric,numeric),
	operator 5 >(numeric,numeric),
	function 1(numeric, numeric) public.gbt_numeric_consistent(internal, numeric, smallint, oid, internal),
	function 2(numeric, numeric) public.gbt_numeric_union(internal, internal),
	function 3(numeric, numeric) public.gbt_numeric_compress(internal),
	function 4(numeric, numeric) public.gbt_var_decompress(internal),
	function 5(numeric, numeric) public.gbt_numeric_penalty(internal, internal, internal),
	function 6(numeric, numeric) public.gbt_numeric_picksplit(internal, internal),
	function 7(numeric, numeric) public.gbt_numeric_same(gbtreekey_var, gbtreekey_var, internal);

alter operator class public.gist_numeric_ops using gist owner to streaming_user;


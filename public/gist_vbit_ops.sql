create operator family public.gist_vbit_ops using gist;

alter operator family public.gist_vbit_ops using gist add
	operator 6 <>(bit varying,bit varying),
	function 1(bit varying, bit varying) public.gbt_bit_consistent(internal, bit, smallint, oid, internal),
	function 2(bit varying, bit varying) public.gbt_bit_union(internal, internal),
	function 3(bit varying, bit varying) public.gbt_bit_compress(internal),
	function 4(bit varying, bit varying) public.gbt_var_decompress(internal),
	function 5(bit varying, bit varying) public.gbt_bit_penalty(internal, internal, internal),
	function 6(bit varying, bit varying) public.gbt_bit_picksplit(internal, internal),
	function 7(bit varying, bit varying) public.gbt_bit_same(gbtreekey_var, gbtreekey_var, internal),
	function 9(bit varying, bit varying) public.gbt_var_fetch(internal);

alter operator family public.gist_vbit_ops using gist owner to streaming_user;

create operator class public.gist_vbit_ops default for type bit varying using gist as storage gbtreekey_var
	operator 1 <(bit varying,bit varying),
	operator 2 <=(bit varying,bit varying),
	operator 3 =(bit varying,bit varying),
	operator 4 >=(bit varying,bit varying),
	operator 5 >(bit varying,bit varying),
	function 1(bit varying, bit varying) public.gbt_bit_consistent(internal, bit, smallint, oid, internal),
	function 2(bit varying, bit varying) public.gbt_bit_union(internal, internal),
	function 3(bit varying, bit varying) public.gbt_bit_compress(internal),
	function 4(bit varying, bit varying) public.gbt_var_decompress(internal),
	function 5(bit varying, bit varying) public.gbt_bit_penalty(internal, internal, internal),
	function 6(bit varying, bit varying) public.gbt_bit_picksplit(internal, internal),
	function 7(bit varying, bit varying) public.gbt_bit_same(gbtreekey_var, gbtreekey_var, internal);

alter operator class public.gist_vbit_ops using gist owner to streaming_user;


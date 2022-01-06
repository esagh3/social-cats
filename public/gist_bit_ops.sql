create operator family public.gist_bit_ops using gist;

alter operator family public.gist_bit_ops using gist add
	operator 6 <>(bit,bit),
	function 1(bit, bit) public.gbt_bit_consistent(internal, bit, smallint, oid, internal),
	function 2(bit, bit) public.gbt_bit_union(internal, internal),
	function 3(bit, bit) public.gbt_bit_compress(internal),
	function 4(bit, bit) public.gbt_var_decompress(internal),
	function 5(bit, bit) public.gbt_bit_penalty(internal, internal, internal),
	function 6(bit, bit) public.gbt_bit_picksplit(internal, internal),
	function 7(bit, bit) public.gbt_bit_same(gbtreekey_var, gbtreekey_var, internal),
	function 9(bit, bit) public.gbt_var_fetch(internal);

alter operator family public.gist_bit_ops using gist owner to streaming_user;

create operator class public.gist_bit_ops default for type bit using gist as storage gbtreekey_var
	operator 1 <(bit,bit),
	operator 2 <=(bit,bit),
	operator 3 =(bit,bit),
	operator 4 >=(bit,bit),
	operator 5 >(bit,bit),
	function 1(bit, bit) public.gbt_bit_consistent(internal, bit, smallint, oid, internal),
	function 2(bit, bit) public.gbt_bit_union(internal, internal),
	function 3(bit, bit) public.gbt_bit_compress(internal),
	function 4(bit, bit) public.gbt_var_decompress(internal),
	function 5(bit, bit) public.gbt_bit_penalty(internal, internal, internal),
	function 6(bit, bit) public.gbt_bit_picksplit(internal, internal),
	function 7(bit, bit) public.gbt_bit_same(gbtreekey_var, gbtreekey_var, internal);

alter operator class public.gist_bit_ops using gist owner to streaming_user;


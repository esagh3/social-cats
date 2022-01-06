create operator family public.gist_bpchar_ops using gist;

alter operator family public.gist_bpchar_ops using gist add
	operator 6 <>(character,character),
	function 1(character, character) public.gbt_bpchar_consistent(internal, char, smallint, oid, internal),
	function 2(character, character) public.gbt_text_union(internal, internal),
	function 3(character, character) public.gbt_bpchar_compress(internal),
	function 4(character, character) public.gbt_var_decompress(internal),
	function 5(character, character) public.gbt_text_penalty(internal, internal, internal),
	function 6(character, character) public.gbt_text_picksplit(internal, internal),
	function 7(character, character) public.gbt_text_same(gbtreekey_var, gbtreekey_var, internal),
	function 9(character, character) public.gbt_var_fetch(internal);

alter operator family public.gist_bpchar_ops using gist owner to streaming_user;

create operator class public.gist_bpchar_ops default for type character using gist as storage gbtreekey_var
	operator 1 <(character,character),
	operator 2 <=(character,character),
	operator 3 =(character,character),
	operator 4 >=(character,character),
	operator 5 >(character,character),
	function 1(character, character) public.gbt_bpchar_consistent(internal, char, smallint, oid, internal),
	function 2(character, character) public.gbt_text_union(internal, internal),
	function 3(character, character) public.gbt_bpchar_compress(internal),
	function 4(character, character) public.gbt_var_decompress(internal),
	function 5(character, character) public.gbt_text_penalty(internal, internal, internal),
	function 6(character, character) public.gbt_text_picksplit(internal, internal),
	function 7(character, character) public.gbt_text_same(gbtreekey_var, gbtreekey_var, internal);

alter operator class public.gist_bpchar_ops using gist owner to streaming_user;


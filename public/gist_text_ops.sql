create operator family public.gist_text_ops using gist;

alter operator family public.gist_text_ops using gist add
	operator 6 <>(text,text),
	function 1(text, text) public.gbt_text_consistent(internal, text, smallint, oid, internal),
	function 2(text, text) public.gbt_text_union(internal, internal),
	function 3(text, text) public.gbt_text_compress(internal),
	function 4(text, text) public.gbt_var_decompress(internal),
	function 5(text, text) public.gbt_text_penalty(internal, internal, internal),
	function 6(text, text) public.gbt_text_picksplit(internal, internal),
	function 7(text, text) public.gbt_text_same(gbtreekey_var, gbtreekey_var, internal),
	function 9(text, text) public.gbt_var_fetch(internal);

alter operator family public.gist_text_ops using gist owner to streaming_user;

create operator class public.gist_text_ops default for type text using gist as storage gbtreekey_var
	operator 1 <(text,text),
	operator 2 <=(text,text),
	operator 3 =(text,text),
	operator 4 >=(text,text),
	operator 5 >(text,text),
	function 1(text, text) public.gbt_text_consistent(internal, text, smallint, oid, internal),
	function 2(text, text) public.gbt_text_union(internal, internal),
	function 3(text, text) public.gbt_text_compress(internal),
	function 4(text, text) public.gbt_var_decompress(internal),
	function 5(text, text) public.gbt_text_penalty(internal, internal, internal),
	function 6(text, text) public.gbt_text_picksplit(internal, internal),
	function 7(text, text) public.gbt_text_same(gbtreekey_var, gbtreekey_var, internal);

alter operator class public.gist_text_ops using gist owner to streaming_user;


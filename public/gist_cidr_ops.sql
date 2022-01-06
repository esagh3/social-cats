create operator family public.gist_cidr_ops using gist;

alter operator family public.gist_cidr_ops using gist add
	operator 6 <>(inet,inet),
	function 1(cidr, cidr) public.gbt_inet_consistent(internal, inet, smallint, oid, internal),
	function 2(cidr, cidr) public.gbt_inet_union(internal, internal),
	function 3(cidr, cidr) public.gbt_inet_compress(internal),
	function 4(cidr, cidr) public.gbt_decompress(internal),
	function 5(cidr, cidr) public.gbt_inet_penalty(internal, internal, internal),
	function 6(cidr, cidr) public.gbt_inet_picksplit(internal, internal),
	function 7(cidr, cidr) public.gbt_inet_same(gbtreekey16, gbtreekey16, internal);

alter operator family public.gist_cidr_ops using gist owner to streaming_user;

create operator class public.gist_cidr_ops default for type cidr using gist as storage gbtreekey16
	operator 1 <(inet,inet),
	operator 2 <=(inet,inet),
	operator 3 =(inet,inet),
	operator 4 >=(inet,inet),
	operator 5 >(inet,inet),
	function 1(cidr, cidr) public.gbt_inet_consistent(internal, inet, smallint, oid, internal),
	function 2(cidr, cidr) public.gbt_inet_union(internal, internal),
	function 3(cidr, cidr) public.gbt_inet_compress(internal),
	function 4(cidr, cidr) public.gbt_decompress(internal),
	function 5(cidr, cidr) public.gbt_inet_penalty(internal, internal, internal),
	function 6(cidr, cidr) public.gbt_inet_picksplit(internal, internal),
	function 7(cidr, cidr) public.gbt_inet_same(gbtreekey16, gbtreekey16, internal);

alter operator class public.gist_cidr_ops using gist owner to streaming_user;


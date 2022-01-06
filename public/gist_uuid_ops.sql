create operator family public.gist_uuid_ops using gist;

alter operator family public.gist_uuid_ops using gist add
	operator 6 <>(uuid,uuid),
	function 1(uuid, uuid) public.gbt_uuid_consistent(internal, uuid, smallint, oid, internal),
	function 2(uuid, uuid) public.gbt_uuid_union(internal, internal),
	function 3(uuid, uuid) public.gbt_uuid_compress(internal),
	function 4(uuid, uuid) public.gbt_decompress(internal),
	function 5(uuid, uuid) public.gbt_uuid_penalty(internal, internal, internal),
	function 6(uuid, uuid) public.gbt_uuid_picksplit(internal, internal),
	function 7(uuid, uuid) public.gbt_uuid_same(gbtreekey32, gbtreekey32, internal),
	function 9(uuid, uuid) public.gbt_uuid_fetch(internal);

alter operator family public.gist_uuid_ops using gist owner to streaming_user;

create operator class public.gist_uuid_ops default for type uuid using gist as storage gbtreekey32
	operator 1 <(uuid,uuid),
	operator 2 <=(uuid,uuid),
	operator 3 =(uuid,uuid),
	operator 4 >=(uuid,uuid),
	operator 5 >(uuid,uuid),
	function 1(uuid, uuid) public.gbt_uuid_consistent(internal, uuid, smallint, oid, internal),
	function 2(uuid, uuid) public.gbt_uuid_union(internal, internal),
	function 3(uuid, uuid) public.gbt_uuid_compress(internal),
	function 4(uuid, uuid) public.gbt_decompress(internal),
	function 5(uuid, uuid) public.gbt_uuid_penalty(internal, internal, internal),
	function 6(uuid, uuid) public.gbt_uuid_picksplit(internal, internal),
	function 7(uuid, uuid) public.gbt_uuid_same(gbtreekey32, gbtreekey32, internal);

alter operator class public.gist_uuid_ops using gist owner to streaming_user;


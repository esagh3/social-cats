create operator family public.gist_timestamptz_ops using gist;

alter operator family public.gist_timestamptz_ops using gist add
	operator 6 <>(timestamp with time zone,timestamp with time zone),
	operator 15 public.<->(timestamp with time zone, timestamp with time zone) for order by interval_ops,
	function 1(timestamp with time zone, timestamp with time zone) public.gbt_tstz_consistent(internal, timestamp with time zone, smallint, oid, internal),
	function 2(timestamp with time zone, timestamp with time zone) public.gbt_ts_union(internal, internal),
	function 3(timestamp with time zone, timestamp with time zone) public.gbt_tstz_compress(internal),
	function 4(timestamp with time zone, timestamp with time zone) public.gbt_decompress(internal),
	function 5(timestamp with time zone, timestamp with time zone) public.gbt_ts_penalty(internal, internal, internal),
	function 6(timestamp with time zone, timestamp with time zone) public.gbt_ts_picksplit(internal, internal),
	function 7(timestamp with time zone, timestamp with time zone) public.gbt_ts_same(gbtreekey16, gbtreekey16, internal),
	function 8(timestamp with time zone, timestamp with time zone) public.gbt_tstz_distance(internal, timestamp with time zone, smallint, oid, internal),
	function 9(timestamp with time zone, timestamp with time zone) public.gbt_ts_fetch(internal);

alter operator family public.gist_timestamptz_ops using gist owner to streaming_user;

create operator class public.gist_timestamptz_ops default for type timestamp with time zone using gist as storage gbtreekey16
	operator 1 <(timestamp with time zone,timestamp with time zone),
	operator 2 <=(timestamp with time zone,timestamp with time zone),
	operator 3 =(timestamp with time zone,timestamp with time zone),
	operator 4 >=(timestamp with time zone,timestamp with time zone),
	operator 5 >(timestamp with time zone,timestamp with time zone),
	function 1(timestamp with time zone, timestamp with time zone) public.gbt_tstz_consistent(internal, timestamp with time zone, smallint, oid, internal),
	function 2(timestamp with time zone, timestamp with time zone) public.gbt_ts_union(internal, internal),
	function 3(timestamp with time zone, timestamp with time zone) public.gbt_tstz_compress(internal),
	function 4(timestamp with time zone, timestamp with time zone) public.gbt_decompress(internal),
	function 5(timestamp with time zone, timestamp with time zone) public.gbt_ts_penalty(internal, internal, internal),
	function 6(timestamp with time zone, timestamp with time zone) public.gbt_ts_picksplit(internal, internal),
	function 7(timestamp with time zone, timestamp with time zone) public.gbt_ts_same(gbtreekey16, gbtreekey16, internal);

alter operator class public.gist_timestamptz_ops using gist owner to streaming_user;


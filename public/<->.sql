create operator public.<-> (procedure = public.cash_dist, leftarg = money, rightarg = money, commutator = public.<->);

alter operator public.<->(money, money) owner to streaming_user;

create operator public.<-> (procedure = public.date_dist, leftarg = date, rightarg = date, commutator = public.<->);

alter operator public.<->(date, date) owner to streaming_user;

create operator public.<-> (procedure = public.float4_dist, leftarg = real, rightarg = real, commutator = public.<->);

alter operator public.<->(real, real) owner to streaming_user;

create operator public.<-> (procedure = public.float8_dist, leftarg = double precision, rightarg = double precision, commutator = public.<->);

alter operator public.<->(double precision, double precision) owner to streaming_user;

create operator public.<-> (procedure = public.int2_dist, leftarg = smallint, rightarg = smallint, commutator = public.<->);

alter operator public.<->(smallint, smallint) owner to streaming_user;

create operator public.<-> (procedure = public.int4_dist, leftarg = integer, rightarg = integer, commutator = public.<->);

alter operator public.<->(integer, integer) owner to streaming_user;

create operator public.<-> (procedure = public.int8_dist, leftarg = bigint, rightarg = bigint, commutator = public.<->);

alter operator public.<->(bigint, bigint) owner to streaming_user;

create operator public.<-> (procedure = public.interval_dist, leftarg = interval, rightarg = interval, commutator = public.<->);

alter operator public.<->(interval, interval) owner to streaming_user;

create operator public.<-> (procedure = public.oid_dist, leftarg = oid, rightarg = oid, commutator = public.<->);

alter operator public.<->(oid, oid) owner to streaming_user;

create operator public.<-> (procedure = public.time_dist, leftarg = time, rightarg = time, commutator = public.<->);

alter operator public.<->(time, time) owner to streaming_user;

create operator public.<-> (procedure = public.ts_dist, leftarg = timestamp, rightarg = timestamp, commutator = public.<->);

alter operator public.<->(timestamp, timestamp) owner to streaming_user;

create operator public.<-> (procedure = public.tstz_dist, leftarg = timestamp with time zone, rightarg = timestamp with time zone, commutator = public.<->);

alter operator public.<->(timestamp with time zone, timestamp with time zone) owner to streaming_user;


SELECT DISTINCT On (change_summary.sha) change_summary.sha, 
                change_summary.project, 
                author, 
                author_email, 
                commit_date, 
                is_bug 
FROM   change_summary 
       INNER JOIN method_change_detail 
               ON method_change_detail.sha = change_summary.sha 
WHERE  change_summary.is_bug 
       AND ( basestream_adds > 0 
              OR basestream_dels > 0 
              OR collector_adds > 0 
              OR collector_dels > 0 
              OR characteristics_adds > 0 
              OR characteristics_dels > 0 
              OR collectors_adds > 0 
              OR collectors_dels > 0 
              OR doublestream_adds > 0 
              OR doublestream_dels > 0 
              OR range_adds > 0 
              OR range_dels > 0 
              OR rangeclosed_adds > 0 
              OR rangeclosed_dels > 0 
              OR intstream_adds > 0 
              OR intstream_dels > 0 
              OR longstream_adds > 0 
              OR longstream_dels > 0 
              OR spliterator_adds > 0 
              OR spliterator_dels > 0 
              OR ofdouble_adds > 0 
              OR ofdouble_dels > 0 
              OR ofint_adds > 0 
              OR ofint_dels > 0 
              OR oflong_adds > 0 
              OR oflong_dels > 0 
              OR ofprimitive_adds > 0 
              OR ofprimitive_dels > 0 
              OR stream_adds > 0 
              OR stream_dels > 0 
              OR streamsupport_adds > 0 
              OR streamsupport_dels > 0 
              OR accumulator___adds > 0 
              OR accumulator___dels > 0 
              OR allmatch_adds > 0 
              OR allmatch_dels > 0 
              OR allprocesses___adds > 0 
              OR allprocesses___dels > 0 
              OR anymatch_adds > 0 
              OR anymatch_dels > 0 
              OR asdoublestream___adds > 0 
              OR asdoublestream___dels > 0 
              OR asintstream___adds > 0 
              OR asintstream___dels > 0 
              OR aslongstream___adds > 0 
              OR aslongstream___dels > 0 
              OR average___adds > 0 
              OR average___dels > 0 
              OR averagingdouble_adds > 0 
              OR averagingdouble_dels > 0 
              OR averagingint_adds > 0 
              OR averagingint_dels > 0 
              OR averaginglong_adds > 0 
              OR averaginglong_dels > 0 
              OR boxed___adds > 0 
              OR boxed___dels > 0 
              OR build___adds > 0 
              OR build___dels > 0 
              OR builder___adds > 0 
              OR builder___dels > 0 
              OR catalogs___adds > 0 
              OR catalogs___dels > 0 
              OR characteristics___adds > 0 
              OR characteristics___dels > 0 
              OR chars___adds > 0 
              OR chars___dels > 0 
              OR children___adds > 0 
              OR children___dels > 0 
              OR codepoints___adds > 0 
              OR codepoints___dels > 0 
              OR collect_adds > 0 
              OR collect_dels > 0 
              OR collectingandthen_adds > 0 
              OR collectingandthen_dels > 0 
              OR combiner___adds > 0 
              OR combiner___dels > 0 
              OR concat_adds > 0 
              OR concat_dels > 0 
              OR count___adds > 0 
              OR count___dels > 0 
              OR counting___adds > 0 
              OR counting___dels > 0 
              OR datesuntil_adds > 0 
              OR datesuntil_dels > 0 
              OR descendants___adds > 0 
              OR descendants___dels > 0 
              OR distinct___adds > 0 
              OR distinct___dels > 0 
              OR doubles_adds > 0 
              OR doubles_dels > 0 
              OR doubles___adds > 0 
              OR doubles___dels > 0 
              OR drivers___adds > 0 
              OR drivers___dels > 0 
              OR dropwhile_adds > 0 
              OR dropwhile_dels > 0 
              OR elementsasstream___adds > 0 
              OR elementsasstream___dels > 0 
              OR estimatesize___adds > 0 
              OR estimatesize___dels > 0 
              OR filter_adds > 0 
              OR filter_dels > 0 
              OR filtering_adds > 0 
              OR filtering_dels > 0 
              OR findany___adds > 0 
              OR findany___dels > 0 
              OR findfirst___adds > 0 
              OR findfirst___dels > 0 
              OR finisher___adds > 0 
              OR finisher___dels > 0 
              OR flatmap_adds > 0 
              OR flatmap_dels > 0 
              OR flatmaptodouble_adds > 0 
              OR flatmaptodouble_dels > 0 
              OR flatmaptoint_adds > 0 
              OR flatmaptoint_dels > 0 
              OR flatmapping_adds > 0 
              OR flatmapping_dels > 0 
              OR foreach_adds > 0 
              OR foreach_dels > 0 
              OR foreachordered_adds > 0 
              OR foreachordered_dels > 0 
              OR foreachremaining_adds > 0 
              OR foreachremaining_dels > 0 
              OR generate_adds > 0 
              OR generate_dels > 0 
              OR getcomparator___adds > 0 
              OR getcomparator___dels > 0 
              OR getexactsizeifknown___adds > 0 
              OR getexactsizeifknown___dels > 0 
              OR groupingby_adds > 0 
              OR groupingby_dels > 0 
              OR groupingbyconcurrent_adds > 0 
              OR groupingbyconcurrent_dels > 0 
              OR hascharacteristics_adds > 0 
              OR hascharacteristics_dels > 0 
              OR inetaddresses___adds > 0 
              OR inetaddresses___dels > 0 
              OR ints___adds > 0 
              OR ints___dels > 0 
              OR isparallel___adds > 0 
              OR isparallel___dels > 0 
              OR joining___adds > 0 
              OR joining___dels > 0 
              OR limit_adds > 0 
              OR limit_dels > 0 
              OR lines___adds > 0 
              OR lines___dels > 0 
              OR longs_adds > 0 
              OR longs_dels > 0 
              OR longs___adds > 0 
              OR longs___dels > 0 
              OR map_adds > 0 
              OR map_dels > 0 
              OR maptoint_adds > 0 
              OR maptoint_dels > 0 
              OR maptolong_adds > 0 
              OR maptolong_dels > 0 
              OR maptoobj_adds > 0 
              OR maptoobj_dels > 0 
              OR mapping_adds > 0 
              OR mapping_dels > 0 
              OR max___adds > 0 
              OR max___dels > 0 
              OR maxby_adds > 0 
              OR maxby_dels > 0 
              OR min___adds > 0 
              OR min___dels > 0 
              OR minby_adds > 0 
              OR minby_dels > 0 
              OR networkinterfaces___adds > 0 
              OR networkinterfaces___dels > 0 
              OR nonematch_adds > 0 
              OR nonematch_dels > 0 
              OR parallel___adds > 0 
              OR parallel___dels > 0 
              OR parallelstream___adds > 0 
              OR parallelstream___dels > 0 
              OR partitioningby_adds > 0 
              OR partitioningby_dels > 0 
              OR peek_adds > 0 
              OR peek_dels > 0 
              OR reduce_adds > 0 
              OR reduce_dels > 0 
              OR reducing_adds > 0 
              OR reducing_dels > 0 
              OR results___adds > 0 
              OR results___dels > 0 
              OR sequential___adds > 0 
              OR sequential___dels > 0 
              OR skip_adds > 0 
              OR skip_dels > 0 
              OR sorted___adds > 0 
              OR sorted___dels > 0 
              OR splitasstream_adds > 0 
              OR splitasstream_dels > 0 
              OR spliterator___adds > 0 
              OR spliterator___dels > 0 
              OR stream___adds > 0 
              OR stream___dels > 0 
              OR subinterfaces___adds > 0 
              OR subinterfaces___dels > 0 
              OR sum___adds > 0 
              OR sum___dels > 0 
              OR summarizingdouble_adds > 0 
              OR summarizingdouble_dels > 0 
              OR summarizingint_adds > 0 
              OR summarizingint_dels > 0 
              OR summarizinglong_adds > 0 
              OR summarizinglong_dels > 0 
              OR summarystatistics___adds > 0 
              OR summarystatistics___dels > 0 
              OR summingdouble_adds > 0 
              OR summingdouble_dels > 0 
              OR summingint_adds > 0 
              OR summingint_dels > 0 
              OR summinglong_adds > 0 
              OR summinglong_dels > 0 
              OR supplier___adds > 0 
              OR supplier___dels > 0 
              OR takewhile_adds > 0 
              OR takewhile_dels > 0 
              OR toarray___adds > 0 
              OR toarray___dels > 0 
              OR tocollection_adds > 0 
              OR tocollection_dels > 0 
              OR toconcurrentmap_adds > 0 
              OR toconcurrentmap_dels > 0 
              OR tolist___adds > 0 
              OR tolist___dels > 0 
              OR tomap_adds > 0 
              OR tomap_dels > 0 
              OR toset___adds > 0 
              OR toset___dels > 0 
              OR tounmodifiablelist___adds > 0 
              OR tounmodifiablelist___dels > 0 
              OR tounmodifiablemap_adds > 0 
              OR tounmodifiablemap_dels > 0 
              OR tounmodifiableset___adds > 0 
              OR tounmodifiableset___dels > 0 
              OR tokens___adds > 0 
              OR tokens___dels > 0 
              OR tryadvance_adds > 0 
              OR tryadvance_dels > 0 
              OR trysplit___adds > 0 
              OR trysplit___dels > 0 
              OR unordered___adds > 0 
              OR unordered___dels > 0 
              OR versionedstream___adds > 0 
              OR versionedstream___dels > 0 ) 
ORDER  BY change_summary.sha, 
          change_summary.project DESC, 
          file_name, 
          method_name 

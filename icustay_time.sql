select ce.stay_id
, min(charttime) as intime_hr
, max(charttime) as outtime_hr
FROM mimic_icu.chartevents ce
-- only look at heart rate
where ce.itemid = 220045
group by ce.stay_id

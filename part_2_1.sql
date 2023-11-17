CREATE TABLE subscription_table (
    subscription_id SERIAL PRIMARY KEY,
    subscribed_at TIMESTAMP,
    user_id INT,
    paid INT CHECK (paid IN (10, 100, 1000)),
    subscription_plan VARCHAR(10) CHECK (subscription_plan IN ('monthly', 'yearly', 'lifetime'))
);

INSERT INTO subscription_table (subscription_id, subscribed_at, user_id, paid, subscription_plan)
VALUES
  (1, '2023-05-02 05:36:26', 2042, 10, 'monthly'),
  (2, '2023-05-10 02:46:02', 2043, 100, 'monthly'),
  (3, '2023-02-15 03:04:14', 2044, 1000, 'monthly'),
  (4, '2023-01-02 16:32:51', 2045, 10, 'yearly'),
  (5, '2023-05-12 06:37:02', 2046, 100, 'yearly'),
  (6, '2023-05-09 08:49:32', 2047, 1000, 'yearly'),
  (7, '2023-04-16 19:26:20', 2048, 10, 'lifetime'),
  (8, '2023-02-18 15:42:23', 2049, 100, 'lifetime'),
  (9, '2023-06-21 13:51:31', 2050, 1000, 'lifetime'),
  (10, '2023-03-04 08:10:33', 2051, 10, 'monthly'),
  (11, '2023-02-25 09:32:23', 2052, 100, 'monthly'),
  (12, '2023-03-10 22:43:39', 2053, 1000, 'monthly'),
  (13, '2023-05-18 06:27:26', 2054, 10, 'yearly'),
  (14, '2023-03-09 20:18:40', 2055, 100, 'yearly'),
  (15, '2023-04-12 09:52:45', 2056, 1000, 'yearly'),
  (16, '2023-03-03 07:33:57', 2057, 10, 'lifetime'),
  (17, '2023-04-28 10:19:42', 2058, 100, 'lifetime'),
  (18, '2023-06-04 23:03:14', 2059, 1000, 'lifetime'),
  (19, '2023-06-28 04:33:03', 2060, 10, 'monthly'),
  (20, '2023-06-07 07:01:20', 2061, 100, 'monthly'),
  (21, '2023-05-04 08:42:08', 2062, 1000, 'monthly'),
  (22, '2023-03-11 19:14:52', 2063, 10, 'yearly'),
  (23, '2023-04-01 14:55:12', 2064, 100, 'yearly'),
  (24, '2023-04-23 13:17:56', 2065, 1000, 'yearly'),
  (25, '2023-03-07 09:25:25', 2066, 10, 'lifetime'),
  (26, '2023-06-28 04:22:56', 2067, 100, 'lifetime'),
  (27, '2023-03-07 07:22:50', 2068, 1000, 'lifetime'),
  (28, '2023-02-07 15:33:22', 2069, 10, 'monthly'),
  (29, '2023-02-23 17:55:25', 2070, 100, 'monthly'),
  (30, '2023-06-22 07:53:06', 2071, 1000, 'monthly'),
  (31, '2023-04-01 04:25:51', 2072, 10, 'yearly'),
  (32, '2023-05-18 08:03:10', 2073, 100, 'yearly'),
  (33, '2023-06-12 10:35:26', 2074, 1000, 'yearly'),
  (34, '2023-03-16 09:27:25', 2075, 10, 'lifetime'),
  (35, '2023-04-22 08:07:39', 2076, 100, 'lifetime'),
  (36, '2023-05-14 01:11:34', 2077, 1000, 'lifetime'),
  (37, '2023-06-06 19:41:12', 2078, 10, 'monthly'),
  (38, '2023-06-09 07:03:36', 2079, 100, 'monthly'),
  (39, '2023-04-17 10:52:53', 2080, 1000, 'monthly'),
  (40, '2023-05-05 18:17:22', 2081, 10, 'yearly'),
  (41, '2023-01-22 13:40:42', 2082, 100, 'yearly'),
  (42, '2023-05-25 06:19:45', 2083, 1000, 'yearly'),
  (43, '2023-02-19 04:10:28', 2084, 10, 'lifetime'),
  (44, '2023-03-13 07:41:35', 2085, 100, 'lifetime'),
  (45, '2023-06-25 09:14:04', 2086, 1000, 'lifetime'),
  (46, '2023-06-20 02:19:10', 2087, 10, 'monthly'),
  (47, '2023-01-29 19:12:24', 2088, 100, 'monthly'),
  (48, '2023-04-15 05:07:14', 2089, 1000, 'monthly'),
  (49, '2023-05-24 02:06:07', 2090, 10, 'yearly'),
  (50, '2023-06-13 07:24:34', 2091, 100, 'yearly'),
  (51, '2023-05-28 12:34:02', 2092, 1000, 'yearly'),
  (52, '2023-02-22 01:47:46', 2093, 10, 'lifetime'),
  (53, '2023-03-31 22:42:26', 2094, 100, 'lifetime'),
  (54, '2023-06-30 15:47:46', 2095, 1000, 'lifetime'),
  (55, '2023-03-02 15:19:34', 2096, 10, 'monthly'),
  (56, '2023-06-30 17:41:55', 2097, 100, 'monthly'),
  (57, '2023-03-23 15:01:52', 2098, 1000, 'monthly'),
  (58, '2023-06-21 00:44:27', 2099, 10, 'yearly'),
  (59, '2023-03-28 02:34:46', 2100, 100, 'yearly'),
  (60, '2023-06-22 03:26:51', 2101, 1000, 'yearly');
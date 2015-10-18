DROP TABLE IF EXISTS `agency`;
                        CREATE TABLE `agency` (
                          `agency_id` varchar(16) NOT NULL,
                          `agency_name` varchar(256)   NULL,
                          `agency_url` varchar(512)   NULL,
                          `agency_timezone` varchar(45)   NULL,
                          `agency_fare_url` varchar(512)   NULL,
                          PRIMARY KEY (`agency_id`)
                        );

INSERT INTO `agency` VALUES ("WKAT","Western Kenosha Area Transit","http://www.kenosha.org/transit/","America/Chicago","http://www.co.kenosha.wi.us/index.aspx?NID=582");




DROP TABLE IF EXISTS `calendar`;
                        CREATE TABLE `calendar` (
                          `service_id` varchar(16) NOT NULL,
                          `monday` integer NOT NULL,
                          `tuesday` integer NOT NULL,
                          `wednesday` integer NOT NULL,
                          `thursday` integer NOT NULL,
                          `friday` integer NOT NULL,
                          `saturday` integer NOT NULL,
                          `sunday` integer NOT NULL,
                          `start_date` date NOT NULL,
                          `end_date` date NOT NULL,
                          `time_created` timestamp NULL   NULL,
                          `time_modified` timestamp NULL   NULL,
                          `who_created` varchar(32)   NULL,
                          `who_modified` varchar(32)   NULL,
                          PRIMARY KEY (`service_id`)
                        );

INSERT INTO `calendar` VALUES ("MWF",1,0,1,0,1,0,0,"2012-01-01","2017-12-31","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `calendar` VALUES ("SAT",0,0,0,0,0,1,0,"2012-01-01","2017-12-31","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `calendar` VALUES ("SCHOOL6",1,1,1,1,1,0,0,"2012-09-04","2017-06-11","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `calendar` VALUES ("TUTH",0,1,0,1,0,0,0,"2012-01-01","2017-12-31","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `calendar` VALUES ("WEEK",1,1,1,1,1,0,0,"2012-01-01","2017-12-31","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `calendar` VALUES ("WEEKSAT",1,1,1,1,1,1,0,"2012-01-01","2017-12-31","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);




DROP TABLE IF EXISTS `routes`;
                        CREATE TABLE `routes` (
                          `route_id` varchar(16) NOT NULL,
                          `route_short_name` varchar(32)   NULL,
                          `route_long_name` varchar(256)   NULL,
                          `route_type` integer NOT NULL ,
                          `agency_id` varchar(16) NOT NULL,
                          `route_color` varchar(8)   NULL,
                          `route_text_color` varchar(8)   NULL,
                          `route_desc` varchar(512)   NULL,
                          `is_deleted` integer ,
                          `time_created` timestamp NULL   NULL,
                          `time_modified` timestamp NULL   NULL,
                          `who_created` varchar(32)   NULL,
                          `who_modified` varchar(32)   NULL,
                          PRIMARY KEY (`route_id`)
                        );

INSERT INTO `routes` VALUES ("ANTIOCH","Antioch","",3,"WKAT","","FFFFFF","",0,"0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `routes` VALUES ("GENEVA","Geneva","",3,"WKAT","","FFFFFF","",0,"0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `routes` VALUES ("KENOSHA","Kenosha","",3,"WKAT","0064A4","FFFFFF",NULL,0,"0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `routes` VALUES ("PADDOCK","Paddock Lake","",3,"WKAT","","FFFFFF","",0,"0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);




DROP TABLE IF EXISTS `trips`;
                      CREATE TABLE `trips` (
                        `trip_id` varchar(16) NOT NULL,
                        `route_id` varchar(16) NOT NULL,
                        `service_id` varchar(16) NOT NULL,
                        `direction` integer   NULL,
                        `is_deleted` integer,
                        `time_created` timestamp NULL   NULL,
                        `time_modified` timestamp NULL   NULL,
                        `who_created` varchar(32)   NULL,
                        `who_modified` varchar(32)   NULL,
                        PRIMARY KEY (`trip_id`)
                        );

INSERT INTO `trips` VALUES ("ANT_TO_PADDOCK1","GENEVA","TUTH","",0,"0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `trips` VALUES ("ANT_TO_TWIN1","ANTIOCH","WEEK","",0,"0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `trips` VALUES ("ANT_TO_TWIN2","ANTIOCH","WEEK","",0,"0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `trips` VALUES ("ANT_TO_TWIN3","ANTIOCH","WEEK","",0,"0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `trips` VALUES ("GENEVA_TO_TWIN1","GENEVA","MWF","",0,"0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `trips` VALUES ("KEN_TO_TWIN1","KENOSHA","WEEK","",0,"0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `trips` VALUES ("KEN_TO_TWIN10","KENOSHA","WEEK","",0,"0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `trips` VALUES ("KEN_TO_TWIN11","KENOSHA","WEEK","",0,"0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `trips` VALUES ("KEN_TO_TWIN2","KENOSHA","WEEK","",0,"0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `trips` VALUES ("KEN_TO_TWIN3","KENOSHA","WEEK","",0,"0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `trips` VALUES ("KEN_TO_TWIN4","KENOSHA","WEEK","",0,"0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `trips` VALUES ("KEN_TO_TWIN5","KENOSHA","WEEK","",0,"0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `trips` VALUES ("KEN_TO_TWIN6","KENOSHA","WEEK","",0,"0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `trips` VALUES ("KEN_TO_TWIN7","KENOSHA","WEEK","",0,"0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `trips` VALUES ("KEN_TO_TWIN8","KENOSHA","WEEK","",0,"0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `trips` VALUES ("KEN_TO_TWIN9","KENOSHA","WEEK","",0,"0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `trips` VALUES ("PADDOCK_TO_ANT1","GENEVA","TUTH","",0,"0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `trips` VALUES ("TWIN_TO_ANT1","ANTIOCH","WEEK","",0,"0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `trips` VALUES ("TWIN_TO_ANT2","ANTIOCH","WEEK","",0,"0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `trips` VALUES ("TWIN_TO_ANT3","ANTIOCH","WEEK","",0,"0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `trips` VALUES ("TWIN_TO_GENEVA1","GENEVA","MWF","",0,"0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `trips` VALUES ("TWIN_TO_KEN1","KENOSHA","WEEK","",0,"0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `trips` VALUES ("TWIN_TO_KEN10","KENOSHA","WEEK","",0,"0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `trips` VALUES ("TWIN_TO_KEN11","KENOSHA","WEEK","",0,"0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `trips` VALUES ("TWIN_TO_KEN2","KENOSHA","WEEK","",0,"0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `trips` VALUES ("TWIN_TO_KEN3","KENOSHA","WEEK","",0,"0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `trips` VALUES ("TWIN_TO_KEN4","KENOSHA","WEEK","",0,"0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `trips` VALUES ("TWIN_TO_KEN5","KENOSHA","WEEK","",0,"0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `trips` VALUES ("TWIN_TO_KEN6","KENOSHA","WEEK","",0,"0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `trips` VALUES ("TWIN_TO_KEN7","KENOSHA","WEEK","",0,"0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `trips` VALUES ("TWIN_TO_KEN8","KENOSHA","WEEK","",0,"0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `trips` VALUES ("TWIN_TO_KEN9","KENOSHA","WEEK","",0,"0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);




DROP TABLE IF EXISTS `stop_times`;
                      CREATE TABLE `stop_times` (
                        `trip_id` varchar(16) NOT NULL,
                        `stop_id` varchar(16) NOT NULL,
                        `stop_sequence` integer NOT NULL,
                        `arrival_time` time   NULL,
                        `departure_time` time   NULL,
                        `time_created` timestamp NULL   NULL,
                        `time_modified` timestamp NULL   NULL,
                        `who_created` varchar(32)   NULL,
                        `who_modified` varchar(32)   NULL,
                        PRIMARY KEY (`trip_id`, `stop_id`, `stop_sequence`)
                      );

INSERT INTO `stop_times` VALUES ("ANT_TO_PADDOCK1","ANTIOCH_WMART",1,"13:00:00","13:00:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("ANT_TO_PADDOCK1","PADDOCK_PLAZA",2,"13:30:00","13:30:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("ANT_TO_TWIN1","ANTIOCH_METRA",1,"06:35:00","06:35:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("ANT_TO_TWIN1","TWIN_AURORA",2,"06:55:00","06:55:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("ANT_TO_TWIN2","ANTIOCH_METRA",1,"16:35:00","16:35:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("ANT_TO_TWIN2","PADDOCK_PLAZA",2,"17:00:00","17:00:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("ANT_TO_TWIN3","ANTIOCH_METRA",1,"18:35:00","18:35:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("ANT_TO_TWIN3","ANTIOCH_METRA",3,"19:10:00","19:10:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("ANT_TO_TWIN3","PADDOCK_PLAZA",2,"18:55:00","18:55:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("ANT_TO_TWIN3","PADDOCK_PLAZA",4,"19:25:00","19:25:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("GENEVA_TO_TWIN1","GENEVA_SQUARE",1,"12:30:00","12:30:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("GENEVA_TO_TWIN1","TWIN_AURORA",2,"13:00:00","13:00:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("KEN_TO_TWIN1","KEN_AURORA",2,"07:06:00","07:06:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("KEN_TO_TWIN1","KEN_SOUTHPORT",1,"07:00:00","07:00:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("KEN_TO_TWIN1","KEN_WOODMANS",3,"07:10:00","07:10:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("KEN_TO_TWIN1","PADDOCK_PLAZA",3,"07:25:00","07:25:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("KEN_TO_TWIN1","SILVER_APTS",4,"07:35:00","07:35:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("KEN_TO_TWIN1","TWIN_AURORA",5,"07:50:00","07:50:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("KEN_TO_TWIN1","TWIN_LIB",7,"08:00:00","08:00:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("KEN_TO_TWIN1","TWIN_MEADOWVW",6,"07:55:00","07:55:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("KEN_TO_TWIN10","KEN_AURORA",2,"16:36:00","16:36:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("KEN_TO_TWIN10","KEN_SOUTHPORT",1,"16:30:00","16:30:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("KEN_TO_TWIN10","KEN_WOODMANS",3,"16:40:00","16:40:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("KEN_TO_TWIN10","PADDOCK_PLAZA",3,"16:55:00","16:55:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("KEN_TO_TWIN10","SILVER_APTS",4,"17:05:00","17:05:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("KEN_TO_TWIN10","TWIN_AURORA",5,"17:20:00","17:20:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("KEN_TO_TWIN10","TWIN_LIB",7,"17:30:00","17:30:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("KEN_TO_TWIN10","TWIN_MEADOWVW",6,"17:25:00","17:25:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("KEN_TO_TWIN11","KEN_AURORA",2,"17:36:00","17:36:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("KEN_TO_TWIN11","KEN_SOUTHPORT",1,"17:30:00","17:30:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("KEN_TO_TWIN11","KEN_WOODMANS",3,"17:40:00","17:40:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("KEN_TO_TWIN11","PADDOCK_PLAZA",3,"17:55:00","17:55:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("KEN_TO_TWIN11","SILVER_APTS",4,"18:05:00","18:05:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("KEN_TO_TWIN11","TWIN_AURORA",5,"18:20:00","18:20:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("KEN_TO_TWIN11","TWIN_LIB",7,"18:30:00","18:30:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("KEN_TO_TWIN11","TWIN_MEADOWVW",6,"18:25:00","18:25:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("KEN_TO_TWIN2","KEN_AURORA",2,"08:06:00","08:06:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("KEN_TO_TWIN2","KEN_SOUTHPORT",1,"08:00:00","08:00:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("KEN_TO_TWIN2","KEN_WOODMANS",3,"08:10:00","08:10:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("KEN_TO_TWIN2","PADDOCK_PLAZA",3,"08:25:00","08:25:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("KEN_TO_TWIN2","SILVER_APTS",4,"08:35:00","08:35:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("KEN_TO_TWIN2","TWIN_AURORA",5,"08:50:00","08:50:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("KEN_TO_TWIN2","TWIN_LIB",7,"09:00:00","09:00:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("KEN_TO_TWIN2","TWIN_MEADOWVW",6,"08:55:00","08:55:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("KEN_TO_TWIN3","KEN_AURORA",2,"09:06:00","09:06:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("KEN_TO_TWIN3","KEN_SOUTHPORT",1,"09:00:00","09:00:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("KEN_TO_TWIN3","KEN_WOODMANS",3,"09:10:00","09:10:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("KEN_TO_TWIN3","PADDOCK_PLAZA",3,"09:25:00","09:25:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("KEN_TO_TWIN3","SILVER_APTS",4,"09:35:00","09:35:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("KEN_TO_TWIN3","TWIN_AURORA",5,"09:50:00","09:50:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("KEN_TO_TWIN3","TWIN_LIB",7,"10:00:00","10:00:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("KEN_TO_TWIN3","TWIN_MEADOWVW",6,"09:55:00","09:55:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("KEN_TO_TWIN4","KEN_AURORA",2,"10:06:00","10:06:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("KEN_TO_TWIN4","KEN_SOUTHPORT",1,"10:00:00","10:00:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("KEN_TO_TWIN4","KEN_WOODMANS",3,"10:10:00","10:10:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("KEN_TO_TWIN4","PADDOCK_PLAZA",3,"10:25:00","10:25:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("KEN_TO_TWIN4","SILVER_APTS",4,"10:35:00","10:35:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("KEN_TO_TWIN4","TWIN_AURORA",5,"10:50:00","10:50:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("KEN_TO_TWIN4","TWIN_LIB",7,"11:00:00","11:00:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("KEN_TO_TWIN4","TWIN_MEADOWVW",6,"10:55:00","10:55:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("KEN_TO_TWIN5","KEN_AURORA",2,"11:06:00","11:06:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("KEN_TO_TWIN5","KEN_SOUTHPORT",1,"11:00:00","11:00:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("KEN_TO_TWIN5","KEN_WOODMANS",3,"11:10:00","11:10:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("KEN_TO_TWIN5","PADDOCK_PLAZA",3,"11:25:00","11:25:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("KEN_TO_TWIN5","SILVER_APTS",4,"11:35:00","11:35:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("KEN_TO_TWIN5","TWIN_AURORA",5,"11:50:00","11:50:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("KEN_TO_TWIN5","TWIN_LIB",7,"12:00:00","12:00:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("KEN_TO_TWIN5","TWIN_MEADOWVW",6,"11:55:00","11:55:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("KEN_TO_TWIN6","KEN_AURORA",2,"12:06:00","12:06:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("KEN_TO_TWIN6","KEN_SOUTHPORT",1,"12:00:00","12:00:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("KEN_TO_TWIN6","KEN_WOODMANS",3,"12:10:00","12:10:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("KEN_TO_TWIN6","PADDOCK_PLAZA",3,"12:25:00","12:25:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("KEN_TO_TWIN6","SILVER_APTS",4,"12:35:00","12:35:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("KEN_TO_TWIN6","TWIN_AURORA",5,"12:50:00","12:50:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("KEN_TO_TWIN6","TWIN_LIB",7,"13:00:00","13:00:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("KEN_TO_TWIN6","TWIN_MEADOWVW",6,"12:55:00","12:55:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("KEN_TO_TWIN7","KEN_AURORA",2,"13:06:00","13:06:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("KEN_TO_TWIN7","KEN_SOUTHPORT",1,"13:00:00","13:00:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("KEN_TO_TWIN7","KEN_WOODMANS",3,"13:10:00","13:10:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("KEN_TO_TWIN7","PADDOCK_PLAZA",3,"13:25:00","13:25:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("KEN_TO_TWIN7","SILVER_APTS",4,"13:35:00","13:35:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("KEN_TO_TWIN7","TWIN_AURORA",5,"13:50:00","13:50:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("KEN_TO_TWIN7","TWIN_LIB",7,"14:00:00","14:00:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("KEN_TO_TWIN7","TWIN_MEADOWVW",6,"13:55:00","13:55:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("KEN_TO_TWIN8","KEN_AURORA",2,"14:23:00","14:23:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("KEN_TO_TWIN8","KEN_SOUTHPORT",1,"14:15:00","14:15:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("KEN_TO_TWIN8","KEN_WOODMANS",3,"14:27:00","14:27:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("KEN_TO_TWIN8","PADDOCK_PLAZA",3,"14:45:00","14:45:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("KEN_TO_TWIN8","SILVER_APTS",4,"14:55:00","14:55:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("KEN_TO_TWIN8","TWIN_AURORA",5,"15:20:00","15:20:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("KEN_TO_TWIN8","TWIN_LIB",7,"15:30:00","15:30:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("KEN_TO_TWIN8","TWIN_MEADOWVW",6,"15:25:00","15:25:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("KEN_TO_TWIN9","KEN_AURORA",2,"15:36:00","15:36:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("KEN_TO_TWIN9","KEN_SOUTHPORT",1,"15:30:00","15:30:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("KEN_TO_TWIN9","KEN_WOODMANS",3,"15:40:00","15:40:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("KEN_TO_TWIN9","PADDOCK_PLAZA",3,"15:55:00","15:55:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("KEN_TO_TWIN9","SILVER_APTS",4,"16:05:00","16:05:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("KEN_TO_TWIN9","TWIN_AURORA",5,"16:20:00","16:20:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("KEN_TO_TWIN9","TWIN_LIB",7,"16:30:00","16:30:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("KEN_TO_TWIN9","TWIN_MEADOWVW",6,"16:25:00","16:25:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("PADDOCK_TO_ANT1","ANTIOCH_WMART",2,"11:00:00","11:00:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("PADDOCK_TO_ANT1","PADDOCK_PLAZA",1,"10:30:00","10:30:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("TWIN_TO_ANT1","ANTIOCH_METRA",4,"06:35:00","06:35:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("TWIN_TO_ANT1","PADDOCK_PLAZA",3,"06:10:00","06:10:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("TWIN_TO_ANT1","SILVER_HALL",2,"06:00:00","06:00:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("TWIN_TO_ANT1","TWIN_AURORA",1,"05:45:00","05:45:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("TWIN_TO_ANT2","ANTIOCH_METRA",3,"16:35:00","16:35:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("TWIN_TO_ANT2","ANTIOCH_WMART",2,"16:25:00","16:25:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("TWIN_TO_ANT2","PADDOCK_PLAZA",1,"16:00:00","16:00:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("TWIN_TO_ANT3","ANTIOCH_METRA",3,"18:35:00","18:35:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("TWIN_TO_ANT3","ANTIOCH_WMART",2,"18:25:00","18:25:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("TWIN_TO_ANT3","TWIN_AURORA",1,"18:00:00","18:00:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("TWIN_TO_GENEVA1","GENEVA_SQUARE",2,"10:30:00","10:30:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("TWIN_TO_GENEVA1","TWIN_AURORA",1,"10:00:00","10:00:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("TWIN_TO_KEN1","KEN_SOUTHPORT",7,"06:55:00","06:55:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("TWIN_TO_KEN1","KEN_STCATS",6,"06:42:00","06:42:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("TWIN_TO_KEN1","PADDOCK_PLAZA",5,"06:23:00","06:23:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("TWIN_TO_KEN1","SILVER_APTS",4,"06:14:00","06:14:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("TWIN_TO_KEN1","TWIN_AURORA",3,"06:02:00","06:02:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("TWIN_TO_KEN1","TWIN_LIB",1,"05:55:00","05:55:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("TWIN_TO_KEN1","TWIN_MEADOWVW",2,"05:59:00","05:59:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("TWIN_TO_KEN10","KEN_SOUTHPORT",7,"16:30:00","16:30:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("TWIN_TO_KEN10","KEN_STCATS",6,"16:15:00","16:15:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("TWIN_TO_KEN10","PADDOCK_PLAZA",5,"16:00:00","16:00:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("TWIN_TO_KEN10","SILVER_APTS",4,"15:49:00","15:49:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("TWIN_TO_KEN10","TWIN_AURORA",3,"15:37:00","15:37:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("TWIN_TO_KEN10","TWIN_LIB",1,"15:30:00","15:30:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("TWIN_TO_KEN10","TWIN_MEADOWVW",2,"15:34:00","15:34:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("TWIN_TO_KEN11","KEN_SOUTHPORT",7,"17:30:00","17:30:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("TWIN_TO_KEN11","KEN_STCATS",6,"17:15:00","17:15:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("TWIN_TO_KEN11","PADDOCK_PLAZA",5,"17:00:00","17:00:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("TWIN_TO_KEN11","SILVER_APTS",4,"16:49:00","16:49:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("TWIN_TO_KEN11","TWIN_AURORA",3,"16:37:00","16:37:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("TWIN_TO_KEN11","TWIN_LIB",1,"16:30:00","16:30:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("TWIN_TO_KEN11","TWIN_MEADOWVW",2,"16:34:00","16:34:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("TWIN_TO_KEN2","KEN_SOUTHPORT",7,"07:55:00","07:55:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("TWIN_TO_KEN2","KEN_STCATS",6,"07:42:00","07:42:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("TWIN_TO_KEN2","PADDOCK_PLAZA",5,"07:23:00","07:23:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("TWIN_TO_KEN2","SILVER_APTS",4,"07:14:00","07:14:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("TWIN_TO_KEN2","TWIN_AURORA",3,"07:02:00","07:02:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("TWIN_TO_KEN2","TWIN_LIB",1,"06:55:00","06:55:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("TWIN_TO_KEN2","TWIN_MEADOWVW",2,"06:59:00","06:59:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("TWIN_TO_KEN3","KEN_SOUTHPORT",7,"09:00:00","09:00:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("TWIN_TO_KEN3","KEN_STCATS",6,"08:45:00","08:45:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("TWIN_TO_KEN3","PADDOCK_PLAZA",5,"08:26:00","08:26:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("TWIN_TO_KEN3","SILVER_APTS",4,"08:17:00","08:17:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("TWIN_TO_KEN3","TWIN_AURORA",3,"08:07:00","08:07:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("TWIN_TO_KEN3","TWIN_LIB",1,"08:00:00","08:00:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("TWIN_TO_KEN3","TWIN_MEADOWVW",2,"08:04:00","08:04:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("TWIN_TO_KEN4","KEN_SOUTHPORT",7,"10:00:00","10:00:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("TWIN_TO_KEN4","KEN_STCATS",6,"09:45:00","09:45:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("TWIN_TO_KEN4","PADDOCK_PLAZA",5,"09:26:00","09:26:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("TWIN_TO_KEN4","SILVER_APTS",4,"09:17:00","09:17:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("TWIN_TO_KEN4","TWIN_AURORA",3,"09:07:00","09:07:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("TWIN_TO_KEN4","TWIN_LIB",1,"09:00:00","09:00:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("TWIN_TO_KEN4","TWIN_MEADOWVW",2,"09:04:00","09:04:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("TWIN_TO_KEN5","KEN_SOUTHPORT",7,"11:00:00","11:00:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("TWIN_TO_KEN5","KEN_STCATS",6,"10:45:00","10:45:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("TWIN_TO_KEN5","PADDOCK_PLAZA",5,"10:26:00","10:26:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("TWIN_TO_KEN5","SILVER_APTS",4,"10:17:00","10:17:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("TWIN_TO_KEN5","TWIN_AURORA",3,"10:07:00","10:07:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("TWIN_TO_KEN5","TWIN_LIB",1,"10:00:00","10:00:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("TWIN_TO_KEN5","TWIN_MEADOWVW",2,"10:04:00","10:04:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("TWIN_TO_KEN6","KEN_SOUTHPORT",7,"12:00:00","12:00:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("TWIN_TO_KEN6","KEN_STCATS",6,"11:45:00","11:45:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("TWIN_TO_KEN6","PADDOCK_PLAZA",5,"11:26:00","11:26:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("TWIN_TO_KEN6","SILVER_APTS",4,"11:17:00","11:17:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("TWIN_TO_KEN6","TWIN_AURORA",3,"11:07:00","11:07:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("TWIN_TO_KEN6","TWIN_LIB",1,"11:00:00","11:00:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("TWIN_TO_KEN6","TWIN_MEADOWVW",2,"11:04:00","11:04:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("TWIN_TO_KEN7","KEN_SOUTHPORT",7,"13:00:00","13:00:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("TWIN_TO_KEN7","KEN_STCATS",6,"12:45:00","12:45:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("TWIN_TO_KEN7","PADDOCK_PLAZA",5,"12:26:00","12:26:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("TWIN_TO_KEN7","SILVER_APTS",4,"12:17:00","12:17:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("TWIN_TO_KEN7","TWIN_AURORA",3,"12:07:00","12:07:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("TWIN_TO_KEN7","TWIN_LIB",1,"12:00:00","12:00:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("TWIN_TO_KEN7","TWIN_MEADOWVW",2,"12:04:00","12:04:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("TWIN_TO_KEN8","KEN_SOUTHPORT",7,"14:00:00","14:00:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("TWIN_TO_KEN8","KEN_STCATS",6,"13:45:00","13:45:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("TWIN_TO_KEN8","PADDOCK_PLAZA",5,"13:26:00","13:26:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("TWIN_TO_KEN8","SILVER_APTS",4,"13:17:00","13:17:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("TWIN_TO_KEN8","TWIN_AURORA",3,"13:07:00","13:07:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("TWIN_TO_KEN8","TWIN_LIB",1,"13:00:00","13:00:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("TWIN_TO_KEN8","TWIN_MEADOWVW",2,"13:04:00","13:04:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("TWIN_TO_KEN9","KEN_SOUTHPORT",7,"15:30:00","15:30:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("TWIN_TO_KEN9","KEN_STCATS",6,"15:10:00","15:10:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("TWIN_TO_KEN9","PADDOCK_PLAZA",5,"14:50:00","14:50:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("TWIN_TO_KEN9","SILVER_APTS",4,"14:34:00","14:34:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("TWIN_TO_KEN9","TWIN_AURORA",3,"14:22:00","14:22:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("TWIN_TO_KEN9","TWIN_LIB",1,"14:15:00","14:15:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stop_times` VALUES ("TWIN_TO_KEN9","TWIN_MEADOWVW",2,"14:19:00","14:19:00","0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);





                        DROP TABLE IF EXISTS `stops`;
                        CREATE TABLE `stops` (
                          `stop_id` varchar(16) NOT NULL,
                          `stop_name` varchar(128) NOT NULL,
                          `stop_lat` varchar(16)   ,
                          `stop_lon` varchar(16)   ,
                          `stop_desc` varchar(512)   ,
                          `time_created` timestamp NULL   ,
                          `time_modified` timestamp NULL   ,
                          `who_created` varchar(32)   ,
                          `who_modified` varchar(32)   ,
                          PRIMARY KEY (`stop_id`)
                        );

INSERT INTO `stops` VALUES ("ANTIOCH_METRA","Metra","-88.0923004","42.4811098034000",NULL,"0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stops` VALUES ("ANTIOCH_WMART","Walmart - Antioch","-88.0644989","42.4678230450999",NULL,"0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stops` VALUES ("GENEVA_LIBRARY","Lake Geneva Library","-88.437191526199","42.5913641057999",NULL,"0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stops` VALUES ("GENEVA_SQUARE","Lake Geneva Square","-88.422628699100","42.6046282002999",NULL,"0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stops` VALUES ("GENEVA_WMART","Walmart - Lake Geneva","-88.411272290200","42.5908346704000",NULL,"0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stops` VALUES ("KEN_AURORA","Aurora Medical - Kenosha","-87.935198311999","42.5695992",NULL,"0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stops` VALUES ("KEN_SOUTHPORT","Southport Plaza","-87.889632633800","42.5702019",NULL,"0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stops` VALUES ("KEN_STCATS","Target/St. Catherine's Hospital","-87.926775139300","42.5646019",NULL,"0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stops` VALUES ("KEN_WOODMANS","Woodman's Food Market","-87.949575625400","42.5700989",NULL,"0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stops` VALUES ("PADDOCK_PLAZA","Village Plaza/Shopping Center","-88.1138000","42.5685970294999",NULL,"0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stops` VALUES ("SILVER_APTS","Silver Crest Apartments","-88.165115513900","42.5443993",NULL,"0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stops` VALUES ("SILVER_HALL","Village Hall","-88.1673965","42.5490838771000",NULL,"0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stops` VALUES ("TWIN_AURORA","Aurora Medical - Twinlakes","-88.246159948100","42.5382004",NULL,"0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stops` VALUES ("TWIN_LIB","Twin Lakes Library","-88.247964150599","42.5317001",NULL,"0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);
INSERT INTO `stops` VALUES ("TWIN_MEADOWVW","Meadowview/Lincolncrest Apartments","-88.242770220500","42.5354996",NULL,"0000-00-00 00:00:00","0000-00-00 00:00:00",NULL,NULL);





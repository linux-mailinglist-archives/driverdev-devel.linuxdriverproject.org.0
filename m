Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7459A158282
	for <lists+driverdev-devel@lfdr.de>; Mon, 10 Feb 2020 19:36:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id EBB6D8798D;
	Mon, 10 Feb 2020 18:36:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dNFn-rZvEA5B; Mon, 10 Feb 2020 18:36:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 01AED86DB0;
	Mon, 10 Feb 2020 18:36:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 08B2E1BF964
 for <devel@linuxdriverproject.org>; Mon, 10 Feb 2020 18:36:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 03EF885166
 for <devel@linuxdriverproject.org>; Mon, 10 Feb 2020 18:36:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JpqrIy0-WD8v for <devel@linuxdriverproject.org>;
 Mon, 10 Feb 2020 18:36:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 628E884492
 for <devel@driverdev.osuosl.org>; Mon, 10 Feb 2020 18:36:44 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id i6so4138100pfc.1
 for <devel@driverdev.osuosl.org>; Mon, 10 Feb 2020 10:36:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=c//RmWOQHmcnQyvYy0OmNb7DttbpdOpIuQrp7gtjB+4=;
 b=D2QQ383CR7PbO1uCwe1WPGKFybHlP9w3qbZt6pyRqX/xxPCWdUQOUuIMdgx0F88Edk
 uELFeAIIijVNHCWnjhbX2VUUh1GGrSF+z3RSGvXk2fUtcoHg04MNGRRdDoZWHk2b5rxt
 PXLrXyvEyqFei86t9Cs+jmj092mCfB7yZO9GPF3mCftsvDZaHNf0EhARIp4XxYkzOJ6l
 fmCHbzVtqgAAYcGK9DHf4DLC4zTr45MYenfXxZdOW0WhuLGa7Zimrcy0GdJdd4FYNc73
 AvbOVHp0CUpMp5Rj4PIZtn0uziS+AQ4xxUozah4P1cblEP09ivJtq/+lFY3iTbDsG7IE
 rURg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=c//RmWOQHmcnQyvYy0OmNb7DttbpdOpIuQrp7gtjB+4=;
 b=XhIl3azEWlrWM5dENyI9h9hXHt7i6eqi3hv8JXGqIl/LDc8kwKlygOwu7QktB7vSgL
 hVv68z/qrvI4cC10YuXDJSiFWavmXByDAxlRALCEklEqf9gdzq5682kPnzQTuzUYCOn1
 vnl0DmwCJRHh9r9BP+gwsYbboibrXCK3CNNf7pNtPA1YhEync38WHHQrEWK931w2+4rW
 iozyV94Eufwukr6AZUKh8f7SxgCWpkjtm3rxfbLJut1Os3BI3LJ9YA8kj47eWspHe3YP
 n1w9LHqVSBrUmP80zra10snjyiDjPRWMX5TIxxBkca053EVv06p2s5GzU1ibnKK78pq8
 181A==
X-Gm-Message-State: APjAAAVmUpVaaP9hRGCGmZ5PTZlU1YE/nqmgL2hXW4Xxcvo48ptWkqhg
 sBXAvuPY4s9g8EzCfRoBYnA=
X-Google-Smtp-Source: APXvYqwDggDQLl1CSjWYXzundz2w08oXgKLTZgrjhrxATU8RpWu0+d5wAmONatbuxEQ6jmWKagsRlQ==
X-Received: by 2002:a62:1cd6:: with SMTP id c205mr2341558pfc.179.1581359803997; 
 Mon, 10 Feb 2020 10:36:43 -0800 (PST)
Received: from localhost.localdomain ([2405:204:8308:74f3:144f:bb39:afc3:51b0])
 by smtp.gmail.com with ESMTPSA id gc1sm124922pjb.20.2020.02.10.10.36.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Feb 2020 10:36:43 -0800 (PST)
From: Pragat Pandya <pragat.pandya@gmail.com>
To: gregkh@linuxfoundation.org,
	valdis.kletnieks@vt.edu
Subject: [PATCH v2 03/19] staging: exfat: Rename variable 'Day' to 'day'
Date: Tue, 11 Feb 2020 00:05:42 +0530
Message-Id: <20200210183558.11836-4-pragat.pandya@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200210183558.11836-1-pragat.pandya@gmail.com>
References: <20200207094612.GA562325@kroah.com>
 <20200210183558.11836-1-pragat.pandya@gmail.com>
X-BeenThere: driverdev-devel@linuxdriverproject.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux Driver Project Developer List
 <driverdev-devel.linuxdriverproject.org>
List-Unsubscribe: <http://driverdev.linuxdriverproject.org/mailman/options/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=unsubscribe>
List-Archive: <http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/>
List-Post: <mailto:driverdev-devel@linuxdriverproject.org>
List-Help: <mailto:driverdev-devel-request@linuxdriverproject.org?subject=help>
List-Subscribe: <http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=subscribe>
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 skhan@linuxfoundation.org, linux-fsdevel@vger.kernel.org,
 linux-kernel-mentees@lists.linuxfoundation.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix checkpatch warning: Avoid CamelCase
Change all occurrences of identifier "Day" to "day"

Signed-off-by: Pragat Pandya <pragat.pandya@gmail.com>
---
 drivers/staging/exfat/exfat.h       |  2 +-
 drivers/staging/exfat/exfat_super.c | 20 ++++++++++----------
 2 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
index ae7f8e035a71..49e9390b4372 100644
--- a/drivers/staging/exfat/exfat.h
+++ b/drivers/staging/exfat/exfat.h
@@ -224,7 +224,7 @@ static inline u16 get_row_index(u16 i)
 struct date_time_t {
 	u16      year;
 	u16      month;
-	u16      Day;
+	u16      day;
 	u16      Hour;
 	u16      Minute;
 	u16      Second;
diff --git a/drivers/staging/exfat/exfat_super.c b/drivers/staging/exfat/exfat_super.c
index dfc7b545f67a..020529228fdd 100644
--- a/drivers/staging/exfat/exfat_super.c
+++ b/drivers/staging/exfat/exfat_super.c
@@ -59,7 +59,7 @@ static void exfat_write_super(struct super_block *sb);
 /* Convert a FAT time/date pair to a UNIX date (seconds since 1 1 70). */
 static void exfat_time_fat2unix(struct timespec64 *ts, struct date_time_t *tp)
 {
-	ts->tv_sec = mktime64(tp->year + 1980, tp->month + 1, tp->Day,
+	ts->tv_sec = mktime64(tp->year + 1980, tp->month + 1, tp->day,
 			      tp->Hour, tp->Minute, tp->Second);
 
 	ts->tv_nsec = tp->MilliSecond * NSEC_PER_MSEC;
@@ -78,7 +78,7 @@ static void exfat_time_unix2fat(struct timespec64 *ts, struct date_time_t *tp)
 		tp->Second	= 0;
 		tp->Minute	= 0;
 		tp->Hour	= 0;
-		tp->Day		= 1;
+		tp->day		= 1;
 		tp->month	= 1;
 		tp->year	= 0;
 		return;
@@ -89,7 +89,7 @@ static void exfat_time_unix2fat(struct timespec64 *ts, struct date_time_t *tp)
 		tp->Second	= 59;
 		tp->Minute	= 59;
 		tp->Hour	= 23;
-		tp->Day		= 31;
+		tp->day		= 31;
 		tp->month	= 12;
 		tp->year	= 127;
 		return;
@@ -99,7 +99,7 @@ static void exfat_time_unix2fat(struct timespec64 *ts, struct date_time_t *tp)
 	tp->Second	= tm.tm_sec;
 	tp->Minute	= tm.tm_min;
 	tp->Hour	= tm.tm_hour;
-	tp->Day		= tm.tm_mday;
+	tp->day		= tm.tm_mday;
 	tp->month	= tm.tm_mon + 1;
 	tp->year	= tm.tm_year + 1900 - 1980;
 }
@@ -1507,7 +1507,7 @@ static int ffsReadStat(struct inode *inode, struct dir_entry_t *info)
 	exfat_get_entry_time(ep, &tm, TM_CREATE);
 	info->CreateTimestamp.year = tm.year;
 	info->CreateTimestamp.month = tm.mon;
-	info->CreateTimestamp.Day = tm.day;
+	info->CreateTimestamp.day = tm.day;
 	info->CreateTimestamp.Hour = tm.hour;
 	info->CreateTimestamp.Minute = tm.min;
 	info->CreateTimestamp.Second = tm.sec;
@@ -1516,7 +1516,7 @@ static int ffsReadStat(struct inode *inode, struct dir_entry_t *info)
 	exfat_get_entry_time(ep, &tm, TM_MODIFY);
 	info->ModifyTimestamp.year = tm.year;
 	info->ModifyTimestamp.month = tm.mon;
-	info->ModifyTimestamp.Day = tm.day;
+	info->ModifyTimestamp.day = tm.day;
 	info->ModifyTimestamp.Hour = tm.hour;
 	info->ModifyTimestamp.Minute = tm.min;
 	info->ModifyTimestamp.Second = tm.sec;
@@ -1608,7 +1608,7 @@ static int ffsWriteStat(struct inode *inode, struct dir_entry_t *info)
 	tm.sec  = info->CreateTimestamp.Second;
 	tm.min  = info->CreateTimestamp.Minute;
 	tm.hour = info->CreateTimestamp.Hour;
-	tm.day  = info->CreateTimestamp.Day;
+	tm.day  = info->CreateTimestamp.day;
 	tm.mon  = info->CreateTimestamp.month;
 	tm.year = info->CreateTimestamp.year;
 	exfat_set_entry_time(ep, &tm, TM_CREATE);
@@ -1616,7 +1616,7 @@ static int ffsWriteStat(struct inode *inode, struct dir_entry_t *info)
 	tm.sec  = info->ModifyTimestamp.Second;
 	tm.min  = info->ModifyTimestamp.Minute;
 	tm.hour = info->ModifyTimestamp.Hour;
-	tm.day  = info->ModifyTimestamp.Day;
+	tm.day  = info->ModifyTimestamp.day;
 	tm.mon  = info->ModifyTimestamp.month;
 	tm.year = info->ModifyTimestamp.year;
 	exfat_set_entry_time(ep, &tm, TM_MODIFY);
@@ -1924,7 +1924,7 @@ static int ffsReadDir(struct inode *inode, struct dir_entry_t *dir_entry)
 			exfat_get_entry_time(ep, &tm, TM_CREATE);
 			dir_entry->CreateTimestamp.year = tm.year;
 			dir_entry->CreateTimestamp.month = tm.mon;
-			dir_entry->CreateTimestamp.Day = tm.day;
+			dir_entry->CreateTimestamp.day = tm.day;
 			dir_entry->CreateTimestamp.Hour = tm.hour;
 			dir_entry->CreateTimestamp.Minute = tm.min;
 			dir_entry->CreateTimestamp.Second = tm.sec;
@@ -1933,7 +1933,7 @@ static int ffsReadDir(struct inode *inode, struct dir_entry_t *dir_entry)
 			exfat_get_entry_time(ep, &tm, TM_MODIFY);
 			dir_entry->ModifyTimestamp.year = tm.year;
 			dir_entry->ModifyTimestamp.month = tm.mon;
-			dir_entry->ModifyTimestamp.Day = tm.day;
+			dir_entry->ModifyTimestamp.day = tm.day;
 			dir_entry->ModifyTimestamp.Hour = tm.hour;
 			dir_entry->ModifyTimestamp.Minute = tm.min;
 			dir_entry->ModifyTimestamp.Second = tm.sec;
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96018158285
	for <lists+driverdev-devel@lfdr.de>; Mon, 10 Feb 2020 19:37:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2F3E98731A;
	Mon, 10 Feb 2020 18:37:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aGd5dYYFcFGm; Mon, 10 Feb 2020 18:37:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 83D2885782;
	Mon, 10 Feb 2020 18:37:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 681B31BF964
 for <devel@linuxdriverproject.org>; Mon, 10 Feb 2020 18:37:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6501884545
 for <devel@linuxdriverproject.org>; Mon, 10 Feb 2020 18:37:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id s00-ckR_HEop for <devel@linuxdriverproject.org>;
 Mon, 10 Feb 2020 18:37:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f68.google.com (mail-pj1-f68.google.com
 [209.85.216.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 10A0284492
 for <devel@driverdev.osuosl.org>; Mon, 10 Feb 2020 18:37:00 +0000 (UTC)
Received: by mail-pj1-f68.google.com with SMTP id gv17so120386pjb.1
 for <devel@driverdev.osuosl.org>; Mon, 10 Feb 2020 10:37:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=BTOjeQ/2BKNTV1JxSE5WmRTz6JA+//foRxORVkB6X9A=;
 b=RkxXfxopB2FPSuE1hvXbJ8aU7SR4VtMndn0HWn8WaehomXjqViakSQcS44bPqMxQJO
 O3ldkPRT1kuFp10kaEWyE8GtNj8bLaJzNGZHWV8ExqfGDVq3YyhlGQ5VObup4CT4Azt/
 w6xCtCmEfeM0cMOrPDx8QK+IO7jalizIDoFh72MTp99sMa6K9GOz42zZMyI9v9RSOfC3
 2LLUzecVamvJEbjUuONv+yEYQ/vX+zjNdXyMpv76oenwyrvVEZa8UXcG70l6mnIJJYXI
 MC8U0gTidBbtI8KN2WPFjs8igmNJzxms7LFnrYVr3tNMYOwTi8DYOe1fmXfkA3A/shmH
 27zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=BTOjeQ/2BKNTV1JxSE5WmRTz6JA+//foRxORVkB6X9A=;
 b=g46NGs5Z8EOPeT3ZQ8gnIdkYouXxL+J0/xSGF9EvorEuAuofFH25t8BMFFqBOlAHdk
 L38h0hozjReYbThygtZnu2EPhFZOzZi8WVgglAueba3uYbG8pdbba46IbH3wYwzuF1g/
 LSYtoCYVqfkg+dOuTNLF41J0g/TIJd5XAkaPY6ivcAJFWomh1SUFCX9/53sasmE6W38b
 C4dUJG23bw2QjdSSq/AV6alArGW64M0qUY0KJQAzUDwL60yd6rI2eW6Y9raJu5n56O08
 t1mnVKhyVAktCK+Gw+qD+lFwLzoMTKLIJyUSId7NAnoGZ0hO6FE/Sfvo3G1zBRCAs7Ph
 AUCw==
X-Gm-Message-State: APjAAAXoYp8UdlAOwJ170dUDlhCWGen1ofebhBUqaFrwCSFFygcJsqqU
 yNSj4jZ2c3a+Q6CIB171Gro=
X-Google-Smtp-Source: APXvYqzS9fkQGhelpYTJo/wX7kN06/t62F1B7YMJpoA0KytQwCH5g0tl3JxbQig2C3QfiuMk/iydxg==
X-Received: by 2002:a17:90b:4004:: with SMTP id
 ie4mr439747pjb.49.1581359819618; 
 Mon, 10 Feb 2020 10:36:59 -0800 (PST)
Received: from localhost.localdomain ([2405:204:8308:74f3:144f:bb39:afc3:51b0])
 by smtp.gmail.com with ESMTPSA id gc1sm124922pjb.20.2020.02.10.10.36.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Feb 2020 10:36:59 -0800 (PST)
From: Pragat Pandya <pragat.pandya@gmail.com>
To: gregkh@linuxfoundation.org,
	valdis.kletnieks@vt.edu
Subject: [PATCH v2 06/19] staging: exfat: Rename variable 'Second' to 'second'
Date: Tue, 11 Feb 2020 00:05:45 +0530
Message-Id: <20200210183558.11836-7-pragat.pandya@gmail.com>
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
Change all occurrences of identifier "Second" to "second"

Signed-off-by: Pragat Pandya <pragat.pandya@gmail.com>
---
 drivers/staging/exfat/exfat.h       |  2 +-
 drivers/staging/exfat/exfat_super.c | 20 ++++++++++----------
 2 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
index fe0270e7b685..20179ef7b956 100644
--- a/drivers/staging/exfat/exfat.h
+++ b/drivers/staging/exfat/exfat.h
@@ -227,7 +227,7 @@ struct date_time_t {
 	u16      day;
 	u16      hour;
 	u16      minute;
-	u16      Second;
+	u16      second;
 	u16      MilliSecond;
 };
 
diff --git a/drivers/staging/exfat/exfat_super.c b/drivers/staging/exfat/exfat_super.c
index 9e1b6a7ad5ff..eced4a408f68 100644
--- a/drivers/staging/exfat/exfat_super.c
+++ b/drivers/staging/exfat/exfat_super.c
@@ -60,7 +60,7 @@ static void exfat_write_super(struct super_block *sb);
 static void exfat_time_fat2unix(struct timespec64 *ts, struct date_time_t *tp)
 {
 	ts->tv_sec = mktime64(tp->year + 1980, tp->month + 1, tp->day,
-			      tp->hour, tp->minute, tp->Second);
+			      tp->hour, tp->minute, tp->second);
 
 	ts->tv_nsec = tp->MilliSecond * NSEC_PER_MSEC;
 }
@@ -75,7 +75,7 @@ static void exfat_time_unix2fat(struct timespec64 *ts, struct date_time_t *tp)
 
 	if (second < UNIX_SECS_1980) {
 		tp->MilliSecond = 0;
-		tp->Second	= 0;
+		tp->second	= 0;
 		tp->minute	= 0;
 		tp->hour	= 0;
 		tp->day		= 1;
@@ -86,7 +86,7 @@ static void exfat_time_unix2fat(struct timespec64 *ts, struct date_time_t *tp)
 
 	if (second >= UNIX_SECS_2108) {
 		tp->MilliSecond = 999;
-		tp->Second	= 59;
+		tp->second	= 59;
 		tp->minute	= 59;
 		tp->hour	= 23;
 		tp->day		= 31;
@@ -96,7 +96,7 @@ static void exfat_time_unix2fat(struct timespec64 *ts, struct date_time_t *tp)
 	}
 
 	tp->MilliSecond = ts->tv_nsec / NSEC_PER_MSEC;
-	tp->Second	= tm.tm_sec;
+	tp->second	= tm.tm_sec;
 	tp->minute	= tm.tm_min;
 	tp->hour	= tm.tm_hour;
 	tp->day		= tm.tm_mday;
@@ -1510,7 +1510,7 @@ static int ffsReadStat(struct inode *inode, struct dir_entry_t *info)
 	info->CreateTimestamp.day = tm.day;
 	info->CreateTimestamp.hour = tm.hour;
 	info->CreateTimestamp.minute = tm.min;
-	info->CreateTimestamp.Second = tm.sec;
+	info->CreateTimestamp.second = tm.sec;
 	info->CreateTimestamp.MilliSecond = 0;
 
 	exfat_get_entry_time(ep, &tm, TM_MODIFY);
@@ -1519,7 +1519,7 @@ static int ffsReadStat(struct inode *inode, struct dir_entry_t *info)
 	info->ModifyTimestamp.day = tm.day;
 	info->ModifyTimestamp.hour = tm.hour;
 	info->ModifyTimestamp.minute = tm.min;
-	info->ModifyTimestamp.Second = tm.sec;
+	info->ModifyTimestamp.second = tm.sec;
 	info->ModifyTimestamp.MilliSecond = 0;
 
 	memset((char *)&info->AccessTimestamp, 0, sizeof(struct date_time_t));
@@ -1605,7 +1605,7 @@ static int ffsWriteStat(struct inode *inode, struct dir_entry_t *info)
 	exfat_set_entry_attr(ep, info->Attr);
 
 	/* set FILE_INFO structure using the acquired struct dentry_t */
-	tm.sec  = info->CreateTimestamp.Second;
+	tm.sec  = info->CreateTimestamp.second;
 	tm.min  = info->CreateTimestamp.minute;
 	tm.hour = info->CreateTimestamp.hour;
 	tm.day  = info->CreateTimestamp.day;
@@ -1613,7 +1613,7 @@ static int ffsWriteStat(struct inode *inode, struct dir_entry_t *info)
 	tm.year = info->CreateTimestamp.year;
 	exfat_set_entry_time(ep, &tm, TM_CREATE);
 
-	tm.sec  = info->ModifyTimestamp.Second;
+	tm.sec  = info->ModifyTimestamp.second;
 	tm.min  = info->ModifyTimestamp.minute;
 	tm.hour = info->ModifyTimestamp.hour;
 	tm.day  = info->ModifyTimestamp.day;
@@ -1927,7 +1927,7 @@ static int ffsReadDir(struct inode *inode, struct dir_entry_t *dir_entry)
 			dir_entry->CreateTimestamp.day = tm.day;
 			dir_entry->CreateTimestamp.hour = tm.hour;
 			dir_entry->CreateTimestamp.minute = tm.min;
-			dir_entry->CreateTimestamp.Second = tm.sec;
+			dir_entry->CreateTimestamp.second = tm.sec;
 			dir_entry->CreateTimestamp.MilliSecond = 0;
 
 			exfat_get_entry_time(ep, &tm, TM_MODIFY);
@@ -1936,7 +1936,7 @@ static int ffsReadDir(struct inode *inode, struct dir_entry_t *dir_entry)
 			dir_entry->ModifyTimestamp.day = tm.day;
 			dir_entry->ModifyTimestamp.hour = tm.hour;
 			dir_entry->ModifyTimestamp.minute = tm.min;
-			dir_entry->ModifyTimestamp.Second = tm.sec;
+			dir_entry->ModifyTimestamp.second = tm.sec;
 			dir_entry->ModifyTimestamp.MilliSecond = 0;
 
 			memset((char *)&dir_entry->AccessTimestamp, 0,
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

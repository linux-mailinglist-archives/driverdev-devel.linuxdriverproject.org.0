Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE5E614CECC
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 Jan 2020 17:59:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 52D588828D;
	Wed, 29 Jan 2020 16:59:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 50RY4KETqzCZ; Wed, 29 Jan 2020 16:59:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id AB25F88236;
	Wed, 29 Jan 2020 16:59:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CE69C1BF215
 for <devel@linuxdriverproject.org>; Wed, 29 Jan 2020 16:59:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C81CE2154B
 for <devel@linuxdriverproject.org>; Wed, 29 Jan 2020 16:59:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F6uu7Rx3FRYC for <devel@linuxdriverproject.org>;
 Wed, 29 Jan 2020 16:59:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f68.google.com (mail-pj1-f68.google.com
 [209.85.216.68])
 by silver.osuosl.org (Postfix) with ESMTPS id CAD8E21552
 for <devel@driverdev.osuosl.org>; Wed, 29 Jan 2020 16:59:20 +0000 (UTC)
Received: by mail-pj1-f68.google.com with SMTP id m13so30295pjb.2
 for <devel@driverdev.osuosl.org>; Wed, 29 Jan 2020 08:59:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=+EDxIJsHDlVxQBWoMyDcDk7ul9qL2jdZB2RuqZQeBC0=;
 b=DZwC7G6+wj+08ZAS4cW+cxuXNIxSuh7231GmgclgWEbvbz6Xgew4lzBB5MM3SIFYCW
 BbyWYonm0D2n8EzNW1tC27K9x8Qy7e/b+PFtEPvWzPQaPNQ6CM+08uGUVifnungI9cvS
 fBYBkmKYJChd7h+ldHqGzGH4BKhlPh+/15y74k/LUzu3BvrApPA/WBR49R/F2pTM/uWS
 qlEUgKNt01oc8a/HYvc9g4maj13H3wM0ANYtKhdLRck/t3h6Z+lM7b7CwnY+5Ubl3/gi
 PB3OiigyoGtZWCGJU2BqtHpeuPlLYSL09JZCTFqySFp4a5E4vz90KbOSj3P+EgK0jDf8
 YXMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=+EDxIJsHDlVxQBWoMyDcDk7ul9qL2jdZB2RuqZQeBC0=;
 b=XuOmkE2eegK3VKd9L9Srj9Y3Nv6FYe/dK0TkhhCvkOt7RW0QY+43plrTbC6pDkc0Ld
 aZDyZ8tXfoAwW47G31QCeln8WNDR7XNh3cFQ6Ie52s42hl5vQOofMOnrPW3t6M1wNqLh
 rP49BnR0/x974lkZIQASr7vLrKNJSzyAPfITbyWSqJ+2QDNWvHpwFIJb2Q3WQzZptAyi
 8V5cCYKRZu09/sqkGvCe47+O5P5PfKKKFesJIyqiEHbdghWRkSJgriIdsfiJPt2AM5vh
 mgaIwrtF0v2uuPjHi6KiR6XlZ6xO3NLTc/EClMqwnxP3v45uNgFAUctlxhmZPdFPP8uu
 AKOQ==
X-Gm-Message-State: APjAAAXX24+bMf5oi9rer/yOxn8Fot/39JqPXgFkwQGRX/AKWr3MBoct
 oSa4VBCfGoBn6eDhRobNZdE=
X-Google-Smtp-Source: APXvYqxwdV1PhdQIvaEushK7sV9EooeMcZS6E2Nu2pBf/yMb6m+dNlkJFCF/U9t90jejQiUmUTjrBw==
X-Received: by 2002:a17:90a:98d:: with SMTP id 13mr614520pjo.102.1580317160367; 
 Wed, 29 Jan 2020 08:59:20 -0800 (PST)
Received: from localhost.localdomain ([2405:205:c92f:3ccd:49ce:a9e3:28b5:cf94])
 by smtp.gmail.com with ESMTPSA id f8sm3223610pfn.2.2020.01.29.08.59.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Jan 2020 08:59:19 -0800 (PST)
From: Pragat Pandya <pragat.pandya@gmail.com>
To: gregkh@linuxfoundation.org,
	valdis.kletnieks@vt.edu
Subject: [PATCH 05/19] staging: exfat: Rename variable 'Minute' to 'minute'
Date: Wed, 29 Jan 2020 22:28:18 +0530
Message-Id: <20200129165832.10574-6-pragat.pandya@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200129165832.10574-1-pragat.pandya@gmail.com>
References: <20200129165832.10574-1-pragat.pandya@gmail.com>
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

Fix checkpatch warning: Avoid CamelCase.
Change all occurrences of identifier "Minute" to "minute"

Signed-off-by: Pragat Pandya <pragat.pandya@gmail.com>
---
 drivers/staging/exfat/exfat.h       |  2 +-
 drivers/staging/exfat/exfat_super.c | 20 ++++++++++----------
 2 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
index 03eaf25692aa..755e2fd6e3fd 100644
--- a/drivers/staging/exfat/exfat.h
+++ b/drivers/staging/exfat/exfat.h
@@ -226,7 +226,7 @@ struct date_time_t {
 	u16      month;
 	u16      day;
 	u16      hour;
-	u16      Minute;
+	u16      minute;
 	u16      Second;
 	u16      MilliSecond;
 };
diff --git a/drivers/staging/exfat/exfat_super.c b/drivers/staging/exfat/exfat_super.c
index ae9180be4cc0..70fa5f118a38 100644
--- a/drivers/staging/exfat/exfat_super.c
+++ b/drivers/staging/exfat/exfat_super.c
@@ -60,7 +60,7 @@ static void exfat_write_super(struct super_block *sb);
 static void exfat_time_fat2unix(struct timespec64 *ts, struct date_time_t *tp)
 {
 	ts->tv_sec = mktime64(tp->year + 1980, tp->month + 1, tp->day,
-			      tp->hour, tp->Minute, tp->Second);
+			      tp->hour, tp->minute, tp->Second);
 
 	ts->tv_nsec = tp->MilliSecond * NSEC_PER_MSEC;
 }
@@ -76,7 +76,7 @@ static void exfat_time_unix2fat(struct timespec64 *ts, struct date_time_t *tp)
 	if (second < UNIX_SECS_1980) {
 		tp->MilliSecond = 0;
 		tp->Second	= 0;
-		tp->Minute	= 0;
+		tp->minute	= 0;
 		tp->hour	= 0;
 		tp->day		= 1;
 		tp->month	= 1;
@@ -87,7 +87,7 @@ static void exfat_time_unix2fat(struct timespec64 *ts, struct date_time_t *tp)
 	if (second >= UNIX_SECS_2108) {
 		tp->MilliSecond = 999;
 		tp->Second	= 59;
-		tp->Minute	= 59;
+		tp->minute	= 59;
 		tp->hour	= 23;
 		tp->day		= 31;
 		tp->month	= 12;
@@ -97,7 +97,7 @@ static void exfat_time_unix2fat(struct timespec64 *ts, struct date_time_t *tp)
 
 	tp->MilliSecond = ts->tv_nsec / NSEC_PER_MSEC;
 	tp->Second	= tm.tm_sec;
-	tp->Minute	= tm.tm_min;
+	tp->minute	= tm.tm_min;
 	tp->hour	= tm.tm_hour;
 	tp->day		= tm.tm_mday;
 	tp->month	= tm.tm_mon + 1;
@@ -1509,7 +1509,7 @@ static int ffsReadStat(struct inode *inode, struct dir_entry_t *info)
 	info->CreateTimestamp.month = tm.mon;
 	info->CreateTimestamp.day = tm.day;
 	info->CreateTimestamp.hour = tm.hour;
-	info->CreateTimestamp.Minute = tm.min;
+	info->CreateTimestamp.minute = tm.min;
 	info->CreateTimestamp.Second = tm.sec;
 	info->CreateTimestamp.MilliSecond = 0;
 
@@ -1518,7 +1518,7 @@ static int ffsReadStat(struct inode *inode, struct dir_entry_t *info)
 	info->ModifyTimestamp.month = tm.mon;
 	info->ModifyTimestamp.day = tm.day;
 	info->ModifyTimestamp.hour = tm.hour;
-	info->ModifyTimestamp.Minute = tm.min;
+	info->ModifyTimestamp.minute = tm.min;
 	info->ModifyTimestamp.Second = tm.sec;
 	info->ModifyTimestamp.MilliSecond = 0;
 
@@ -1606,7 +1606,7 @@ static int ffsWriteStat(struct inode *inode, struct dir_entry_t *info)
 
 	/* set FILE_INFO structure using the acquired struct dentry_t */
 	tm.sec  = info->CreateTimestamp.Second;
-	tm.min  = info->CreateTimestamp.Minute;
+	tm.min  = info->CreateTimestamp.minute;
 	tm.hour = info->CreateTimestamp.hour;
 	tm.day  = info->CreateTimestamp.day;
 	tm.mon  = info->CreateTimestamp.month;
@@ -1614,7 +1614,7 @@ static int ffsWriteStat(struct inode *inode, struct dir_entry_t *info)
 	p_fs->fs_func->set_entry_time(ep, &tm, TM_CREATE);
 
 	tm.sec  = info->ModifyTimestamp.Second;
-	tm.min  = info->ModifyTimestamp.Minute;
+	tm.min  = info->ModifyTimestamp.minute;
 	tm.hour = info->ModifyTimestamp.hour;
 	tm.day  = info->ModifyTimestamp.day;
 	tm.mon  = info->ModifyTimestamp.month;
@@ -1929,7 +1929,7 @@ static int ffsReadDir(struct inode *inode, struct dir_entry_t *dir_entry)
 			dir_entry->CreateTimestamp.month = tm.mon;
 			dir_entry->CreateTimestamp.day = tm.day;
 			dir_entry->CreateTimestamp.hour = tm.hour;
-			dir_entry->CreateTimestamp.Minute = tm.min;
+			dir_entry->CreateTimestamp.minute = tm.min;
 			dir_entry->CreateTimestamp.Second = tm.sec;
 			dir_entry->CreateTimestamp.MilliSecond = 0;
 
@@ -1938,7 +1938,7 @@ static int ffsReadDir(struct inode *inode, struct dir_entry_t *dir_entry)
 			dir_entry->ModifyTimestamp.month = tm.mon;
 			dir_entry->ModifyTimestamp.day = tm.day;
 			dir_entry->ModifyTimestamp.hour = tm.hour;
-			dir_entry->ModifyTimestamp.Minute = tm.min;
+			dir_entry->ModifyTimestamp.minute = tm.min;
 			dir_entry->ModifyTimestamp.Second = tm.sec;
 			dir_entry->ModifyTimestamp.MilliSecond = 0;
 
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

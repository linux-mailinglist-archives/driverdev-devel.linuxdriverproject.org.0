Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EA9A158284
	for <lists+driverdev-devel@lfdr.de>; Mon, 10 Feb 2020 19:37:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DEB76204A9;
	Mon, 10 Feb 2020 18:37:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y+zkl0jPr1g5; Mon, 10 Feb 2020 18:37:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7AF3620499;
	Mon, 10 Feb 2020 18:37:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 50DB31BF964
 for <devel@linuxdriverproject.org>; Mon, 10 Feb 2020 18:36:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4D3DF204A4
 for <devel@linuxdriverproject.org>; Mon, 10 Feb 2020 18:36:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Hx3Ma3rLPPWr for <devel@linuxdriverproject.org>;
 Mon, 10 Feb 2020 18:36:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by silver.osuosl.org (Postfix) with ESMTPS id E5A3120452
 for <devel@driverdev.osuosl.org>; Mon, 10 Feb 2020 18:36:54 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id k29so4104120pfp.13
 for <devel@driverdev.osuosl.org>; Mon, 10 Feb 2020 10:36:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=CYh7/xUVZL6cOrMJXppRTQ2cXYmqyF167wYvFRu9QjA=;
 b=r3aNBSLcmojs7vqCMSYWY9Bx8CUf79eeg1YHjqKOKU71KlQ3G2Q8fXV517VaBD8dDc
 GO9P6dl3fIEnvu6YWzBrv0IkWbHaV6iJhWZlCFlR/04+vb3qPr1oMvpOmFD4+GbiGYpi
 QO8XkNZGWbW5Rhdyt4k4aeLnKYEZQAJTOxmQGTKJGw9FZSBYsJbYV/0iAejBGn/+6Tse
 IyBQB7RmRoZWjQaTlKU/5Jh96cubp+rqh7UKsOcuwoDDv7A9vwVz0yrJusoTPOEHdr3R
 OQMMayfPNqD+jFXiZccWQ6cNlLWaqwn+h0gs4LumU3buSjC80LDEvlWGoChJGus+JEY1
 qc3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=CYh7/xUVZL6cOrMJXppRTQ2cXYmqyF167wYvFRu9QjA=;
 b=aKeMy3oQKta6Lk3snQsqxxj/it6r7ezaTt48W8lBNnT9d8z6wouCXdv3X/3vtZZ9Kt
 hz/60qiisyXkC0dVnValjrDOMmbjtcgG1BlUAq773eK5K2rZ1qXbpzlL+xkGDJdOHXP8
 oZuDVk/V2dOlRRTcDkQFPyC9mgiOrVvm9iQrKd82hKcuwNYvbJ9ixgTw2uGkyZNmbzos
 bb8ttRUxPBDjalZ863wvmAbhiLhDJXP8r0xOJY2zOtdrYN+3x/x/C1373f2nJONnymt/
 L6GRGT74RDgvQm7Cp7Dk3h3IhLbYF/oSCh/2JJRkPSnqlueAn68CT+M7v/TNJbOa3cc7
 TuwQ==
X-Gm-Message-State: APjAAAV0v43cnyAbo8JG2Lg8/F1rEggNKcz31TgcPSFohpr/Y4ALI3UB
 J3M05a9vVcJuxqzRw4++NQI=
X-Google-Smtp-Source: APXvYqxPN+uyjIU8IN1yHzGdC58e5ItJzkaGUyujK0+8qzCL26uf6ahgZYcPiLXOW7dOtI7034mOeg==
X-Received: by 2002:a63:28a:: with SMTP id 132mr2918728pgc.165.1581359814572; 
 Mon, 10 Feb 2020 10:36:54 -0800 (PST)
Received: from localhost.localdomain ([2405:204:8308:74f3:144f:bb39:afc3:51b0])
 by smtp.gmail.com with ESMTPSA id gc1sm124922pjb.20.2020.02.10.10.36.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Feb 2020 10:36:53 -0800 (PST)
From: Pragat Pandya <pragat.pandya@gmail.com>
To: gregkh@linuxfoundation.org,
	valdis.kletnieks@vt.edu
Subject: [PATCH v2 05/19] staging: exfat: Rename variable 'Minute' to 'minute'
Date: Tue, 11 Feb 2020 00:05:44 +0530
Message-Id: <20200210183558.11836-6-pragat.pandya@gmail.com>
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
Change all occurrences of identifier "Minute" to "minute"

Signed-off-by: Pragat Pandya <pragat.pandya@gmail.com>
---
 drivers/staging/exfat/exfat.h       |  2 +-
 drivers/staging/exfat/exfat_super.c | 20 ++++++++++----------
 2 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
index 4ec4660e3a4d..fe0270e7b685 100644
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
index 41e4fb8b697f..9e1b6a7ad5ff 100644
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
 	exfat_set_entry_time(ep, &tm, TM_CREATE);
 
 	tm.sec  = info->ModifyTimestamp.Second;
-	tm.min  = info->ModifyTimestamp.Minute;
+	tm.min  = info->ModifyTimestamp.minute;
 	tm.hour = info->ModifyTimestamp.hour;
 	tm.day  = info->ModifyTimestamp.day;
 	tm.mon  = info->ModifyTimestamp.month;
@@ -1926,7 +1926,7 @@ static int ffsReadDir(struct inode *inode, struct dir_entry_t *dir_entry)
 			dir_entry->CreateTimestamp.month = tm.mon;
 			dir_entry->CreateTimestamp.day = tm.day;
 			dir_entry->CreateTimestamp.hour = tm.hour;
-			dir_entry->CreateTimestamp.Minute = tm.min;
+			dir_entry->CreateTimestamp.minute = tm.min;
 			dir_entry->CreateTimestamp.Second = tm.sec;
 			dir_entry->CreateTimestamp.MilliSecond = 0;
 
@@ -1935,7 +1935,7 @@ static int ffsReadDir(struct inode *inode, struct dir_entry_t *dir_entry)
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

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 446AB158281
	for <lists+driverdev-devel@lfdr.de>; Mon, 10 Feb 2020 19:36:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F19E08522E;
	Mon, 10 Feb 2020 18:36:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mhEIrJBa4CnH; Mon, 10 Feb 2020 18:36:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2F17784492;
	Mon, 10 Feb 2020 18:36:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 16D401BF964
 for <devel@linuxdriverproject.org>; Mon, 10 Feb 2020 18:36:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1388884545
 for <devel@linuxdriverproject.org>; Mon, 10 Feb 2020 18:36:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VLmcunMIL_yZ for <devel@linuxdriverproject.org>;
 Mon, 10 Feb 2020 18:36:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8149984492
 for <devel@driverdev.osuosl.org>; Mon, 10 Feb 2020 18:36:39 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id b9so4334510pgk.12
 for <devel@driverdev.osuosl.org>; Mon, 10 Feb 2020 10:36:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=k81GbBbR7NrArK0tNkpsU/XDBosZIBkaHc6+hpzCpAE=;
 b=FW9Pvg5Qnd9N9EbUkysJCNGRp9nnLIMsqiGyc1Nnq+tvpU7/T2L43PdLafotHHVAdY
 RrwfqfBGzOOLK/3N+yvuy/m1Pa2QkVJ2/7g58l2BPRm1CXzDNwclKp4xCkQlxWunLCro
 DCOEl1ErVnp8BOavBTofX794i3otTU/JHrWpzAmgq6qQixDlVokcKaoRgcPXCyy+wKNL
 jxTyKnxI3mx1yXcafDhrxE3Y8T/zN3JJNrMr3s04QjZ1kA5OsznCaWypM7EGCYJkhCxT
 UAICSU9cMaLRO9ir27rLIj/PiTXXBSaAfOINmVVbJPM1ZMLna5HKi6Mb4dDeO89tkpT2
 HEsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=k81GbBbR7NrArK0tNkpsU/XDBosZIBkaHc6+hpzCpAE=;
 b=f1JHyPsPeUS4UdJteVTPxGGFn66L+UbxyZgxV1WzMk6xhlwlgZQGUHt6k2AbZdGEyb
 LxktV1FgO3oyHkdDVdMSLvXqGfbocSTtvG9yAYDuimn5p22P6BxDlNnAkBMvQSJ2l0MZ
 Ng31Cop/l/GX8gafYmVJZJiSRluRi4dge52lJlP1BkLdkIX+kBXfkm/Hoz/T4Y9lsvZB
 SS1atBNFVdHstAOqWhzO4la/aKm4Kqg045C6yGS/fy+M/g04yNuYpSaeJL5ZSGJTGneQ
 WgBPKLDWdfEfSq3vEM6g/tJS1jN8xRF/w/fYm8TCtw4MDdTtp4uDA1QCUDqqP1dc+K4L
 ldmQ==
X-Gm-Message-State: APjAAAX66EVD34C5vefldl8oqHAho2Ta/Dzxc+YnaSkZmurzV1+s1Eoy
 tVFyLgtS+DnKEiu63yfRTV4=
X-Google-Smtp-Source: APXvYqwbbw3mMp1Hip+emIkTlDDJNFgt+rz1IEAvcq59GCnganNG8Z0Z7iaR/8VpvW29GW8IWXwaWQ==
X-Received: by 2002:aa7:8610:: with SMTP id p16mr2442863pfn.28.1581359799114; 
 Mon, 10 Feb 2020 10:36:39 -0800 (PST)
Received: from localhost.localdomain ([2405:204:8308:74f3:144f:bb39:afc3:51b0])
 by smtp.gmail.com with ESMTPSA id gc1sm124922pjb.20.2020.02.10.10.36.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Feb 2020 10:36:38 -0800 (PST)
From: Pragat Pandya <pragat.pandya@gmail.com>
To: gregkh@linuxfoundation.org,
	valdis.kletnieks@vt.edu
Subject: [PATCH v2 02/19] staging: exfat: Rename variable 'Month' to 'month'
Date: Tue, 11 Feb 2020 00:05:41 +0530
Message-Id: <20200210183558.11836-3-pragat.pandya@gmail.com>
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
Change all occurrences of identifier "Month" to "month"

Signed-off-by: Pragat Pandya <pragat.pandya@gmail.com>
---
 drivers/staging/exfat/exfat.h       |  2 +-
 drivers/staging/exfat/exfat_super.c | 20 ++++++++++----------
 2 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
index 30ec81250f08..ae7f8e035a71 100644
--- a/drivers/staging/exfat/exfat.h
+++ b/drivers/staging/exfat/exfat.h
@@ -223,7 +223,7 @@ static inline u16 get_row_index(u16 i)
 
 struct date_time_t {
 	u16      year;
-	u16      Month;
+	u16      month;
 	u16      Day;
 	u16      Hour;
 	u16      Minute;
diff --git a/drivers/staging/exfat/exfat_super.c b/drivers/staging/exfat/exfat_super.c
index c2b97a059f52..dfc7b545f67a 100644
--- a/drivers/staging/exfat/exfat_super.c
+++ b/drivers/staging/exfat/exfat_super.c
@@ -59,7 +59,7 @@ static void exfat_write_super(struct super_block *sb);
 /* Convert a FAT time/date pair to a UNIX date (seconds since 1 1 70). */
 static void exfat_time_fat2unix(struct timespec64 *ts, struct date_time_t *tp)
 {
-	ts->tv_sec = mktime64(tp->year + 1980, tp->Month + 1, tp->Day,
+	ts->tv_sec = mktime64(tp->year + 1980, tp->month + 1, tp->Day,
 			      tp->Hour, tp->Minute, tp->Second);
 
 	ts->tv_nsec = tp->MilliSecond * NSEC_PER_MSEC;
@@ -79,7 +79,7 @@ static void exfat_time_unix2fat(struct timespec64 *ts, struct date_time_t *tp)
 		tp->Minute	= 0;
 		tp->Hour	= 0;
 		tp->Day		= 1;
-		tp->Month	= 1;
+		tp->month	= 1;
 		tp->year	= 0;
 		return;
 	}
@@ -90,7 +90,7 @@ static void exfat_time_unix2fat(struct timespec64 *ts, struct date_time_t *tp)
 		tp->Minute	= 59;
 		tp->Hour	= 23;
 		tp->Day		= 31;
-		tp->Month	= 12;
+		tp->month	= 12;
 		tp->year	= 127;
 		return;
 	}
@@ -100,7 +100,7 @@ static void exfat_time_unix2fat(struct timespec64 *ts, struct date_time_t *tp)
 	tp->Minute	= tm.tm_min;
 	tp->Hour	= tm.tm_hour;
 	tp->Day		= tm.tm_mday;
-	tp->Month	= tm.tm_mon + 1;
+	tp->month	= tm.tm_mon + 1;
 	tp->year	= tm.tm_year + 1900 - 1980;
 }
 
@@ -1506,7 +1506,7 @@ static int ffsReadStat(struct inode *inode, struct dir_entry_t *info)
 
 	exfat_get_entry_time(ep, &tm, TM_CREATE);
 	info->CreateTimestamp.year = tm.year;
-	info->CreateTimestamp.Month = tm.mon;
+	info->CreateTimestamp.month = tm.mon;
 	info->CreateTimestamp.Day = tm.day;
 	info->CreateTimestamp.Hour = tm.hour;
 	info->CreateTimestamp.Minute = tm.min;
@@ -1515,7 +1515,7 @@ static int ffsReadStat(struct inode *inode, struct dir_entry_t *info)
 
 	exfat_get_entry_time(ep, &tm, TM_MODIFY);
 	info->ModifyTimestamp.year = tm.year;
-	info->ModifyTimestamp.Month = tm.mon;
+	info->ModifyTimestamp.month = tm.mon;
 	info->ModifyTimestamp.Day = tm.day;
 	info->ModifyTimestamp.Hour = tm.hour;
 	info->ModifyTimestamp.Minute = tm.min;
@@ -1609,7 +1609,7 @@ static int ffsWriteStat(struct inode *inode, struct dir_entry_t *info)
 	tm.min  = info->CreateTimestamp.Minute;
 	tm.hour = info->CreateTimestamp.Hour;
 	tm.day  = info->CreateTimestamp.Day;
-	tm.mon  = info->CreateTimestamp.Month;
+	tm.mon  = info->CreateTimestamp.month;
 	tm.year = info->CreateTimestamp.year;
 	exfat_set_entry_time(ep, &tm, TM_CREATE);
 
@@ -1617,7 +1617,7 @@ static int ffsWriteStat(struct inode *inode, struct dir_entry_t *info)
 	tm.min  = info->ModifyTimestamp.Minute;
 	tm.hour = info->ModifyTimestamp.Hour;
 	tm.day  = info->ModifyTimestamp.Day;
-	tm.mon  = info->ModifyTimestamp.Month;
+	tm.mon  = info->ModifyTimestamp.month;
 	tm.year = info->ModifyTimestamp.year;
 	exfat_set_entry_time(ep, &tm, TM_MODIFY);
 
@@ -1923,7 +1923,7 @@ static int ffsReadDir(struct inode *inode, struct dir_entry_t *dir_entry)
 
 			exfat_get_entry_time(ep, &tm, TM_CREATE);
 			dir_entry->CreateTimestamp.year = tm.year;
-			dir_entry->CreateTimestamp.Month = tm.mon;
+			dir_entry->CreateTimestamp.month = tm.mon;
 			dir_entry->CreateTimestamp.Day = tm.day;
 			dir_entry->CreateTimestamp.Hour = tm.hour;
 			dir_entry->CreateTimestamp.Minute = tm.min;
@@ -1932,7 +1932,7 @@ static int ffsReadDir(struct inode *inode, struct dir_entry_t *dir_entry)
 
 			exfat_get_entry_time(ep, &tm, TM_MODIFY);
 			dir_entry->ModifyTimestamp.year = tm.year;
-			dir_entry->ModifyTimestamp.Month = tm.mon;
+			dir_entry->ModifyTimestamp.month = tm.mon;
 			dir_entry->ModifyTimestamp.Day = tm.day;
 			dir_entry->ModifyTimestamp.Hour = tm.hour;
 			dir_entry->ModifyTimestamp.Minute = tm.min;
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

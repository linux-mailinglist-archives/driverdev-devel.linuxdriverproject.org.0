Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8654B14CEBE
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 Jan 2020 17:59:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 910B388236;
	Wed, 29 Jan 2020 16:59:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WBU32b6N4Vv1; Wed, 29 Jan 2020 16:59:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8A5B58823A;
	Wed, 29 Jan 2020 16:59:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7FF831BF215
 for <devel@linuxdriverproject.org>; Wed, 29 Jan 2020 16:59:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 770DC88223
 for <devel@linuxdriverproject.org>; Wed, 29 Jan 2020 16:59:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UVJ2TnP-SdsD for <devel@linuxdriverproject.org>;
 Wed, 29 Jan 2020 16:59:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id DB2C2881D9
 for <devel@driverdev.osuosl.org>; Wed, 29 Jan 2020 16:59:04 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id u131so52761pgc.10
 for <devel@driverdev.osuosl.org>; Wed, 29 Jan 2020 08:59:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=7SW+9A0V4VaVaHTbLH7osX0jz6Ek8IuCM13FCFGKCpQ=;
 b=KrMgFvmSekvFVCNaFXmtKWqQPcXVu6Nm+vXkooGpv2e8cU/ufS35NfDJVeLaWZWzGE
 /6nL4ZGeK8PYW7RewHSnvfj587+1IU67H9j1UC0oA0cw+aLUAzhstgy7JJbb9sMZmOi9
 pDbjTHXaB2gfoxX0CH3GVlJOZXtH7iLrMB2PDDY39H63me66aPWcv312LretXMtUiA3Z
 b8dp7ZZ8hyhQvWj2+Uxbiuk4rIsIg2ejjXe+fGgbywuV0KrEI2M+eQH7o8ZXgYUTfhZC
 cVYFazATYWwa3CfYb00s5eTqNEZoisun5F4ykhUdM3joWWqiNKmAreLH05a77P2MajiC
 D1yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=7SW+9A0V4VaVaHTbLH7osX0jz6Ek8IuCM13FCFGKCpQ=;
 b=RSXR3Cu9s0ccYbRBkNJaQ2mqSJTcyMUjWIKndmqYGrZX9Gg49q03pPQodCn6TSz5HJ
 GvXP6HThq68ml007rnRWeFOpGBmAVDTPDvpG2kuyiY32ZQt9TTmNEUhaUEegPfMaLpWL
 rgtMVT41bhAYkBP/q6iR+zVCjogAS/p51hZkaZ7GWx5fZlfQcpveS5pIcrv3pvcl0RAW
 fUJBLKO1DmKDp9GJorwf6riwdxyjmlSDMc+YgTvBCJiDC9rB/arJvTrlBjXvNJqGL4hT
 Og9EduxXHGTb/kYjTwCYIAtWbMHPq9Rb7LVZtv3Cv9rcyr5EjeWB25pg8OkkOsTTLrPd
 KLwg==
X-Gm-Message-State: APjAAAXQHA6STLqj3B9VHcq8YjPyRkaZhA2+LGo9wpZWI8j+TVuCeqLb
 uqGBCsOd885kboGZLwCfqAfVH9iyRC4=
X-Google-Smtp-Source: APXvYqyMPREeBTrnxts1VM6oXX0g9/uCY+MPgbL5YiSwohbbQaDOfo2hvBGB70iWkaBLPhfw83JRFg==
X-Received: by 2002:a63:5c0e:: with SMTP id q14mr23318787pgb.313.1580317144479; 
 Wed, 29 Jan 2020 08:59:04 -0800 (PST)
Received: from localhost.localdomain ([2405:205:c92f:3ccd:49ce:a9e3:28b5:cf94])
 by smtp.gmail.com with ESMTPSA id f8sm3223610pfn.2.2020.01.29.08.58.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Jan 2020 08:59:03 -0800 (PST)
From: Pragat Pandya <pragat.pandya@gmail.com>
To: gregkh@linuxfoundation.org,
	valdis.kletnieks@vt.edu
Subject: [PATCH 02/19] staging: exfat: Rename variable 'Month' to 'month'
Date: Wed, 29 Jan 2020 22:28:15 +0530
Message-Id: <20200129165832.10574-3-pragat.pandya@gmail.com>
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
Change all occurrences of identifier "Month" to "month"

Signed-off-by: Pragat Pandya <pragat.pandya@gmail.com>
---
 drivers/staging/exfat/exfat.h       |  2 +-
 drivers/staging/exfat/exfat_super.c | 20 ++++++++++----------
 2 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
index c3c562fba133..95e27aed350d 100644
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
index 7534b86192aa..293d103a6b54 100644
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
 
 	p_fs->fs_func->get_entry_time(ep, &tm, TM_CREATE);
 	info->CreateTimestamp.year = tm.year;
-	info->CreateTimestamp.Month = tm.mon;
+	info->CreateTimestamp.month = tm.mon;
 	info->CreateTimestamp.Day = tm.day;
 	info->CreateTimestamp.Hour = tm.hour;
 	info->CreateTimestamp.Minute = tm.min;
@@ -1515,7 +1515,7 @@ static int ffsReadStat(struct inode *inode, struct dir_entry_t *info)
 
 	p_fs->fs_func->get_entry_time(ep, &tm, TM_MODIFY);
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
 	p_fs->fs_func->set_entry_time(ep, &tm, TM_CREATE);
 
@@ -1617,7 +1617,7 @@ static int ffsWriteStat(struct inode *inode, struct dir_entry_t *info)
 	tm.min  = info->ModifyTimestamp.Minute;
 	tm.hour = info->ModifyTimestamp.Hour;
 	tm.day  = info->ModifyTimestamp.Day;
-	tm.mon  = info->ModifyTimestamp.Month;
+	tm.mon  = info->ModifyTimestamp.month;
 	tm.year = info->ModifyTimestamp.year;
 	p_fs->fs_func->set_entry_time(ep, &tm, TM_MODIFY);
 
@@ -1926,7 +1926,7 @@ static int ffsReadDir(struct inode *inode, struct dir_entry_t *dir_entry)
 
 			fs_func->get_entry_time(ep, &tm, TM_CREATE);
 			dir_entry->CreateTimestamp.year = tm.year;
-			dir_entry->CreateTimestamp.Month = tm.mon;
+			dir_entry->CreateTimestamp.month = tm.mon;
 			dir_entry->CreateTimestamp.Day = tm.day;
 			dir_entry->CreateTimestamp.Hour = tm.hour;
 			dir_entry->CreateTimestamp.Minute = tm.min;
@@ -1935,7 +1935,7 @@ static int ffsReadDir(struct inode *inode, struct dir_entry_t *dir_entry)
 
 			fs_func->get_entry_time(ep, &tm, TM_MODIFY);
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

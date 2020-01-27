Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 094A414A1A2
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Jan 2020 11:15:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A12CF878F7;
	Mon, 27 Jan 2020 10:15:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nu2yHXIb5rpQ; Mon, 27 Jan 2020 10:15:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E885F8789C;
	Mon, 27 Jan 2020 10:15:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8D3531BF294
 for <devel@linuxdriverproject.org>; Mon, 27 Jan 2020 10:14:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8A1BA8789C
 for <devel@linuxdriverproject.org>; Mon, 27 Jan 2020 10:14:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BdbcgAKK33oT for <devel@linuxdriverproject.org>;
 Mon, 27 Jan 2020 10:14:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id EB9EC878AC
 for <devel@driverdev.osuosl.org>; Mon, 27 Jan 2020 10:14:57 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id k25so4909095pgt.7
 for <devel@driverdev.osuosl.org>; Mon, 27 Jan 2020 02:14:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=XlJHB8xrCce4+qR5fM6OOxaGxduOQnbkJ4KZGhks8Uo=;
 b=UwiXEjdY6sVMBWyGN1kNXEQoEJGK2/8n4QMfKSJkllcW/8q48HAxnUw8kuDW/D6Q8F
 517S6+pDb3WyfxKhyovnw2VywFcXhymJNsqGEVJLQqnnzyLSR7yu2gBouLuJAK01nrVA
 RxogV3WqCE30H3Gu8AfPanYWh1ptaUtAPZdilyV7VYICvVYhRi0yxevoh5kgXD4ZWjiR
 4s39CSoBHnyGqb+Zo1QTLvPO13ZnO+mSOkNCr5cCsdJDRyPzqshTU5KyBSc+Br1Qhhmp
 LGxtTDJdDlmchPG9Gd42nyrkthZduZ/3W5Jj7rVrQZeyDyEIeLR2hWrr1yw46lCMqcUn
 IL6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=XlJHB8xrCce4+qR5fM6OOxaGxduOQnbkJ4KZGhks8Uo=;
 b=LCRNcvMlvyIREU1Ve4xay9j0fVpLgJflrxXO0kROxI99aoX6jN55+FEIfpFJ4hvhqi
 t4yhn1dGvv366VBipVMzo2eIeF0fEeuyypfECC+1DK2Ff206/GXXct69VzoXvC6nXQ77
 OPqK7EZMKW3OUUzieQoYSFIkgLVwF8vLUGlmz3fElAzgpFAvtanudTV/5CvyKad+ZJe6
 QWCW8Q+PKQ6h9HPNjRSNJ+kb7PKIwtqd99/M9SjGGNP4MQpU+pjNJsHklPdfeaSOEASs
 RoxioneKLKYWtQ0QkEbaVeWBculWBsoVYrs2E8wtJ+IhjTRpCRIqLk/M6PNkD6AL96X9
 iKdQ==
X-Gm-Message-State: APjAAAWukFVHzEJ5qSYlHlMwUT/MQeu3a7uxlunDNuiCvWOVuIMglIKw
 1NIW+YkT4dQvm2Xn1CCxDao=
X-Google-Smtp-Source: APXvYqwCquVZpgIT+Vd/bzcflZ5y2Ef6ovqH3mt+1VuuD0uwNkmeFHIEsnTlUfgQlivUFQOynMUqmA==
X-Received: by 2002:a63:5924:: with SMTP id n36mr18804805pgb.43.1580120097612; 
 Mon, 27 Jan 2020 02:14:57 -0800 (PST)
Received: from localhost.localdomain ([2405:205:c902:a5e9:3956:8df2:aee5:9cf6])
 by smtp.gmail.com with ESMTPSA id s15sm15504138pgq.4.2020.01.27.02.14.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Jan 2020 02:14:57 -0800 (PST)
From: Pragat Pandya <pragat.pandya@gmail.com>
To: valdis.kletnieks@vt.edu,
	gregkh@linuxfoundation.org
Subject: [PATCH 07/22] staging: exfat: Rename variable "MilliSecond" to
 "milli_second"
Date: Mon, 27 Jan 2020 15:43:28 +0530
Message-Id: <20200127101343.20415-8-pragat.pandya@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200127101343.20415-1-pragat.pandya@gmail.com>
References: <20200127101343.20415-1-pragat.pandya@gmail.com>
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

Change all the occurrences of "MilliSecond" to "milli_second" in exfat.

Signed-off-by: Pragat Pandya <pragat.pandya@gmail.com>
---
 drivers/staging/exfat/exfat.h       |  2 +-
 drivers/staging/exfat/exfat_super.c | 16 ++++++++--------
 2 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
index 85fbea44219a..5c207d715f44 100644
--- a/drivers/staging/exfat/exfat.h
+++ b/drivers/staging/exfat/exfat.h
@@ -228,7 +228,7 @@ struct date_time_t {
 	u16      hour;
 	u16      minute;
 	u16      second;
-	u16      MilliSecond;
+	u16      milli_second;
 };
 
 struct part_info_t {
diff --git a/drivers/staging/exfat/exfat_super.c b/drivers/staging/exfat/exfat_super.c
index 0582c49f091d..6cc21d795589 100644
--- a/drivers/staging/exfat/exfat_super.c
+++ b/drivers/staging/exfat/exfat_super.c
@@ -62,7 +62,7 @@ static void exfat_time_fat2unix(struct timespec64 *ts, struct date_time_t *tp)
 	ts->tv_sec = mktime64(tp->year + 1980, tp->month + 1, tp->day,
 			      tp->hour, tp->minute, tp->second);
 
-	ts->tv_nsec = tp->MilliSecond * NSEC_PER_MSEC;
+	ts->tv_nsec = tp->milli_second * NSEC_PER_MSEC;
 }
 
 /* Convert linear UNIX date to a FAT time/date pair. */
@@ -74,7 +74,7 @@ static void exfat_time_unix2fat(struct timespec64 *ts, struct date_time_t *tp)
 	time64_to_tm(second, 0, &tm);
 
 	if (second < UNIX_SECS_1980) {
-		tp->MilliSecond = 0;
+		tp->milli_second = 0;
 		tp->second	= 0;
 		tp->minute	= 0;
 		tp->hour	= 0;
@@ -85,7 +85,7 @@ static void exfat_time_unix2fat(struct timespec64 *ts, struct date_time_t *tp)
 	}
 
 	if (second >= UNIX_SECS_2108) {
-		tp->MilliSecond = 999;
+		tp->milli_second = 999;
 		tp->second	= 59;
 		tp->minute	= 59;
 		tp->hour	= 23;
@@ -95,7 +95,7 @@ static void exfat_time_unix2fat(struct timespec64 *ts, struct date_time_t *tp)
 		return;
 	}
 
-	tp->MilliSecond = ts->tv_nsec / NSEC_PER_MSEC;
+	tp->milli_second = ts->tv_nsec / NSEC_PER_MSEC;
 	tp->second	= tm.tm_sec;
 	tp->minute	= tm.tm_min;
 	tp->hour	= tm.tm_hour;
@@ -1511,7 +1511,7 @@ static int ffsReadStat(struct inode *inode, struct dir_entry_t *info)
 	info->CreateTimestamp.hour = tm.hour;
 	info->CreateTimestamp.minute = tm.min;
 	info->CreateTimestamp.second = tm.sec;
-	info->CreateTimestamp.MilliSecond = 0;
+	info->CreateTimestamp.milli_second = 0;
 
 	p_fs->fs_func->get_entry_time(ep, &tm, TM_MODIFY);
 	info->ModifyTimestamp.year = tm.year;
@@ -1520,7 +1520,7 @@ static int ffsReadStat(struct inode *inode, struct dir_entry_t *info)
 	info->ModifyTimestamp.hour = tm.hour;
 	info->ModifyTimestamp.minute = tm.min;
 	info->ModifyTimestamp.second = tm.sec;
-	info->ModifyTimestamp.MilliSecond = 0;
+	info->ModifyTimestamp.milli_second = 0;
 
 	memset((char *)&info->AccessTimestamp, 0, sizeof(struct date_time_t));
 
@@ -1931,7 +1931,7 @@ static int ffsReadDir(struct inode *inode, struct dir_entry_t *dir_entry)
 			dir_entry->CreateTimestamp.hour = tm.hour;
 			dir_entry->CreateTimestamp.minute = tm.min;
 			dir_entry->CreateTimestamp.second = tm.sec;
-			dir_entry->CreateTimestamp.MilliSecond = 0;
+			dir_entry->CreateTimestamp.milli_second = 0;
 
 			fs_func->get_entry_time(ep, &tm, TM_MODIFY);
 			dir_entry->ModifyTimestamp.year = tm.year;
@@ -1940,7 +1940,7 @@ static int ffsReadDir(struct inode *inode, struct dir_entry_t *dir_entry)
 			dir_entry->ModifyTimestamp.hour = tm.hour;
 			dir_entry->ModifyTimestamp.minute = tm.min;
 			dir_entry->ModifyTimestamp.second = tm.sec;
-			dir_entry->ModifyTimestamp.MilliSecond = 0;
+			dir_entry->ModifyTimestamp.milli_second = 0;
 
 			memset((char *)&dir_entry->AccessTimestamp, 0,
 			       sizeof(struct date_time_t));
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

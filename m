Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AE35914CECE
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 Jan 2020 17:59:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5517385429;
	Wed, 29 Jan 2020 16:59:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ytq4927OTx3S; Wed, 29 Jan 2020 16:59:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E83268350D;
	Wed, 29 Jan 2020 16:59:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B35E71BF215
 for <devel@linuxdriverproject.org>; Wed, 29 Jan 2020 16:59:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id ACF5E8823F
 for <devel@linuxdriverproject.org>; Wed, 29 Jan 2020 16:59:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dtk3zuqlTeWG for <devel@linuxdriverproject.org>;
 Wed, 29 Jan 2020 16:59:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 20C6C881D9
 for <devel@driverdev.osuosl.org>; Wed, 29 Jan 2020 16:59:32 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id c23so170880plz.4
 for <devel@driverdev.osuosl.org>; Wed, 29 Jan 2020 08:59:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=P+UaHXAUZO2+8blEJCSj51jRdgohduCuRxIISSD4GSQ=;
 b=GPunuMmncvxInaip/zKRI935R23NZQWcAayRy9786QCFGm6i9+49KRfKPPFbTGuErB
 otSkub6IZGZZslxOsMmtIjhhp2lXxuj0n1X+rRYhGb63XvZEiU9pTvMvoIuoibHWRXWR
 5TrLJx6/M50oaHc7K2kQiR1neM6Z8j8pWlcGZO26dyHHUBmtQNqHTpR8W08Rt3fFLyuF
 46t0htkxVQZ2WMieWeGHA6pyUyUaIYDXXnOyaIut669Jm7S1w3nBPiUYSmmGAHYwahKo
 a3tZk2eqikS/xv/NrErcSPyEOUU5Zem7BYf1kHIIDLBqNafSi4Qgclciw86hu/tQYUA7
 N3pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=P+UaHXAUZO2+8blEJCSj51jRdgohduCuRxIISSD4GSQ=;
 b=o3ukXpRzKO3N+BfW+ASQwPk9e6f26wqInEQEEs1ncE/ZZBLS011x/PSZXqTMZcaRjN
 w5fo5IJkUCIm9TIg93Nvs9SQnwK8skM2c1L10z9IH9HArON0N1tQsT5p8wFztdHVSEKK
 aJyz2JSrTQ6y/8DoxDTeUjeMLLIlJs3MACkN4+EMLx+kXUO279l7K9jAc/3AGZ2FucPN
 HPCecZV85dYembfVSmdXutWa91eAZM8NY4Ay8OgLCAm4bGTjDynqBWPJharHrKCiK8GO
 C5HdOUHxlNKOX0BSdMDImk6YHo7rsDsQ8sFoiwlhu6FsI9/6JJJ52cpLO6MYnZ6CnNEF
 kt6Q==
X-Gm-Message-State: APjAAAU0BOFVdBBhM75Lz6XNlB8c62MeV3FA3QuB1vo5SB5k+zZm+s3R
 FuoesIkENaWun1bFt+grrRo=
X-Google-Smtp-Source: APXvYqwfXfpR9UYdsB7IWOpc6eSg4/7Xvlde8WePg8+yQVEmOmGfveAHxmeCwJ8/OEfwDLzspbl5pQ==
X-Received: by 2002:a17:902:fe93:: with SMTP id
 x19mr278315plm.155.1580317171758; 
 Wed, 29 Jan 2020 08:59:31 -0800 (PST)
Received: from localhost.localdomain ([2405:205:c92f:3ccd:49ce:a9e3:28b5:cf94])
 by smtp.gmail.com with ESMTPSA id f8sm3223610pfn.2.2020.01.29.08.59.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Jan 2020 08:59:31 -0800 (PST)
From: Pragat Pandya <pragat.pandya@gmail.com>
To: gregkh@linuxfoundation.org,
	valdis.kletnieks@vt.edu
Subject: [PATCH 07/19] staging: exfat: Rename variable 'MilliSecond' to
 'millisecond'
Date: Wed, 29 Jan 2020 22:28:20 +0530
Message-Id: <20200129165832.10574-8-pragat.pandya@gmail.com>
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
Change all occurrences of identifier "MilliSecond" to "millisecond"

Signed-off-by: Pragat Pandya <pragat.pandya@gmail.com>

---
Changes in v1:
	-Rename "MilliSecond" as "milli_second"
Changes in v2:
	-Remove unnecessary '_'(underscore) character form renamed
	 identifier name.
	-Rename "MilliSecond" as "millisecond"
---
---
 drivers/staging/exfat/exfat.h       |  2 +-
 drivers/staging/exfat/exfat_super.c | 16 ++++++++--------
 2 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
index 85fbea44219a..55405dcbf8f7 100644
--- a/drivers/staging/exfat/exfat.h
+++ b/drivers/staging/exfat/exfat.h
@@ -228,7 +228,7 @@ struct date_time_t {
 	u16      hour;
 	u16      minute;
 	u16      second;
-	u16      MilliSecond;
+	u16      millisecond;
 };
 
 struct part_info_t {
diff --git a/drivers/staging/exfat/exfat_super.c b/drivers/staging/exfat/exfat_super.c
index 0582c49f091d..e51abb9b3826 100644
--- a/drivers/staging/exfat/exfat_super.c
+++ b/drivers/staging/exfat/exfat_super.c
@@ -62,7 +62,7 @@ static void exfat_time_fat2unix(struct timespec64 *ts, struct date_time_t *tp)
 	ts->tv_sec = mktime64(tp->year + 1980, tp->month + 1, tp->day,
 			      tp->hour, tp->minute, tp->second);
 
-	ts->tv_nsec = tp->MilliSecond * NSEC_PER_MSEC;
+	ts->tv_nsec = tp->millisecond * NSEC_PER_MSEC;
 }
 
 /* Convert linear UNIX date to a FAT time/date pair. */
@@ -74,7 +74,7 @@ static void exfat_time_unix2fat(struct timespec64 *ts, struct date_time_t *tp)
 	time64_to_tm(second, 0, &tm);
 
 	if (second < UNIX_SECS_1980) {
-		tp->MilliSecond = 0;
+		tp->millisecond = 0;
 		tp->second	= 0;
 		tp->minute	= 0;
 		tp->hour	= 0;
@@ -85,7 +85,7 @@ static void exfat_time_unix2fat(struct timespec64 *ts, struct date_time_t *tp)
 	}
 
 	if (second >= UNIX_SECS_2108) {
-		tp->MilliSecond = 999;
+		tp->millisecond = 999;
 		tp->second	= 59;
 		tp->minute	= 59;
 		tp->hour	= 23;
@@ -95,7 +95,7 @@ static void exfat_time_unix2fat(struct timespec64 *ts, struct date_time_t *tp)
 		return;
 	}
 
-	tp->MilliSecond = ts->tv_nsec / NSEC_PER_MSEC;
+	tp->millisecond = ts->tv_nsec / NSEC_PER_MSEC;
 	tp->second	= tm.tm_sec;
 	tp->minute	= tm.tm_min;
 	tp->hour	= tm.tm_hour;
@@ -1511,7 +1511,7 @@ static int ffsReadStat(struct inode *inode, struct dir_entry_t *info)
 	info->CreateTimestamp.hour = tm.hour;
 	info->CreateTimestamp.minute = tm.min;
 	info->CreateTimestamp.second = tm.sec;
-	info->CreateTimestamp.MilliSecond = 0;
+	info->CreateTimestamp.millisecond = 0;
 
 	p_fs->fs_func->get_entry_time(ep, &tm, TM_MODIFY);
 	info->ModifyTimestamp.year = tm.year;
@@ -1520,7 +1520,7 @@ static int ffsReadStat(struct inode *inode, struct dir_entry_t *info)
 	info->ModifyTimestamp.hour = tm.hour;
 	info->ModifyTimestamp.minute = tm.min;
 	info->ModifyTimestamp.second = tm.sec;
-	info->ModifyTimestamp.MilliSecond = 0;
+	info->ModifyTimestamp.millisecond = 0;
 
 	memset((char *)&info->AccessTimestamp, 0, sizeof(struct date_time_t));
 
@@ -1931,7 +1931,7 @@ static int ffsReadDir(struct inode *inode, struct dir_entry_t *dir_entry)
 			dir_entry->CreateTimestamp.hour = tm.hour;
 			dir_entry->CreateTimestamp.minute = tm.min;
 			dir_entry->CreateTimestamp.second = tm.sec;
-			dir_entry->CreateTimestamp.MilliSecond = 0;
+			dir_entry->CreateTimestamp.millisecond = 0;
 
 			fs_func->get_entry_time(ep, &tm, TM_MODIFY);
 			dir_entry->ModifyTimestamp.year = tm.year;
@@ -1940,7 +1940,7 @@ static int ffsReadDir(struct inode *inode, struct dir_entry_t *dir_entry)
 			dir_entry->ModifyTimestamp.hour = tm.hour;
 			dir_entry->ModifyTimestamp.minute = tm.min;
 			dir_entry->ModifyTimestamp.second = tm.sec;
-			dir_entry->ModifyTimestamp.MilliSecond = 0;
+			dir_entry->ModifyTimestamp.millisecond = 0;
 
 			memset((char *)&dir_entry->AccessTimestamp, 0,
 			       sizeof(struct date_time_t));
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

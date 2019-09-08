Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C8C4AAD034
	for <lists+driverdev-devel@lfdr.de>; Sun,  8 Sep 2019 19:36:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6D3058567A;
	Sun,  8 Sep 2019 17:36:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4feO8EWOljm9; Sun,  8 Sep 2019 17:35:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C2F7C855DF;
	Sun,  8 Sep 2019 17:35:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CE8631BF407
 for <devel@linuxdriverproject.org>; Sun,  8 Sep 2019 17:35:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id CADC585672
 for <devel@linuxdriverproject.org>; Sun,  8 Sep 2019 17:35:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SWzlCENnXpL4 for <devel@linuxdriverproject.org>;
 Sun,  8 Sep 2019 17:35:51 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from valentin-vidic.from.hr (valentin-vidic.from.hr [94.229.67.141])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A4094855F7
 for <devel@driverdev.osuosl.org>; Sun,  8 Sep 2019 17:35:50 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at valentin-vidic.from.hr
Received: by valentin-vidic.from.hr (Postfix, from userid 1000)
 id BE2F2216; Sun,  8 Sep 2019 17:35:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=valentin-vidic.from.hr; s=2017; t=1567964146;
 bh=Z7STUtAP4wREtHbLUXxnDaJR8otfspGwQ92gBt86FKo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=VRXbY54/+yCIkKY54+gMGzIvI8DMolLEjaKEuH9d7aqiFxO1YPyWaGjG+hEc5Ftvo
 wzuDpAweOHUDu8Qmg2yk87V2e5cBVWsVH/E+zzsft4HQhDM+k0/I/yu/AabUWAPHwa
 wetaLw8KvK5twrW2oztmm7pyV7y0XbhzeP22eNK1FUfNW8iBqcaU3TUcg4nMbAa5Dx
 ECgWpE5ZDO2IsZm/NnO8Np629LE3CzuP3H0srMAcWkIPZt+isdGctP3cVhzciEIDk/
 S9jdNL0ARGizJm8MRO9O4FtCCHc5a172UxSI5qIdKNM5XEaS41xJm7b4icYCkjwWAg
 742xW3I4S4XjQ==
From: Valentin Vidic <vvidic@valentin-vidic.from.hr>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v3 2/4] staging: exfat: drop duplicate date_time_t struct
Date: Sun,  8 Sep 2019 17:35:37 +0000
Message-Id: <20190908173539.26963-2-vvidic@valentin-vidic.from.hr>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190908173539.26963-1-vvidic@valentin-vidic.from.hr>
References: <20190908173539.26963-1-vvidic@valentin-vidic.from.hr>
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, Valentin Vidic <vvidic@valentin-vidic.from.hr>,
 Valdis Kletnieks <valdis.kletnieks@vt.edu>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Use timestamp_t for everything and cleanup duplicate code.

Signed-off-by: Valentin Vidic <vvidic@valentin-vidic.from.hr>
---
 drivers/staging/exfat/exfat.h       |  35 +++---
 drivers/staging/exfat/exfat_super.c | 158 ++++++++--------------------
 2 files changed, 55 insertions(+), 138 deletions(-)

diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
index 0aa14dea4e09..58e1e889779f 100644
--- a/drivers/staging/exfat/exfat.h
+++ b/drivers/staging/exfat/exfat.h
@@ -241,16 +241,6 @@ static inline u16 get_row_index(u16 i)
 #define UNI_PAR_DIR_NAME        "\0.\0."
 #endif
 
-struct date_time_t {
-	u16      Year;
-	u16      Month;
-	u16      Day;
-	u16      Hour;
-	u16      Minute;
-	u16      Second;
-	u16      MilliSecond;
-};
-
 struct part_info_t {
 	u32      Offset;    /* start sector number of the partition */
 	u32      Size;      /* in sectors */
@@ -289,6 +279,16 @@ struct file_id_t {
 	u32      hint_last_clu;
 };
 
+struct timestamp_t {
+	u16      millisec;   /* 0 ~ 999              */
+	u16      sec;        /* 0 ~ 59               */
+	u16      min;        /* 0 ~ 59               */
+	u16      hour;       /* 0 ~ 23               */
+	u16      day;        /* 1 ~ 31               */
+	u16      mon;        /* 1 ~ 12               */
+	u16      year;       /* 0 ~ 127 (since 1980) */
+};
+
 struct dir_entry_t {
 	char Name[MAX_NAME_LENGTH * MAX_CHARSET_SIZE];
 
@@ -298,18 +298,9 @@ struct dir_entry_t {
 	u32 Attr;
 	u64 Size;
 	u32 NumSubdirs;
-	struct date_time_t CreateTimestamp;
-	struct date_time_t ModifyTimestamp;
-	struct date_time_t AccessTimestamp;
-};
-
-struct timestamp_t {
-	u16      sec;        /* 0 ~ 59               */
-	u16      min;        /* 0 ~ 59               */
-	u16      hour;       /* 0 ~ 23               */
-	u16      day;        /* 1 ~ 31               */
-	u16      mon;        /* 1 ~ 12               */
-	u16      year;       /* 0 ~ 127 (since 1980) */
+	struct timestamp_t CreateTimestamp;
+	struct timestamp_t ModifyTimestamp;
+	struct timestamp_t AccessTimestamp;
 };
 
 /* MS_DOS FAT partition boot record (512 bytes) */
diff --git a/drivers/staging/exfat/exfat_super.c b/drivers/staging/exfat/exfat_super.c
index 3a58907caf7c..54b6c2ff3c96 100644
--- a/drivers/staging/exfat/exfat_super.c
+++ b/drivers/staging/exfat/exfat_super.c
@@ -56,16 +56,16 @@ static void exfat_write_super(struct super_block *sb);
 #define UNIX_SECS_2108    4354819200L
 
 /* Convert a FAT time/date pair to a UNIX date (seconds since 1 1 70). */
-static void exfat_time_fat2unix(struct timespec64 *ts, struct date_time_t *tp)
+static void exfat_time_fat2unix(struct timespec64 *ts, struct timestamp_t *tp)
 {
-	ts->tv_sec = mktime64(tp->Year + 1980, tp->Month + 1, tp->Day,
-			      tp->Hour, tp->Minute, tp->Second);
+	ts->tv_sec = mktime64(tp->year + 1980, tp->mon + 1, tp->day,
+			      tp->hour, tp->min, tp->sec);
 
-	ts->tv_nsec = tp->MilliSecond * NSEC_PER_MSEC;
+	ts->tv_nsec = tp->millisec * NSEC_PER_MSEC;
 }
 
 /* Convert linear UNIX date to a FAT time/date pair. */
-static void exfat_time_unix2fat(struct timespec64 *ts, struct date_time_t *tp)
+static void exfat_time_unix2fat(struct timespec64 *ts, struct timestamp_t *tp)
 {
 	time64_t second = ts->tv_sec;
 	struct tm tm;
@@ -73,69 +73,42 @@ static void exfat_time_unix2fat(struct timespec64 *ts, struct date_time_t *tp)
 	time64_to_tm(second, 0, &tm);
 
 	if (second < UNIX_SECS_1980) {
-		tp->MilliSecond = 0;
-		tp->Second	= 0;
-		tp->Minute	= 0;
-		tp->Hour	= 0;
-		tp->Day		= 1;
-		tp->Month	= 1;
-		tp->Year	= 0;
+		tp->millisec	= 0;
+		tp->sec		= 0;
+		tp->min		= 0;
+		tp->hour	= 0;
+		tp->day		= 1;
+		tp->mon		= 1;
+		tp->year	= 0;
 		return;
 	}
 
 	if (second >= UNIX_SECS_2108) {
-		tp->MilliSecond = 999;
-		tp->Second	= 59;
-		tp->Minute	= 59;
-		tp->Hour	= 23;
-		tp->Day		= 31;
-		tp->Month	= 12;
-		tp->Year	= 127;
+		tp->millisec	= 999;
+		tp->sec		= 59;
+		tp->min		= 59;
+		tp->hour	= 23;
+		tp->day		= 31;
+		tp->mon		= 12;
+		tp->year	= 127;
 		return;
 	}
 
-	tp->MilliSecond = ts->tv_nsec / NSEC_PER_MSEC;
-	tp->Second	= tm.tm_sec;
-	tp->Minute	= tm.tm_min;
-	tp->Hour	= tm.tm_hour;
-	tp->Day		= tm.tm_mday;
-	tp->Month	= tm.tm_mon + 1;
-	tp->Year	= tm.tm_year + 1900 - 1980;
+	tp->millisec	= ts->tv_nsec / NSEC_PER_MSEC;
+	tp->sec		= tm.tm_sec;
+	tp->min		= tm.tm_min;
+	tp->hour	= tm.tm_hour;
+	tp->day		= tm.tm_mday;
+	tp->mon		= tm.tm_mon + 1;
+	tp->year	= tm.tm_year + 1900 - 1980;
 }
 
 struct timestamp_t *tm_current(struct timestamp_t *tp)
 {
-	time64_t second = ktime_get_real_seconds();
-	struct tm tm;
-
-	time64_to_tm(second, 0, &tm);
-
-	if (second < UNIX_SECS_1980) {
-		tp->sec  = 0;
-		tp->min  = 0;
-		tp->hour = 0;
-		tp->day  = 1;
-		tp->mon  = 1;
-		tp->year = 0;
-		return tp;
-	}
+	struct timespec64 ts;
 
-	if (second >= UNIX_SECS_2108) {
-		tp->sec  = 59;
-		tp->min  = 59;
-		tp->hour = 23;
-		tp->day  = 31;
-		tp->mon  = 12;
-		tp->year = 127;
-		return tp;
-	}
-
-	tp->sec  = tm.tm_sec;
-	tp->min  = tm.tm_min;
-	tp->hour = tm.tm_hour;
-	tp->day  = tm.tm_mday;
-	tp->mon  = tm.tm_mon + 1;
-	tp->year = tm.tm_year + 1900 - 1980;
+	ktime_get_real_ts64(&ts);
+	exfat_time_unix2fat(&ts, tp);
 
 	return tp;
 }
@@ -1500,7 +1473,6 @@ static int ffsReadStat(struct inode *inode, struct dir_entry_t *info)
 	int ret = FFS_SUCCESS;
 	struct chain_t dir;
 	struct uni_name_t uni_name;
-	struct timestamp_t tm;
 	struct dentry_t *ep, *ep2;
 	struct super_block *sb = inode->i_sb;
 	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
@@ -1518,11 +1490,11 @@ static int ffsReadStat(struct inode *inode, struct dir_entry_t *info)
 		    (fid->entry == -1)) {
 			info->Attr = ATTR_SUBDIR;
 			memset((char *)&info->CreateTimestamp, 0,
-			       sizeof(struct date_time_t));
+			       sizeof(struct timestamp_t));
 			memset((char *)&info->ModifyTimestamp, 0,
-			       sizeof(struct date_time_t));
+			       sizeof(struct timestamp_t));
 			memset((char *)&info->AccessTimestamp, 0,
-			       sizeof(struct date_time_t));
+			       sizeof(struct timestamp_t));
 			strcpy(info->ShortName, ".");
 			strcpy(info->Name, ".");
 
@@ -1573,25 +1545,9 @@ static int ffsReadStat(struct inode *inode, struct dir_entry_t *info)
 	/* set FILE_INFO structure using the acquired struct dentry_t */
 	info->Attr = p_fs->fs_func->get_entry_attr(ep);
 
-	p_fs->fs_func->get_entry_time(ep, &tm, TM_CREATE);
-	info->CreateTimestamp.Year = tm.year;
-	info->CreateTimestamp.Month = tm.mon;
-	info->CreateTimestamp.Day = tm.day;
-	info->CreateTimestamp.Hour = tm.hour;
-	info->CreateTimestamp.Minute = tm.min;
-	info->CreateTimestamp.Second = tm.sec;
-	info->CreateTimestamp.MilliSecond = 0;
-
-	p_fs->fs_func->get_entry_time(ep, &tm, TM_MODIFY);
-	info->ModifyTimestamp.Year = tm.year;
-	info->ModifyTimestamp.Month = tm.mon;
-	info->ModifyTimestamp.Day = tm.day;
-	info->ModifyTimestamp.Hour = tm.hour;
-	info->ModifyTimestamp.Minute = tm.min;
-	info->ModifyTimestamp.Second = tm.sec;
-	info->ModifyTimestamp.MilliSecond = 0;
-
-	memset((char *) &info->AccessTimestamp, 0, sizeof(struct date_time_t));
+	p_fs->fs_func->get_entry_time(ep, &info->CreateTimestamp, TM_CREATE);
+	p_fs->fs_func->get_entry_time(ep, &info->ModifyTimestamp, TM_MODIFY);
+	memset((char *)&info->AccessTimestamp, 0, sizeof(struct timestamp_t));
 
 	*(uni_name.name) = 0x0;
 	/* XXX this is very bad for exfat cuz name is already included in es.
@@ -1650,7 +1606,6 @@ static int ffsWriteStat(struct inode *inode, struct dir_entry_t *info)
 {
 	sector_t sector = 0;
 	int ret = FFS_SUCCESS;
-	struct timestamp_t tm;
 	struct dentry_t *ep, *ep2;
 	struct entry_set_cache_t *es = NULL;
 	struct super_block *sb = inode->i_sb;
@@ -1697,22 +1652,8 @@ static int ffsWriteStat(struct inode *inode, struct dir_entry_t *info)
 	p_fs->fs_func->set_entry_attr(ep, info->Attr);
 
 	/* set FILE_INFO structure using the acquired struct dentry_t */
-	tm.sec  = info->CreateTimestamp.Second;
-	tm.min  = info->CreateTimestamp.Minute;
-	tm.hour = info->CreateTimestamp.Hour;
-	tm.day  = info->CreateTimestamp.Day;
-	tm.mon  = info->CreateTimestamp.Month;
-	tm.year = info->CreateTimestamp.Year;
-	p_fs->fs_func->set_entry_time(ep, &tm, TM_CREATE);
-
-	tm.sec  = info->ModifyTimestamp.Second;
-	tm.min  = info->ModifyTimestamp.Minute;
-	tm.hour = info->ModifyTimestamp.Hour;
-	tm.day  = info->ModifyTimestamp.Day;
-	tm.mon  = info->ModifyTimestamp.Month;
-	tm.year = info->ModifyTimestamp.Year;
-	p_fs->fs_func->set_entry_time(ep, &tm, TM_MODIFY);
-
+	p_fs->fs_func->set_entry_time(ep, &info->CreateTimestamp, TM_CREATE);
+	p_fs->fs_func->set_entry_time(ep, &info->ModifyTimestamp, TM_MODIFY);
 	p_fs->fs_func->set_entry_size(ep2, info->Size);
 
 	if (p_fs->vol_type != EXFAT) {
@@ -1939,7 +1880,6 @@ static int ffsReadDir(struct inode *inode, struct dir_entry_t *dir_entry)
 	sector_t sector;
 	struct chain_t dir, clu;
 	struct uni_name_t uni_name;
-	struct timestamp_t tm;
 	struct dentry_t *ep;
 	struct super_block *sb = inode->i_sb;
 	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
@@ -2036,26 +1976,12 @@ static int ffsReadDir(struct inode *inode, struct dir_entry_t *dir_entry)
 			buf_lock(sb, sector);
 			dir_entry->Attr = fs_func->get_entry_attr(ep);
 
-			fs_func->get_entry_time(ep, &tm, TM_CREATE);
-			dir_entry->CreateTimestamp.Year = tm.year;
-			dir_entry->CreateTimestamp.Month = tm.mon;
-			dir_entry->CreateTimestamp.Day = tm.day;
-			dir_entry->CreateTimestamp.Hour = tm.hour;
-			dir_entry->CreateTimestamp.Minute = tm.min;
-			dir_entry->CreateTimestamp.Second = tm.sec;
-			dir_entry->CreateTimestamp.MilliSecond = 0;
-
-			fs_func->get_entry_time(ep, &tm, TM_MODIFY);
-			dir_entry->ModifyTimestamp.Year = tm.year;
-			dir_entry->ModifyTimestamp.Month = tm.mon;
-			dir_entry->ModifyTimestamp.Day = tm.day;
-			dir_entry->ModifyTimestamp.Hour = tm.hour;
-			dir_entry->ModifyTimestamp.Minute = tm.min;
-			dir_entry->ModifyTimestamp.Second = tm.sec;
-			dir_entry->ModifyTimestamp.MilliSecond = 0;
-
+			fs_func->get_entry_time(ep, &dir_entry->CreateTimestamp,
+						TM_CREATE);
+			fs_func->get_entry_time(ep, &dir_entry->ModifyTimestamp,
+						TM_MODIFY);
 			memset((char *)&dir_entry->AccessTimestamp, 0,
-			       sizeof(struct date_time_t));
+			       sizeof(struct timestamp_t));
 
 			*(uni_name.name) = 0x0;
 			fs_func->get_uni_name_from_ext_entry(sb, &dir, dentry,
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

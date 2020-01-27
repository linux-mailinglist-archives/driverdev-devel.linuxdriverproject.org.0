Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4436B14A1C1
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Jan 2020 11:15:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F01A0858F5;
	Mon, 27 Jan 2020 10:15:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 40toetogNs5X; Mon, 27 Jan 2020 10:15:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8512A85650;
	Mon, 27 Jan 2020 10:15:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D83201BF294
 for <devel@linuxdriverproject.org>; Mon, 27 Jan 2020 10:15:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D4C3485AD6
 for <devel@linuxdriverproject.org>; Mon, 27 Jan 2020 10:15:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VPsZCszgeszm for <devel@linuxdriverproject.org>;
 Mon, 27 Jan 2020 10:15:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f66.google.com (mail-pj1-f66.google.com
 [209.85.216.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4999184E68
 for <devel@driverdev.osuosl.org>; Mon, 27 Jan 2020 10:15:46 +0000 (UTC)
Received: by mail-pj1-f66.google.com with SMTP id a6so2767794pjh.2
 for <devel@driverdev.osuosl.org>; Mon, 27 Jan 2020 02:15:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=I9pkyhc+eRMc75D37+Ijz8Li4nOzz5kNkid/81a27nw=;
 b=L9j3oibDgnrRL03YsdZBscU5YT8Rv5RVywL/GWNRVCybUYM3dj6iKCW81+uqkYsIdA
 bw53Hh2vqL196hh+keBnqu1qAOu+Fv8X1f58wkVjmJMb6OyFPsoBHbGOxJudnrqfhsED
 sj3txTD0JALBhaJuwmJ2yyIU5f7EPA/5pgIUy0v2LoaLloZ0zWw2uHq2dL+UV/8EPfoU
 DMnP18FyxdexnjLrD06SXoIQfCthKykQ0c0L/y2zGhcl2y0NftH6i8w+9B8fvdvXi/XK
 nQzLK2RwYgVWZkBDXKuuN8DI4gS4EXvaWjJv5yQG/0bQ0sNv8YvGPGX2raR9it67EWNV
 56FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=I9pkyhc+eRMc75D37+Ijz8Li4nOzz5kNkid/81a27nw=;
 b=dzQvfd1mapWs2OwdSP4vEjELdbBfex537YvtQ3MxUVaE0Q15Z7FdQ7oNwt4XmsOmF6
 v53gR1AsZya+uHy4VWoFZjivSfEbD0/oFSSKfeRiS9BWQeB57C1n4Bz/HRewNqigjtiz
 YXCw89wvrdMhTmLel2PTO5oKM7u5KuqVahGI9OutDFuMkiK6oQAp+clImficrNTMN6n4
 trnbsWA4wXWpINIWmcOFQDpMdB1mJJPBTJJZ/+fjWsl315Y5sBkGcP7jtnLPSXM70d8E
 CxzvPRewzBJ3lgHTHvXKfktA04kGezUNSREwuqnw4wyW1YA79RucNHDpUNvN6YeSlLGc
 0hzg==
X-Gm-Message-State: APjAAAVT3PZAb8rVqEzp60hr/3/xvfv20/w4L3b6tLMyE6LCVctJVatu
 TDiLTZfwGNMOJcU4P+aB8SQ=
X-Google-Smtp-Source: APXvYqyN0c3kUL7zYMEV8gTBqJZRquANVf/BMwwevYJCRJD2T+WVZZJZetgB1ahLfrOQp7P/jEHh3g==
X-Received: by 2002:a17:902:654d:: with SMTP id
 d13mr16244156pln.187.1580120145953; 
 Mon, 27 Jan 2020 02:15:45 -0800 (PST)
Received: from localhost.localdomain ([2405:205:c902:a5e9:3956:8df2:aee5:9cf6])
 by smtp.gmail.com with ESMTPSA id s15sm15504138pgq.4.2020.01.27.02.15.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Jan 2020 02:15:45 -0800 (PST)
From: Pragat Pandya <pragat.pandya@gmail.com>
To: valdis.kletnieks@vt.edu,
	gregkh@linuxfoundation.org
Subject: [PATCH 17/22] staging: exfat: Rename variable "ShortName" to
 "short_name"
Date: Mon, 27 Jan 2020 15:43:38 +0530
Message-Id: <20200127101343.20415-18-pragat.pandya@gmail.com>
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

Change all the occurrences of "ShortName" to "short_name" in exfat.

Signed-off-by: Pragat Pandya <pragat.pandya@gmail.com>
---
 drivers/staging/exfat/exfat.h       | 2 +-
 drivers/staging/exfat/exfat_super.c | 6 +++---
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
index bc917b241bab..c334467d6c94 100644
--- a/drivers/staging/exfat/exfat.h
+++ b/drivers/staging/exfat/exfat.h
@@ -273,7 +273,7 @@ struct dir_entry_t {
 	char name[MAX_NAME_LENGTH * MAX_CHARSET_SIZE];
 
 	/* used only for FAT12/16/32, not used for exFAT */
-	char ShortName[DOS_NAME_LENGTH + 2];
+	char short_name[DOS_NAME_LENGTH + 2];
 
 	u32 Attr;
 	u64 Size;
diff --git a/drivers/staging/exfat/exfat_super.c b/drivers/staging/exfat/exfat_super.c
index 8a4915aa3849..73ebe5a5dde9 100644
--- a/drivers/staging/exfat/exfat_super.c
+++ b/drivers/staging/exfat/exfat_super.c
@@ -1464,7 +1464,7 @@ static int ffsReadStat(struct inode *inode, struct dir_entry_t *info)
 			       sizeof(struct date_time_t));
 			memset((char *)&info->AccessTimestamp, 0,
 			       sizeof(struct date_time_t));
-			strcpy(info->ShortName, ".");
+			strcpy(info->short_name, ".");
 			strcpy(info->name, ".");
 
 			dir.dir = p_fs->root_dir;
@@ -2132,9 +2132,9 @@ static int exfat_readdir(struct file *filp, struct dir_context *ctx)
 	if (!de.name[0])
 		goto end_of_dir;
 
-	if (!memcmp(de.ShortName, DOS_CUR_DIR_NAME, DOS_NAME_LENGTH)) {
+	if (!memcmp(de.short_name, DOS_CUR_DIR_NAME, DOS_NAME_LENGTH)) {
 		inum = inode->i_ino;
-	} else if (!memcmp(de.ShortName, DOS_PAR_DIR_NAME, DOS_NAME_LENGTH)) {
+	} else if (!memcmp(de.short_name, DOS_PAR_DIR_NAME, DOS_NAME_LENGTH)) {
 		inum = parent_ino(filp->f_path.dentry);
 	} else {
 		loff_t i_pos = ((loff_t)EXFAT_I(inode)->fid.start_clu << 32) |
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

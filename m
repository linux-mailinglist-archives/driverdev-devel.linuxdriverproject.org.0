Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FC4714CEFA
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 Jan 2020 18:00:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0B5AD85F8F;
	Wed, 29 Jan 2020 17:00:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tDJiFqq24Uto; Wed, 29 Jan 2020 17:00:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D3FBA83505;
	Wed, 29 Jan 2020 17:00:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8EEE01BF215
 for <devel@linuxdriverproject.org>; Wed, 29 Jan 2020 17:00:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 839BA21FA9
 for <devel@linuxdriverproject.org>; Wed, 29 Jan 2020 17:00:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rkANUyS4Z-2S for <devel@linuxdriverproject.org>;
 Wed, 29 Jan 2020 17:00:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 3D64B21552
 for <devel@driverdev.osuosl.org>; Wed, 29 Jan 2020 17:00:39 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id q127so74809pga.4
 for <devel@driverdev.osuosl.org>; Wed, 29 Jan 2020 09:00:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=XKusosktXdhQypNmQUgC29Bmq7GAyRxVBNaveBtgBKw=;
 b=B/FP/kbijLoUXdz1aENvwUNjJW/rtL7lcbRg/yjefqqPxANOQz8ACh2s25+Fc83Khy
 RfB+JV1ZHq58qv/E4m4JOIeVSK2gfD1p9As6/oeqXbKdpAxRwH/jk/xvTrQ7pFd9SUyz
 P0ndYQWQ/XFh+Azkch7NvEwnibiVyYJVUUULr6yfGlsdnBE1D6I+Jbuvg7AwUqkwry13
 TN3uUfxWWnjmRb+F8rmC0GoAPADrJqzxVaERsTVFBNOZ4TyeIJReyVzq7qyOU5iQw+dy
 qq41ysbt7H0DnpWmT2S4Og7EuI6uFtahrAsoPZajdg9LjG8u7adxwUlzuDmk19jz9XZ9
 9yDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=XKusosktXdhQypNmQUgC29Bmq7GAyRxVBNaveBtgBKw=;
 b=qyNFVHtDgPaxf/HoWiUYDpv0M/mOwJM6ARRGh9EELZFA+pX0q7vLqLstx6FMETqCsE
 81AqwTSQejTWvP2Jvveb5PYzasCpRjuPy+PzGoSLgvi8ChHiOPL0Lis16i3l87K6v+Zc
 qjoG6f5enHmszK94x3uhK0J3VBfl2leAre4WoC71m6HNWDRiYx6t1rv8raFwRoNR1OfY
 9J9MHFxm3j6wHDbsK87gNgglGRdrln7dk+QyLTf/ww7h4L7Mbanopi+DJmUhtsFhSlQr
 mny2HStLNPktaqnQUS6mhevAXAA/SLZ6APPRpXJIxrpvoIucj5laAs1XJGkoCd2QLaET
 Ujnw==
X-Gm-Message-State: APjAAAWSrVX5+cyANQVKj2rUW1ep/GQY7qkH29Qp9bRqLyLysYgaXbXH
 rsGQBgotdNzlYKIOGt9tIH0=
X-Google-Smtp-Source: APXvYqxzAIaEtu+asWCf6V9L0A5X+2P6HuI3uZGFl0xHR4Q5cxutZSQJhBgVkKY3B4g2xbCsK3vmzw==
X-Received: by 2002:aa7:82d5:: with SMTP id f21mr476644pfn.245.1580317238848; 
 Wed, 29 Jan 2020 09:00:38 -0800 (PST)
Received: from localhost.localdomain ([2405:205:c92f:3ccd:49ce:a9e3:28b5:cf94])
 by smtp.gmail.com with ESMTPSA id f8sm3223610pfn.2.2020.01.29.09.00.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Jan 2020 09:00:38 -0800 (PST)
From: Pragat Pandya <pragat.pandya@gmail.com>
To: gregkh@linuxfoundation.org,
	valdis.kletnieks@vt.edu
Subject: [PATCH 19/19] staging: exfat: Rename variable 'AccessTimestamp' to
 'access_timestamp'
Date: Wed, 29 Jan 2020 22:28:32 +0530
Message-Id: <20200129165832.10574-20-pragat.pandya@gmail.com>
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
Change all occurrences of identifier "AccessTimestamp" to
"access_timestamp"

Signed-off-by: Pragat Pandya <pragat.pandya@gmail.com>
---
 drivers/staging/exfat/exfat.h       |  2 +-
 drivers/staging/exfat/exfat_super.c | 10 +++++-----
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
index 323048cd1903..29762946e773 100644
--- a/drivers/staging/exfat/exfat.h
+++ b/drivers/staging/exfat/exfat.h
@@ -280,7 +280,7 @@ struct dir_entry_t {
 	u32 num_subdirs;
 	struct date_time_t create_timestamp;
 	struct date_time_t modify_timestamp;
-	struct date_time_t AccessTimestamp;
+	struct date_time_t access_timestamp;
 };
 
 struct timestamp_t {
diff --git a/drivers/staging/exfat/exfat_super.c b/drivers/staging/exfat/exfat_super.c
index 92670913971f..d78172d3f6b7 100644
--- a/drivers/staging/exfat/exfat_super.c
+++ b/drivers/staging/exfat/exfat_super.c
@@ -1462,7 +1462,7 @@ static int ffsReadStat(struct inode *inode, struct dir_entry_t *info)
 			       sizeof(struct date_time_t));
 			memset((char *)&info->modify_timestamp, 0,
 			       sizeof(struct date_time_t));
-			memset((char *)&info->AccessTimestamp, 0,
+			memset((char *)&info->access_timestamp, 0,
 			       sizeof(struct date_time_t));
 			strcpy(info->short_name, ".");
 			strcpy(info->name, ".");
@@ -1522,7 +1522,7 @@ static int ffsReadStat(struct inode *inode, struct dir_entry_t *info)
 	info->modify_timestamp.second = tm.sec;
 	info->modify_timestamp.millisecond = 0;
 
-	memset((char *)&info->AccessTimestamp, 0, sizeof(struct date_time_t));
+	memset((char *)&info->access_timestamp, 0, sizeof(struct date_time_t));
 
 	*uni_name.name = 0x0;
 	/* XXX this is very bad for exfat cuz name is already included in es.
@@ -1942,7 +1942,7 @@ static int ffsReadDir(struct inode *inode, struct dir_entry_t *dir_entry)
 			dir_entry->modify_timestamp.second = tm.sec;
 			dir_entry->modify_timestamp.millisecond = 0;
 
-			memset((char *)&dir_entry->AccessTimestamp, 0,
+			memset((char *)&dir_entry->access_timestamp, 0,
 			       sizeof(struct date_time_t));
 
 			*uni_name.name = 0x0;
@@ -3193,7 +3193,7 @@ static int exfat_fill_inode(struct inode *inode, struct file_id_t *fid)
 
 	exfat_time_fat2unix(&inode->i_mtime, &info.modify_timestamp);
 	exfat_time_fat2unix(&inode->i_ctime, &info.create_timestamp);
-	exfat_time_fat2unix(&inode->i_atime, &info.AccessTimestamp);
+	exfat_time_fat2unix(&inode->i_atime, &info.access_timestamp);
 
 	return 0;
 }
@@ -3264,7 +3264,7 @@ static int exfat_write_inode(struct inode *inode, struct writeback_control *wbc)
 
 	exfat_time_unix2fat(&inode->i_mtime, &info.modify_timestamp);
 	exfat_time_unix2fat(&inode->i_ctime, &info.create_timestamp);
-	exfat_time_unix2fat(&inode->i_atime, &info.AccessTimestamp);
+	exfat_time_unix2fat(&inode->i_atime, &info.access_timestamp);
 
 	ffsWriteStat(inode, &info);
 
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

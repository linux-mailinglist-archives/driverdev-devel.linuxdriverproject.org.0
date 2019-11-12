Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 93530F86AF
	for <lists+driverdev-devel@lfdr.de>; Tue, 12 Nov 2019 03:10:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0E9CA204C3;
	Tue, 12 Nov 2019 02:10:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pCZgQbDnbhM3; Tue, 12 Nov 2019 02:10:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E4ACD2034C;
	Tue, 12 Nov 2019 02:10:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9EDD11BF37A
 for <devel@linuxdriverproject.org>; Tue, 12 Nov 2019 02:10:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 90D8020026
 for <devel@linuxdriverproject.org>; Tue, 12 Nov 2019 02:10:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CrVyzXIIlt84 for <devel@linuxdriverproject.org>;
 Tue, 12 Nov 2019 02:10:43 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from omr2.cc.vt.edu (outbound.smtp.vt.edu [198.82.183.121])
 by silver.osuosl.org (Postfix) with ESMTPS id 3FC91203E0
 for <devel@driverdev.osuosl.org>; Tue, 12 Nov 2019 02:10:40 +0000 (UTC)
Received: from mr2.cc.vt.edu (inbound.smtp.ipv6.vt.edu
 [IPv6:2607:b400:92:9:0:9d:8fcb:4116])
 by omr2.cc.vt.edu (8.14.4/8.14.4) with ESMTP id xAC2AdOr028370
 for <devel@driverdev.osuosl.org>; Mon, 11 Nov 2019 21:10:39 -0500
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200])
 by mr2.cc.vt.edu (8.14.7/8.14.7) with ESMTP id xAC2AYCu030500
 for <devel@driverdev.osuosl.org>; Mon, 11 Nov 2019 21:10:39 -0500
Received: by mail-qt1-f200.google.com with SMTP id f31so5798674qta.0
 for <devel@driverdev.osuosl.org>; Mon, 11 Nov 2019 18:10:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=b5jr6tXP5LAFzWoaAbKdx7aZISn6y4Z0nVj5Y80ntww=;
 b=GfuuDp6uyZvDZtVt5tWdFk/3xY6yZid9qP06ZOHW3DaB+XmqhW3lDAzWZ+Z512bbvk
 O9y+85zuID4gcwH51VDuR4ysDAkimo3DxZg+8Q1UrrQrsIbX+/PjovlWqL285C+EyM+o
 T8HyZcStREOGNCRQIvHmOlEd5S2MS/1y71pkphU4d7zCeyIWsHecoRf2zjAcZC2trq8z
 KAEHYNsce2zoerVEbQ72/PuOaUX2+rhltGU0b9X6RVP44u3ODKAaKL+jPHdvOx1RKav7
 5Ifo8M02xjsdSFhUGycP2LUJPjxK44kzq4BOWuf66f35lA2nnJFRP+iRMISL+MK8kVdx
 LbbA==
X-Gm-Message-State: APjAAAXsw+eL29MKojN+FMmsIuVEZljsgxtCron5Cht6JJfaoOmMwvKi
 xPbYzjAUYAVa9oWeUbMm7b1MxUM67TrWkX8bAFJmclNQKeKiuUWqsEWbdPtU8jnWzdwyBomwg8m
 sOiIXtxBZq6s+zC5xlb9HD/6dEYosE6pq
X-Received: by 2002:ad4:53ab:: with SMTP id j11mr1438034qvv.47.1573524633941; 
 Mon, 11 Nov 2019 18:10:33 -0800 (PST)
X-Google-Smtp-Source: APXvYqyEK6sXuvh08AvDwU3ReArUAHvfT2mPDPFXvQoqYAE1rCCmAavdthWCRAuyx6Wr0FR7AXxORg==
X-Received: by 2002:ad4:53ab:: with SMTP id j11mr1438023qvv.47.1573524633631; 
 Mon, 11 Nov 2019 18:10:33 -0800 (PST)
Received: from turing-police.lan ([2601:5c0:c001:c9e1::359])
 by smtp.gmail.com with ESMTPSA id o195sm8004767qke.35.2019.11.11.18.10.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 Nov 2019 18:10:32 -0800 (PST)
From: Valdis Kletnieks <valdis.kletnieks@vt.edu>
X-Google-Original-From: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>
To: gregkh@linuxfoundation.org
Subject: [PATCH v3 4/9] staging: exfat: Clean up return codes - FFS_INVALIDFID
Date: Mon, 11 Nov 2019 21:09:52 -0500
Message-Id: <20191112021000.42091-5-Valdis.Kletnieks@vt.edu>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191112021000.42091-1-Valdis.Kletnieks@vt.edu>
References: <20191112021000.42091-1-Valdis.Kletnieks@vt.edu>
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
Cc: linux-fsdevel@vger.kernel.org, devel@driverdev.osuosl.org,
 Valdis Kletnieks <valdis.kletnieks@vt.edu>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Covert FFS_INVALIDFID to -EINVAL

Signed-off-by: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>
---
 drivers/staging/exfat/exfat.h       |  1 -
 drivers/staging/exfat/exfat_super.c | 10 +++++-----
 2 files changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
index 292af85e3cd2..7a817405c624 100644
--- a/drivers/staging/exfat/exfat.h
+++ b/drivers/staging/exfat/exfat.h
@@ -214,7 +214,6 @@ static inline u16 get_row_index(u16 i)
 #define FFS_NOTMOUNTED          4
 #define FFS_ALIGNMENTERR        5
 #define FFS_SEMAPHOREERR        6
-#define FFS_INVALIDFID          8
 #define FFS_NOTOPENED           12
 #define FFS_MAXOPENED           13
 #define FFS_ERROR               19
diff --git a/drivers/staging/exfat/exfat_super.c b/drivers/staging/exfat/exfat_super.c
index 7c99d1f8cba8..dd6530aef63a 100644
--- a/drivers/staging/exfat/exfat_super.c
+++ b/drivers/staging/exfat/exfat_super.c
@@ -699,7 +699,7 @@ static int ffsReadFile(struct inode *inode, struct file_id_t *fid, void *buffer,
 
 	/* check the validity of the given file id */
 	if (!fid)
-		return FFS_INVALIDFID;
+		return -EINVAL;
 
 	/* check the validity of pointer parameters */
 	if (!buffer)
@@ -831,7 +831,7 @@ static int ffsWriteFile(struct inode *inode, struct file_id_t *fid,
 
 	/* check the validity of the given file id */
 	if (!fid)
-		return FFS_INVALIDFID;
+		return -EINVAL;
 
 	/* check the validity of pointer parameters */
 	if (!buffer)
@@ -1237,7 +1237,7 @@ static int ffsMoveFile(struct inode *old_parent_inode, struct file_id_t *fid,
 
 	/* check the validity of the given file id */
 	if (!fid)
-		return FFS_INVALIDFID;
+		return -EINVAL;
 
 	/* check the validity of pointer parameters */
 	if (!new_path || (*new_path == '\0'))
@@ -1358,7 +1358,7 @@ static int ffsRemoveFile(struct inode *inode, struct file_id_t *fid)
 
 	/* check the validity of the given file id */
 	if (!fid)
-		return FFS_INVALIDFID;
+		return -EINVAL;
 
 	/* acquire the lock for file system critical section */
 	mutex_lock(&p_fs->v_mutex);
@@ -2145,7 +2145,7 @@ static int ffsRemoveDir(struct inode *inode, struct file_id_t *fid)
 
 	/* check the validity of the given file id */
 	if (!fid)
-		return FFS_INVALIDFID;
+		return -EINVAL;
 
 	dir.dir = fid->dir.dir;
 	dir.size = fid->dir.size;
-- 
2.24.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

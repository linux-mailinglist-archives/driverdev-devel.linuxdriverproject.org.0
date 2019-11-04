Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BD7E5ED729
	for <lists+driverdev-devel@lfdr.de>; Mon,  4 Nov 2019 02:46:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6432789585;
	Mon,  4 Nov 2019 01:46:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id j_7UIN37TVIH; Mon,  4 Nov 2019 01:46:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1124689532;
	Mon,  4 Nov 2019 01:46:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2CB8F1BF42D
 for <devel@linuxdriverproject.org>; Mon,  4 Nov 2019 01:46:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2A3FE8959C
 for <devel@linuxdriverproject.org>; Mon,  4 Nov 2019 01:46:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5ORrKhgbzvvY for <devel@linuxdriverproject.org>;
 Mon,  4 Nov 2019 01:46:11 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from omr1.cc.vt.edu (outbound.smtp.vt.edu [198.82.183.121])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CA84989536
 for <devel@driverdev.osuosl.org>; Mon,  4 Nov 2019 01:46:11 +0000 (UTC)
Received: from mr2.cc.vt.edu (mr2.cc.ipv6.vt.edu
 [IPv6:2607:b400:92:8400:0:90:e077:bf22])
 by omr1.cc.vt.edu (8.14.4/8.14.4) with ESMTP id xA41kB0R025797
 for <devel@driverdev.osuosl.org>; Sun, 3 Nov 2019 20:46:11 -0500
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198])
 by mr2.cc.vt.edu (8.14.7/8.14.7) with ESMTP id xA41k5ej008069
 for <devel@driverdev.osuosl.org>; Sun, 3 Nov 2019 20:46:10 -0500
Received: by mail-qk1-f198.google.com with SMTP id a16so4749261qka.10
 for <devel@driverdev.osuosl.org>; Sun, 03 Nov 2019 17:46:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=nCdjs/guPQ346vNtYDwvfg9pb4hZkLVUac954rX/dpk=;
 b=evM0kcXgcCuRimavJaz5n/PKEpFLHi2PwqDYLSecijEKj+t3JpNVpUjgNQhZS/taxM
 uauZlYFflKLeGl5bmWLSg4kLgMvez7489BbIF0GWmKNl/AmrGU4f8fBO6Ir/tAsmOfuS
 QL3Cr5J8yxdPMTnxFuFLsX1yR6cSzgPzMwxMuh2nI3JNb/K+osKSTolgvKIMOHgYR+yt
 CjjdCt1+6y3rxFHcWK4fq2mDd0tf43dIFQSnkPyRukJq2LMQ9aA+TQPtTRgjVy4IXWGE
 V+UyhRqPt/aJ7h8B9ThMkOdgAhAhYY6BG916r57OUs6Wovo1Kbrj0nZ2cZ3WtM5O5v2H
 8AOg==
X-Gm-Message-State: APjAAAUJMxGHAZh+r44xqktp+bjEnt39V+sgPpqc2fcKRLS6jx/lV1sS
 vNyy8GFBNwwswy3lIaunS63uRi4+FNDaHBgKVaMEttb3wclLAzgQJAj/oVhAoOwTrn039p/+UJA
 QO77rTXuzkx8LbtBfTeGt3KgQHchnJgez
X-Received: by 2002:a05:620a:120e:: with SMTP id
 u14mr7746812qkj.325.1572831965530; 
 Sun, 03 Nov 2019 17:46:05 -0800 (PST)
X-Google-Smtp-Source: APXvYqz2m7WN/D3Ffc/jabz7utsgrdaTFRm3V+LReg6jgNuifx+Z/76kOMw/7712smDxSyi/e4NGnQ==
X-Received: by 2002:a05:620a:120e:: with SMTP id
 u14mr7746805qkj.325.1572831965261; 
 Sun, 03 Nov 2019 17:46:05 -0800 (PST)
Received: from turing-police.lan ([2601:5c0:c001:c9e1::359])
 by smtp.gmail.com with ESMTPSA id d2sm8195354qkg.77.2019.11.03.17.46.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 03 Nov 2019 17:46:04 -0800 (PST)
From: Valdis Kletnieks <valdis.kletnieks@vt.edu>
X-Google-Original-From: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>
To: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>
Subject: [PATCH v2 04/10] staging: exfat: Clean up return codes -
 FFS_INVALIDFID
Date: Sun,  3 Nov 2019 20:45:00 -0500
Message-Id: <20191104014510.102356-5-Valdis.Kletnieks@vt.edu>
X-Mailer: git-send-email 2.24.0.rc1
In-Reply-To: <20191104014510.102356-1-Valdis.Kletnieks@vt.edu>
References: <20191104014510.102356-1-Valdis.Kletnieks@vt.edu>
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
Cc: linux-fsdevel@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org,
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
2.24.0.rc1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

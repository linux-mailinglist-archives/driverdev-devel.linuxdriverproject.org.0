Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 075DEE372D
	for <lists+driverdev-devel@lfdr.de>; Thu, 24 Oct 2019 17:55:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7E2A38575A;
	Thu, 24 Oct 2019 15:55:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OyZ3pG82W6pe; Thu, 24 Oct 2019 15:54:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1BE2F85735;
	Thu, 24 Oct 2019 15:54:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 77EE81BF297
 for <devel@linuxdriverproject.org>; Thu, 24 Oct 2019 15:54:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 74AE786958
 for <devel@linuxdriverproject.org>; Thu, 24 Oct 2019 15:54:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qXsl6vWBn8PD for <devel@linuxdriverproject.org>;
 Thu, 24 Oct 2019 15:54:56 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from omr2.cc.vt.edu (outbound.smtp.vt.edu [198.82.183.121])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4798F868EF
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 15:54:56 +0000 (UTC)
Received: from mr2.cc.vt.edu (inbound.smtp.ipv6.vt.edu
 [IPv6:2607:b400:92:9:0:9d:8fcb:4116])
 by omr2.cc.vt.edu (8.14.4/8.14.4) with ESMTP id x9OFstMC027226
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 11:54:55 -0400
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com
 [209.85.160.197])
 by mr2.cc.vt.edu (8.14.7/8.14.7) with ESMTP id x9OFsoma024717
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 11:54:55 -0400
Received: by mail-qt1-f197.google.com with SMTP id u23so21891188qtb.22
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 08:54:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=ebz41ETy8wsrwzEhWbgXC3OcDhlPcRnHFiZwy0DcYE8=;
 b=C06AjTST4ygDI3VgjEPZO52loOcnJG0VyoU/coeLWgeAu77lf0BGsDhxXl64PSvdoD
 ZfTpxoQIB+FPaCPN8zacqqjHr//DUuGWA1or+45JZZ3O1KmQRgfn1uFfpASqPkpclUh/
 5KR8ijcvB9fWgLsLDxR9uzSf8Tl8kSkGCQG6e99Q4C6TbuPQ67yx7m1QTQrcZxeUiuza
 3nuqKj7Giu6pHM5nU1MIOI/53yIeWUFceieg0NpwzN+Nan3R18CK1wpdS3bWcrFWs0T/
 SUqbU1GgM5UZ/pPur9BWqbzKaDBa6CRsLCn/Op0X1u2aB7Z0Wa94LTPIQBbc3zvgn0ed
 AexA==
X-Gm-Message-State: APjAAAX/oIOYHnPZEb76rmN4a1tfkyRLm0ESazJdS46HTC3EMMuimAF+
 PyCfBbuAVvxi220BL9XkW4P+o5fIkm0SvSNHm8Id8LczpkMWeFaKLSpQyO4sbt3qGbjyjoa571V
 nC7DfG1Ci/QDXXlsgYG+y8LY+YS0ThRNS
X-Received: by 2002:ac8:720e:: with SMTP id a14mr4772377qtp.316.1571932489840; 
 Thu, 24 Oct 2019 08:54:49 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxBNlthD7w6u5EwcLS/za3GIA5LDaEJPQnUeoaZMC5ekgSm+p+/++RGitjUZCBI1o2LpNtSJw==
X-Received: by 2002:ac8:720e:: with SMTP id a14mr4772353qtp.316.1571932489482; 
 Thu, 24 Oct 2019 08:54:49 -0700 (PDT)
Received: from turing-police.lan ([2601:5c0:c001:c9e1::359])
 by smtp.gmail.com with ESMTPSA id x133sm12693274qka.44.2019.10.24.08.54.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Oct 2019 08:54:48 -0700 (PDT)
From: Valdis Kletnieks <valdis.kletnieks@vt.edu>
X-Google-Original-From: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 12/15] staging: exfat: Clean up return codes - FFS_INVALIDFID
Date: Thu, 24 Oct 2019 11:53:23 -0400
Message-Id: <20191024155327.1095907-13-Valdis.Kletnieks@vt.edu>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191024155327.1095907-1-Valdis.Kletnieks@vt.edu>
References: <20191024155327.1095907-1-Valdis.Kletnieks@vt.edu>
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
index 3ff7293fedd2..505751bf1817 100644
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
index a0c28fd8824b..485297974ae7 100644
--- a/drivers/staging/exfat/exfat_super.c
+++ b/drivers/staging/exfat/exfat_super.c
@@ -693,7 +693,7 @@ static int ffsReadFile(struct inode *inode, struct file_id_t *fid, void *buffer,
 
 	/* check the validity of the given file id */
 	if (!fid)
-		return FFS_INVALIDFID;
+		return -EINVAL;
 
 	/* check the validity of pointer parameters */
 	if (!buffer)
@@ -823,7 +823,7 @@ static int ffsWriteFile(struct inode *inode, struct file_id_t *fid,
 
 	/* check the validity of the given file id */
 	if (!fid)
-		return FFS_INVALIDFID;
+		return -EINVAL;
 
 	/* check the validity of pointer parameters */
 	if (!buffer)
@@ -1228,7 +1228,7 @@ static int ffsMoveFile(struct inode *old_parent_inode, struct file_id_t *fid,
 
 	/* check the validity of the given file id */
 	if (!fid)
-		return FFS_INVALIDFID;
+		return -EINVAL;
 
 	/* check the validity of pointer parameters */
 	if (!new_path || (*new_path == '\0'))
@@ -1349,7 +1349,7 @@ static int ffsRemoveFile(struct inode *inode, struct file_id_t *fid)
 
 	/* check the validity of the given file id */
 	if (!fid)
-		return FFS_INVALIDFID;
+		return -EINVAL;
 
 	/* acquire the lock for file system critical section */
 	down(&p_fs->v_sem);
@@ -2136,7 +2136,7 @@ static int ffsRemoveDir(struct inode *inode, struct file_id_t *fid)
 
 	/* check the validity of the given file id */
 	if (!fid)
-		return FFS_INVALIDFID;
+		return -EINVAL;
 
 	dir.dir = fid->dir.dir;
 	dir.size = fid->dir.size;
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

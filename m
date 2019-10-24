Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C0E05E370F
	for <lists+driverdev-devel@lfdr.de>; Thu, 24 Oct 2019 17:54:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DD22322FB9;
	Thu, 24 Oct 2019 15:54:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6xZNHpXPSBjk; Thu, 24 Oct 2019 15:54:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4BA0821567;
	Thu, 24 Oct 2019 15:54:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B52341BF297
 for <devel@linuxdriverproject.org>; Thu, 24 Oct 2019 15:54:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B2225882F8
 for <devel@linuxdriverproject.org>; Thu, 24 Oct 2019 15:54:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vSzLE+qwPJVi for <devel@linuxdriverproject.org>;
 Thu, 24 Oct 2019 15:54:13 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from omr2.cc.vt.edu (outbound.smtp.vt.edu [198.82.183.121])
 by hemlock.osuosl.org (Postfix) with ESMTPS id F3723882F3
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 15:54:12 +0000 (UTC)
Received: from mr1.cc.vt.edu (mr1.cc.ipv6.vt.edu
 [IPv6:2607:b400:92:8300:0:31:1732:8aa4])
 by omr2.cc.vt.edu (8.14.4/8.14.4) with ESMTP id x9OFsBEe026624
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 11:54:11 -0400
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199])
 by mr1.cc.vt.edu (8.14.7/8.14.7) with ESMTP id x9OFs6w5022746
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 11:54:11 -0400
Received: by mail-qk1-f199.google.com with SMTP id o184so2142050qke.0
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 08:54:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=3IhcIWhcLHyE2F3fnkVjEngCjGh0YImaBO6o0ZZAEbo=;
 b=k7Q/EP8yItR0oJf6sPUB6iKnk+HNvSDmf2Be+7WaI3MNdgwk4jXzblJs1WuhN+A/Ew
 fIA+iKhlKixpQFrjbaLsWiokXfE2MWsYPz3gVhdYpxAciHSBx5Xl6A+2eEOGzyMVUIfx
 n/sDn7sVaieQdPNEyIYyv7NQ67/Wpm9rEu1CRn+yYnvRLcUfnAH/9EWPtdyNL1r8NwwD
 VjIqE6w3yCN/lRD6Wn9fV27zU29cxucnPZ7k1L4DyQWR60m/jvC4ERMy7iZXKjGNUk69
 1N245hRq0vhjVbq0fS5dc+VoC2aR80wqjG7/7KtSETg3viv6+wajOfl1ecNxsnrJ0cqu
 pcgQ==
X-Gm-Message-State: APjAAAWNm0M6cK5GsBU04csXk0yjQBcsC1kv+yqD0sGVZpqveAALIf/B
 xi/zB3na2kRyjBq6vW3tlxCeOQ/+NGHyKFQlTQ4eTRFl21RCOBJf+XNI30q1S0utHMbCXwn6lJg
 BIpRX+EHcB6vJ6j9RxSsOisLCVwfLY5hu
X-Received: by 2002:ac8:29a5:: with SMTP id 34mr4805487qts.56.1571932446578;
 Thu, 24 Oct 2019 08:54:06 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwAI1z9zAUExWF3+sgx/j9IB7U3ETV+dIINDgdeUTKX2tzo6cDj3OUk321lOKMWSA6TZLpYgA==
X-Received: by 2002:ac8:29a5:: with SMTP id 34mr4805446qts.56.1571932446273;
 Thu, 24 Oct 2019 08:54:06 -0700 (PDT)
Received: from turing-police.lan ([2601:5c0:c001:c9e1::359])
 by smtp.gmail.com with ESMTPSA id x133sm12693274qka.44.2019.10.24.08.54.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Oct 2019 08:54:05 -0700 (PDT)
From: Valdis Kletnieks <valdis.kletnieks@vt.edu>
X-Google-Original-From: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 02/15] staging: exfat: Clean up return codes - FFS_NOTFOUND
Date: Thu, 24 Oct 2019 11:53:13 -0400
Message-Id: <20191024155327.1095907-3-Valdis.Kletnieks@vt.edu>
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

Convert FFS_NOTFOUND to -ENOENT

Signed-off-by: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>
---
 drivers/staging/exfat/exfat.h       | 1 -
 drivers/staging/exfat/exfat_super.c | 6 +++---
 2 files changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
index 4aca4ae44a98..1d82de4e1a5c 100644
--- a/drivers/staging/exfat/exfat.h
+++ b/drivers/staging/exfat/exfat.h
@@ -216,7 +216,6 @@ static inline u16 get_row_index(u16 i)
 #define FFS_SEMAPHOREERR        6
 #define FFS_INVALIDPATH         7
 #define FFS_INVALIDFID          8
-#define FFS_NOTFOUND            9
 #define FFS_FILEEXIST           10
 #define FFS_PERMISSIONERR       11
 #define FFS_NOTOPENED           12
diff --git a/drivers/staging/exfat/exfat_super.c b/drivers/staging/exfat/exfat_super.c
index 273fe2310e76..50fc097ded69 100644
--- a/drivers/staging/exfat/exfat_super.c
+++ b/drivers/staging/exfat/exfat_super.c
@@ -572,7 +572,7 @@ static int ffsLookupFile(struct inode *inode, char *path, struct file_id_t *fid)
 	dentry = p_fs->fs_func->find_dir_entry(sb, &dir, &uni_name, num_entries,
 					       &dos_name, TYPE_ALL);
 	if (dentry < -1) {
-		ret = FFS_NOTFOUND;
+		ret = -ENOENT;
 		goto out;
 	}
 
@@ -2695,7 +2695,7 @@ static int exfat_rmdir(struct inode *dir, struct dentry *dentry)
 			err = -EINVAL;
 		else if (err == FFS_FILEEXIST)
 			err = -ENOTEMPTY;
-		else if (err == FFS_NOTFOUND)
+		else if (err == -ENOENT)
 			err = -ENOENT;
 		else if (err == FFS_DIRBUSY)
 			err = -EBUSY;
@@ -2752,7 +2752,7 @@ static int exfat_rename(struct inode *old_dir, struct dentry *old_dentry,
 			err = -EINVAL;
 		else if (err == FFS_FILEEXIST)
 			err = -EEXIST;
-		else if (err == FFS_NOTFOUND)
+		else if (err == -ENOENT)
 			err = -ENOENT;
 		else if (err == -ENOSPC)
 			err = -ENOSPC;
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

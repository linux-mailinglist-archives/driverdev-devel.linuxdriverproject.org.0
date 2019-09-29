Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 16226C15DF
	for <lists+driverdev-devel@lfdr.de>; Sun, 29 Sep 2019 16:53:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id AE8B120521;
	Sun, 29 Sep 2019 14:53:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AMjLwtREBe4r; Sun, 29 Sep 2019 14:52:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7D1BB2050B;
	Sun, 29 Sep 2019 14:52:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DD0601BF35F
 for <devel@linuxdriverproject.org>; Sun, 29 Sep 2019 14:52:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D61058788D
 for <devel@linuxdriverproject.org>; Sun, 29 Sep 2019 14:52:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ux+kKL8zTdm4 for <devel@linuxdriverproject.org>;
 Sun, 29 Sep 2019 14:52:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com
 [209.85.210.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3D18C87852
 for <devel@driverdev.osuosl.org>; Sun, 29 Sep 2019 14:52:50 +0000 (UTC)
Received: by mail-ot1-f68.google.com with SMTP id s22so6196889otr.6
 for <devel@driverdev.osuosl.org>; Sun, 29 Sep 2019 07:52:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TuQBzokrIQjU04hS9z9tpm+3owsaSXEdS+yrcXoFd0k=;
 b=nbf/w4wRM+AUHtVnX5T4/p8oS4rU/12e3IB5Booi+KHT1DHxPRxm49Uf2Es2keN5NL
 vNhZbqWu8s1lITAh7svneOEag91n1p77YSHe+nQ66K+FnRpY8ucQ0Hy9D6uS9BRcfxhI
 pbnhTNtGOmUcbtokTgGXy0vmfM6t4NliIWyEiwKiAL+TF/iwKQGe3ZAcOurdiS3pO5NT
 cfy30sApywr9+SMAu+ULSaLvgGuQoaWm40VC3KWboqS3tcwZaUKEv+CzvW82F8Dmyy0r
 xbxSmduSme/48raCnZknIamEwiHRQ3QCrhbH2pozpAaatUPHmW73hDxwvCkx8RVI33TU
 C5QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TuQBzokrIQjU04hS9z9tpm+3owsaSXEdS+yrcXoFd0k=;
 b=CLlYm9qthMtfc3T8m3mI4NnAsdgV8kJUVPOue+fMqI4BvOjmTq8JZXA5gCIBsIGr9D
 ZkZOMqAxI0wVIaon8xVhPT30tAkH45Hgq3Q5cbcFm8gHwRDKLTIzsB6HCMTbgr+iWkrj
 dfkUWwwE9+NgqqoXWV1Kwyqh8kH8NoyKOxk2ywd6ImdXAVB0MtLcb9McVhoTXxENp79T
 pGjVxGvexJTh6wUDxyEuxNFIxC2gEEjoN4Ru3SN8w1XRDxRStJCDEFCfSHcMfocESZZU
 f5tMbw0TRpdqAH6+C+a9r63uf8rFdoHdlEKHrLLGy39gxZCD4TO33ft4Phoo6I0+Wnhf
 HIuw==
X-Gm-Message-State: APjAAAV9n33F+Tebon78mJFhVgczVH06YrnQEpkdFiqUdKsad9SvLCio
 fZnxYIJb5DaIWNc45azQD7Q=
X-Google-Smtp-Source: APXvYqyXqq/uFbrm4KBpZZUbvFWrHm0lufOMPPXQ/0zyWXyjsLS8BJjqtwdz4q/8SOuwo6iu9EVVwg==
X-Received: by 2002:a9d:6e8f:: with SMTP id a15mr10528237otr.306.1569768769422; 
 Sun, 29 Sep 2019 07:52:49 -0700 (PDT)
Received: from localhost (ip72-210-101-152.tu.ok.cox.net. [72.210.101.152])
 by smtp.gmail.com with ESMTPSA id h32sm2927106otb.46.2019.09.29.07.52.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 29 Sep 2019 07:52:49 -0700 (PDT)
From: Jesse Barton <jessebarton95@gmail.com>
To: valdis.kletnieks@vt.edu
Subject: [PATCH 3/3] Staging: exfat: exfat_super.c Fixed coding style issues.
Date: Sun, 29 Sep 2019 09:52:45 -0500
Message-Id: <20190929145245.38816-1-jessebarton95@gmail.com>
X-Mailer: git-send-email 2.23.0
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, Jesse Barton <jessebarton95@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Removed function argument wrapping to new line.


Signed-off-by: Jesse Barton <jessebarton95@gmail.com>
---
 drivers/staging/exfat/exfat_super.c | 29 +++++++++--------------------
 1 file changed, 9 insertions(+), 20 deletions(-)

diff --git a/drivers/staging/exfat/exfat_super.c b/drivers/staging/exfat/exfat_super.c
index 3c7e2b7c2195..b9656ec06144 100644
--- a/drivers/staging/exfat/exfat_super.c
+++ b/drivers/staging/exfat/exfat_super.c
@@ -640,8 +640,7 @@ static int ffs_lookup_file(struct inode *inode, char *path, struct file_id_t *fi
 	return ret;
 }
 
-static int ffs_create_file(struct inode *inode, char *path, u8 mode,
-			 struct file_id_t *fid)
+static int ffs_create_file(struct inode *inode, char *path, u8 mode, struct file_id_t *fid)
 {
 	struct chain_t dir;
 	struct uni_name_t uni_name;
@@ -681,8 +680,7 @@ static int ffs_create_file(struct inode *inode, char *path, u8 mode,
 	return ret;
 }
 
-static int ffs_read_file(struct inode *inode, struct file_id_t *fid, void *buffer,
-		       u64 count, u64 *rcount)
+static int ffs_read_file(struct inode *inode, struct file_id_t *fid, void *buffer, u64 count, u64 *rcount)
 {
 	s32 offset, sec_offset, clu_offset;
 	u32 clu;
@@ -805,8 +803,7 @@ static int ffs_read_file(struct inode *inode, struct file_id_t *fid, void *buffe
 	return ret;
 }
 
-static int ffs_write_file(struct inode *inode, struct file_id_t *fid,
-			void *buffer, u64 count, u64 *wcount)
+static int ffs_write_file(struct inode *inode, struct file_id_t *fid, void *buffer, u64 count, u64 *wcount)
 {
 	bool modified = false;
 	s32 offset, sec_offset, clu_offset;
@@ -1212,8 +1209,7 @@ static void update_parent_info(struct file_id_t *fid,
 	}
 }
 
-static int ffs_move_file(struct inode *old_parent_inode, struct file_id_t *fid,
-		       struct inode *new_parent_inode, struct dentry *new_dentry)
+static int ffs_move_file(struct inode *old_parent_inode, struct file_id_t *fid, struct inode *new_parent_inode, struct dentry *new_dentry)
 {
 	s32 ret;
 	s32 dentry;
@@ -2061,9 +2057,7 @@ static int ffs_read_dir(struct inode *inode, struct dir_entry_t *dir_entry)
 			fs_func->get_uni_name_from_ext_entry(sb, &dir, dentry,
 							     uni_name.name);
 			if (*uni_name.name == 0x0 && p_fs->vol_type != EXFAT)
-				get_uni_name_from_dos_entry(sb,
-						(struct dos_dentry_t *)ep,
-						&uni_name, 0x1);
+				get_uni_name_from_dos_entry(sb, (struct dos_dentry_t *)ep, &uni_name, 0x1);
 			nls_uniname_to_cstring(sb, dir_entry->Name, &uni_name);
 			buf_unlock(sb, sector);
 
@@ -2074,11 +2068,8 @@ static int ffs_read_dir(struct inode *inode, struct dir_entry_t *dir_entry)
 					goto out;
 				}
 			} else {
-				get_uni_name_from_dos_entry(sb,
-						(struct dos_dentry_t *)ep,
-						&uni_name, 0x0);
-				nls_uniname_to_cstring(sb, dir_entry->ShortName,
-						       &uni_name);
+				get_uni_name_from_dos_entry(sb, (struct dos_dentry_t *)ep, &uni_name, 0x0);
+				nls_uniname_to_cstring(sb, dir_entry->ShortName, &uni_name);
 			}
 
 			dir_entry->Size = fs_func->get_entry_size(ep);
@@ -2460,8 +2451,7 @@ static struct dentry *exfat_lookup(struct inode *dir, struct dentry *dentry,
 			err = -ENOMEM;
 			goto error;
 		}
-		ffs_read_file(dir, &fid, EXFAT_I(inode)->target,
-			    i_size_read(inode), &ret);
+		ffs_read_file(dir, &fid, EXFAT_I(inode)->target, i_size_read(inode), &ret);
 		*(EXFAT_I(inode)->target + i_size_read(inode)) = '\0';
 	}
 
@@ -2748,8 +2738,7 @@ static int exfat_rename(struct inode *old_dir, struct dentry *old_dentry,
 
 	EXFAT_I(old_inode)->fid.size = i_size_read(old_inode);
 
-	err = ffs_move_file(old_dir, &(EXFAT_I(old_inode)->fid), new_dir,
-			  new_dentry);
+	err = ffs_move_file(old_dir, &(EXFAT_I(old_inode)->fid), new_dir, new_dentry);
 	if (err) {
 		if (err == FFS_PERMISSIONERR)
 			err = -EPERM;
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

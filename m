Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B287EA3486
	for <lists+driverdev-devel@lfdr.de>; Fri, 30 Aug 2019 11:56:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C630386A07;
	Fri, 30 Aug 2019 09:56:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BwhDpCxB35Op; Fri, 30 Aug 2019 09:56:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4977E85A58;
	Fri, 30 Aug 2019 09:56:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9B3061BF369
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 09:56:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9834688020
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 09:56:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K4hc+oo+s6We for <devel@linuxdriverproject.org>;
 Fri, 30 Aug 2019 09:56:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3A7D587FF1
 for <devel@driverdev.osuosl.org>; Fri, 30 Aug 2019 09:56:46 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id w10so3301182pgj.7
 for <devel@driverdev.osuosl.org>; Fri, 30 Aug 2019 02:56:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=6/TpWOxycK339vhmQQxRey5svz2q6FKJZFsDs0FbtbE=;
 b=lSZRzawc9YXdT75P8dh7crJ6Z47mml87kaxgsVa64YFWd2Uhhe8kSnSE4z9mF2UFXW
 uIh1gKPpxZE8J9Af9gNiBbDgRHFRTR0g/WZt1Lz8kGYCYyMob1EzLLZ/bO66pTjgeovC
 lHw1tjwQWCfullMi7Ue5yX4s9dfhj2C+WnGejuaOM1DEmBp/IS0Z/059bugWFHD4dMZU
 LFm5+e6DnovFNSgtO7TzJHsEaQmhLCsswB++qFqgavGXIrf817mFaGpK/BnokUBB4Kyt
 0iaBbeO9X1GVqCXKOkQAj2ImIPRzBgcuQxq70OM3B8NugNYCPbXHKkHHFbIq3PCwat9R
 Apdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=6/TpWOxycK339vhmQQxRey5svz2q6FKJZFsDs0FbtbE=;
 b=mTtT69onQKS99eATDS05YCj5WOMFKKkpHHCtHK9d6wtXdfJ/PNv7JDGeU2JF7XuD5A
 ATM2s330bmZzjI6QgEEiEro2YwNPbRX9o7g+IYppQzJ2xMQPAJEemERZGTx6SROoLKtW
 SB0sSahM0e2OLOON4xCGPTnQYdCVvJjdqOdlBaF7RVoMJkKNbaH/5h/8LZkpENNClbPV
 jbjxHu9kGyaPMOphg/QlKU7hjv/KZlt1LcVY7wYLpBBmnkMXcbfr586zLcCpRyyOaG/Q
 FP4+2mQRHagaqaMWjOcsHUz4jzT8FtHLSCEhOmr0Z4jDHnyxV0nyHKgd/yb+LMdEEn/c
 vHKw==
X-Gm-Message-State: APjAAAXUVjAquWcGrpXqZvVsGVFaNiVgUemEcU8jvIYOMhVJacES+XyS
 4JYxQyYEJRApd5uHPmGqcC2dnHW/6KLx1g==
X-Google-Smtp-Source: APXvYqwCNbBxQFvSYtI71czk/W0eMQLf6UKu4OCvs/HJ2vx4FWUDNfeYaz9WrHo8YM19hDXUAPPJ0g==
X-Received: by 2002:aa7:8a47:: with SMTP id n7mr17898071pfa.182.1567159005718; 
 Fri, 30 Aug 2019 02:56:45 -0700 (PDT)
Received: from localhost.localdomain ([42.107.64.5])
 by smtp.gmail.com with ESMTPSA id o3sm19501196pje.1.2019.08.30.02.56.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 30 Aug 2019 02:56:44 -0700 (PDT)
From: Pratik Shinde <pratikshinde320@gmail.com>
To: linux-erofs@lists.ozlabs.org,
	gaoxiang25@huawei.com,
	yuchao0@huawei.com
Subject: [PATCH] erofs: using switch-case while checking the inode type.
Date: Fri, 30 Aug 2019 15:26:15 +0530
Message-Id: <20190830095615.10995-1-pratikshinde320@gmail.com>
X-Mailer: git-send-email 2.9.3
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
 Pratik Shinde <pratikshinde320@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

while filling the linux inode, using switch-case statement to check
the type of inode.
switch-case statement looks more clean here.

Signed-off-by: Pratik Shinde <pratikshinde320@gmail.com>
---
 fs/erofs/inode.c | 18 ++++++++++++------
 1 file changed, 12 insertions(+), 6 deletions(-)

diff --git a/fs/erofs/inode.c b/fs/erofs/inode.c
index 80f4fe9..6336cc1 100644
--- a/fs/erofs/inode.c
+++ b/fs/erofs/inode.c
@@ -190,22 +190,28 @@ static int fill_inode(struct inode *inode, int isdir)
 	err = read_inode(inode, data + ofs);
 	if (!err) {
 		/* setup the new inode */
-		if (S_ISREG(inode->i_mode)) {
+		switch (inode->i_mode & S_IFMT) {
+		case S_IFREG:
 			inode->i_op = &erofs_generic_iops;
 			inode->i_fop = &generic_ro_fops;
-		} else if (S_ISDIR(inode->i_mode)) {
+			break;
+		case S_IFDIR:
 			inode->i_op = &erofs_dir_iops;
 			inode->i_fop = &erofs_dir_fops;
-		} else if (S_ISLNK(inode->i_mode)) {
+			break;
+		case S_IFLNK:
 			/* by default, page_get_link is used for symlink */
 			inode->i_op = &erofs_symlink_iops;
 			inode_nohighmem(inode);
-		} else if (S_ISCHR(inode->i_mode) || S_ISBLK(inode->i_mode) ||
-			S_ISFIFO(inode->i_mode) || S_ISSOCK(inode->i_mode)) {
+			break;
+		case S_IFCHR:
+		case S_IFBLK:
+		case S_IFIFO:
+		case S_IFSOCK:
 			inode->i_op = &erofs_generic_iops;
 			init_special_inode(inode, inode->i_mode, inode->i_rdev);
 			goto out_unlock;
-		} else {
+		default:
 			err = -EFSCORRUPTED;
 			goto out_unlock;
 		}
-- 
2.9.3

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

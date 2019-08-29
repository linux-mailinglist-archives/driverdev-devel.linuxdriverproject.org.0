Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ED1BA1AEB
	for <lists+driverdev-devel@lfdr.de>; Thu, 29 Aug 2019 15:08:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1D35188469;
	Thu, 29 Aug 2019 13:08:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7Kf3x0AVG1Ru; Thu, 29 Aug 2019 13:08:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id AAD848843A;
	Thu, 29 Aug 2019 13:08:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4F2541BF299
 for <devel@linuxdriverproject.org>; Thu, 29 Aug 2019 13:08:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4AC048841A
 for <devel@linuxdriverproject.org>; Thu, 29 Aug 2019 13:08:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xK5urjBCpoC5 for <devel@linuxdriverproject.org>;
 Thu, 29 Aug 2019 13:08:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id CC760882DD
 for <devel@driverdev.osuosl.org>; Thu, 29 Aug 2019 13:08:28 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id x15so1561730pgg.8
 for <devel@driverdev.osuosl.org>; Thu, 29 Aug 2019 06:08:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=j1UY67r1uWWM2jMI80CXLCxfjYlAolrqvseIHICgMCU=;
 b=BWnodVrCF0swc449Dmw8ldMFD2TnZYq8StkgQjfdNr/lQYHJnXC7jZQey7C02bxi+a
 kAFcdxUWis2WTO4uOcIzcih3dNkcfDOHtPgPpfE8+yBcrQdyvf+on0BXpGNAGTCwQx8P
 orZ9mZhUVUt3e5nk67YpsSZHvicralJu/Q9Lg+7qhANf0tTdBdbRcZpD+dIyBSGfFEGF
 HWH6XfC/ILEh9RFOFQVgdbdVyMRil9fiKCOOS8oB9D/5epNgvN/e50qlG6aXzMVYHQJw
 DWbj7/SIVzng3rP/jr244JXT3tXU3GZdLkT6drCTx3dbzdTrpPhPpM/mzI3Sq4xBDf/N
 kVhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=j1UY67r1uWWM2jMI80CXLCxfjYlAolrqvseIHICgMCU=;
 b=qwso8eK+YKhkYCWBGLLBP7KOzso4G7U8DYMl4F1BGJY1TbUKEjZdIybFVXNyH63FOV
 f7P0iF41EF4/l/ulym0jaI/+TIv549yMB+iZy1ESR+O8BVOHQksd0dLg3jwScoVyKNNz
 o+pysR0AEgFFhLRaSQjWJv0obEvACEHsrJ6vlexDqwpOuxKP7YpXAmMwcgJ5VZU5Td1G
 mng6IB3EjCtKbRbT4BfWnAwVZy29dT3tu/9xMOYrRsKdx/M50uJ420G/zVlKLbKQMcLu
 ihH4FIs05GqXjkrrmQrt/RMuBMl+0fQLVboVlYB/TXIgQMyAY3KWGsoRk23nhDrArIHR
 m07g==
X-Gm-Message-State: APjAAAX8u6Ehip23xhSauUAmtDRmkx4SESlJQ3e0rlgpfjS5wTzYTFzA
 XorwKcNuCJRPyzDHyk0nMCY=
X-Google-Smtp-Source: APXvYqwTXhdtGbYjcmybp+U8ZqNsq1OuK1IAinEBhCF1P1yDqg1+tfFqjmzA6pa680VSpaQJw68t+Q==
X-Received: by 2002:a63:9d8a:: with SMTP id i132mr8266283pgd.410.1567084108145; 
 Thu, 29 Aug 2019 06:08:28 -0700 (PDT)
Received: from localhost.localdomain ([157.33.15.68])
 by smtp.gmail.com with ESMTPSA id o4sm9047219pje.28.2019.08.29.06.08.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 29 Aug 2019 06:08:27 -0700 (PDT)
From: Pratik Shinde <pratikshinde320@gmail.com>
To: linux-erofs@lists.ozlabs.org,
	gaoxiang25@huawei.com,
	yuchao0@huawei.com
Subject: [PATCH] staging: erofs: using switch-case while checking the inode
 type.
Date: Thu, 29 Aug 2019 18:38:13 +0530
Message-Id: <20190829130813.11721-1-pratikshinde320@gmail.com>
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
switch-case statement looks more clean.

Signed-off-by: Pratik Shinde <pratikshinde320@gmail.com>
---
 drivers/staging/erofs/inode.c | 18 ++++++++++++------
 1 file changed, 12 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/erofs/inode.c b/drivers/staging/erofs/inode.c
index 4c3d8bf..2d2d545 100644
--- a/drivers/staging/erofs/inode.c
+++ b/drivers/staging/erofs/inode.c
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
 			err = -EIO;
 			goto out_unlock;
 		}
-- 
2.9.3

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

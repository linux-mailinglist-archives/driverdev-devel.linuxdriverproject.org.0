Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 383548C233
	for <lists+driverdev-devel@lfdr.de>; Tue, 13 Aug 2019 22:39:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7F86887D5E;
	Tue, 13 Aug 2019 20:39:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8HcbAV6CrZ9Q; Tue, 13 Aug 2019 20:39:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id AA28F87BD3;
	Tue, 13 Aug 2019 20:38:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 92A191BF3C3
 for <devel@linuxdriverproject.org>; Tue, 13 Aug 2019 20:38:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8F619203E2
 for <devel@linuxdriverproject.org>; Tue, 13 Aug 2019 20:38:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xxQ4KCavFlBX for <devel@linuxdriverproject.org>;
 Tue, 13 Aug 2019 20:38:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 2155F20382
 for <devel@driverdev.osuosl.org>; Tue, 13 Aug 2019 20:38:56 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id m9so49580205pls.8
 for <devel@driverdev.osuosl.org>; Tue, 13 Aug 2019 13:38:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=hwvRVADKtc6Sj8Y/Ad99QEgzGhBVmriNcJ7rbr0fKVI=;
 b=iEC8laF3x+qgX1ohOCNpcpJIcSnP9mLcGmISbHdt0P8/+KXpP/D41yVUkMYzVDm4J1
 paCWz3rbmRXsWxYvST6YCi4f5Rvnk6HayNapUN7XZA5/U7dIvFz5P83r1VXgiJDvZqeb
 V9xKYAnbKTpMxwxK2dc8cEyyLGW8OKmY2OUsPkgX0AqwY2D0lOdJqzG6H9Ud6NgrP/NZ
 MuFsUUbXKc3YNWkBaJPnajzYRh6BpNAL68MPubolClGDhxEr6jGNzblN0Heyhfbg9wQc
 MpjF7f4CAFdNmNJGOjJ1aAO6hxGqUVMEl58H7/FQWQbpkHSXV/bii/G9btPTaWoDOEp1
 lzgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=hwvRVADKtc6Sj8Y/Ad99QEgzGhBVmriNcJ7rbr0fKVI=;
 b=NRTRrNRvKU2T0AECLlEtpTsvH/xn5Sf/qxDBmFDoLWhtlDeFY/+titvQD8AzUlHDKs
 3BotwSWRY4RFQw3lrclS3wlNuyaApTIOhQJCMGTacXcBz5a9pvpP2Klib9EDx0IQAZNs
 3phlukVt5rG3hgm3fje6xm2kaNZjPBfeRWUP2fZj6o/Di0A1AbfmdjXpcZrgdgA3MiYl
 TlclE1HclpFWJqbCyS4QORDZ00PwYut+5gqY2Ap/EPmIFipZJJpTYtFgX65tfSyKK5RM
 SpPTtNzkOD+n5Of+WS9s7PTIpGCU/52HQOkjltxqVRHUZbU0hX6OVBF27/GN8uaUtU1q
 sLkg==
X-Gm-Message-State: APjAAAXOZ3v9L7RZEdd1P2BiXocoeW/Hb+7Ha0xWTTbpSktc17Tswgh9
 X2g3eTVmBpBJrpm+f6J7RMw=
X-Google-Smtp-Source: APXvYqzyp+JWU8mM9jJ+W9dSqpzHTVp2JgnXsOkgKW1ZAAWSP+MgmKQ+0e2ix7K0XbXXyMfnFiStqQ==
X-Received: by 2002:a17:902:690b:: with SMTP id
 j11mr3937576plk.35.1565728734886; 
 Tue, 13 Aug 2019 13:38:54 -0700 (PDT)
Received: from localhost.localdomain ([103.97.240.130])
 by smtp.gmail.com with ESMTPSA id e7sm15095721pfn.72.2019.08.13.13.38.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 13 Aug 2019 13:38:53 -0700 (PDT)
From: Pratik Shinde <pratikshinde320@gmail.com>
To: linux-erofs@lists.ozlabs.org,
	gaoxiang25@huawei.com,
	yuchao0@huawei.com
Subject: [PATCH] staging: erofs: removing an extra call to iloc() in
 fill_inode()
Date: Wed, 14 Aug 2019 02:08:40 +0530
Message-Id: <20190813203840.13782-1-pratikshinde320@gmail.com>
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

in fill_inode() we call iloc() twice.Avoiding the extra call by
storing the result.

Signed-off-by: Pratik Shinde <pratikshinde320@gmail.com>
---
 drivers/staging/erofs/inode.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/erofs/inode.c b/drivers/staging/erofs/inode.c
index 4c3d8bf..d82ba6c 100644
--- a/drivers/staging/erofs/inode.c
+++ b/drivers/staging/erofs/inode.c
@@ -167,11 +167,12 @@ static int fill_inode(struct inode *inode, int isdir)
 	int err;
 	erofs_blk_t blkaddr;
 	unsigned int ofs;
+	erofs_off_t inode_loc;
 
 	trace_erofs_fill_inode(inode, isdir);
-
-	blkaddr = erofs_blknr(iloc(sbi, vi->nid));
-	ofs = erofs_blkoff(iloc(sbi, vi->nid));
+	inode_loc = iloc(sbi, vi->nid);
+	blkaddr = erofs_blknr(inode_loc);
+	ofs = erofs_blkoff(inode_loc);
 
 	debugln("%s, reading inode nid %llu at %u of blkaddr %u",
 		__func__, vi->nid, ofs, blkaddr);
-- 
2.9.3

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

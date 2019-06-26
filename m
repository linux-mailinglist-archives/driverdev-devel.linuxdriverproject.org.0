Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EC25356701
	for <lists+driverdev-devel@lfdr.de>; Wed, 26 Jun 2019 12:40:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2C78E84737;
	Wed, 26 Jun 2019 10:40:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UxLRWC25z0Wz; Wed, 26 Jun 2019 10:40:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id F33F2813F9;
	Wed, 26 Jun 2019 10:40:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D5ACA1BF3D8
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 10:39:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D1285859D1
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 10:39:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GLiw79DlEcwR for <devel@linuxdriverproject.org>;
 Wed, 26 Jun 2019 10:39:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BD73085623
 for <devel@driverdev.osuosl.org>; Wed, 26 Jun 2019 10:39:58 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id bi6so1210300plb.12
 for <devel@driverdev.osuosl.org>; Wed, 26 Jun 2019 03:39:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=MQ9/uWGOCU6xhcJrjFrAp9D/DzotiwWryJhU2sg3dXk=;
 b=jE10eCHUEAtvgZ94+vzcssYMO6mjwEBNyQyS+979T7V9H88qMRlbM80AALrr4PL7wH
 rN819o1exHNmFlXu6lKk5huqMmX25BQjPANXDQP3CqO115DTSItqtIIM+GlhUvJeJM4r
 Gh6hFKstZvm6Uq50/GjK9JmC/elmcYbePclzDX+j5AvGfUDAjt/8yL2eXwAx9St6tqQr
 gfqWMtfSZEyYrgrjqG/Mru4BLY/83hPufoyrajO724AHU9zgMjmLkdqHYvumvHTCWNKd
 vZZJwRPGkChzW6iHZvaqkeEqI88Ge6P5ak0ReP7ZL+iyU4Rt3SUsoqLxhC8HsenwNKu3
 m3Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=MQ9/uWGOCU6xhcJrjFrAp9D/DzotiwWryJhU2sg3dXk=;
 b=FcET52FUNsRss9sINQciNkXSHWtp5Lbw0YURc8VmpK+AsfdukimM/ADsQ3OXjyPDJi
 asxKlwQMNqA3MxFBnfzPnzqANMZnIYoASbVBy6+EFvXBH81jqBCQXEePdt7bnw0M/xSk
 XatcqpYUZ+n8FvuSWW9Ows0kI7ziFTSh/0RPvv8pb+gVwDVh/nHppReCdaKGN9OF9iGh
 KSBMGhdcEW7vYUvrfrk9mQQkDh4cWjlt5Xm7UtV6j4aQKENslVTNF7yAkaLRybC2p+Yx
 CEkl5a7QHdh52HrQmkcG+pTj1MRzEpXmvOLs0T9u4OaRZb92U2HIh7S1Gm+w0hYapT3C
 BrbQ==
X-Gm-Message-State: APjAAAU0MK1fgtq+Xu1TM5qxwmt1aN1kPc+k72ITsms0QOflqcBT8NG1
 0oIJRhnaEehnIOar80r92qk=
X-Google-Smtp-Source: APXvYqwu8/FNRhg68Nb2ZF2ohaD+QcYRJVvaXt1TRS6mrgnz8RwmTp+ic/QQpLHJzCrhlbheGAJdFA==
X-Received: by 2002:a17:902:246:: with SMTP id
 64mr4519837plc.311.1561545598410; 
 Wed, 26 Jun 2019 03:39:58 -0700 (PDT)
Received: from huyue2.ccdomain.com ([218.189.10.173])
 by smtp.gmail.com with ESMTPSA id x7sm18584969pfa.125.2019.06.26.03.39.55
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 26 Jun 2019 03:39:57 -0700 (PDT)
From: Yue Hu <zbestahu@gmail.com>
To: gaoxiang25@huawei.com,
	yuchao0@huawei.com,
	gregkh@linuxfoundation.org
Subject: [PATCH RESEND] staging: erofs: remove unsupported ->datamode check in
 fill_inline_data()
Date: Wed, 26 Jun 2019 18:39:36 +0800
Message-Id: <20190626103936.9064-1-zbestahu@gmail.com>
X-Mailer: git-send-email 2.17.1.windows.2
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
Cc: devel@driverdev.osuosl.org, huyue2@yulong.com, linux-erofs@lists.ozlabs.org,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Yue Hu <huyue2@yulong.com>

Already check if ->datamode is supported in read_inode(), no need to check
again in the next fill_inline_data() only called by fill_inode().

Signed-off-by: Yue Hu <huyue2@yulong.com>
Reviewed-by: Gao Xiang <gaoxiang25@huawei.com>
Reviewed-by: Chao Yu <yuchao0@huawei.com>
---
 drivers/staging/erofs/inode.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/erofs/inode.c b/drivers/staging/erofs/inode.c
index e51348f..d6e1e16 100644
--- a/drivers/staging/erofs/inode.c
+++ b/drivers/staging/erofs/inode.c
@@ -129,8 +129,6 @@ static int fill_inline_data(struct inode *inode, void *data,
 	struct erofs_sb_info *sbi = EROFS_I_SB(inode);
 	const int mode = vi->datamode;
 
-	DBG_BUGON(mode >= EROFS_INODE_LAYOUT_MAX);
-
 	/* should be inode inline C */
 	if (mode != EROFS_INODE_LAYOUT_INLINE)
 		return 0;
-- 
1.9.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CCB556751
	for <lists+driverdev-devel@lfdr.de>; Wed, 26 Jun 2019 13:00:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8E1C821543;
	Wed, 26 Jun 2019 11:00:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SOViqqbzhBzC; Wed, 26 Jun 2019 11:00:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 30DD22152A;
	Wed, 26 Jun 2019 11:00:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B33191BF3D8
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 11:00:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id AC01C84E66
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 11:00:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8nNEdgMDUxaG for <devel@linuxdriverproject.org>;
 Wed, 26 Jun 2019 11:00:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E58F881B86
 for <devel@driverdev.osuosl.org>; Wed, 26 Jun 2019 11:00:46 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id i2so1257706plt.1
 for <devel@driverdev.osuosl.org>; Wed, 26 Jun 2019 04:00:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=VdhU2ks81jo9UrjXZOm8gn8RMZx/sg7VdDnqoRepyqE=;
 b=rBDF2IbhJqsbejWYMTlxvc33psvRPXREmLlH1kdj1sffS2GEpRGBd/3KU+XhYKueKo
 X+EQyfMddlzhcC9Tl0wzQORvQ1bW66K6b0gsa9wt3R6/H1Axhm8w2kKwnFbpwFlcOdvz
 6tRlrliU4HwUEcR9KZQ09pXc+vpCSgC2wdEePTtVVRRSlKeQQ5s81RkbDssKTwnhZneg
 ct0dmSY17I3QbZ/5SUFm/H3tyoEyMLNhw2PFHI+ZNJscDX4J3xybD9YWMs9gYK+2Op7/
 en73nUmQ3xiIIGmzxayHgcccJ8POvkUb5YkUA2t14LWTKWYmjBgHKbXO17UO+1IBF+8j
 MZxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=VdhU2ks81jo9UrjXZOm8gn8RMZx/sg7VdDnqoRepyqE=;
 b=ZMM2j+mDtXhsA37arrr5ARiB4gwH3awBU6ri/YAAV6zr3To8hD/QhKSP49u/72Fn7d
 i72DBJ+D7D+FHolOu/iTT7IHbz9F63bGKIK1phA71+JtBGwQ7Rc13w2j/RdrkGvKOfkb
 v/c9tQMg2sB9REI8aSJX4Oz5xSXZZzPib9wqKxaTQqZtkIhTapUJp+cjjwqWAAemJqLa
 U/uLWPyWlLKr2YSyguROvo4ublSnuiSGj1IV3jzdGIT/4EFX7mGshfE4qPQE+auzbpM0
 mvksqk205eg3mzUb896/EkHwKe8rwrDApoJZlJH74Kwpd8cOhwc0JWjbgtblMgTQIRun
 zb2A==
X-Gm-Message-State: APjAAAUUeiDQjJJkW2GfUOF/2vUHl7QymgQI22oYxvEMAJPHjFJ4kBCF
 Q/zb442ev2wuh+KJuul+Tfg=
X-Google-Smtp-Source: APXvYqzBd85hjMi95y7wvZswP72zOfwbAYxL/u39AlDoY64MjcDYg9no5lCwuw6Hum4qX/JCV/hAtQ==
X-Received: by 2002:a17:902:542:: with SMTP id 60mr4831596plf.68.1561546846595; 
 Wed, 26 Jun 2019 04:00:46 -0700 (PDT)
Received: from huyue2.ccdomain.com ([218.189.10.173])
 by smtp.gmail.com with ESMTPSA id w187sm19008873pfb.4.2019.06.26.04.00.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 26 Jun 2019 04:00:45 -0700 (PDT)
From: Yue Hu <zbestahu@gmail.com>
To: gaoxiang25@huawei.com,
	yuchao0@huawei.com,
	gregkh@linuxfoundation.org
Subject: [PATCH RESEND v2] staging: erofs: remove unsupported ->datamode check
 in fill_inline_data()
Date: Wed, 26 Jun 2019 19:00:32 +0800
Message-Id: <20190626110032.3688-1-zbestahu@gmail.com>
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
v2: add tags.

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

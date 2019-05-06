Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D59E2148A6
	for <lists+driverdev-devel@lfdr.de>; Mon,  6 May 2019 13:01:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 559EC8683A;
	Mon,  6 May 2019 11:01:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TugJHEY8MIr0; Mon,  6 May 2019 11:01:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1354E85D5C;
	Mon,  6 May 2019 11:01:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D54BC1BF3DB
 for <devel@linuxdriverproject.org>; Mon,  6 May 2019 11:01:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D19C2858B5
 for <devel@linuxdriverproject.org>; Mon,  6 May 2019 11:01:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C9uI745HijCc for <devel@linuxdriverproject.org>;
 Mon,  6 May 2019 11:01:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7CF28854CC
 for <devel@driverdev.osuosl.org>; Mon,  6 May 2019 11:01:09 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id p6so6272078pgh.9
 for <devel@driverdev.osuosl.org>; Mon, 06 May 2019 04:01:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=lBhMQf9WfctyA18+FKpwIs/LesJY2H8xeQq9IW9wI0w=;
 b=iWAMaHP4U2dioYF5mGVHCZufaJvfUjtiHdN/f1U4fpRgcRj9pN9keXpVFb7TptS12n
 1+vGUGrsYekiPNnJGsrX6AWGfwRikgxgfyQjZqVLO2jgZ2MA+qCy47bQanuDYdi0Wz9U
 3AGNxB31pZr/Zn4R9Co3AD45CCj6UzdBL09V2pUpY2mVZHkOnaHElFWNsdaPwcidMQ+D
 l/OCfBnyyQLZKXVX6U8EpbabV66BqgvfEWHVXCPyWZGEO3h7tC+WF9M/VvV2Uws+YysM
 f3ShB1nQGt62WeWPS3QJmCgnB+WYYMgy6U28rpui4TeLoBz28tzcmJKrekj/KOXMZ1ZB
 OfVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=lBhMQf9WfctyA18+FKpwIs/LesJY2H8xeQq9IW9wI0w=;
 b=P5nIBpfZrnTEDyZrSiwivqPLnE4bbIWTr2ZYRX7tZcoNoTWDA22hsRW3Dqm5u/mPAL
 kEG+FgbvQZ43ZJPg221xuBU+XU4QDXhWZFkq8H1suOUIinCjvgS6k4P2OYpqD5Tklomu
 RIbfUQ6EnT93seRD7oQWrzAcDhJDwmX4pB3vA2pEf3uCrL1yS0DAvuL5CpsbOMiWL8Q1
 yVYFrDGMo5xJ3wPxu+8QiLApWXgs/JKh7DHfhxG9g0mjNHpHlbchZtCAAB/IrfYYXuXi
 rn9lA+KpNHYYgaxUiL+Qgadikap/tr1PNhDYI12n517D7Yp7OhZQCTRF9ULDD8fg61vS
 P8zg==
X-Gm-Message-State: APjAAAXD6MLMu+o3L5TRHC2D5wT8rxlTkg+yDv5P/4TgxNYqYI3zKk+P
 mTVYHBD+2cvHCEZ+xoT8SoI=
X-Google-Smtp-Source: APXvYqxQPly9DEyQH3VnDfF31DRjiJDOhUdkvaZytZKSORXy9HRsC5AkzfHjnho+hpTHgG/ftB1TRw==
X-Received: by 2002:a62:6fc6:: with SMTP id
 k189mr32067137pfc.154.1557140469155; 
 Mon, 06 May 2019 04:01:09 -0700 (PDT)
Received: from izt4n3nohp3b5a1z8j8uuaz.localdomain ([149.129.49.136])
 by smtp.gmail.com with ESMTPSA id h20sm22016616pfj.40.2019.05.06.04.01.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 06 May 2019 04:01:07 -0700 (PDT)
From: Chengguang Xu <cgxu519@gmail.com>
To: gaoxiang25@huawei.com,
	yuchao0@huawei.com
Subject: [PATCH] staging: erofs: set sb->s_root to NULL when failing from
 __getname()
Date: Mon,  6 May 2019 19:01:02 +0800
Message-Id: <1557140462-22578-1-git-send-email-cgxu519@gmail.com>
X-Mailer: git-send-email 1.8.3.1
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
 linux-erofs@lists.ozlabs.org, Chengguang Xu <cgxu519@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Set sb->s_root to NULL when failing from __getname(),
so that we can avoid double dput and unnecessary operations
in generic_shutdown_super().

Signed-off-by: Chengguang Xu <cgxu519@gmail.com>
---
 drivers/staging/erofs/super.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/erofs/super.c b/drivers/staging/erofs/super.c
index 15c784fba879..c8981662a49b 100644
--- a/drivers/staging/erofs/super.c
+++ b/drivers/staging/erofs/super.c
@@ -459,6 +459,7 @@ static int erofs_read_super(struct super_block *sb,
 	 */
 err_devname:
 	dput(sb->s_root);
+	sb->s_root = NULL;
 err_iget:
 #ifdef EROFS_FS_HAS_MANAGED_CACHE
 	iput(sbi->managed_cache);
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

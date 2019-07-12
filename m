Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3445F66781
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Jul 2019 09:13:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 62C8A86D73;
	Fri, 12 Jul 2019 07:13:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4wnSTa0xI-ns; Fri, 12 Jul 2019 07:13:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D57118763C;
	Fri, 12 Jul 2019 07:13:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 51F1C1BF255
 for <devel@linuxdriverproject.org>; Fri, 12 Jul 2019 07:13:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4F69A86481
 for <devel@linuxdriverproject.org>; Fri, 12 Jul 2019 07:13:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YqSmJUN2Bhua for <devel@linuxdriverproject.org>;
 Fri, 12 Jul 2019 07:13:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CBE6486403
 for <devel@driverdev.osuosl.org>; Fri, 12 Jul 2019 07:13:01 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id m30so3902728pff.8
 for <devel@driverdev.osuosl.org>; Fri, 12 Jul 2019 00:13:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=cmo1tqBeA/Sh2ClKCCO0JqdGpQ8IAK8NK0uVuzIyLd0=;
 b=DDiDxcyprjE4Ta3ztfW9tsjVQv/DEicG6Tlr0nncKQgg7hJxObowvlEhKvRearNs5h
 gTwMEe7djLb+a7fCtQZuARPC+zJS+vDRTSioHGz7CITml5bJ6BXzuC2DKoJkTfFEq406
 K6ATKZAsyYneolthA4B2I5zh25q7Q5uzNpom3Ad7TmotH5xwkT3AAAce2HJT3hsD5hsP
 2AYAmRpxBYfuCixamSHDd+ejE9KMqSLTCDy3eyFNyUNQEgmjL6OoUvbQYvU4Lc3UIEjd
 vWp7TiwC2beD+iLJRQpvA3tTkL0P/5jkxlkiSv38l1o1pzuNKzuTfTdWxxwr5hyNTZ4K
 QPiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=cmo1tqBeA/Sh2ClKCCO0JqdGpQ8IAK8NK0uVuzIyLd0=;
 b=gfASML2wFGLDVZF+lzc71AOnPin4nQURBPklANQ9oPUshZ5hUymrrW4hkffVC0wgcj
 lGZ/Mj5RGkbsDGJa7JSPLUhBVbJXMxhcEliszylBIN/VkBpDhZIGTBGjY8L9L5mqYmiO
 tW5LKA5hPNvfZ0whyRmvkroUtrs3YDiLiXN5iXHRcJteUVy23FbAi6KCtTjYPAUi7n1b
 Xe49JKNgn9ybFONMFoeAvoL0Zg4wQzcjg2cwFmpCOJd0nC6ZDzVP72TbuKW3RLhcifQw
 o9etWbJ7n/ddCT5ZcJ9mNLm8WqNSGMdoWor0sdJhoMxG+LX6Sw95BU7EguEQdv8Vh3BX
 ssVg==
X-Gm-Message-State: APjAAAVXpBQOmamssVMzXLetvrOVTyr9H37WMKzJOLJ2VY/+gGdFTQmt
 DFvJS/Icy2Uw1dHkNiLx/3o=
X-Google-Smtp-Source: APXvYqyyxt02F7w2fO44SgdWkmlW43gvemD8er2ox2KKleaFdRacxH9sTUY3sUMYU/OElvDtowYPRA==
X-Received: by 2002:a17:90a:de02:: with SMTP id
 m2mr9851109pjv.18.1562915581568; 
 Fri, 12 Jul 2019 00:13:01 -0700 (PDT)
Received: from localhost.localdomain ([110.227.64.207])
 by smtp.gmail.com with ESMTPSA id u69sm12391982pgu.77.2019.07.12.00.12.58
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 12 Jul 2019 00:13:01 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gaoxiang25@huawei.com, yuchao0@huawei.com, gregkh@linuxfoundation.org,
 linux-erofs@lists.ozlabs.org, devel@driverdev.osuosl.org
Subject: [PATCH] staging: erofs: Remove function erofs_kill_sb()
Date: Fri, 12 Jul 2019 12:42:47 +0530
Message-Id: <20190712071247.2357-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove function erofs_kill_sb as all it does is call kill_block_super.
Modify references to the former to point to the latter.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/erofs/super.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/staging/erofs/super.c b/drivers/staging/erofs/super.c
index 54494412eba4..3e2a65ba1945 100644
--- a/drivers/staging/erofs/super.c
+++ b/drivers/staging/erofs/super.c
@@ -554,16 +554,11 @@ static struct dentry *erofs_mount(
 		&priv, erofs_fill_super);
 }
 
-static void erofs_kill_sb(struct super_block *sb)
-{
-	kill_block_super(sb);
-}
-
 static struct file_system_type erofs_fs_type = {
 	.owner          = THIS_MODULE,
 	.name           = "erofs",
 	.mount          = erofs_mount,
-	.kill_sb        = erofs_kill_sb,
+	.kill_sb        = kill_block_super,
 	.fs_flags       = FS_REQUIRES_DEV,
 };
 MODULE_ALIAS_FS("erofs");
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAC7DEB05B
	for <lists+driverdev-devel@lfdr.de>; Thu, 31 Oct 2019 13:32:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4456A880F4;
	Thu, 31 Oct 2019 12:32:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dLZDiCiCQhvj; Thu, 31 Oct 2019 12:32:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 893B188091;
	Thu, 31 Oct 2019 12:32:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6D9691BF2EB
 for <devel@linuxdriverproject.org>; Thu, 31 Oct 2019 12:32:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 68F848771B
 for <devel@linuxdriverproject.org>; Thu, 31 Oct 2019 12:32:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yPT-bgNe4IPc for <devel@linuxdriverproject.org>;
 Thu, 31 Oct 2019 12:32:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 961ED876C4
 for <devel@driverdev.osuosl.org>; Thu, 31 Oct 2019 12:32:07 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id z19so1557151wmk.3
 for <devel@driverdev.osuosl.org>; Thu, 31 Oct 2019 05:32:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=iiHzOSGjJQCbzAPqjvJdPdeBjEgCItMWMSTqs2n37sc=;
 b=erYhaPxSWRVfhrNNnqIaUT+g+dWRZde7NT4EH875tOgjEHGM+u5+tqhAjgf295UGov
 1ksylWK8LlX1QRbjOZVCnx1TX++ahBHiiIbfbSvfYQeK1BDVBmVyIV2a6Ko1gzNy2VAX
 c3UkMCiAw66KI62+j2mpcJtBly0qQnYHTWGYciLEMO6gkzkTk83YmzfFiMWbSFgD4ZET
 HbJL8tRNXynDclIYnori4Hh0M7UknCQ/RLs2q4AyO/8bh9AAZaZh84kWjTXKvFJr9D9B
 YrNv469waBvGh+26F/b/PlIeOttNJOE9U1lBrtFdSgSoJJfQg82quPr28iNZvNGzXxAS
 C7cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=iiHzOSGjJQCbzAPqjvJdPdeBjEgCItMWMSTqs2n37sc=;
 b=ev1wXZm5135nVftImQVO7x1hbtnYP7T9Nd6wX1BStoXExsAf+41Gg7i2F0lOJdET2M
 QeaS5xs2nYfhnhP3LRJ/xv3YWYU6/pqAZ3mTcAZIzanmqT2QBJt0Tj9N72DQCRepz6l4
 Z7YCHBdMBCVbCLQkMuPZsloUvibsF63QMWjbOrwT+ZHDpkMO8LZrpu+noTaLcou2kDuK
 h1CMD9HiHM3198P0vjpsAhArepH8YfB57NU+xaVDdaCL1uGqNdFSSV6K+NI1300ozaAG
 kQSA2N8gDm2JbIn2u6L5326PP4aTtc+XkhhiS9WErhAuRH0+8qmAPajwMfcCG5KW88Is
 UvnQ==
X-Gm-Message-State: APjAAAWGEjKHiCae8fvYhB0B5Y8U1msQLCvw+4X5enPlnus1WPx43tlq
 ufdjKOEbP2S2ySpcn/W7AF8=
X-Google-Smtp-Source: APXvYqxkpkOYQLV30/Ff/93VXidtzTBAWFFYwx9EdAPa16xsPbMKfZ/bzVQ/qN32HUwutI0smX33OQ==
X-Received: by 2002:a1c:7305:: with SMTP id d5mr4858256wmb.84.1572525125953;
 Thu, 31 Oct 2019 05:32:05 -0700 (PDT)
Received: from localhost ([92.177.95.83])
 by smtp.gmail.com with ESMTPSA id q6sm3879229wrx.30.2019.10.31.05.32.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 31 Oct 2019 05:32:05 -0700 (PDT)
From: Roi Martin <jroi.martin@gmail.com>
To: valdis.kletnieks@vt.edu
Subject: [PATCH v2 6/6] staging: exfat: replace kmalloc with kmalloc_array
Date: Thu, 31 Oct 2019 13:31:39 +0100
Message-Id: <20191031123139.32361-1-jroi.martin@gmail.com>
X-Mailer: git-send-email 2.24.0.rc1
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
 linux-kernel@vger.kernel.org, Roi Martin <jroi.martin@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Replace expressions of the form:
	kmalloc(count * size, GFP_KERNEL);
With:
	kmalloc_array(count, size, GFP_KERNEL);

Signed-off-by: Roi Martin <jroi.martin@gmail.com>
---
v2 changes:

This patch has been rebased against the branch "staging-testing" of the
tree:

https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git

 drivers/staging/exfat/exfat_core.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/exfat/exfat_core.c b/drivers/staging/exfat/exfat_core.c
index f71235c6a338..f4f82aecc05d 100644
--- a/drivers/staging/exfat/exfat_core.c
+++ b/drivers/staging/exfat/exfat_core.c
@@ -713,8 +713,8 @@ static s32 __load_upcase_table(struct super_block *sb, sector_t sector,
 
 	u32 checksum = 0;
 
-	upcase_table = p_fs->vol_utbl = kmalloc(UTBL_COL_COUNT * sizeof(u16 *),
-						GFP_KERNEL);
+	upcase_table = kmalloc_array(UTBL_COL_COUNT, sizeof(u16 *), GFP_KERNEL);
+	p_fs->vol_utbl = upcase_table;
 	if (!upcase_table)
 		return -ENOMEM;
 	memset(upcase_table, 0, UTBL_COL_COUNT * sizeof(u16 *));
@@ -793,8 +793,8 @@ static s32 __load_default_upcase_table(struct super_block *sb)
 	u16	uni = 0;
 	u16 **upcase_table;
 
-	upcase_table = p_fs->vol_utbl = kmalloc(UTBL_COL_COUNT * sizeof(u16 *),
-						GFP_KERNEL);
+	upcase_table = kmalloc_array(UTBL_COL_COUNT, sizeof(u16 *), GFP_KERNEL);
+	p_fs->vol_utbl = upcase_table;
 	if (!upcase_table)
 		return -ENOMEM;
 	memset(upcase_table, 0, UTBL_COL_COUNT * sizeof(u16 *));
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

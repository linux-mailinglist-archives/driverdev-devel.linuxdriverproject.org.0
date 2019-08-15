Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D5CA88EB8F
	for <lists+driverdev-devel@lfdr.de>; Thu, 15 Aug 2019 14:30:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 25630877EC;
	Thu, 15 Aug 2019 12:30:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iSCGjQByqzLE; Thu, 15 Aug 2019 12:30:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0B46A8770A;
	Thu, 15 Aug 2019 12:30:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 643ED1BF34F
 for <devel@linuxdriverproject.org>; Thu, 15 Aug 2019 12:30:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 60FC78839E
 for <devel@linuxdriverproject.org>; Thu, 15 Aug 2019 12:30:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o3wz9IeEuDOS for <devel@linuxdriverproject.org>;
 Thu, 15 Aug 2019 12:30:15 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B543088398
 for <devel@driverdev.osuosl.org>; Thu, 15 Aug 2019 12:30:15 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 17CF42083B;
 Thu, 15 Aug 2019 12:30:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565872215;
 bh=fcSMZ1hJLe1SylXpsIiEI19jNgj4Ja71oWB1pvH9mE0=;
 h=From:To:Cc:Subject:Date:From;
 b=iCyeKbRHojiJhhwZiRC9bCk1k8tH4WmyxMoMLzl9zNRaKr2F33UYtutxdiliP+MtA
 SD4T8YiQs4wtpIigV47cAxXUwpy9ltZTfqtJoxElPIYuLiYq4AFgEhmZRqh4d9l7Oy
 qkINkjsbMNu0GR9YZnBO//iSzWFtTfRpxfTY6BNM=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: devel@driverdev.osuosl.org
Subject: [PATCH] staging: sm750fb: fix odd license text
Date: Thu, 15 Aug 2019 14:30:09 +0200
Message-Id: <20190815123009.16499-1-gregkh@linuxfoundation.org>
X-Mailer: git-send-email 2.22.1
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-fbdev@vger.kernel.org, Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
 Teddy Wang <teddy.wang@siliconmotion.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

There is some "confusing" license text in some of the sm750fb driver
files.  After discussing it with the company, it turns out to have been
a mistake and these lines can be safely removed.  The files are all to
be licensed under the GPLv2 license.

Cc: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
Cc: Teddy Wang <teddy.wang@siliconmotion.com>
Cc: linux-fbdev@vger.kernel.org
Cc: devel@driverdev.osuosl.org
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/staging/sm750fb/ddk750.h       | 3 ---
 drivers/staging/sm750fb/ddk750_swi2c.c | 3 ---
 drivers/staging/sm750fb/ddk750_swi2c.h | 3 ---
 3 files changed, 9 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750.h b/drivers/staging/sm750fb/ddk750.h
index 482c1c6ba422..64ef4d258a91 100644
--- a/drivers/staging/sm750fb/ddk750.h
+++ b/drivers/staging/sm750fb/ddk750.h
@@ -2,9 +2,6 @@
 /*
  *         Copyright (c) 2007 by Silicon Motion, Inc. (SMI)
  *
- *  All rights are reserved. Reproduction or in part is prohibited
- *  without the written consent of the copyright owner.
- *
  *  RegSC.h --- SM718 SDK
  *  This file contains the definitions for the System Configuration registers.
  */
diff --git a/drivers/staging/sm750fb/ddk750_swi2c.c b/drivers/staging/sm750fb/ddk750_swi2c.c
index 5c0ac747ea2b..0ef8d4ff2ef9 100644
--- a/drivers/staging/sm750fb/ddk750_swi2c.c
+++ b/drivers/staging/sm750fb/ddk750_swi2c.c
@@ -2,9 +2,6 @@
 /*
  *         Copyright (c) 2007 by Silicon Motion, Inc. (SMI)
  *
- *  All rights are reserved. Reproduction or in part is prohibited
- *  without the written consent of the copyright owner.
- *
  *  swi2c.c --- SM750/SM718 DDK
  *  This file contains the source code for I2C using software
  *  implementation.
diff --git a/drivers/staging/sm750fb/ddk750_swi2c.h b/drivers/staging/sm750fb/ddk750_swi2c.h
index 5868feea791b..dfa166060da7 100644
--- a/drivers/staging/sm750fb/ddk750_swi2c.h
+++ b/drivers/staging/sm750fb/ddk750_swi2c.h
@@ -2,9 +2,6 @@
 /*
  *         Copyright (c) 2007 by Silicon Motion, Inc. (SMI)
  *
- *  All rights are reserved. Reproduction or in part is prohibited
- *  without the written consent of the copyright owner.
- *
  *  swi2c.h --- SM750/SM718 DDK
  *  This file contains the definitions for i2c using software
  *  implementation.
-- 
2.22.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

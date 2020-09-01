Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 913A8258CF3
	for <lists+driverdev-devel@lfdr.de>; Tue,  1 Sep 2020 12:43:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7E1AA85F2F;
	Tue,  1 Sep 2020 10:43:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4OmY-aUxCGWg; Tue,  1 Sep 2020 10:43:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8013284E9A;
	Tue,  1 Sep 2020 10:43:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 906B71BF30C
 for <devel@linuxdriverproject.org>; Tue,  1 Sep 2020 10:43:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8D26B847EB
 for <devel@linuxdriverproject.org>; Tue,  1 Sep 2020 10:43:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MOJ_t1UtjtVV for <devel@linuxdriverproject.org>;
 Tue,  1 Sep 2020 10:43:33 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx3.wp.pl (mx3.wp.pl [212.77.101.10])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id DD181845C1
 for <devel@driverdev.osuosl.org>; Tue,  1 Sep 2020 10:43:32 +0000 (UTC)
Received: (wp-smtpd smtp.wp.pl 1278 invoked from network);
 1 Sep 2020 12:43:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1598957009; bh=hJLVzwJxQjp6xNbh/PRsnQBA0RhTN8F3VaKPJKZHWJI=;
 h=From:To:Cc:Subject;
 b=pNzrpKUhsmvR9HVI306H4velU08K/Awdo4R0V2b9N0uNo4zMx7vNIo3Z63N6YtNVm
 LKkSRFWKPw5O8YrQbHGQ66R7NZRwEN8s9IemxLcYigh117QRmvJz+yntJMuv5lRPVh
 a7hSoa9XGyCt2Vld84088H/ncwI37zUjlSR6K4xU=
Received: from 188.146.234.2.nat.umts.dynamic.t-mobile.pl (HELO localhost)
 (antoni.przybylik@wp.pl@[188.146.234.2])
 (envelope-sender <antoni.przybylik@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <gregkh@linuxfoundation.org>; 1 Sep 2020 12:43:29 +0200
From: antoniprzybylik <antoni.przybylik@wp.pl>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: gdm724x: gdm_tty: corrected macro by adding brackets
Date: Tue,  1 Sep 2020 12:43:11 +0200
Message-Id: <20200901104311.17270-1-antoni.przybylik@wp.pl>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
X-WP-DKIM-Status: good (id: wp.pl)                                      
X-WP-MailID: 489ef85a83f588acd1f26eadb7be658c
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 0000002 [0YFx]                               
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 antoniprzybylik <antoni.przybylik@wp.pl>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Such macros are dangerous. Consider following example:
	#define GDM_TTY_READY(gdm) (gdm && gdm->tty_dev && gdm->port.count)
	GDM_TTY_READY(a + b)
This macro will be expanded in such a way:
	(a + b && a + b->tty_dev && a + b->port.count)
And it will lead to errors.

Signed-off-by: Antoni Przybylik <antoni.przybylik@wp.pl>
---
 drivers/staging/gdm724x/gdm_tty.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/gdm724x/gdm_tty.c b/drivers/staging/gdm724x/gdm_tty.c
index 6e813693a766..eab5c75ee5b1 100644
--- a/drivers/staging/gdm724x/gdm_tty.c
+++ b/drivers/staging/gdm724x/gdm_tty.c
@@ -27,7 +27,7 @@
 
 #define MUX_TX_MAX_SIZE 2048
 
-#define GDM_TTY_READY(gdm) (gdm && gdm->tty_dev && gdm->port.count)
+#define GDM_TTY_READY(gdm) ((gdm) && (gdm)->tty_dev && (gdm)->port.count)
 
 static struct tty_driver *gdm_driver[TTY_MAX_COUNT];
 static struct gdm *gdm_table[TTY_MAX_COUNT][GDM_TTY_MINOR];
-- 
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

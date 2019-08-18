Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4222691771
	for <lists+driverdev-devel@lfdr.de>; Sun, 18 Aug 2019 17:06:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8172985C32;
	Sun, 18 Aug 2019 15:06:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MmEod3fWj3Z8; Sun, 18 Aug 2019 15:06:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 396FF84E9A;
	Sun, 18 Aug 2019 15:06:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B6A701BF3D1
 for <devel@linuxdriverproject.org>; Sun, 18 Aug 2019 15:06:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id AD77B85620
 for <devel@linuxdriverproject.org>; Sun, 18 Aug 2019 15:06:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0W09ZB8YtB1h for <devel@linuxdriverproject.org>;
 Sun, 18 Aug 2019 15:06:17 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtp.smtpout.orange.fr (smtp06.smtpout.orange.fr
 [80.12.242.128])
 by whitealder.osuosl.org (Postfix) with ESMTPS id EC32985606
 for <devel@driverdev.osuosl.org>; Sun, 18 Aug 2019 15:06:16 +0000 (UTC)
Received: from localhost.localdomain ([92.140.207.10]) by mwinf5d11 with ME
 id qf6B2000T0Dzhgk03f6Ber; Sun, 18 Aug 2019 17:06:14 +0200
X-ME-Helo: localhost.localdomain
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Sun, 18 Aug 2019 17:06:14 +0200
X-ME-IP: 92.140.207.10
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
To: Larry.Finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
 gregkh@linuxfoundation.org, straube.linux@gmail.com
Subject: [PATCH] staging: rtl8712: Improve naming of include hearder guards
Date: Sun, 18 Aug 2019 17:06:09 +0200
Message-Id: <20190818150609.3376-1-christophe.jaillet@wanadoo.fr>
X-Mailer: git-send-email 2.20.1
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
Cc: devel@driverdev.osuosl.org,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Choose a better name for the include hearder guard used in rtl871x_io.h.
'_IO_H_' is to generic and does not match the comment after the #endif.
Use '_RTL871X_IO_H_' instead.

Also make the comments in the #endif /* XXX */ match the name used in
#ifndef.

Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
---
__RTL871X_RF_H_ could have been turned into _RTL871X_RF_H_ (one leading
'_' removed) but there does not seem to be a clear logic in the way the
header guards are named in this directory. So leave it as-is in order to
limit the diff.
---
 drivers/staging/rtl8712/rtl871x_io.h | 7 +++----
 drivers/staging/rtl8712/rtl871x_rf.h | 3 +--
 2 files changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_io.h b/drivers/staging/rtl8712/rtl871x_io.h
index 28941423b7ed..c20dd5a6bbd1 100644
--- a/drivers/staging/rtl8712/rtl871x_io.h
+++ b/drivers/staging/rtl8712/rtl871x_io.h
@@ -11,8 +11,8 @@
  * Larry Finger <Larry.Finger@lwfinger.net>
  *
  ******************************************************************************/
-#ifndef _IO_H_
-#define _IO_H_
+#ifndef _RTL871X_IO_H_
+#define _RTL871X_IO_H_
 
 #include "osdep_service.h"
 #include "osdep_intf.h"
@@ -234,5 +234,4 @@ void r8712_write_port(struct _adapter *adapter, u32 addr, u32 cnt, u8 *pmem);
 uint r8712_alloc_io_queue(struct _adapter *adapter);
 void r8712_free_io_queue(struct _adapter *adapter);
 
-#endif	/*_RTL8711_IO_H_*/
-
+#endif	/*_RTL871X_IO_H_*/
diff --git a/drivers/staging/rtl8712/rtl871x_rf.h b/drivers/staging/rtl8712/rtl871x_rf.h
index cc54453cd424..7d98921a48fa 100644
--- a/drivers/staging/rtl8712/rtl871x_rf.h
+++ b/drivers/staging/rtl8712/rtl871x_rf.h
@@ -52,5 +52,4 @@ enum {
 	RTL8712_RFC_2T2R = 0x22
 };
 
-#endif /*_RTL8711_RF_H_*/
-
+#endif /*__RTL871X_RF_H_*/
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

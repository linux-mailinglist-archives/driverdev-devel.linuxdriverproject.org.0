Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id ED18631208C
	for <lists+driverdev-devel@lfdr.de>; Sun,  7 Feb 2021 01:01:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B7DB986968;
	Sun,  7 Feb 2021 00:01:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sHN8vRQe5voW; Sun,  7 Feb 2021 00:01:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A9AB58692C;
	Sun,  7 Feb 2021 00:01:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 17B991BF94D
 for <devel@linuxdriverproject.org>; Sun,  7 Feb 2021 00:01:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 114F2862F4
 for <devel@linuxdriverproject.org>; Sun,  7 Feb 2021 00:01:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GDuuAIuA9Wnw for <devel@linuxdriverproject.org>;
 Sun,  7 Feb 2021 00:01:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f66.google.com (mail-pj1-f66.google.com
 [209.85.216.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8231F86123
 for <devel@driverdev.osuosl.org>; Sun,  7 Feb 2021 00:01:12 +0000 (UTC)
Received: by mail-pj1-f66.google.com with SMTP id l18so6260935pji.3
 for <devel@driverdev.osuosl.org>; Sat, 06 Feb 2021 16:01:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=49j9bFVs9sCOGw2ixwC0MgfE+ogeiIPqYGQMyoD5/0A=;
 b=BwemQyQiVMP+bEiS91OOT+Mp90CR9Fz7Akqf+uA511dHPx/cSJPcqxTYSJrgipbQuK
 pwseCfDeK4djao7YPa8HBKE6u4PIT3b50PumWrf3uCr5qRwJvi5QkcefjCNDUuMhXU6C
 RUxvUpUYqktCMtsEMHyZBJ9XNzzBdP9KkPopO0dSSGZHWvT9xFcQaBWtLZvhXhK4hN4K
 kvlLJTiMBKydR4oROV/cA4Afu1lvVR8VpZP2u1NBN0xKD31ANpHQlcBKYoxfPCmxx1K/
 vT1ILhpo9iYsFtzwNbJ63JjQ+LqR7P+CjSDmDs3cVSV1PjsaU3spjTn3b0XlVws0PFzO
 cQGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=49j9bFVs9sCOGw2ixwC0MgfE+ogeiIPqYGQMyoD5/0A=;
 b=D9wSVQo+v8opz8LLWK3KNKfJH1G9XJWFIkc5SGcdv5IqsRxJusTxTSFY9OR+B4hpZa
 nQDi3xEiXLZdBzAlumcsm4lIL3Z3kTwHLy9m/GZGIBAty3M92e4pXl5c9KsQIYu+CoZx
 TvQo4Y+gsZmrXxTMnrpGlLlGqrOSwLlrYimaRjL2xc2/4zIlbj7xNyUjQ66nX0iS5kXy
 O8p7wVNlfvBUnnnlqaMSBaiPSi6gKY41DZjFqKeZSzIau5YTr58ZOXQ6vNhNe9Q0PPbH
 lWCyou0mFuDZ4/LO1nKWNbjgz+PzKCV/1GJngZVrkqg6Nqi8XTivych9HKYXvDuRF2R8
 2K4A==
X-Gm-Message-State: AOAM533dFS0s6ifGelwJcnFpmWAmSZOrGtaj5S9LdQWpPqv/UsmDspHP
 2lgfm4xW6Nl1Z6vcUDq3xtO/HBZdsNg=
X-Google-Smtp-Source: ABdhPJyWuVqKhirhqLn1YjW9Lq1WhJkofF7i+q80zAYd3zV5UcHeuVtn93ajTvQI3BGHtNa//0sKDA==
X-Received: by 2002:a17:90b:1c0d:: with SMTP id
 oc13mr10337933pjb.156.1612656071855; 
 Sat, 06 Feb 2021 16:01:11 -0800 (PST)
Received: from localhost ([2402:3a80:11d3:34df:a2a4:c5ff:fe20:7222])
 by smtp.gmail.com with ESMTPSA id r30sm14081138pfq.12.2021.02.06.16.01.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 06 Feb 2021 16:01:11 -0800 (PST)
From: Kumar Kartikeya Dwivedi <memxor@gmail.com>
To: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging: emxx_udc: Fix incorrectly defined global
Date: Sun,  7 Feb 2021 05:30:31 +0530
Message-Id: <20210207000030.256592-1-memxor@gmail.com>
X-Mailer: git-send-email 2.29.2
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>,
 Kumar Kartikeya Dwivedi <memxor@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The global gpio_desc pointer and int were defined in the header,
instead put the definitions in the translation unit and add an extern
declaration for consumers of the header (currently only one, which is
perhaps why the linker didn't complain about symbol collisions).

This fixes sparse related warnings for this driver:
drivers/staging/emxx_udc/emxx_udc.c: note: in included file:
drivers/staging/emxx_udc/emxx_udc.h:23:18: warning: symbol 'vbus_gpio' was not declared. Should it be static?
drivers/staging/emxx_udc/emxx_udc.h:24:5: warning: symbol 'vbus_irq' was not declared. Should it be static?

Signed-off-by: Kumar Kartikeya Dwivedi <memxor@gmail.com>
---
 drivers/staging/emxx_udc/emxx_udc.c | 3 +++
 drivers/staging/emxx_udc/emxx_udc.h | 4 ++--
 2 files changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/emxx_udc/emxx_udc.c b/drivers/staging/emxx_udc/emxx_udc.c
index a30b4f5b1..6983c3e31 100644
--- a/drivers/staging/emxx_udc/emxx_udc.c
+++ b/drivers/staging/emxx_udc/emxx_udc.c
@@ -34,6 +34,9 @@
 #define	DRIVER_DESC	"EMXX UDC driver"
 #define	DMA_ADDR_INVALID	(~(dma_addr_t)0)
 
+struct gpio_desc *vbus_gpio;
+int vbus_irq;
+
 static const char	driver_name[] = "emxx_udc";
 static const char	driver_desc[] = DRIVER_DESC;
 
diff --git a/drivers/staging/emxx_udc/emxx_udc.h b/drivers/staging/emxx_udc/emxx_udc.h
index bca614d69..b3c4ccbe5 100644
--- a/drivers/staging/emxx_udc/emxx_udc.h
+++ b/drivers/staging/emxx_udc/emxx_udc.h
@@ -20,8 +20,8 @@
 /* below hacked up for staging integration */
 #define GPIO_VBUS 0 /* GPIO_P153 on KZM9D */
 #define INT_VBUS 0 /* IRQ for GPIO_P153 */
-struct gpio_desc *vbus_gpio;
-int vbus_irq;
+extern struct gpio_desc *vbus_gpio;
+extern int vbus_irq;
 
 /*------------ Board dependence(Wait) */
 
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

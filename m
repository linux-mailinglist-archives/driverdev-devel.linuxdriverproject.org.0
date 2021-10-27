Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4398B43D1C6
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 Oct 2021 21:37:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1A78B60B1C;
	Wed, 27 Oct 2021 19:37:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z8MOu1gLOcjQ; Wed, 27 Oct 2021 19:37:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 64AE760B19;
	Wed, 27 Oct 2021 19:37:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4370B1BF333
 for <devel@linuxdriverproject.org>; Wed, 27 Oct 2021 19:37:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3305E4056D
 for <devel@linuxdriverproject.org>; Wed, 27 Oct 2021 19:37:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bK9glXZGkN3d for <devel@linuxdriverproject.org>;
 Wed, 27 Oct 2021 19:37:31 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com
 [IPv6:2a00:1450:4864:20::32a])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3623E40562
 for <devel@driverdev.osuosl.org>; Wed, 27 Oct 2021 19:37:31 +0000 (UTC)
Received: by mail-wm1-x32a.google.com with SMTP id 71so1355725wma.4
 for <devel@driverdev.osuosl.org>; Wed, 27 Oct 2021 12:37:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=SicCXKs6bSeaSHXuCyXJT0xoCckIe95FFIqDwjDPpxE=;
 b=UoS2p0zSnHCj/U3wgISw9M3NprbnEhSZAuHxiTbZZbuf+s86YMAjHslWqjlWp/ogLj
 RycbGFxi3hEpUbOFeiMFHw7H1X9hObav4GFmdEHSp2c6cfqD8rwEgFPK/kH0aAkN8faq
 9frDu8gK2vRgcrKNsjpasxukqPvvwYrZdi3zmOjY50wLvVtqrZlaM1VGnNa6Z+bVjXGH
 yADswbBibaCZt2RTuWonHi0zZ4YAXVVqBrLvKInQSQPhKGyLdsDC2yT2A2pSxm6VZfKo
 5Em8c93LThWqtkcwUby+dWyt3dN8Ex3Sm0BamSMx26jsMCbJfjgvPNR0ReSx0yrwCkIl
 tCkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=SicCXKs6bSeaSHXuCyXJT0xoCckIe95FFIqDwjDPpxE=;
 b=To1TikuAMtv7aPRALuzFBv25VyhQT+l4aF1VTnX+ddS0YgjRDGDuFhousCc0hf0mtX
 LLHIUQZkfS3Q3nFAwZUNCQfCuNbgkpast4QsLwcGuFQ9d/ZyIeOUI+JcW5whMkW3W6un
 oZjJBPJJMLZrkoHnLZ4RyWHd/lnluop1cW0JtBsraBI8fPmTx+QCjN/DudpDa9HJtAc9
 jqH6P7pGd9HudFPJYV44X/TukU7uQnnvmhUx1t5sNkYll+gxMeOrdLFeRDIrQjWHEBdf
 Ijk5KrFEiIVApxhDV24JqADdYXvLtgw4VGuioEHwkkWwGumUgNYjLL/ElCMGhIoolw81
 dJYw==
X-Gm-Message-State: AOAM532xa1l6ey0eFiPolhHJsKUX9kN2/wF7tnB0uqEKSeZKgJuzIpoQ
 Zg0BGkJ82Wwvdhd2PEzwIw==
X-Google-Smtp-Source: ABdhPJyE6fQAD22yzcjm8AoGZ2IVi3KWinsRcFqwxs75vexeVwzBw7I0TmtQZehEdiF4gyGD9O/nIw==
X-Received: by 2002:a1c:1941:: with SMTP id 62mr7479043wmz.131.1635363449436; 
 Wed, 27 Oct 2021 12:37:29 -0700 (PDT)
Received: from localhost.localdomain ([2.49.141.30])
 by smtp.googlemail.com with ESMTPSA id 6sm607704wma.48.2021.10.27.12.37.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 Oct 2021 12:37:29 -0700 (PDT)
From: vaatsalya shrivastava <shrivastavavaatsalya@gmail.com>
To: manohar.vanga@gmail.com
Subject: [PATCH] staging: comedi: Cleaned a bit of code that was not required
Date: Wed, 27 Oct 2021 15:32:34 -0400
Message-Id: <20211027193235.5927-1-shrivastavavaatsalya@gmail.com>
X-Mailer: git-send-email 2.30.2
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
 vaatsalya shrivastava <shrivastavavaatsalya@gmail.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Warning found by checkpatch.pl script.

Signed-off-by: vaatsalya shrivastava <shrivastavavaatsalya@gmail.com>
---
 drivers/comedi/drivers/dt2815.c        | 2 +-
 drivers/staging/vme/devices/vme_user.h | 8 ++++----
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/comedi/drivers/dt2815.c b/drivers/comedi/drivers/dt2815.c
index 5906f32aa01f..2be240630bbd 100644
--- a/drivers/comedi/drivers/dt2815.c
+++ b/drivers/comedi/drivers/dt2815.c
@@ -17,7 +17,7 @@
  * contrary, please update.
  *
  * Configuration options:
- * [0] - I/O port base base address
+ * [0] - I/O port base address
  * [1] - IRQ (unused)
  * [2] - Voltage unipolar/bipolar configuration
  *	0 == unipolar 5V  (0V -- +5V)
diff --git a/drivers/staging/vme/devices/vme_user.h b/drivers/staging/vme/devices/vme_user.h
index 19ecb05781cc..3c1564fd9b20 100644
--- a/drivers/staging/vme/devices/vme_user.h
+++ b/drivers/staging/vme/devices/vme_user.h
@@ -14,11 +14,11 @@ struct vme_master {
 	__u32 aspace;		/* Address Space */
 	__u32 cycle;		/* Cycle properties */
 	__u32 dwidth;		/* Maximum Data Width */
-#if 0
+
 	char prefetchenable;		/* Prefetch Read Enable State */
 	int prefetchsize;		/* Prefetch Read Size (Cache Lines) */
 	char wrpostenable;		/* Write Post State */
-#endif
+
 } __packed;
 
 /*
@@ -35,11 +35,11 @@ struct vme_slave {
 	__u64 size;		/* Window Size */
 	__u32 aspace;		/* Address Space */
 	__u32 cycle;		/* Cycle properties */
-#if 0
+
 	char wrpostenable;		/* Write Post State */
 	char rmwlock;			/* Lock PCI during RMW Cycles */
 	char data64bitcapable;		/* non-VMEbus capable of 64-bit Data */
-#endif
+
 } __packed;
 
 struct vme_irq_id {
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

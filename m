Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AB13654CBD
	for <lists+driverdev-devel@lfdr.de>; Tue, 25 Jun 2019 12:51:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DE70720531;
	Tue, 25 Jun 2019 10:51:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aAJe5O3yKbDF; Tue, 25 Jun 2019 10:51:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 96D092051B;
	Tue, 25 Jun 2019 10:51:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3D87D1BF2CE
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2019 10:51:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 34FA881499
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2019 10:51:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J3Yqwb19RHID for <devel@linuxdriverproject.org>;
 Tue, 25 Jun 2019 10:51:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
 [209.85.221.44])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2E82081454
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2019 10:51:17 +0000 (UTC)
Received: by mail-wr1-f44.google.com with SMTP id x4so17298647wrt.6
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2019 03:51:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=TndtnfmApuDT+rImk2MQBf+vOdTdX2NNKvYRPqDE0/4=;
 b=QGpvkRMVw9U+eurBmzmN6gxdi0h+CLbLwaPoQl9W1j/a9mq3H43903weNxSLAKeNor
 jv3AT0Rlo/keJWGkp6ds73sanSyQEptNG2A/lP7rzmFzcvUtRBmAoPzpM5cUqRUxqX8o
 VwrcSaXoGkU6J89J5RqS7AypxOo9x3hOuwh06zKvnt2MEdyjia1mgAhrG+AahzoDVjmq
 uwfu7V54LYl2T/YBQn1d+mXFpx2MyCXJf+9EjffzkQB1knyeRvMFKvlhN+qkHp7QsJj3
 cmBIiREbm0oi4QGrComMAtQ9AYCbAIg1dHsgpJYIAj32qUTYNNVmiB9IT4UuXRlo+/lp
 9ABQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=TndtnfmApuDT+rImk2MQBf+vOdTdX2NNKvYRPqDE0/4=;
 b=lYiHi/VzLrMmm+1HLNSokc3nbpatzyuHWqsm3E9pFTaKwYjyFiMKnioMqjv5sWB2Wr
 QMayC1CQNV1oXePOETlAEhc8O2LTl7HM27ge/HKAUclaKV5lXXn9D7AoeM2iAfatC3YP
 xPlTMTrOPNdHCqeYMU1zUvK1vml0FUV2DhfWaVSAp45M8gzYDPIjWkW+xTrSA9hAc6+K
 Tt2dq1l0V4aHewBzDocobIcCeQ6bZSzUGRlmgGMPopgQQDaOknOpciO1R4HGSOde/iL0
 0WzrxjBpeA57bLqyJQI3NZaCq94r5U1VFRANB8MsDVQyaJQQEDD6oG/oV9GzG7rWTeM4
 Npvw==
X-Gm-Message-State: APjAAAXLTr8hSi8/BrAetgxbrHHvlOcDcL9DvHuAghOOcZ+wgsFxLV0l
 xh8CHVH2W26/aJRwsA3RYrY=
X-Google-Smtp-Source: APXvYqxmRAMMtmtHChbfYlxbpFqMNNibh1/nuXVO1g6/xOhRVk+yasfrd10IznDqaU4i28PiHxHCJA==
X-Received: by 2002:adf:dc4b:: with SMTP id m11mr55959928wrj.51.1561459875651; 
 Tue, 25 Jun 2019 03:51:15 -0700 (PDT)
Received: from sausage ([167.98.27.226])
 by smtp.gmail.com with ESMTPSA id x11sm2284894wmg.23.2019.06.25.03.51.14
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 25 Jun 2019 03:51:15 -0700 (PDT)
Date: Tue, 25 Jun 2019 11:51:13 +0100
From: Jeeeun Evans <jeeeunevans@gmail.com>
To: mchehab@kernel.org, gregkh@linuxfoundation.org, code@wizofe.uk,
 linux-media@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging: media: davinci_vpfe: prefer using BIT macro
Message-ID: <20190625105113.GA22430@sausage>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Use BIT(x) instead of (1<<x), reported by checkpatch.pl.

Signed-off-by: Jeeeun Evans <jeeeunevans@gmail.com>
---
 drivers/staging/media/davinci_vpfe/dm365_ipipe.h     | 2 +-
 drivers/staging/media/davinci_vpfe/dm365_isif.h      | 4 ++--
 drivers/staging/media/davinci_vpfe/dm365_isif_regs.h | 4 ++--
 3 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe.h b/drivers/staging/media/davinci_vpfe/dm365_ipipe.h
index 866ae12aeb07..de9b04683d82 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipe.h
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe.h
@@ -99,7 +99,7 @@ struct ipipe_module_params {
 #define IPIPE_PADS_NUM			2
 
 #define IPIPE_OUTPUT_NONE		0
-#define IPIPE_OUTPUT_RESIZER		(1 << 0)
+#define IPIPE_OUTPUT_RESIZER		BIT(0)
 
 enum ipipe_input_entity {
 	IPIPE_INPUT_NONE = 0,
diff --git a/drivers/staging/media/davinci_vpfe/dm365_isif.h b/drivers/staging/media/davinci_vpfe/dm365_isif.h
index 0e1fe472fb2b..288a1211b387 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_isif.h
+++ b/drivers/staging/media/davinci_vpfe/dm365_isif.h
@@ -172,8 +172,8 @@ enum isif_input_entity {
 };
 
 #define ISIF_OUTPUT_NONE	(0)
-#define ISIF_OUTPUT_MEMORY	(1 << 0)
-#define ISIF_OUTPUT_IPIPEIF	(1 << 1)
+#define ISIF_OUTPUT_MEMORY	BIT(0)
+#define ISIF_OUTPUT_IPIPEIF	BIT(1)
 
 struct vpfe_isif_device {
 	struct v4l2_subdev		subdev;
diff --git a/drivers/staging/media/davinci_vpfe/dm365_isif_regs.h b/drivers/staging/media/davinci_vpfe/dm365_isif_regs.h
index 6695680817b9..e64b75dc1e5a 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_isif_regs.h
+++ b/drivers/staging/media/davinci_vpfe/dm365_isif_regs.h
@@ -284,8 +284,8 @@
 #define ISIF_LIN_ENTRY_MASK			0x3ff
 
 /* masks and shifts*/
-#define ISIF_SYNCEN_VDHDEN_MASK			(1 << 0)
-#define ISIF_SYNCEN_WEN_MASK			(1 << 1)
+#define ISIF_SYNCEN_VDHDEN_MASK			BIT(0)
+#define ISIF_SYNCEN_WEN_MASK			BIT(1)
 #define ISIF_SYNCEN_WEN_SHIFT			1
 
 #endif		/* _DAVINCI_VPFE_DM365_ISIF_REGS_H */
-- 
2.22.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 96BA3D7167
	for <lists+driverdev-devel@lfdr.de>; Tue, 15 Oct 2019 10:47:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id AA94422879;
	Tue, 15 Oct 2019 08:47:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id P1uFz7A4l+vP; Tue, 15 Oct 2019 08:47:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7745E204B1;
	Tue, 15 Oct 2019 08:47:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 247CD1BF2F9
 for <devel@linuxdriverproject.org>; Tue, 15 Oct 2019 08:47:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 21995864CD
 for <devel@linuxdriverproject.org>; Tue, 15 Oct 2019 08:47:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ujghYRD1QTyi for <devel@linuxdriverproject.org>;
 Tue, 15 Oct 2019 08:47:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A74498645E
 for <devel@driverdev.osuosl.org>; Tue, 15 Oct 2019 08:47:46 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id q7so12004228pfh.8
 for <devel@driverdev.osuosl.org>; Tue, 15 Oct 2019 01:47:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=foXBwHD68GqDpUhv12UgOg8h2hieUZu0Au1qNClUQfg=;
 b=itYb0Pr55NgMcqQx6PCxeFCUijsujjxt4Xa9C+B6w/WQu/k70+T2xEw6xvOrC77P6c
 cJSKaWJB7Bbh9MLylt84yJrtMZZttJpAp/oWTMLhILPTTNSuJLP046BDtp+bPUMObFSx
 B849ISYsz31Ka2/bvu2IBiMmcfKpIoRE3BGz/dL7Mw4Hmd8siEg28dlMjQ6RLolrNk/Q
 qbX5lI8eBrfWQG+6tXr4jNKZYdVINbF/hAtMiZmwdGQcLUmPeent50/Pr9NSyThz0kSG
 ny95g9M3SfyDLkoOSnVJACzPCqjK+CU2A95XN3DPF2QipNGU3sDjcqlLZDEb/llCBxKg
 WUOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=foXBwHD68GqDpUhv12UgOg8h2hieUZu0Au1qNClUQfg=;
 b=EfHyiFutis1kmhyl1DiOuyhNT8U7DNdoQPgTxDObbWl78KgSWd9hwWQgbd4wVovVG+
 oUA5EtRcU0xdnEqp99XmT1nw8SVuI/lfFBYGoIXdCMutE8SShXYfEvHsDSpLpU9Q76KW
 xdd11sse/xz/AcPF2iRGMsbOsbXcu8C6xIQLK2HDRUKFgyNyWgwjVRnHQ2G7m0tRERGD
 DIMbXlK4KE0wWGufhxgxYhWlG3U20qxvEcvCY7IfO/8bqHc2rnkayL9wzQ3adbmX+3cj
 84PfIsU8P6LqCRzaZetQmHqh0BR86VF2Pi1yukA0Qtw3LUd3ja/UJcsJ4mdX+wFHnTuQ
 frgA==
X-Gm-Message-State: APjAAAVmSVDB2+g/qTD5GWdlbBsgOf7y0AaPSMrbo2SQytycbadBwAzY
 A0zU+8ttq+vWIrADjqTqIcE=
X-Google-Smtp-Source: APXvYqzFiaidRvS9nRto9ZR7SKPKdsNG9SDmKYmIk8L04Q50e8zzXVBjfUZiXhWf8wuZIbxYm4otYQ==
X-Received: by 2002:a63:1242:: with SMTP id 2mr14383081pgs.288.1571129266064; 
 Tue, 15 Oct 2019 01:47:46 -0700 (PDT)
Received: from wambui.brck.local ([197.254.95.158])
 by smtp.googlemail.com with ESMTPSA id
 h68sm25239210pfb.149.2019.10.15.01.47.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 01:47:45 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: octeon: fix restricted __be16 degrades to integer
Date: Tue, 15 Oct 2019 11:47:31 +0300
Message-Id: <20191015084731.8514-1-wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.23.0
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
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Add cast to fix the following sparse warning:
warning: restricted __be16 degrades to integer

Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 drivers/staging/octeon/ethernet-tx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/octeon/ethernet-tx.c b/drivers/staging/octeon/ethernet-tx.c
index 5114273826ec..b334cf89794e 100644
--- a/drivers/staging/octeon/ethernet-tx.c
+++ b/drivers/staging/octeon/ethernet-tx.c
@@ -598,7 +598,7 @@ int cvm_oct_xmit_pow(struct sk_buff *skb, struct net_device *dev)
 #endif
 		work->word2.s.is_frag = !((ip_hdr(skb)->frag_off == 0) ||
 					  (ip_hdr(skb)->frag_off ==
-					      1 << 14));
+					      cpu_to_be16(1 << 14)));
 #if 0
 		/* Assume Linux is sending a good packet */
 		work->word2.s.IP_exc = 0;
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFEB2CF2EC
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Oct 2019 08:41:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 59A3C87D17;
	Tue,  8 Oct 2019 06:41:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id T5tCPdzgj0-Z; Tue,  8 Oct 2019 06:41:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0C04787CFB;
	Tue,  8 Oct 2019 06:41:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6CB6E1BF289
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 06:41:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 675E887D17
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 06:41:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F7-8efpumgN1 for <devel@linuxdriverproject.org>;
 Tue,  8 Oct 2019 06:41:34 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0DEBC87CFB
 for <devel@driverdev.osuosl.org>; Tue,  8 Oct 2019 06:41:34 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id a2so10203540pfo.10
 for <devel@driverdev.osuosl.org>; Mon, 07 Oct 2019 23:41:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=FwtmUt6KEmFKNLzErbTOaLpB82xSMCImS32kcTAdfPk=;
 b=hoHZWPFoq5pnZgaQ/cBXJAS4ngR/D2j4hyGiPOTCukQYKXRUxkpLaaj6naVlkia9bQ
 P5hs/3MchF+espWYe9EiVKA34FjkGhSSEqv8uNZPTlUGwOwdrGMn6mIUkJ/9MQH/QXF2
 wtyEg9wz3W3L5/sAWyEXfxs/Sq2EHgxlHR3K6p8QY89fNymTpdsJ88h3WGiIJjgxOLsF
 sASo+feMCE3yeoSXKknOxbJq1jN2EtqeeSzWjtEDPBYEvawD37kYI5OnkqrhNjjM3YJ4
 d2G/yV4Q4Msp9xqYkpzVo8ZLdbGzzSpVsrC6j8BW05wA2FBPbFKFq0O4R9oecaDJnuHI
 bZrg==
X-Gm-Message-State: APjAAAXJg1jCZ3UOqfno28HIAR8x5R4pLS04ZgbIZ7xClEvQKP4+pzqs
 JKSacR7LWiD7ilabsAWJVIU=
X-Google-Smtp-Source: APXvYqxm6Rarhj8ThZyBs1JUTPyznmtfda524id+vCrgIyU11SazKhYU95Pe8cMMYduROnBrmk72VA==
X-Received: by 2002:a17:90a:9d87:: with SMTP id
 k7mr3898473pjp.103.1570516893686; 
 Mon, 07 Oct 2019 23:41:33 -0700 (PDT)
Received: from localhost.localdomain ([183.83.78.173])
 by smtp.gmail.com with ESMTPSA id y80sm18225474pfc.30.2019.10.07.23.41.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 07 Oct 2019 23:41:33 -0700 (PDT)
From: hariprasad@osuosl.org, Kelam@osuosl.org,
	hariprasad.kelam@gmail.com
To: 
Subject: [PATCH] staging: ralink-gdma: make use of
 devm_platform_ioremap_resource
Date: Tue,  8 Oct 2019 12:10:41 +0530
Message-Id: <1570516846-28260-1-git-send-email-hariprasad.kelam@gmail.com>
X-Mailer: git-send-email 2.7.4
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
Cc: Bharath Vedartham <linux.bhar@gmail.com>, devel@driverdev.osuosl.org,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Stephen Boyd <swboyd@chromium.org>,
 Daniela Mormocea <daniela.mormocea@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Hariprasad Kelam <hariprasad.kelam@gmail.com>

fix below issue reported by coccicheck
drivers/staging//ralink-gdma/ralink-gdma.c:822:1-5: WARNING: Use
devm_platform_ioremap_resource for base

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/ralink-gdma/ralink-gdma.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/ralink-gdma/ralink-gdma.c b/drivers/staging/ralink-gdma/ralink-gdma.c
index 900424d..eabf109 100644
--- a/drivers/staging/ralink-gdma/ralink-gdma.c
+++ b/drivers/staging/ralink-gdma/ralink-gdma.c
@@ -796,7 +796,6 @@ static int gdma_dma_probe(struct platform_device *pdev)
 	struct gdma_dma_dev *dma_dev;
 	struct dma_device *dd;
 	unsigned int i;
-	struct resource *res;
 	int ret;
 	int irq;
 	void __iomem *base;
@@ -818,8 +817,7 @@ static int gdma_dma_probe(struct platform_device *pdev)
 		return -EINVAL;
 	dma_dev->data = data;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	base = devm_ioremap_resource(&pdev->dev, res);
+	base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(base))
 		return PTR_ERR(base);
 	dma_dev->base = base;
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

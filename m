Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 90D34CF23B
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Oct 2019 07:43:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E148986141;
	Tue,  8 Oct 2019 05:43:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VrIh3aXpXCUg; Tue,  8 Oct 2019 05:43:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AAC0486109;
	Tue,  8 Oct 2019 05:43:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D6E961BF2A4
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 05:43:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C6D3F221B5
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 05:43:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cYnmx-s2dFWY for <devel@linuxdriverproject.org>;
 Tue,  8 Oct 2019 05:43:19 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 5BDE62050D
 for <devel@driverdev.osuosl.org>; Tue,  8 Oct 2019 05:43:19 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id z12so9628117pgp.9
 for <devel@driverdev.osuosl.org>; Mon, 07 Oct 2019 22:43:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=eVeuBNK+4QSyLyYn+nfPZsEzAgNiyYYs7w31/NY+h+w=;
 b=iui1/6E6riObPULqUAW517z58X0S9vGbt2EuMrMf16xNRcoQfa9XZxzb8UthcbLWj1
 6W5wNC3Z5X6fDp/LLYIqz37B5KEuSd5l1K9U5f3zgbr8DK4g2s3hPeMQpZ5/QSYruqbG
 ZN/sPJXXKfBekO0dPsylhFYyiSFoWOXS5BYXqFOTm/kB29g1eQknODdCZ7sR+1oASsVL
 QBwV/kBA485+zOFWO1mGX46wNd02tMLpBTVFKecFx4VePG+PBWbgjmkglW44iAmnxUBJ
 dIvgrx+oNP8gYvP0gdSzs7cDSDyKi5eCnssDvNPNqjmC6XTDGuUAWz8i96FjsDOBJoEP
 fBMw==
X-Gm-Message-State: APjAAAUZblnSU7NJRp0sv/L0cgaR72f3Udhvp5BhAcmtB2/vhePD5UQ2
 tUSx15MaikjSsuNm4K98qBg=
X-Google-Smtp-Source: APXvYqxDWvJS3CTym/WXSGFv1lOt4qavDYtCES+Tw4FgFPQr9OhC4Jeya2Lu3Q0eU3JHIPEX+VnpmA==
X-Received: by 2002:a62:2f85:: with SMTP id v127mr21235098pfv.68.1570513398805; 
 Mon, 07 Oct 2019 22:43:18 -0700 (PDT)
Received: from localhost.localdomain ([183.83.78.173])
 by smtp.gmail.com with ESMTPSA id b3sm953767pjp.13.2019.10.07.22.43.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 07 Oct 2019 22:43:17 -0700 (PDT)
From: hariprasad@osuosl.org, Kelam@osuosl.org,
	hariprasad.kelam@gmail.com
To: 
Subject: [PATCH] staging: clocking-wizard: make use of
 devm_platform_ioremap_resource
Date: Tue,  8 Oct 2019 11:11:40 +0530
Message-Id: <1570513321-6004-1-git-send-email-hariprasad.kelam@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Ioannis Valasakis <code@wizofe.uk>, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Hariprasad Kelam <hariprasad.kelam@gmail.com>

Fix below issue reported by coccicheck
drivers/staging//clocking-wizard/clk-xlnx-clock-wizard.c:147:1-15:
WARNING: Use devm_platform_ioremap_resource for clk_wzrd -> base

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c b/drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c
index 15b7a82..e52a64b 100644
--- a/drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c
+++ b/drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c
@@ -135,7 +135,6 @@ static int clk_wzrd_probe(struct platform_device *pdev)
 	unsigned long rate;
 	const char *clk_name;
 	struct clk_wzrd *clk_wzrd;
-	struct resource *mem;
 	struct device_node *np = pdev->dev.of_node;
 
 	clk_wzrd = devm_kzalloc(&pdev->dev, sizeof(*clk_wzrd), GFP_KERNEL);
@@ -143,8 +142,7 @@ static int clk_wzrd_probe(struct platform_device *pdev)
 		return -ENOMEM;
 	platform_set_drvdata(pdev, clk_wzrd);
 
-	mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	clk_wzrd->base = devm_ioremap_resource(&pdev->dev, mem);
+	clk_wzrd->base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(clk_wzrd->base))
 		return PTR_ERR(clk_wzrd->base);
 
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

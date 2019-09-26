Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CC05BBF647
	for <lists+driverdev-devel@lfdr.de>; Thu, 26 Sep 2019 17:55:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D9D36862D4;
	Thu, 26 Sep 2019 15:55:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yqgrq9KOmkqh; Thu, 26 Sep 2019 15:55:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BA9AF86287;
	Thu, 26 Sep 2019 15:55:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3DCDA1BF3E8
 for <devel@linuxdriverproject.org>; Thu, 26 Sep 2019 15:55:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3A5A686092
 for <devel@linuxdriverproject.org>; Thu, 26 Sep 2019 15:55:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tv2d0QU_z93y for <devel@linuxdriverproject.org>;
 Thu, 26 Sep 2019 15:55:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BA8DE86079
 for <devel@driverdev.osuosl.org>; Thu, 26 Sep 2019 15:55:43 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id r19so3381899wmh.2
 for <devel@driverdev.osuosl.org>; Thu, 26 Sep 2019 08:55:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=+pFOILDteLs1G9dcmBbAs9+Xx43dXKfMhbXX78aolpU=;
 b=ocEzXFyrDMDNNTqDxb6k2SzrmJrAsPAnZirHH3Kvzd5rbCXfsxdIOtsIGnd+UTNRNM
 yahWX2QAcH4oGusJldWBOlivyIYR0Nug8t8JiTTsmd9XY9ICKH9D8nbfTOpA665/ex5U
 hKOlqQk2mxrR9K4rCC0pztbWeO5xjwYrYhqK6voqQ11h9RnIUDN7C+9UWe4f4bbiiSa+
 /yeFFm2RhU3cdlaBUYWoVQlJ603zASrg32UWVaDKXU0mERpCqcEtyzUz2RkvvghMwDYW
 DwQhLl+grXBeqP0l8jFnctZuYTt2X4uE8DFsqQgdeIj4kJtNxnXTFtbW51MLCKpsJGNG
 lHxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=+pFOILDteLs1G9dcmBbAs9+Xx43dXKfMhbXX78aolpU=;
 b=OhL9CNIkU8a0+q2wxo5WkrEWu8PwE1I4In6pv9SI1YS2/Sc1Ga9ZQW4etvw9bqDKZH
 gUlcU+q8A4rx8wgm/gHYZ0huElS5YNDFXCLfkrWqoQmHkSeRjId6VfxpP5aYhD8QRNon
 WtSBKQTDYPNZ4MEeCv8hN0hsX2dNPty9usGVpRZywu4bR5iFwQ+6/oeS0ZG52tttBPNT
 37Ed21AlGBp3OsimNc0yP34Ja+zp8duGxAPCXoDKb10A/8kc8xjr5sdez4eXlE1GaCqF
 3OQxVU2cRKyi293Ns2ZDJlMKdM92Lsepg+LP97FlH3Evu1KYOvnoG1Z4OI1EoMZpP+aA
 48YA==
X-Gm-Message-State: APjAAAUbtm1CuUb26Y+xApYKjfJVLHmJDYVkdNrFnLp37i73pfH++s00
 0fZT1PJBPdRmE9gBc9aRYX8=
X-Google-Smtp-Source: APXvYqxJR/GW0YsDT3R3ajEjRVC+xU5wALlX3bWVdIz9CTZ5KKgsTQGUDT72X5cUhJGh7HwgBkbQIw==
X-Received: by 2002:a1c:c1cc:: with SMTP id r195mr3854113wmf.50.1569513342192; 
 Thu, 26 Sep 2019 08:55:42 -0700 (PDT)
Received: from sausagefarm (31-34-101-110.abo.bbox.fr. [31.34.101.110])
 by smtp.gmail.com with ESMTPSA id p7sm3902157wma.34.2019.09.26.08.55.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Sep 2019 08:55:41 -0700 (PDT)
Date: Thu, 26 Sep 2019 17:55:39 +0200
From: Jeeeun Evans <jeeeunevans@gmail.com>
To: rmfrfs@gmail.com, slongerbeam@gmail.com, p.zabel@pengutronix.de,
 mchehab@kernel.org, gregkh@linuxfoundation.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 linux-imx@nxp.com
Subject: [PATCH] staging: media: imx: Use devm_platform_ioremap_resource().
Message-ID: <20190926155539.GA20744@sausagefarm>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
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
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch fixes a warning by coccicheck:
drivers/staging/media/imx/imx7-mipi-csis.c:973:1-12: WARNING: Use devm_platform_ioremap_resource for state -> regs

Use devm_platform_ioremap_resource helper which wraps platform_get_resource()
and devm_ioremap_resource() together.

Signed-off-by: Jeeeun Evans <jeeeunevans@gmail.com>
---
 drivers/staging/media/imx/imx7-mipi-csis.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/media/imx/imx7-mipi-csis.c b/drivers/staging/media/imx/imx7-mipi-csis.c
index 73d8354e618c..bf21db38441f 100644
--- a/drivers/staging/media/imx/imx7-mipi-csis.c
+++ b/drivers/staging/media/imx/imx7-mipi-csis.c
@@ -947,7 +947,6 @@ static void mipi_csis_debugfs_exit(struct csi_state *state)
 static int mipi_csis_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
-	struct resource *mem_res;
 	struct csi_state *state;
 	int ret;
 
@@ -969,8 +968,7 @@ static int mipi_csis_probe(struct platform_device *pdev)
 	mipi_csis_phy_init(state);
 	mipi_csis_phy_reset(state);
 
-	mem_res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	state->regs = devm_ioremap_resource(dev, mem_res);
+	state->regs = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(state->regs))
 		return PTR_ERR(state->regs);
 
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

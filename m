Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 35EE7BF5BE
	for <lists+driverdev-devel@lfdr.de>; Thu, 26 Sep 2019 17:19:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A613386AFF;
	Thu, 26 Sep 2019 15:19:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VJCRsMP3oi1r; Thu, 26 Sep 2019 15:19:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 89FBD86959;
	Thu, 26 Sep 2019 15:19:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CFA811BF334
 for <devel@linuxdriverproject.org>; Thu, 26 Sep 2019 15:19:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CA11586970
 for <devel@linuxdriverproject.org>; Thu, 26 Sep 2019 15:19:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C74lWdgdnzqg for <devel@linuxdriverproject.org>;
 Thu, 26 Sep 2019 15:19:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 07C168695C
 for <devel@driverdev.osuosl.org>; Thu, 26 Sep 2019 15:19:44 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id a6so3227426wma.5
 for <devel@driverdev.osuosl.org>; Thu, 26 Sep 2019 08:19:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:message-id:mime-version:content-disposition
 :user-agent; bh=lCXAwCC0+Jd5Yo76APgU+nxrjhUlmGrglJVTlf8nMxE=;
 b=XorwWKCX+ksw+jaR7Cfe6jDt+Qn4xDxQPKD7NKga4hrtDVBlar5i5ol4I6YagKvJRe
 bS4xDpSc4gP+nFklah84/GF0o0hxDjY4LGtMe7dTQ3YQWhtg0UKKpgVcW3nxvqv3sJmg
 z5YfXbMVtb9vMNAHyaiAFeqV4AIt856QHbFCC3rJQqcyGzxltBb1M+nvIIHD6vYlqE70
 ianQnQqflOzjf2G9J26YDsBLvn2/YxZeix0OAhZ6pmJWd9alABagj3avaCA2971HC2an
 7obNNfwcL+Ve3p3BDvz1T8Q44356X4zSPatBicHvFPdM/RXDi6RnMOhPPg8lEWPe+4v6
 hQcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:message-id:mime-version
 :content-disposition:user-agent;
 bh=lCXAwCC0+Jd5Yo76APgU+nxrjhUlmGrglJVTlf8nMxE=;
 b=uLSQ9OGALPA6ofu8lWkdeSkYa6bnJ65ims2B2Eo8DN0H3SyzjHsowzldR6G4Smnz+q
 QYvoFp0gUdLrx/25Y6VtIEvc4zfRjhoE6B8jlOdFj/U5SFRDl7PC3tCPY0aC73Fk586X
 rABXo8xQpfmGSZyfcWWaelp/wIHsZMKLz2wz9zppIb+Kbn5U3g0NmI7eKLYHWVRDNEuM
 oXDK68QvEXsq8xN2GZGCCold8lAO0t6rFD3UDBMlUFR1OzeAwbhtTP5GJei1vGTfPApt
 4AZIUnZkp8lESO9lZKhmx830/JxOP/7vXlXfXKMe1j+QYaNn7aQs1lcYxhzadrH3zwXv
 FpwQ==
X-Gm-Message-State: APjAAAUZA6XAHAzW9HVHmY/CMG7xF2aKtp/uaPkpIVho3ZGZnA1LPRjT
 rOda7neo7o8g/BKy1nJxVFs=
X-Google-Smtp-Source: APXvYqza4b6vqN8e+IhkomoX940+gJ45UTuvRU78z9/iaNiHFvC88ThuuX9R0j61xW18b9TORsXaMA==
X-Received: by 2002:a1c:f602:: with SMTP id w2mr3349895wmc.145.1569511182305; 
 Thu, 26 Sep 2019 08:19:42 -0700 (PDT)
Received: from sausagefarm ([65.39.69.237])
 by smtp.gmail.com with ESMTPSA id g4sm4174095wrw.9.2019.09.26.08.19.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Sep 2019 08:19:41 -0700 (PDT)
Date: Thu, 26 Sep 2019 17:19:39 +0200
From: Jeeeun Evans <jeeeunevans@gmail.com>
To: rmfrfs@gmail.com, slongerbeam@gmail.com, p.zabel@pengutronix.de,
 mchehab@kernel.org, gregkh@linuxfoundation.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 linux-imx@nxp.com
Message-ID: <20190926151939.GA20175@sausagefarm>
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
Cc: devel@driverdev.osuosl.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org 
Bcc: jeeeun.evans@codethink.co.uk
Subject: [PATCH] staging: media: imx: Use devm_platform_ioremap_resource().
Reply-To: 

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

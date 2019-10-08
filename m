Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1426ECF320
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Oct 2019 09:00:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 01937861C8;
	Tue,  8 Oct 2019 07:00:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id S-iWfbqjizf9; Tue,  8 Oct 2019 07:00:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9918186151;
	Tue,  8 Oct 2019 07:00:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 24B481BF289
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 07:00:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 211668517C
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 07:00:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yefK9TfxyMkd for <devel@linuxdriverproject.org>;
 Tue,  8 Oct 2019 07:00:22 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id BEF4184103
 for <devel@driverdev.osuosl.org>; Tue,  8 Oct 2019 07:00:22 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id b128so10274419pfa.1
 for <devel@driverdev.osuosl.org>; Tue, 08 Oct 2019 00:00:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=JW+5a1BQTh6WS8cNPjc/i42eLuBSai0GzKmZKxkBh34=;
 b=hk1YfMD6nAo5n43QKjJhccmVn688xY0NQPAltk5yWKvyokRCOIWU7hGQGdkGPPLL8O
 w44WNkshUdyt+JziINOCN7TFjL1xmuwqUC0+mRBsn/ObFVziE6+hgtjnJhjid5axhE22
 h4mhYyUI/WLdIcAo8vQwQo0S4UBka8/9eG0MnASR1uxQcAEXmBBgIB8IPovnfuJTHuYi
 HPKoKvJ1bphT/2vNeydSTlluF8qNMf8Uop83HB4+wf2nlD0ljr/Hyt0CPmbhop+5n3Vc
 YL0m1KtUzFgknrF+hE39Q9psQx1Mtf4TX4saBWQDfonQET2Za7lp+ZosP3XY24EaIHpi
 7NCQ==
X-Gm-Message-State: APjAAAWey31bUvgYPuiulVOhDyKDTJqKKktPf9DIETJ3U3daZFVeQV1S
 iQbgY2PTRoYHDI1xPh+vxZg=
X-Google-Smtp-Source: APXvYqygMP/1KZ2LtA6ksKL11QpBpW1gYaED+QY1aS87IEQRYBENa9OSIomUxe38X607zcZk1pOy3g==
X-Received: by 2002:a65:6252:: with SMTP id q18mr22453365pgv.111.1570518022386; 
 Tue, 08 Oct 2019 00:00:22 -0700 (PDT)
Received: from localhost.localdomain ([183.83.78.173])
 by smtp.gmail.com with ESMTPSA id t125sm21891497pfc.80.2019.10.08.00.00.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 08 Oct 2019 00:00:21 -0700 (PDT)
From: hariprasad@osuosl.org, Kelam@osuosl.org,
	hariprasad.kelam@gmail.com
To: 
Subject: [PATCH] staging: media: sunxi: make use of
 devm_platform_ioremap_resource
Date: Tue,  8 Oct 2019 12:29:34 +0530
Message-Id: <1570517975-32648-1-git-send-email-hariprasad.kelam@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Hariprasad Kelam <hariprasad.kelam@gmail.com>

fix below issue reported by coccicheck
drivers/staging//media/sunxi/cedrus/cedrus_hw.c:229:1-10: WARNING: Use
devm_platform_ioremap_resource for dev -> base

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/media/sunxi/cedrus/cedrus_hw.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_hw.c b/drivers/staging/media/sunxi/cedrus/cedrus_hw.c
index a942cd9..f19b87c 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_hw.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_hw.c
@@ -146,7 +146,6 @@ static irqreturn_t cedrus_irq(int irq, void *data)
 int cedrus_hw_probe(struct cedrus_dev *dev)
 {
 	const struct cedrus_variant *variant;
-	struct resource *res;
 	int irq_dec;
 	int ret;
 
@@ -225,8 +224,7 @@ int cedrus_hw_probe(struct cedrus_dev *dev)
 		goto err_sram;
 	}
 
-	res = platform_get_resource(dev->pdev, IORESOURCE_MEM, 0);
-	dev->base = devm_ioremap_resource(dev->dev, res);
+	dev->base = devm_platform_ioremap_resource(dev->pdev, 0);
 	if (IS_ERR(dev->base)) {
 		dev_err(dev->dev, "Failed to map registers\n");
 
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8976C11F54A
	for <lists+driverdev-devel@lfdr.de>; Sun, 15 Dec 2019 02:33:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0333B8773E;
	Sun, 15 Dec 2019 01:33:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id T3fSD-Mp1wLP; Sun, 15 Dec 2019 01:33:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0AC7786B2B;
	Sun, 15 Dec 2019 01:33:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 67B7F1BF39F
 for <devel@linuxdriverproject.org>; Sun, 15 Dec 2019 01:33:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 60A0D2034A
 for <devel@linuxdriverproject.org>; Sun, 15 Dec 2019 01:33:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Qesf9LlQbryC for <devel@linuxdriverproject.org>;
 Sun, 15 Dec 2019 01:33:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f68.google.com (mail-io1-f68.google.com
 [209.85.166.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 8EAE920349
 for <devel@driverdev.osuosl.org>; Sun, 15 Dec 2019 01:33:18 +0000 (UTC)
Received: by mail-io1-f68.google.com with SMTP id c16so3453861ioo.8
 for <devel@driverdev.osuosl.org>; Sat, 14 Dec 2019 17:33:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=twHtR4aXXJ++Vn0jlK/ZQHhpDH2MxdLzHdpLj7lTb4w=;
 b=TxqdzJuvEpKOlPzpxWjcaBW/fDqrszwu9z2YpjHmOOjAdtoGbZvroZjaFgLdVD6K46
 LXzA+KS1ba6K9wuTZh903zH+K9bKtFTf1wMu48fpD7MKqfnvlyWy87sXPLjp4pTnoUN4
 P2vYRamv41qdFo5Jdm/sb23chNdeQyDavKa2/2wXZ4xpFf7UxVgGhuu1nwSUqaPL9Dsy
 0cqW2TNRitcFSTjNqw57dDW/sBwGL2ChRIIDiI6MeQrmP7x0eQtdF7TN4BJZfdc495im
 SpU6zpf91IBphByb3NgNYmdLpsUuuty5PAY1Ank4WfLFf1Ucq9R4PDuf7VO6n4RPawBh
 86SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=twHtR4aXXJ++Vn0jlK/ZQHhpDH2MxdLzHdpLj7lTb4w=;
 b=XHqEKG+AACoVu3YhmMBWqEJgQv8qhw5CC0z2NWCPE8qsyquc9Fg8mQge2I4uI7DzrY
 ++Tlj69+iR+FifnLJOZyjfZqblV0JMuetWcRNP54MnNhhwAfqCoF/e2GPMdENBUr1x/4
 V0NK/07a7BMchNnsziCEZ1Bc23G5+vqCcr6n/ek4dnRRtsZggc9KmShnUCYZs2WtwBTO
 uscAmn8PI4szs2Fp8ZMzqS3Vzec06lxkuUuKSr3o7KWk0FA1Rg5/ziCNjzA0KWfMqEcj
 CfU4yK3IBmkONkfG0SUY9QuiophHnfioReCWT/O1mxj7mx6+o3Dle5KcJtFxRRTN0baE
 eh9A==
X-Gm-Message-State: APjAAAUXqCt3odBTA87nsdr4eVZ2hl8kEPW8KqIrx6CE0fgRFL82+F9M
 h452x49pBbT99s4JR05bHqo=
X-Google-Smtp-Source: APXvYqxVuEuEMh9Wh2jXS3PQASEpnW7hDbA7c0sfDrSvLzaSaixbmeInGzm3xrbwOVxrmCdf/D8Jcg==
X-Received: by 2002:a02:966a:: with SMTP id c97mr6650981jai.7.1576373597761;
 Sat, 14 Dec 2019 17:33:17 -0800 (PST)
Received: from cs-dulles.cs.umn.edu (cs-dulles.cs.umn.edu. [128.101.35.54])
 by smtp.googlemail.com with ESMTPSA id t15sm4297605ili.50.2019.12.14.17.33.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 14 Dec 2019 17:33:17 -0800 (PST)
From: Navid Emamdoost <navid.emamdoost@gmail.com>
To: Ian Abbott <abbotti@mev.co.uk>,
 H Hartley Sweeten <hsweeten@visionengravers.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Navid Emamdoost <navid.emamdoost@gmail.com>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging: comedi: drivers: Fix memory leak in
 gsc_hpdi_auto_attach
Date: Sat, 14 Dec 2019 19:33:03 -0600
Message-Id: <20191215013306.18880-1-navid.emamdoost@gmail.com>
X-Mailer: git-send-email 2.17.1
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
Cc: emamd001@umn.edu
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

In the implementation of gsc_hpdi_auto_attach(), the allocated dma
description is leaks in case of alignment error, or failure of
gsc_hpdi_setup_dma_descriptors() or comedi_alloc_subdevices(). Release
devpriv->dma_desc via dma_free_coherent().

Signed-off-by: Navid Emamdoost <navid.emamdoost@gmail.com>
---
 drivers/staging/comedi/drivers/gsc_hpdi.c | 16 +++++++++++++---
 1 file changed, 13 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/comedi/drivers/gsc_hpdi.c b/drivers/staging/comedi/drivers/gsc_hpdi.c
index 4bdf44d82879..c0c7047a6d1b 100644
--- a/drivers/staging/comedi/drivers/gsc_hpdi.c
+++ b/drivers/staging/comedi/drivers/gsc_hpdi.c
@@ -633,16 +633,17 @@ static int gsc_hpdi_auto_attach(struct comedi_device *dev,
 	if (devpriv->dma_desc_phys_addr & 0xf) {
 		dev_warn(dev->class_dev,
 			 " dma descriptors not quad-word aligned (bug)\n");
-		return -EIO;
+		retval = -EIO;
+		goto release_dma_desc;
 	}
 
 	retval = gsc_hpdi_setup_dma_descriptors(dev, 0x1000);
 	if (retval < 0)
-		return retval;
+		goto release_dma_desc;
 
 	retval = comedi_alloc_subdevices(dev, 1);
 	if (retval)
-		return retval;
+		goto release_dma_desc;
 
 	/* Digital I/O subdevice */
 	s = &dev->subdevices[0];
@@ -660,6 +661,15 @@ static int gsc_hpdi_auto_attach(struct comedi_device *dev,
 	s->cancel	= gsc_hpdi_cancel;
 
 	return gsc_hpdi_init(dev);
+
+release_dma_desc:
+	if (devpriv->dma_desc)
+		dma_free_coherent(&pcidev->dev,
+				  sizeof(struct plx_dma_desc) *
+				NUM_DMA_DESCRIPTORS,
+				devpriv->dma_desc,
+				devpriv->dma_desc_phys_addr);
+	return retval;
 }
 
 static void gsc_hpdi_detach(struct comedi_device *dev)
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

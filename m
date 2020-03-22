Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A14DE18E754
	for <lists+driverdev-devel@lfdr.de>; Sun, 22 Mar 2020 08:21:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9B66E876FB;
	Sun, 22 Mar 2020 07:21:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 446cHwXK1Arq; Sun, 22 Mar 2020 07:21:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 89B0187667;
	Sun, 22 Mar 2020 07:21:35 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9CCFC1BF3BC
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 22 Mar 2020 07:21:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 97AD987668
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 22 Mar 2020 07:21:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id i7UO6YdG5hGA
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 22 Mar 2020 07:21:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 58FA387667
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 22 Mar 2020 07:21:32 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id c81so358069wmd.4
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 22 Mar 2020 00:21:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=LTwp6VMRN0iU/Sb0IxKAWqEYzoUHEVEF9OFIyN//T4o=;
 b=NtxowEaGHx4iV1asf9KPTbUdoADpqQNXKmXfNd2u2xM2ibdFdYeIPvixgjB/CiYV9M
 UkKfMKjeBzbfxf+zjFs1hO8qNTA9zjGw6K+wcaIIa6ppBe/gWDM7DC1tgdRr9ehT4lEL
 fKaNDwp7Zmf3D83CEpjIzt9nCeD7rClpHUpjEhEOJtz7C3fVjVBAttD7GwDa0ZHR0oZp
 XQYGhinzRLZhW5g0xy9nlSqMYvPhMiLmqg2PPhnQ6cb2LIY+zY68Sh4+krkm9PpgXtp/
 phlLVYXDOVl3xt61X0BbQNoxgYHt7RNZyPLF2C0LS6l0KKFDE6KsGneD2Y/QXeyhhv16
 b+rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=LTwp6VMRN0iU/Sb0IxKAWqEYzoUHEVEF9OFIyN//T4o=;
 b=qgelx6P8t3OxpjzQZDtJnqXTUdU6N3sk0Gw41VCcXuXfeWD7nGvBvam67laZ9fKlyr
 oa6+XNgtzgVfnKgYCOilGO2s1mETeMIa/8NUTx28tlnmg6fDjv4xWpkM8gi2iAEBIcDQ
 2m7zCTIUYsDsmchps96XnitQm3cWn5uc12hcSRJFstMAfniSOYZKz48HRoyZHMyOljml
 sSO41QDd6zQIP4qVHG88stHNv2wwQjNHHqXz6MO0UGTsdUhZPr355uvtDLNfsxRHldhr
 fvScW+YAg01kme5U1ckLYPc/i8KwtP20NAoSrYJMet00Uzr+cKuQBrFvoc6NJWKaQI8X
 bbqQ==
X-Gm-Message-State: ANhLgQ3cBZc0ofEaW8OF7pBX8Izp/7VmwIRKrmwEs+GzxtWCLVD0aqAx
 oURrmKnBf/Dyz1nTAOTV0IQ=
X-Google-Smtp-Source: ADFU+vtdXdtVR9DGjo6DGHbY8qkhNm0eVBwnwF3+H9eqKy2fVFrUHJaxSIgZoNiiX5h/Yg7rZ5J2gw==
X-Received: by 2002:a7b:c950:: with SMTP id i16mr19725464wml.97.1584861690577; 
 Sun, 22 Mar 2020 00:21:30 -0700 (PDT)
Received: from localhost.localdomain
 (134.red-83-46-193.dynamicip.rima-tde.net. [83.46.193.134])
 by smtp.gmail.com with ESMTPSA id y10sm15981097wma.9.2020.03.22.00.21.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 22 Mar 2020 00:21:29 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: mt7621-pci: avoid to set 'iomem_resource' addresses
Date: Sun, 22 Mar 2020 08:21:28 +0100
Message-Id: <20200322072128.4454-1-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
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
Cc: neil@brown.name, driverdev-devel@linuxdriverproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Setting up kernel resource 'iomem_resource' for PCI with
addresses parsed from device tree gots into a conflict within
the usb xhci driver:

xhci-mtk 1e1c0000.xhci: can't request region for resource [mem 0x1e1c0000-0x1e1c0fff]
xhci-mtk: probe of 1e1c0000.xhci failed with error -16

Don't assign it and maintain the default addresses for this
resource seems to fix the problem. Checking legacy driver it
is being only  setting the 'ioport_resource'.

Fixes: 09dd629eeabb ("staging: mt7621-pci: fix io space and properly set resource limits")
Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 drivers/staging/mt7621-pci/pci-mt7621.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/mt7621-pci/pci-mt7621.c b/drivers/staging/mt7621-pci/pci-mt7621.c
index 1282a0815102..f1b35153ddd1 100644
--- a/drivers/staging/mt7621-pci/pci-mt7621.c
+++ b/drivers/staging/mt7621-pci/pci-mt7621.c
@@ -682,8 +682,6 @@ static int mt7621_pci_probe(struct platform_device *pdev)
 	}
 
 	/* set resources limits */
-	iomem_resource.start = pcie->mem.start;
-	iomem_resource.end = pcie->mem.end;
 	ioport_resource.start = pcie->io.start;
 	ioport_resource.end = pcie->io.end;
 
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DA3386EE33
	for <lists+driverdev-devel@lfdr.de>; Sat, 20 Jul 2019 09:29:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B20C820464;
	Sat, 20 Jul 2019 07:29:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hBT5RRFze3+h; Sat, 20 Jul 2019 07:29:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 04A8F2044B;
	Sat, 20 Jul 2019 07:29:16 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6BA441BF599
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 20 Jul 2019 07:29:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 61AE084E38
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 20 Jul 2019 07:29:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SLu6fjGcCacJ
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 20 Jul 2019 07:29:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9622C84CCE
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 20 Jul 2019 07:29:12 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id f17so30837860wme.2
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 20 Jul 2019 00:29:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6AyRssGP+b2kzaBqUiX7CnVKl20718//lLdphPoFxFg=;
 b=FfaO+54JikusJls+yOm5enxeQi3+nS4Pvt8+FIoPaY0DmOulF3dmkPsk7U8o0snsJe
 4okaYQM4HTsX0Fp/wWkeR7kiaC+1AdgxkVab9ZMGQIUrwGCESk5MamFnKpmiGErUWLI5
 ZIVHnOE1t7/JP7Al7SUhexGbMkpFiHx0kHayvWPgmFdwwJR+x43EvJf7ADvpSN2Vjl4J
 4FBjyp7ECl57+utycFSbNRrpkA5NJFiQt2taFeRSUvX4orUzgGDCQLxRJwiI6poSevVA
 mCwjl50y4wmCAznzJtoi44GxE70xbl5WDmUnm7eoKoxsMPhLRWVw1zIVY57IQzOl1s0Z
 hykw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6AyRssGP+b2kzaBqUiX7CnVKl20718//lLdphPoFxFg=;
 b=T3zeEI2KLObz1uKZSx/2ushf7Bm1vrPeINvsrviftKO9Lw6H5GpTvLiDvKtiftZzD2
 aQoW1eTroMDqcp5Aw0XBFcGnOOnnYMzgp3zSxi2SAXdkZGKTorm8NoADfaYQfUFzBF2A
 2482YrHCxv2E1lc04FulHm6GE1e7SvngaQoWYa4/TvcOavoxD9Pyy/wYiocDtbQGq1dV
 kYWBWJ98f3G0hz2z23MwQNGqPzTGxhu4vXsiUPJG4ldDFbtDT+pCsj8P59QUFvGAHC5i
 NPvTmYl+Ao47n+sJjAF1SrAzkXeJbb9rAHPa2Jh/1tOxmbwjbldOfHCIdjxxuJNjOLjF
 aQTg==
X-Gm-Message-State: APjAAAVCA6fFekk/VJj3wwTkKplJ7Lg1UFooRwGYCG3XMpdB6LlcrIM1
 MUscsLWT78JkmF0xN7DYqqU=
X-Google-Smtp-Source: APXvYqx+4jb9i2xrfgZ/XaSUV/j3Y/7UkxSF7nkF7xRoacT3ubgTIbGtnwEQDw6GlNX7LKPqJmGqYw==
X-Received: by 2002:a1c:a101:: with SMTP id k1mr53288710wme.98.1563607750857; 
 Sat, 20 Jul 2019 00:29:10 -0700 (PDT)
Received: from localhost.localdomain (20.red-83-39-245.dynamicip.rima-tde.net.
 [83.39.245.20])
 by smtp.gmail.com with ESMTPSA id x83sm33297038wmb.42.2019.07.20.00.29.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sat, 20 Jul 2019 00:29:10 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: mt7621-pci: avoid use 'err' local variable
Date: Sat, 20 Jul 2019 09:29:08 +0200
Message-Id: <20190720072908.16795-1-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.19.1
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

Function 'mt7621_pcie_request_resources' is using 'err'
local variable to get value returned from 'devm_request_pci_bus_resources'
and returning after that. This is not needed at all. Instead of that
just directly return returned value by the function which is also
returning zero on success.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 drivers/staging/mt7621-pci/pci-mt7621.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/staging/mt7621-pci/pci-mt7621.c b/drivers/staging/mt7621-pci/pci-mt7621.c
index 2e37fd136ab8..6b98827da57f 100644
--- a/drivers/staging/mt7621-pci/pci-mt7621.c
+++ b/drivers/staging/mt7621-pci/pci-mt7621.c
@@ -617,17 +617,12 @@ static int mt7621_pcie_request_resources(struct mt7621_pcie *pcie,
 					 struct list_head *res)
 {
 	struct device *dev = pcie->dev;
-	int err;
 
 	pci_add_resource_offset(res, &pcie->io, pcie->offset.io);
 	pci_add_resource_offset(res, &pcie->mem, pcie->offset.mem);
 	pci_add_resource(res, &pcie->busn);
 
-	err = devm_request_pci_bus_resources(dev, res);
-	if (err < 0)
-		return err;
-
-	return 0;
+	return devm_request_pci_bus_resources(dev, res);
 }
 
 static int mt7621_pcie_register_host(struct pci_host_bridge *host,
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

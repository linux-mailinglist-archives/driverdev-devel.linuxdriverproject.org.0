Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DFD318E193
	for <lists+driverdev-devel@lfdr.de>; Sat, 21 Mar 2020 14:36:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B381787475;
	Sat, 21 Mar 2020 13:36:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Pu7EgNTyjffG; Sat, 21 Mar 2020 13:36:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C6D4A873F3;
	Sat, 21 Mar 2020 13:36:35 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 56AA81BF28C
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 21 Mar 2020 13:36:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4F56E87BC2
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 21 Mar 2020 13:36:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ft9TDl-9qSbR
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 21 Mar 2020 13:36:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4B68287AFE
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 21 Mar 2020 13:36:31 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id s1so10847423wrv.5
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 21 Mar 2020 06:36:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=S33FqmLb1IvQteufOdbSc4pJlKnJu4HfQ0TOXjYMBig=;
 b=vLApdbeDnFnAxBi2bhou1gK5sSR11SM1tJj4GYnv6KeWm9DiK9VQ1Qhz70Wk3hfYll
 9pSuioLCEzrRuBMx4/2RAB0m0gdpU30E7WdVoOCyKo3uyVQFW1Ol9jGtWjHVflHNb7ew
 86/gFJSsqzoTFra0illRdS8ifMorSD4HO1Dj9JYc8HCfwtm4r/4bw2uzWTIDqplYogzi
 nCSMuEmd5DghJ78MFACpt8QOwCOaxIjPpeYrPnXCDfnHecVwkZp5Lk9TGdHoX78aMjle
 yt8jAR4TwFD83OtPXn6y01fDRxW9vaOPWRhOFjkSuOPgZZXHNVuwK1qQr62kvqPe7VVg
 Cmjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=S33FqmLb1IvQteufOdbSc4pJlKnJu4HfQ0TOXjYMBig=;
 b=naqSEchU9uJUwJXmhCLrUb/22DouHZtOr6CZ/zBHYbA6FSHOgD8Fbp6AjLokx1lFdd
 w4bh3wv/ysJ0fPPqEA49PIHPv4XV8LFKjmTIBRAZV24DqECbOc6Nw7p5cKSEG42FUPGp
 1ag5Y9cyqb3kQgvkBPkOrQEUPv7SnZ9bo6Cx9gjyPKtnRMUujhkStSf5TqbZ3j1zX+XO
 wr1BmTFTst44ckZn9U4kWtVWGIJmYieaCt75FkRM/8/uscQd367C8T9/TVVtMA3qJdao
 SdC9sqA99OazV+gIS+XMrFQzA5HF1r/DMu4AXOG1kVe8zFk54/6PFkQ2ovob+LrA8/yj
 2fyQ==
X-Gm-Message-State: ANhLgQ3dOR7gemw0Z3x7At7AMiU+rI+jbUcbIbCmr4eu2s3hELrljtLd
 U+B5Az9d/Iqj4lkoQuSKsa0=
X-Google-Smtp-Source: ADFU+vuqJiDRSSIfZgfAOWuOsHyThroxDnqzlglVmYBJWi6UnzYf+4dHoqW7jIMlL4gWGHyynJ7oeA==
X-Received: by 2002:adf:8b5c:: with SMTP id v28mr16450642wra.98.1584797789686; 
 Sat, 21 Mar 2020 06:36:29 -0700 (PDT)
Received: from localhost.localdomain
 (134.red-83-46-193.dynamicip.rima-tde.net. [83.46.193.134])
 by smtp.gmail.com with ESMTPSA id 195sm12676043wmb.8.2020.03.21.06.36.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sat, 21 Mar 2020 06:36:29 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 3/4]  staging: mt7621-pci-phy: use builtin_platform_driver()
Date: Sat, 21 Mar 2020 14:36:23 +0100
Message-Id: <20200321133624.31388-3-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200321133624.31388-1-sergio.paracuellos@gmail.com>
References: <20200321133624.31388-1-sergio.paracuellos@gmail.com>
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

Macro builtin_platform_driver can be used for builtin drivers
that don't do anything in driver init. So, use the macro
builtin_platform_driver and remove some boilerplate code.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 drivers/staging/mt7621-pci-phy/pci-mt7621-phy.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/staging/mt7621-pci-phy/pci-mt7621-phy.c b/drivers/staging/mt7621-pci-phy/pci-mt7621-phy.c
index 63dfbb85af11..8100d8286365 100644
--- a/drivers/staging/mt7621-pci-phy/pci-mt7621-phy.c
+++ b/drivers/staging/mt7621-pci-phy/pci-mt7621-phy.c
@@ -361,12 +361,7 @@ static struct platform_driver mt7621_pci_phy_driver = {
 	},
 };
 
-static int __init mt7621_pci_phy_drv_init(void)
-{
-	return platform_driver_register(&mt7621_pci_phy_driver);
-}
-
-module_init(mt7621_pci_phy_drv_init);
+builtin_platform_driver(mt7621_pci_phy_driver);
 
 MODULE_AUTHOR("Sergio Paracuellos <sergio.paracuellos@gmail.com>");
 MODULE_DESCRIPTION("MediaTek MT7621 PCIe PHY driver");
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

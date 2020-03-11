Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 38A7C1814C6
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Mar 2020 10:27:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E992F868FB;
	Wed, 11 Mar 2020 09:27:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NGVHbusrvPQY; Wed, 11 Mar 2020 09:27:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2EADB86813;
	Wed, 11 Mar 2020 09:27:17 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6BC871BF5DB
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 09:27:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6540E87E5E
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 09:27:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aha-ugtXQMoT
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 09:27:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id AC0CF87D55
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 09:27:13 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id v11so1587863wrm.9
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 02:27:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8zcVBsBoabCaQeAGx8snnrpq9udUT2TtK+GKk/teM6E=;
 b=dSVDRRGTwXkTpakinSnKy/zPLLnPa/yFBJMckA9afH2Ixmd+hTxI8Hvwv/A7NQ4gbx
 72P+EO3GquWk0XISpD3QkWX61r0nq0g8KGLSZoXTAsIP8LaglmmdVM5rXhzXZVmIj7rP
 dEH2Bsphs7ih0XtPkU913Ui5SKkD2C2MwkcPQkblSOq/4NjeIWuYey7fRrGnohsMnx7y
 muIoi58bd5lQuRtuFGLMxJn31MYJA009gVMrEaVjRCsbGF4tszkD/zTAKwl1GmnBR3aJ
 c98N4ZSRnehhqilTV/VEqiwGuHRtANO/FQIjQmFwyxrYUBtS+MiBQ44/KwTIkqmOlcgr
 Mx9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8zcVBsBoabCaQeAGx8snnrpq9udUT2TtK+GKk/teM6E=;
 b=owiqKItquvTq1/GJjxOqn87Rwvb0ZuGk9ldifi8gvPPBjXLHyXlwXmGe/sVIfX3zzs
 iauSZ6ifw2l+siL2skD1jZSsoyodxk3kicGtqGrADrRNUnST3Oq4iY8B8wm+L3Q6qK+U
 exA5Rub0pVsTAH7r/h47fZcOdk/9f2AetrKp6J8gCUdYabyjNQfyESqqy71iTe2cb3bi
 7Gs8fVI10OZDl9uN9Qmo0haoXwyQQWMRBC3wdShOo3iZdT4HD+iGg5a/7g4LeYmkJ0oE
 ZCle5tOsXH1JxiorqrTC0wTCVQdXx0Lv4w19yMhjXj/8JAiTyJGZn+1rhtLZlc4FOGbi
 6J/A==
X-Gm-Message-State: ANhLgQ3mleli6DRQLvsXmBOE0G7OHdlC93G3b3KWAjR9M7bv+xDG4RaI
 BUIT2cv+/CBbIfKW4XWAIMQ=
X-Google-Smtp-Source: ADFU+vt1ZIoCaKd11wRM0/ACHWAOFLTuB0R7VP2qSnezCVQDHrwJWGnt9mjTWw13CFfmYkh+upzq1g==
X-Received: by 2002:adf:ea90:: with SMTP id s16mr237121wrm.286.1583918832164; 
 Wed, 11 Mar 2020 02:27:12 -0700 (PDT)
Received: from localhost.localdomain
 (134.red-83-46-193.dynamicip.rima-tde.net. [83.46.193.134])
 by smtp.gmail.com with ESMTPSA id v14sm33075156wrr.34.2020.03.11.02.27.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 11 Mar 2020 02:27:11 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 2/5] staging: mt7621-pci: change value for 'PERST_DELAY_US'
Date: Wed, 11 Mar 2020 10:27:04 +0100
Message-Id: <20200311092707.23454-3-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200311092707.23454-1-sergio.paracuellos@gmail.com>
References: <20200311092707.23454-1-sergio.paracuellos@gmail.com>
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
Cc: ryder.lee@mediatek.com, driverdev-devel@linuxdriverproject.org,
 weijie.gao@mediatek.com, gerg@kernel.org, neil@brown.name
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Value of 'PERST_DELAY_US' is too high and it is ok just
to set up to 100 us.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 drivers/staging/mt7621-pci/pci-mt7621.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/mt7621-pci/pci-mt7621.c b/drivers/staging/mt7621-pci/pci-mt7621.c
index 78fdf7d51514..d58c880d3818 100644
--- a/drivers/staging/mt7621-pci/pci-mt7621.c
+++ b/drivers/staging/mt7621-pci/pci-mt7621.c
@@ -83,7 +83,7 @@
 #define MEMORY_BASE			0x0
 #define PERST_MODE_MASK			GENMASK(11, 10)
 #define PERST_MODE_GPIO			BIT(10)
-#define PERST_DELAY_US			1000
+#define PERST_DELAY_US			100
 
 /**
  * struct mt7621_pcie_port - PCIe port information
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

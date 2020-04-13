Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D0A031A6925
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 Apr 2020 17:50:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8100620485;
	Mon, 13 Apr 2020 15:50:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yEUAXlnsT+Al; Mon, 13 Apr 2020 15:50:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id EDEE020468;
	Mon, 13 Apr 2020 15:50:29 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 57D2D1BF318
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 13 Apr 2020 15:50:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 54AEB203A0
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 13 Apr 2020 15:50:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o+TL16SHi+Qh
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 13 Apr 2020 15:50:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 083AC20006
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 13 Apr 2020 15:50:23 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id a25so10653917wrd.0
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 13 Apr 2020 08:50:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=DT0ECYh6BmBBFJNznrOcZJ+w9m4cCZvvBNij84SCYNg=;
 b=p9B+cR81n9QjaMTTuxcKOoGgCPIozJcXRRQnBBirKvVqp53CB12c7/JP5x3dDUIFHP
 46cJotYK5Tw54w/NN00LzEtV64Ofr87bqxEK43f+NvvbFEri3oU+UITRbKedCXzwXJxj
 F7yf68svPQiyyfLmm8zRf8/hxb2wXasK6DHRlCBtKwldePkAB1uaJAZxqL6f9YDg8hge
 0KMii1GDMxWvEL3lqHPGyZ4Hsb68uk0YlEsgnHmdV2tdXnRO8Ub4BAmjG98xr2WBrTYN
 Ayr9E403fi/7Ic5b5dKRLiddVlFjiou+oyk+foUJYLFiCIUlQqOq6kLShpQy+rpsOrg6
 LayA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DT0ECYh6BmBBFJNznrOcZJ+w9m4cCZvvBNij84SCYNg=;
 b=h9499KKu1/v6IbF7SdHdGWdjaWKcchlYsWV7bTfSmLQCnWt+IevkPWiM7gHNuCSmeC
 r9Jjh2a50h2H9/Xju0LC/q+QWd28YojWivy+SAUPPH22Zj/to7XKOHSxYx/GnD9Ou9GI
 P5h85cmXcQ/23/IH4taD2iEdnEqFHatFEHQtDBGUA/oOk9etpWfDLreR4OQvKAE4OyXJ
 zrVbOvsRRDYotLvaBhMpi5CnITnKlrXFIZSdWxDCvdLiHo5vLeCLJ6vBJ7rNEyNLayfg
 Ic2Lwz4XNNnv9cJibbubD3QEa8cNrnjZaiHewb9X3yp6nkjff49lNymNzvHjW8kCAUR5
 d+EA==
X-Gm-Message-State: AGi0PuboEWCaClS/aDZ1NVopcdg4OGKM/ExcVJYKabsIigSbDuWU7T4M
 wRb+qZOSZ2llpbX1ZQqjkkQ=
X-Google-Smtp-Source: APiQypK/bn27JvtV6fviCLCYwQlVn4jJIe641aRWSM4ESJpRBpqZ7qgMh5a3WXpZxtgTQTv/W/6y4g==
X-Received: by 2002:adf:fa41:: with SMTP id y1mr18385254wrr.131.1586793021492; 
 Mon, 13 Apr 2020 08:50:21 -0700 (PDT)
Received: from localhost.localdomain
 (134.red-83-46-193.dynamicip.rima-tde.net. [83.46.193.134])
 by smtp.gmail.com with ESMTPSA id q9sm15158828wrp.61.2020.04.13.08.50.20
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 13 Apr 2020 08:50:21 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 2/3] staging: mt7621-pci: add clarification comment in
 'mt7621_pcie_init_virtual_bridges'
Date: Mon, 13 Apr 2020 17:50:17 +0200
Message-Id: <20200413155018.31921-2-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200413155018.31921-1-sergio.paracuellos@gmail.com>
References: <20200413155018.31921-1-sergio.paracuellos@gmail.com>
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

Add a comment explaining a bit what is going on in this function.
It would be helfulp for other people for a better understanding
of the code.

Suggested-by: NeilBrown <neil@brown.name>
Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 drivers/staging/mt7621-pci/pci-mt7621.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/staging/mt7621-pci/pci-mt7621.c b/drivers/staging/mt7621-pci/pci-mt7621.c
index 6a9f4b6cdd93..eede8d9268ac 100644
--- a/drivers/staging/mt7621-pci/pci-mt7621.c
+++ b/drivers/staging/mt7621-pci/pci-mt7621.c
@@ -622,6 +622,11 @@ static int mt7621_pcie_init_virtual_bridges(struct mt7621_pcie *pcie)
 	if (pcie_link_status == 0)
 		return -1;
 
+	/*
+	 * Assign device numbers from zero to the enabled ports,
+	 * then assigning remaining device numbers to any disabled
+	 * ports.
+	 */
 	n = 0;
 	for (i = 0; i < PCIE_P2P_CNT; i++)
 		if (pcie_link_status & BIT(i))
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

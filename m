Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E8FE12C0258
	for <lists+driverdev-devel@lfdr.de>; Mon, 23 Nov 2020 10:37:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 44F3620490;
	Mon, 23 Nov 2020 09:37:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id l+HKOrgKch7Y; Mon, 23 Nov 2020 09:36:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9478B204AA;
	Mon, 23 Nov 2020 09:36:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 46ACA1BF2BC
 for <devel@linuxdriverproject.org>; Mon, 23 Nov 2020 09:36:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4383186030
 for <devel@linuxdriverproject.org>; Mon, 23 Nov 2020 09:36:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jS+O7ZboztUx for <devel@linuxdriverproject.org>;
 Mon, 23 Nov 2020 09:36:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7E03B86018
 for <devel@driverdev.osuosl.org>; Mon, 23 Nov 2020 09:36:45 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id u12so17947652wrt.0
 for <devel@driverdev.osuosl.org>; Mon, 23 Nov 2020 01:36:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=eBBTt+G2VGrOAJTWpejgT8wIfvWXvBnTzJLyhpd/Drk=;
 b=pmd9wBwWousq9LxOP8rZitImPnxawe3B+3MrIbVQhFQcucJ8jQB2SlY1QYVQ0OHR+p
 DkOIroWBK8AeQRpFeuvTNyHrs9eyQNNLn+DeyE0y7PtYj0y/aeRm7ZUnLR+Q2vvCkusk
 HtU1vdOg15GnESAG/d8PzBW2KQ5CVBPCKvPo7v7NF1pQlUBz5IT4WE8mSuH4840oGITT
 INuU8zptb+WRjaWqNgpEEUq2/Fzaq1WP9CbnDN3McUZMNLKw3N0vbx4R+WI5Nl5J3z7b
 4JI0Ikbl5ktfGJ0nE4QLRDmGsmMG4G3Pu6pGSf0y6tcUs4x5zjmsYGCCzYxJaPPO1V0c
 glpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=eBBTt+G2VGrOAJTWpejgT8wIfvWXvBnTzJLyhpd/Drk=;
 b=CIys0059crBn+uFDt4f0rD8lIUNuaH6OkeyysIsoVbRKp8ONzGg5ZlDjO8eCrBnw2Q
 eoeYyqN7fzrp3WqeNyiGkrLXJV3ahcsMKN0T5yO5/l7mCFfRnGSTjfIM3G+OjS4kuIOC
 SwuypEjLp5eYWf2/riMeBaEPoDkHPrO4kU7OCOdau3FCHX/eXTz39NpYOcU35KlEzNG9
 mcbTK+8eLE9JAB/Abds2pivZtBGYJm1X68GqRW4PAAFoEgwRiisYSPrkohbWd4hiRPh4
 x6qQy3A8bTZPzxS/8tGTnyXHbIvv7n4uEbBqMtD+0qvk5nUKeq5iq4c2/Ww4ZUluS9TD
 YH/Q==
X-Gm-Message-State: AOAM530O55KnO+9wiDQKxWDr9IhJCTR02fs/jlfXhP9b9UyYPcUlQgQt
 FJ+ugpqUeKv5QixBIugL/uKj7C3bYH1SdA==
X-Google-Smtp-Source: ABdhPJz/LYGy/Ly5FbB4P8wPViHDYrZ0bkh+ESyve+tRfVFzef+7I21XMU/NuhO28HDoJub9t7pZhQ==
X-Received: by 2002:adf:9e4c:: with SMTP id v12mr28782395wre.22.1606124204095; 
 Mon, 23 Nov 2020 01:36:44 -0800 (PST)
Received: from localhost.localdomain (188.red-81-44-87.dynamicip.rima-tde.net.
 [81.44.87.188])
 by smtp.gmail.com with ESMTPSA id s202sm16073807wme.39.2020.11.23.01.36.42
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 23 Nov 2020 01:36:43 -0800 (PST)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 4/7] staging: mt7621-pci: review 'pci_host_bridge' assigned
 variables
Date: Mon, 23 Nov 2020 10:36:34 +0100
Message-Id: <20201123093637.8300-5-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201123093637.8300-1-sergio.paracuellos@gmail.com>
References: <20201123093637.8300-1-sergio.paracuellos@gmail.com>
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
Cc: devel@driverdev.osuosl.org, neil@brown.name
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

PCI kernel apis now set some variables related with pci_host_bridge
by default and it is not necessary to setup them in driver code.
Host bridge parent device is set by default to the platform device
and 'swizzle_irq' is also set to its default function. These two
are not necessary to be set here. Hence remove them.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 drivers/staging/mt7621-pci/pci-mt7621.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/mt7621-pci/pci-mt7621.c b/drivers/staging/mt7621-pci/pci-mt7621.c
index 1f9e75db5298..98569d9b70f2 100644
--- a/drivers/staging/mt7621-pci/pci-mt7621.c
+++ b/drivers/staging/mt7621-pci/pci-mt7621.c
@@ -654,10 +654,8 @@ static int mt7621_pcie_register_host(struct pci_host_bridge *host,
 	struct mt7621_pcie *pcie = pci_host_bridge_priv(host);
 
 	list_splice_init(res, &host->windows);
-	host->dev.parent = pcie->dev;
 	host->ops = &mt7621_pci_ops;
 	host->map_irq = mt7621_map_irq;
-	host->swizzle_irq = pci_common_swizzle;
 	host->sysdata = pcie;
 
 	return pci_host_probe(host);
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

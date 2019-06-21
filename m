Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D8804E072
	for <lists+driverdev-devel@lfdr.de>; Fri, 21 Jun 2019 08:15:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E875186E3F;
	Fri, 21 Jun 2019 06:15:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GHpVyywT6X4G; Fri, 21 Jun 2019 06:15:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id BA80B86AF2;
	Fri, 21 Jun 2019 06:15:27 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4B4C71BF9B6
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 21 Jun 2019 06:15:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4885C86AF2
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 21 Jun 2019 06:15:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jC6Ms5Gd773s
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 21 Jun 2019 06:15:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6D35E86AEE
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 21 Jun 2019 06:15:22 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id n4so4099724wrs.3
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 20 Jun 2019 23:15:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rgmbyzcervGKo29+D20MslAuTVJtSl+0IBgsRcXrJ7M=;
 b=HztJF+jQGgAxS7oH4WOGpnG7pfLgd3KtxPmfTEbI91iTNcKGiczmunw5gHQutO6wlB
 6ydnt1+qVI/J7qdDnrFjhymMlUEIj0wZNe81FZmdpXeXTavIiK0vpciNq5QsdxQecnwJ
 uLMWzM+mnG6WbkM6v9TJzH2+Mx/lNWWvScwHGM32463Z+UFtFx3xTSGBosANZ8fvPXlK
 jkusTTiXWpgmbwswlFWNhB6vGQ8KQVROvpVoRh53PVfOFfHTcgzwpiMr3nHryuXvMbIf
 akrEkmoYG2bX3dIbN2Toj42AZQlaTO+SalXMd+IcTO8KCZTSA6TWuz+OUK8mpIMgGx4n
 kpMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rgmbyzcervGKo29+D20MslAuTVJtSl+0IBgsRcXrJ7M=;
 b=h4XiEApiKWI26LeY9ktV0lGPtaFN0K0+8NXQynZc4fkwP/KVbkXJ+q5TotJXlCRj3x
 EuoLixSJsAQKUGNDKyp5VW8ZXkZJjMm3NhrsqG7Oi1kEQ/FmzKH8OvqGVJeNEpGGh1pP
 mY1TXkBoYZYI2GcIg2KnCXSO1UIZZtgbThcTNHdtZ2hADJTiY6gkj3qHgcz3vjVNvVC7
 2gp5hjBFFZ9TqUoWM/1AV3wkZ8xSxovoTZC92fnRChWyftAKaOmDIuzlpv6Ghflsgv9L
 V3JyFmLtyIW37UJvxq2/uZXuJGCuyVwao6LhSHLjlwIc1Q/yVhah8C1MMidhf4fKbMVD
 R0BA==
X-Gm-Message-State: APjAAAXrKyE52rCvNWozORhfuGM8A5N0Q22hG8t4rHy3MIb0uGTzaMSt
 79Y5kGHHPKIrIgnbw9LX75GYVs7O
X-Google-Smtp-Source: APXvYqwjOuLACbUNf3WCQUWD/b4WgSWmJgpydiYY/0yNaE9D8RsBC6NrvMpc4kHSFSB2gOykJIuPUQ==
X-Received: by 2002:adf:ec0f:: with SMTP id x15mr7526079wrn.165.1561097721148; 
 Thu, 20 Jun 2019 23:15:21 -0700 (PDT)
Received: from localhost.localdomain (34.red-88-0-78.dynamicip.rima-tde.net.
 [88.0.78.34])
 by smtp.gmail.com with ESMTPSA id a2sm2155519wmj.9.2019.06.20.23.15.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 20 Jun 2019 23:15:20 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 2/4] staging: mt7621-pci: add phy exit call if phy_power_on
 call fails
Date: Fri, 21 Jun 2019 08:15:15 +0200
Message-Id: <20190621061517.24089-3-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190621061517.24089-1-sergio.paracuellos@gmail.com>
References: <20190621061517.24089-1-sergio.paracuellos@gmail.com>
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
Cc: neil@brown.name, driverdev-devel@linuxdriverproject.org, gerg@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Add missing call to 'phy_exit' function if the phy_power_on call fails.
With this call added the error path is properly handled.

Fixes: 07420a02b003 ("staging: mt7621-pci: use gpio perst instead of builtin behaviour")
Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 drivers/staging/mt7621-pci/pci-mt7621.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/mt7621-pci/pci-mt7621.c b/drivers/staging/mt7621-pci/pci-mt7621.c
index f6b91b29fb9c..da2e180f8d19 100644
--- a/drivers/staging/mt7621-pci/pci-mt7621.c
+++ b/drivers/staging/mt7621-pci/pci-mt7621.c
@@ -436,6 +436,7 @@ static int mt7621_pcie_init_port(struct mt7621_pcie_port *port)
 	err = phy_power_on(port->phy);
 	if (err) {
 		dev_err(dev, "failed to power on port%d phy\n", slot);
+		phy_exit(port->phy);
 		return err;
 	}
 
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

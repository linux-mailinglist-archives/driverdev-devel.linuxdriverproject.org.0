Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F6862B966A
	for <lists+driverdev-devel@lfdr.de>; Thu, 19 Nov 2020 16:43:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9F83D86C43;
	Thu, 19 Nov 2020 15:43:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CYaKs+gkd4y5; Thu, 19 Nov 2020 15:43:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4330286C0C;
	Thu, 19 Nov 2020 15:43:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A49F61BF21A
 for <devel@linuxdriverproject.org>; Thu, 19 Nov 2020 15:43:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9D06687418
 for <devel@linuxdriverproject.org>; Thu, 19 Nov 2020 15:43:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id E1vvY8UBZjtF for <devel@linuxdriverproject.org>;
 Thu, 19 Nov 2020 15:43:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3F6C487402
 for <devel@driverdev.osuosl.org>; Thu, 19 Nov 2020 15:43:45 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id w24so7169097wmi.0
 for <devel@driverdev.osuosl.org>; Thu, 19 Nov 2020 07:43:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=yhiGf2+miDL4vNktmWcMghT5Zn6/WsNTcEagUPj9ukA=;
 b=rWk6W3brv88vsU/iYyjfsBOdXNSyUqUV7naVeiUdWaqxxC8HC/GhM42dtOeH3t6Dus
 L2oE7+8R3eC1G1NWnZUHZWO80BhIVO/YFL7i+wG7+hpzXtU3kaThvHBXzrshG9DA21Vk
 8nqaC794OPFnhRad0GaYHSYxsFWM5cuJIcpcJgZSQ958t84cGfP5rXWaVdIeFoB6f2iI
 gUuPpysYmLxu862HKapfYM7JcGlhKsOlA6TxJWP6S6cC0DxlfmtFLlWLXaJb3OCrQ5pG
 M3Y9IalyIOdtQCPvh0MkHuPK2ljRal51iKDO3j9443z6ne3TevqhUjONZeplBSNxojx6
 uBcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yhiGf2+miDL4vNktmWcMghT5Zn6/WsNTcEagUPj9ukA=;
 b=Vox3CoWAc7ZB5jvPe7vBhtZoE9Wrt/fWz2fwuidemRaAbWerOsjwb0ATd2il+pl8Vo
 dIMh9pYGNft5KpZRoRerHrqiViJWLvFJOOlMe3Q0WRh6zjoT8ZzEIZy5Gh6Sj6v9A7GR
 qjCRBrBb474vh6gXt6st9g5Oy7o98uSnRwqHXz7FE3JtlfdpSLMgPFbuR8xePDfoHCOD
 iUmZC2RRqO/yTazmBz5M2lWc5D6pYudwuimXMJclF8BLUKtb6UsvH3vr9ioaLIED46mT
 WG4M8GKw4djrwdroGsmewPrDl235MQAGFFRZEEtFm/9yGxtWax5iZtmSALViPHIYg2D9
 8Mrw==
X-Gm-Message-State: AOAM531LPQi3IAJ9FRM1Ght/twtJ2hZoBRP3au9D/DGXKzwk3pXAib43
 /7suyFLScMBWqnv0FNhEW5M=
X-Google-Smtp-Source: ABdhPJwFPG6ozjMnbbPsPZjXveE/2g0qc66JnSl0kmSBRhn9RIEIQwYzmmQkiRZp8BbX6UvrROmgVA==
X-Received: by 2002:a1c:230b:: with SMTP id j11mr4909760wmj.12.1605800623834; 
 Thu, 19 Nov 2020 07:43:43 -0800 (PST)
Received: from localhost.localdomain
 (234.red-79-158-79.dynamicip.rima-tde.net. [79.158.79.234])
 by smtp.gmail.com with ESMTPSA id w10sm181303wra.34.2020.11.19.07.43.42
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 19 Nov 2020 07:43:43 -0800 (PST)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: vkoul@kernel.org
Subject: [PATCH v5 3/4] MAINTAINERS: add MT7621 PHY PCI maintainer
Date: Thu, 19 Nov 2020 16:43:36 +0100
Message-Id: <20201119154337.9195-4-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201119154337.9195-1-sergio.paracuellos@gmail.com>
References: <20201119154337.9195-1-sergio.paracuellos@gmail.com>
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, kishon@ti.com,
 robh+dt@kernel.org, neil@brown.name
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Adding myself as maintainer for mt7621 pci phy driver.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 MAINTAINERS | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index aefbbecfb266..31f808e58e73 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -11100,6 +11100,12 @@ S:	Maintained
 F:	Documentation/devicetree/bindings/i2c/i2c-mt7621.txt
 F:	drivers/i2c/busses/i2c-mt7621.c
 
+MEDIATEK MT7621 PHY PCI DRIVER
+M:	Sergio Paracuellos <sergio.paracuellos@gmail.com>
+S:	Maintained
+F:	Documentation/devicetree/bindings/phy/mediatek,mt7621-pci-phy.yaml
+F:	drivers/phy/ralink/phy-mt7621-pci.c
+
 MEDIATEK NAND CONTROLLER DRIVER
 L:	linux-mtd@lists.infradead.org
 S:	Orphan
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

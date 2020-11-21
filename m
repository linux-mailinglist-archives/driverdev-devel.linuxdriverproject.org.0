Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EC6C12BC054
	for <lists+driverdev-devel@lfdr.de>; Sat, 21 Nov 2020 16:50:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 17C9620456;
	Sat, 21 Nov 2020 15:50:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Da9qaKn+H+ZP; Sat, 21 Nov 2020 15:50:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D8E6A20428;
	Sat, 21 Nov 2020 15:50:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 756901BF2F9
 for <devel@linuxdriverproject.org>; Sat, 21 Nov 2020 15:50:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 71F0920428
 for <devel@linuxdriverproject.org>; Sat, 21 Nov 2020 15:50:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 687HAYP0FKJP for <devel@linuxdriverproject.org>;
 Sat, 21 Nov 2020 15:50:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 6E7E420402
 for <devel@driverdev.osuosl.org>; Sat, 21 Nov 2020 15:50:45 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id 10so13809139wml.2
 for <devel@driverdev.osuosl.org>; Sat, 21 Nov 2020 07:50:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=LwoT1ZC6v4ZFk+JlctThgrwC1hEtu5vyzf2O45M+XG0=;
 b=dKjh0wYwqJVwuIf2AYQDGVM3mTWhAf3ZDZNawYTo1AuUqf5ZwqwNQ5TmZvJsFG/AzR
 B9O2EZuv3njmAAcv4hbBR4bVxZ/GgmEzeyJroK7jMvSqA9OIB95Ub3AkVfYi8UvH2huZ
 CLew8Ly86bRlulkRhTa0nd3+bRwR5PS8tNs0Vi8r2it6w3ente1pnZAIORBV5dtOxCgy
 dqCSpnFM2jyzCDjVcxjCHw6SgHVfRun4iZ3MzzM0Sh7LQOXxLshXQzrR+NUoFUlBDcqh
 p7K/v4uy2XQIq8y+ukzbYS1o7BSaxBUbXAEzSLAcn5GEknk+GwwgRefhKsD9K04Q9dqV
 FJIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=LwoT1ZC6v4ZFk+JlctThgrwC1hEtu5vyzf2O45M+XG0=;
 b=Vv1k/L76oaW9Ji1EoCvqaNvHHNj6wLvZ5f+cHlC+GL5Z5u2aLGBkGmbsz9gOmic8Tk
 cZP0N62tgsJYcWjMHaT7OibaSvMX5C/dDw0bDKf5XK705+caI1rt/D28JY4yA5tP84Rq
 wIWee7h0zUyTgJd81PXUx/MkkZp9mo7Xg2HePp2Jdtu7FnpRGG8xWfU56AanyGKjFvNZ
 zCwQzmnctBEzboBa2Dri0EMnehTEO2wfEEZEgqyabv+AzzHB17vVkf+8FaIqMWMCzAPJ
 dVNuElfeaQraoyo794fZcHhnSTjmlPWKPIimFCC1JJWkK/8H3VSR7y4U/ovNdxWH3/pp
 +NjQ==
X-Gm-Message-State: AOAM530rc55OOTcbe/mnaEwULilEVulIUQkzxWbz8wZFmc0YQdVpVw41
 wL5sDTp3qy9ZsTNZURcINUg=
X-Google-Smtp-Source: ABdhPJxuhOI/GVduFqflO/phZYTJWRHcNnLyIRIIfJaQaJS8ft12Zp73Mo9UXyUTuempyrGefFP4Eg==
X-Received: by 2002:a7b:c77a:: with SMTP id x26mr15320703wmk.63.1605973843652; 
 Sat, 21 Nov 2020 07:50:43 -0800 (PST)
Received: from localhost.localdomain
 (161.red-83-46-194.dynamicip.rima-tde.net. [83.46.194.161])
 by smtp.gmail.com with ESMTPSA id n128sm7959598wmb.46.2020.11.21.07.50.42
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 21 Nov 2020 07:50:43 -0800 (PST)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: vkoul@kernel.org
Subject: [PATCH v6 3/4] MAINTAINERS: add MT7621 PHY PCI maintainer
Date: Sat, 21 Nov 2020 16:50:36 +0100
Message-Id: <20201121155037.21354-4-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201121155037.21354-1-sergio.paracuellos@gmail.com>
References: <20201121155037.21354-1-sergio.paracuellos@gmail.com>
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
index f01ce8f451c8..c07967b9a654 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -11108,6 +11108,12 @@ S:	Maintained
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

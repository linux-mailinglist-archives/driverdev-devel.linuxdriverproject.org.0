Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9318118CC17
	for <lists+driverdev-devel@lfdr.de>; Fri, 20 Mar 2020 12:01:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9797A87577;
	Fri, 20 Mar 2020 11:01:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N5gKHZCIMTFB; Fri, 20 Mar 2020 11:01:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6570387558;
	Fri, 20 Mar 2020 11:01:40 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 893BA1BF307
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 20 Mar 2020 11:01:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8623287D6E
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 20 Mar 2020 11:01:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RSMy6bBjmt3G
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 20 Mar 2020 11:01:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8F04887D69
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 20 Mar 2020 11:01:32 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id v11so6849919wrm.9
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 20 Mar 2020 04:01:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=dlQKGM4LRskcPwsKVBJCuCCxYcgsFLJZlNDhyUTXcrg=;
 b=foAIsRtK+HCZTolt1Gz7P8bWFqsjGP9sd1Z5+A/3ONyrVHzQEvW4OEOhbRA9s3M8/t
 UJtpUfHZ7FqsOvCeFdj7R8fFyhYTN2fepYB9rQs8i7u/E232BRcHged++OXSKyCcIyvs
 mK5jfKU0cG4Qq7TBbPsAvfcC0qnCpN2qGrkGYkWZHDJ7M1t2LmHuC+pzpQrqugaE7Z8Y
 KMXfR5036tVE3yd9ZqA/Hsovz1r/OvgO0CTLFtxN2Ij4OBMaW6jBOtDHjhgUwTXoeBMY
 jMfosiW1IjB5zgYBce8LZdr7tc458rcHdTFnNR2bL97CVgeC2WW3q+FpAmb4KeOvcQpS
 9+rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=dlQKGM4LRskcPwsKVBJCuCCxYcgsFLJZlNDhyUTXcrg=;
 b=L1IJ9JsHRYI+6HKosUqvGzAhNTxtAX9QPb1soYDoR10r6go7ALVjJjFh3tqaFc9UG4
 ElAxscr7JHOfe5hx5ucJM2BD/q2oMslSJsyqasd7hEofzPl7wjkFGPWg9WESkpDUkglv
 qJNkh4MtWoHhGRdtAbyxNbB48sjD69Qo5a5OA+JMtZARDDD88ViMubzN51sKe02pvUYe
 MNykFwsn30ys5/SOF+CBNUQx/oC8jC4afpaPMpzpW1F811w/6zUvMGJdfTPXNEtPcRoR
 RVKkT8p9mmb7ec2CPhKrQ5cZ2tggL16/XFKzMfnl9ydWNTUwYnOntqShBOQJpmZOlu7L
 LRjw==
X-Gm-Message-State: ANhLgQ1lMj22sog4vygWo1EdZV8Gx1AjOPReEujugfv9pkunl3BEfG/b
 BsDsQRTBuvaAjkdj58qoE1s9EffL
X-Google-Smtp-Source: ADFU+vsP75Y2CevfnLjY8x29No1WzGiKMKmXpC093ZxFXv3/L6WImzvZ1WDw7Xc1DVf3bgMKZM6K5g==
X-Received: by 2002:adf:f309:: with SMTP id i9mr11062201wro.0.1584702090912;
 Fri, 20 Mar 2020 04:01:30 -0700 (PDT)
Received: from localhost.localdomain
 (134.red-83-46-193.dynamicip.rima-tde.net. [83.46.193.134])
 by smtp.gmail.com with ESMTPSA id e6sm7488584wrn.29.2020.03.20.04.01.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 20 Mar 2020 04:01:30 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 4/5] staging: mt7621-pci: change variable to print for slot
Date: Fri, 20 Mar 2020 12:01:22 +0100
Message-Id: <20200320110123.9907-5-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200320110123.9907-1-sergio.paracuellos@gmail.com>
References: <20200320110123.9907-1-sergio.paracuellos@gmail.com>
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

We are using the counter to print the slot which has been
enabled. Use the correct associated slot for the port instead.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 drivers/staging/mt7621-pci/pci-mt7621.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/mt7621-pci/pci-mt7621.c b/drivers/staging/mt7621-pci/pci-mt7621.c
index a521653d8dba..bc410c3d9afc 100644
--- a/drivers/staging/mt7621-pci/pci-mt7621.c
+++ b/drivers/staging/mt7621-pci/pci-mt7621.c
@@ -562,7 +562,7 @@ static void mt7621_pcie_enable_ports(struct mt7621_pcie *pcie)
 		if (port->enabled) {
 			mt7621_pcie_port_clk_enable(port);
 			mt7621_pcie_enable_port(port);
-			dev_info(dev, "PCIE%d enabled\n", num_slots_enabled);
+			dev_info(dev, "PCIE%d enabled\n", port->slot);
 			num_slots_enabled++;
 		}
 	}
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

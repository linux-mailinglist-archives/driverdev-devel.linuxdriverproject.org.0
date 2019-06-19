Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B005F4B342
	for <lists+driverdev-devel@lfdr.de>; Wed, 19 Jun 2019 09:45:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6157E879FC;
	Wed, 19 Jun 2019 07:45:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z5S+lhDLAuH6; Wed, 19 Jun 2019 07:45:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6771E86DD3;
	Wed, 19 Jun 2019 07:45:07 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 039611BF23C
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 19 Jun 2019 07:45:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id F2E2E20522
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 19 Jun 2019 07:45:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qeKEQb8sGEUa
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 19 Jun 2019 07:45:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by silver.osuosl.org (Postfix) with ESMTPS id E94A22051C
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 19 Jun 2019 07:45:02 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id m3so2220341wrv.2
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 19 Jun 2019 00:45:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hQZJksuDzXbUdjx8v/OdlVieEY0F4jBFtoB6PsclJuw=;
 b=CdBLzMwQRXeh1Hop0yfJy3PLaK1KRqyS/BmylaSguWRDzo+b98cOjzeTMGtFw58/VD
 fiHYEpL49xaq3fy5uwQl/JxZ4AQ/yPbrUEocBoqXk1obJzDY+LB3P2ukKZvCIudJH6pr
 TpTjinhD5iPRyFbDjQmWs4ko+NOZ/BHDvVmdJxVYz2WUyYwwpInM2mbaWIGgHo2gkPdc
 2NEpeF0HOXKxrSyJ/NziQqtiUMZ/AlS84iSrxkd3fSP1COuBYiza4no3K1srPx0gPECr
 QVxlqdkZDH1AAtqKP5jhkbT4rShllrm2GlPHgMSo0VXvbJcohPR/7JMcj96y326MyOxb
 KAMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hQZJksuDzXbUdjx8v/OdlVieEY0F4jBFtoB6PsclJuw=;
 b=sSBK/WkTlV+tVjZthFz4wF09wF21cjbODQSZLMhqp8+0CxVNMuy4rS7lybYFz5g6nr
 OVn01kChclF2X7xSFueFgJu09vciP24shypgZd9KnUqvkmyWk7UuKH1Znk0gXCfY222B
 BD8o+8rGikZkEYkM1XLytYOktLTX7aZWbVgtAsCCeswB8qGC5LibkeXSXQgl/cX8H/aL
 pDhUKQO6UKnn7fCOSld9usLQXxfh3R9dG/s5UlOKYROhERwUb1j7UpwiPwBZe01++rvU
 YMgtf8mWa8eOwaIUKsJZxdq5XLi694M8SdyBe0Zch2ApILgl07IAe+DsPeCYhpU3EnpD
 IN/g==
X-Gm-Message-State: APjAAAUMkfYQnlCZfMbPcnKyBAOd8Eyexm0bFDgJOGchnSnPq8hbqJqS
 HhfNUB4Rc+F/0dE/5c3jfsQ=
X-Google-Smtp-Source: APXvYqyE0GeRJjdeeIks1SudiRc/j7ieCF0qxIQomNnKHdAqv7+YET8irFVnLKk6c56UWFnNV+4Z5w==
X-Received: by 2002:adf:e7ca:: with SMTP id e10mr24967666wrn.281.1560930301600; 
 Wed, 19 Jun 2019 00:45:01 -0700 (PDT)
Received: from localhost.localdomain (34.red-88-0-78.dynamicip.rima-tde.net.
 [88.0.78.34])
 by smtp.gmail.com with ESMTPSA id j7sm17925440wru.54.2019.06.19.00.45.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 19 Jun 2019 00:45:01 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 1/4] staging: mt7621-pci: fix two messages in driver code
Date: Wed, 19 Jun 2019 09:44:55 +0200
Message-Id: <20190619074458.31112-2-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190619074458.31112-1-sergio.paracuellos@gmail.com>
References: <20190619074458.31112-1-sergio.paracuellos@gmail.com>
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

There are two messages in driver code which are not correct.
Fix both of them to clarify boot runs.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 drivers/staging/mt7621-pci/pci-mt7621.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/mt7621-pci/pci-mt7621.c b/drivers/staging/mt7621-pci/pci-mt7621.c
index 03d919a94552..7ba6ec93ac0f 100644
--- a/drivers/staging/mt7621-pci/pci-mt7621.c
+++ b/drivers/staging/mt7621-pci/pci-mt7621.c
@@ -394,7 +394,7 @@ static int mt7621_pcie_init_port(struct mt7621_pcie_port *port)
 	mt7621_reset_port(port);
 
 	val = read_config(pcie, slot, PCIE_FTS_NUM);
-	dev_info(dev, "Port %d N_FTS = %x\n", (unsigned int)val, slot);
+	dev_info(dev, "Port %d N_FTS = %x\n", slot, (unsigned int)val);
 
 	err = phy_init(port->phy);
 	if (err) {
@@ -511,7 +511,7 @@ static void mt7621_pcie_enable_ports(struct mt7621_pcie *pcie)
 					port->slot);
 				continue;
 			}
-			dev_info(dev, "PCIE%d enabled\n", slot);
+			dev_info(dev, "PCIE%d enabled\n", num_slots_enabled);
 			num_slots_enabled++;
 		}
 	}
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

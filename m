Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D4F45285F3
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 May 2019 20:35:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A29FD318C6;
	Thu, 23 May 2019 18:35:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id f3xcvCUPN7nh; Thu, 23 May 2019 18:35:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0BC943176E;
	Thu, 23 May 2019 18:35:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6B4EE1BF964
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 18:35:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6734488A99
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 18:35:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PM31t67VCPz2 for <devel@linuxdriverproject.org>;
 Thu, 23 May 2019 18:35:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E0D8F88A98
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 18:35:17 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id a23so3711657pff.4
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 11:35:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=UGdXyM1CME4KwYx3fgLzBPCxywcWE4oo6EgOOlK8Fv4=;
 b=k+4H2kGkwk5LvYzjyAAzDQV621YQlhBCwYT7yzcPAaSpAEtVqW+TY+zhTG0yvSkrWj
 GQ6z3IUyCmpIffYXzTHyJq69fwRULEX54aMbMK8faxxk0RX1LWtkIXRgTxhkqQC7u7tH
 tz+W5oBXaKlZkhj8p/DOp4G833AnDwbzOKzqnKuiQ7Z82brOcHR6P+bX2ODxOYgpVCqh
 eivtfvor7iBVK83n3zl6enzJmyP5Q4SFoHjprVqRATAADIilXxgW2Rn50ZCAQV4BbSjk
 ACiKS4kvcD/YhpAqkTWULi+QhSJeu8ODFTdFMrk2QloGc6ebfTZQ9awBYhGHX44Af+dt
 NI4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=UGdXyM1CME4KwYx3fgLzBPCxywcWE4oo6EgOOlK8Fv4=;
 b=BLzVdGSCUbccHnZnOTmphqDcAxpFWJI+3Sc7rq3bM/q96/cCdPodc5SUu0TlS6QCf+
 p8J8gk6RpzfKoL/4gZCzvEV9U1vcR5nHWjJCTtiwoMj5H5VI9FplPWnxJAGcCdgWB62Y
 smcINZgheQJsua6J/sFD3ljKfdxw3TKBNrb3/O0t6ddqno3POEvElsGtcfL9axV7fxeD
 u/L6SERfkw1IPUpyUyBcrQf0/dOUXCv9M/wgAxMh1WC57H0dSTJvdrsn6Pv6106yQcS3
 c9UgbFh/y2pXgjlXZzYnPJPUP34G5JN7VNtx7fJ2CUTzw9Cm/ftM8uaCtSx41TA4tdiI
 QXAA==
X-Gm-Message-State: APjAAAWhBm/x8RaRqnMIkRpZOhkag1baaS8YZeo8vEipBYXvWn3vfgwP
 1WfCHoNIWzdP+Txs8IhVt5U=
X-Google-Smtp-Source: APXvYqyAGgM62zL/Uh7TSDVYGilK6ktbyrCOFvLMxfqhvED4rFqQqXGVfzjK0DQt2Kn6xYezxdLwMQ==
X-Received: by 2002:a65:42c3:: with SMTP id l3mr75585700pgp.372.1558636517476; 
 Thu, 23 May 2019 11:35:17 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.92.73])
 by smtp.gmail.com with ESMTPSA id o7sm123715pfp.168.2019.05.23.11.35.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 May 2019 11:35:16 -0700 (PDT)
Date: Fri, 24 May 2019 00:05:10 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: reg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Sergio Paracuellos <sergio.paracuellos@gmail.com>,
 Mamta Shukla <mamtashukla555@gmail.com>,
 NeilBrown <neil@brown.name>, Peter Vernia <peter.vernia@gmail.com>,
 devel@driverdev.osuosl.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: mt7621-pci: pci-mt7621: Remove unneeded variable err
Message-ID: <20190523183510.GA12942@hari-Inspiron-1545>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

devm_request_pci_bus_resources function will return -EBUSY/-ENOMEM
in fail case and returns 0 on success.

So no need to store return value in err variable.

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/mt7621-pci/pci-mt7621.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/staging/mt7621-pci/pci-mt7621.c b/drivers/staging/mt7621-pci/pci-mt7621.c
index 03d919a..bc2a3d1 100644
--- a/drivers/staging/mt7621-pci/pci-mt7621.c
+++ b/drivers/staging/mt7621-pci/pci-mt7621.c
@@ -596,17 +596,12 @@ static int mt7621_pcie_request_resources(struct mt7621_pcie *pcie,
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
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

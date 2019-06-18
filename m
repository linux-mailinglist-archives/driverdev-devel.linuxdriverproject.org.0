Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 730644A9C0
	for <lists+driverdev-devel@lfdr.de>; Tue, 18 Jun 2019 20:25:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 65AE38651C;
	Tue, 18 Jun 2019 18:25:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id I6bla-tqDpK4; Tue, 18 Jun 2019 18:25:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3626D86483;
	Tue, 18 Jun 2019 18:25:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6FEF41BF327
 for <devel@linuxdriverproject.org>; Tue, 18 Jun 2019 18:25:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6C2EE85633
 for <devel@linuxdriverproject.org>; Tue, 18 Jun 2019 18:25:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id D_gegBM30EcU for <devel@linuxdriverproject.org>;
 Tue, 18 Jun 2019 18:25:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 188FF84492
 for <devel@driverdev.osuosl.org>; Tue, 18 Jun 2019 18:25:14 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id cl9so6045899plb.10
 for <devel@driverdev.osuosl.org>; Tue, 18 Jun 2019 11:25:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=ZWfAOAxoVbPij4WvtmFyrhlxSXKOQxDJzGR7xW1Qhl4=;
 b=rDDlyAvvtsHMAO0xf644R8e0EQPSxem326pnG6VLJloD9q3ZMMlpOAT4t7gkgQdhM2
 W0iC9W2W+DXCoN3BdpkExKZC8QJVpYhOF4C7WGszSQu+nbKhuZn/4yNEI2JzFzWuCdBC
 2Y4U40rJJVg210CmG/P2ljebo+D3yeS778WgJ/Plevek8DAFFhEv1kpeb21htZJO60FZ
 6X2XaSN+NQnjAd1q9XviYtXbTzX56n9Ro6AVEd8VUeOkvbXTb1Pe0FO2u3bBhX3YsMk0
 DfjjvIYO5U1An9bvFbST4qIVrqRdK2r8SeX9cAG5ewyr/FdHqls6r2bgRd2Lxi20sAiH
 VP+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=ZWfAOAxoVbPij4WvtmFyrhlxSXKOQxDJzGR7xW1Qhl4=;
 b=McPqpF+8ovKLoDonAEgDkaSNYngo/XtmjVTsNz1mW6p/POppToTFp9wCbjgXCq6rD0
 uRIqGG5SQ4e0avGa9CdL2RQr8XI2jBsaO4dOescETE6xLG9hnunV7BQN+rz0ne8oZVow
 G/zpfHh4BLVOCeAZNa7bQJh5gcyVTjAwBOrBaL+WKkDK0N5ziutpyexl5KL8U3gR1pfA
 qW8tAyD6fV5qlqrATtFVMdRopVnFaxm+hE+39B5D3z94cGfEOE/zaGO1eKPTulTx7Nqq
 U4GAW2jBy4AKIqQ4pcXJ9BuACPZy9Q9cmLYDeNOuxB9zQAtAoN9RV43b7jzwyq3tvAOK
 54vQ==
X-Gm-Message-State: APjAAAVNOUT3/4PvhQW1nL/j5hcDOa2eo8YAHSz/cN1lUkCVHjZtroSZ
 3oQMpkxy2HiI8Cv3V3x3L7o=
X-Google-Smtp-Source: APXvYqz8piH56vYUozmcdQ6KNkkF1F+FrG6bOMilJRTIj1HC6m3jGo47OqTa5F1u9LkmBbos6unY4A==
X-Received: by 2002:a17:902:b70f:: with SMTP id
 d15mr32734935pls.318.1560882313798; 
 Tue, 18 Jun 2019 11:25:13 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.92.187])
 by smtp.gmail.com with ESMTPSA id w14sm10510083pfn.47.2019.06.18.11.25.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 18 Jun 2019 11:25:12 -0700 (PDT)
Date: Tue, 18 Jun 2019 23:55:07 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Adham Abozaeid <adham.abozaeid@microchip.com>,
 Ajay Singh <ajay.kathat@microchip.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-wireless@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging: wilc1000: Remove redundant memset
Message-ID: <20190618182506.GA9007@hari-Inspiron-1545>
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

alloc_etherdev function internally calls kvzalloc . So we may not need
explicit memset after this call.

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/wilc1000/wilc_netdev.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/wilc1000/wilc_netdev.c b/drivers/staging/wilc1000/wilc_netdev.c
index ba78c08..c4efec2 100644
--- a/drivers/staging/wilc1000/wilc_netdev.c
+++ b/drivers/staging/wilc1000/wilc_netdev.c
@@ -1010,7 +1010,6 @@ int wilc_netdev_init(struct wilc **wilc, struct device *dev, int io_type,
 		}
 
 		vif = netdev_priv(ndev);
-		memset(vif, 0, sizeof(struct wilc_vif));
 
 		if (i == 0) {
 			strcpy(ndev->name, "wlan%d");
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5312454DBF
	for <lists+driverdev-devel@lfdr.de>; Tue, 25 Jun 2019 13:35:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A9E81864B2;
	Tue, 25 Jun 2019 11:35:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dQY0hNLwQP4k; Tue, 25 Jun 2019 11:35:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id BD6D481E5E;
	Tue, 25 Jun 2019 11:35:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6C3401BF20B
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2019 11:35:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 688FB20000
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2019 11:35:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Nq2B+C7J-rzi for <devel@linuxdriverproject.org>;
 Tue, 25 Jun 2019 11:34:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx-rz-1.rrze.uni-erlangen.de (mx-rz-1.rrze.uni-erlangen.de
 [131.188.11.20])
 by silver.osuosl.org (Postfix) with ESMTPS id 1EDB92010E
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2019 11:34:59 +0000 (UTC)
Received: from mx-exchlnx-1.rrze.uni-erlangen.de
 (mx-exchlnx-1.rrze.uni-erlangen.de [IPv6:2001:638:a000:1025::37])
 by mx-rz-1.rrze.uni-erlangen.de (Postfix) with ESMTP id 45Y3p32fVDz8vFy;
 Tue, 25 Jun 2019 13:28:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fau.de; s=fau-2013;
 t=1561462139; bh=iFvqU5P2PzjR3zYgUujUJdCyVZ41SEOkT3DtA4ND8V4=;
 h=From:To:CC:Subject:Date:In-Reply-To:References:From:To:CC:
 Subject;
 b=VWqSyGvr2hYgrmwCTdxv+paDci4LJNN7MtIOTYIKX/fCOVDhxy5J8t4cigCF/lWg+
 uJsqtZRAAjveHDN6Qm/PuOD9QIr3WfwqobGgcbz3y4MwFe6qFHT0/MRef0cgkPoGcr
 KbVAULdSERgI/E5CVAjchPOpUTaKB06PI8y7zfBE3uplmNzK5dLjtDEXeIdnhLwOCF
 DLoTTj+dmXckMn198wgjRSHYLuK4OTdaSJtRAeHIEFqB6cVWMNdrWSigAuTAdyPmjV
 ryJ5BHFE3+R4KHjqa+oiV8zqRF6zHITDHk9TkwpGeiKKhIr7lGipXBRvant6EJPmn6
 QRxoGpVKvgInA==
X-Virus-Scanned: amavisd-new at boeck5.rrze.uni-erlangen.de (RRZE)
X-RRZE-Flag: Not-Spam
Received: from hbt1.exch.fau.de (hbt1.exch.fau.de [10.15.8.13])
 by mx-exchlnx-1.rrze.uni-erlangen.de (Postfix) with ESMTP id 45Y3p11FYMz8vCX; 
 Tue, 25 Jun 2019 13:28:57 +0200 (CEST)
Received: from MBX3.exch.uni-erlangen.de (10.15.8.45) by hbt1.exch.fau.de
 (10.15.8.13) with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 25 Jun 2019
 13:28:23 +0200
Received: from TroubleWorld.pool.uni-erlangen.de (10.21.22.37) by
 MBX3.exch.uni-erlangen.de (10.15.8.45) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1591.10; Tue, 25 Jun 2019 13:28:21 +0200
From: Fabian Krueger <fabian.krueger@fau.de>
To: 
Subject: [PATCH 7/8] staging: kpc2000: introduce __func__
Date: Tue, 25 Jun 2019 13:27:18 +0200
Message-ID: <20190625112725.10154-8-fabian.krueger@fau.de>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190625112725.10154-1-fabian.krueger@fau.de>
References: <20190625112725.10154-1-fabian.krueger@fau.de>
MIME-Version: 1.0
X-Originating-IP: [10.21.22.37]
X-ClientProxiedBy: MBX3.exch.uni-erlangen.de (10.15.8.45) To
 MBX3.exch.uni-erlangen.de (10.15.8.45)
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
Cc: fabian.krueger@fau.de, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Michael Scheiderer <michael.scheiderer@fau.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Instead of using the function name hard coded as string, using __func__
and the '%s'-placeholder will always give the current name of the
function. When renaming a function, the debugging-messages won't have to
be rewritten.

Signed-off-by: Fabian Krueger <fabian.krueger@fau.de>
Signed-off-by: Michael Scheiderer <michael.scheiderer@fau.de>
---
 drivers/staging/kpc2000/kpc2000_spi.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc2000_spi.c b/drivers/staging/kpc2000/kpc2000_spi.c
index 732254e9b261..f258f369e065 100644
--- a/drivers/staging/kpc2000/kpc2000_spi.c
+++ b/drivers/staging/kpc2000/kpc2000_spi.c
@@ -457,13 +457,14 @@ kp_spi_probe(struct platform_device *pldev)
 
 	drvdata = pldev->dev.platform_data;
 	if (!drvdata) {
-		dev_err(&pldev->dev, "kp_spi_probe: platform_data is NULL!\n");
+		dev_err(&pldev->dev, "%s: platform_data is NULL\n", __func__);
 		return -ENODEV;
 	}
 
 	master = spi_alloc_master(&pldev->dev, sizeof(struct kp_spi));
 	if (master == NULL) {
-		dev_err(&pldev->dev, "kp_spi_probe: master allocation failed\n");
+		dev_err(&pldev->dev, "%s: master allocation failed\n",
+			__func__);
 		return -ENOMEM;
 	}
 
@@ -486,7 +487,8 @@ kp_spi_probe(struct platform_device *pldev)
 
 	r = platform_get_resource(pldev, IORESOURCE_MEM, 0);
 	if (r == NULL) {
-		dev_err(&pldev->dev, "kp_spi_probe: Unable to get platform resources\n");
+		dev_err(&pldev->dev, "%s: Unable to get platform resources\n",
+			__func__);
 		status = -ENODEV;
 		goto free_master;
 	}
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

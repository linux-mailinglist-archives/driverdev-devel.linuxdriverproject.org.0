Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9580A5B661
	for <lists+driverdev-devel@lfdr.de>; Mon,  1 Jul 2019 10:10:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6D1DA86554;
	Mon,  1 Jul 2019 08:10:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NWAG-5+nAiBu; Mon,  1 Jul 2019 08:10:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0AF92864FB;
	Mon,  1 Jul 2019 08:10:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 964CE1BF5A0
 for <devel@linuxdriverproject.org>; Mon,  1 Jul 2019 07:00:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 92D3385C67
 for <devel@linuxdriverproject.org>; Mon,  1 Jul 2019 07:00:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jgLjiUNn-MvY for <devel@linuxdriverproject.org>;
 Mon,  1 Jul 2019 07:00:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 572D785C52
 for <devel@driverdev.osuosl.org>; Mon,  1 Jul 2019 07:00:38 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id 19so6084243pfa.4
 for <devel@driverdev.osuosl.org>; Mon, 01 Jul 2019 00:00:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=N79kWBt4yPVHh09N6YfmaUPmmbkdOP84y8Y1pNUXFw0=;
 b=B+5Lf52ofOK4GSD6g6xFs6nxym+G1PtBj23JoyEKZOd/HQW6m9lwoLklLjno/RS2SC
 Ni8p75rkMFckqDU6dG6nM8gw9qqCkw+NFtgk2XmrA47ZpyyAZa+UNPe/9p8IEJrDU/bb
 mDADGF2VKGmNC0+I2SY8KkJIJH9fFUsFtNMYCh4GGGcLdE6+UmJtyneSDWVn11dE6rH5
 +/teaTtugHzq9vkoXGYvl4iIpIycGbR4iOQr54jP3moLPClGv40V2xo+DIK2s84Qkmdv
 zijHE83s5J9fkEpu6C0N5rf0eofGUGqUXp/iGYAIPpHOVSDbkxNtV7bVc1OqucdoD483
 sCbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=N79kWBt4yPVHh09N6YfmaUPmmbkdOP84y8Y1pNUXFw0=;
 b=V7piVMlvRUigqYqgE/O2rYNNBAbfCqCSTpZ2XfNdFXUOqtkJSgcr7yLtz6i0VWc1Ee
 MdMuNm0oG+gNGy1PQzB1yu7pb1ss1BdKgLS7sJpry3UG1IVbK27EKjeBgmojWtsi5dbk
 9UgMals/DrA9+OJgfs+aYOSTElHs8ZUNrEqL9EMByAu59iKEA0wapAmW3bqTZu5hFv5A
 tRwm3qxGo97okfefPVaBhpbm/HnnohlImUgfLbSlpLP03xiFr3ab1Z8W/pTrQHL+xsjY
 P022bU1SElyRydgvejGSjuz7iF0GIni3eMoVMLGXpb3uDwICRNLAYDoBNNuurP4u/36R
 s9xw==
X-Gm-Message-State: APjAAAXolGyE/4v984bm0ciMShpAUTzF3INUDb6yqesl/9LQ7TYq6M0R
 IQKsvSQ18sDqtSluJ8ww6tk=
X-Google-Smtp-Source: APXvYqw1nMMB+vGNMnbd+fqYDBvtXYeNFHFBsVmlZZMVzudWR2wIFG3+Sd+0nlsbe2hwd1CYx19h6Q==
X-Received: by 2002:a17:90a:fa18:: with SMTP id
 cm24mr28583108pjb.120.1561964438036; 
 Mon, 01 Jul 2019 00:00:38 -0700 (PDT)
Received: from localhost.localdomain ([122.163.64.117])
 by smtp.gmail.com with ESMTPSA id g2sm14880583pfb.95.2019.07.01.00.00.35
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 01 Jul 2019 00:00:37 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org, abbotti@mev.co.uk,
 hsweeten@visionengravers.com
Subject: [PATCH v2 1/3] staging: comedi: amplc_dio200: Remove function
 clk_sce()
Date: Mon,  1 Jul 2019 12:30:23 +0530
Message-Id: <20190701070025.3838-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove function clk_sce as all it does is call clk_gat_sce.
Modify call site of clk_sce to call clk_gat_sce instead.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
Changes in v2:
- Edit subject line to include driver name.

 drivers/staging/comedi/drivers/amplc_dio200_common.c | 8 +-------
 1 file changed, 1 insertion(+), 7 deletions(-)

diff --git a/drivers/staging/comedi/drivers/amplc_dio200_common.c b/drivers/staging/comedi/drivers/amplc_dio200_common.c
index 8697dc02ffb4..efd7428c3cee 100644
--- a/drivers/staging/comedi/drivers/amplc_dio200_common.c
+++ b/drivers/staging/comedi/drivers/amplc_dio200_common.c
@@ -46,12 +46,6 @@ static unsigned char clk_gat_sce(unsigned int which, unsigned int chan,
 	       ((source & 030) << 3) | (source & 007);
 }
 
-static unsigned char clk_sce(unsigned int which, unsigned int chan,
-			     unsigned int source)
-{
-	return clk_gat_sce(which, chan, source);
-}
-
 static unsigned char gat_sce(unsigned int which, unsigned int chan,
 			     unsigned int source)
 {
@@ -500,7 +494,7 @@ static void dio200_subdev_8254_set_clock_src(struct comedi_device *dev,
 	unsigned int offset = dio200_subdev_8254_offset(dev, s);
 
 	dio200_write8(dev, DIO200_CLK_SCE(offset >> 3),
-		      clk_sce((offset >> 2) & 1, chan, src));
+		      clk_gat_sce((offset >> 2) & 1, chan, src));
 }
 
 static int dio200_subdev_8254_config(struct comedi_device *dev,
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

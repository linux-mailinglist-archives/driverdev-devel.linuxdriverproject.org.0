Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 89F4896DE6
	for <lists+driverdev-devel@lfdr.de>; Wed, 21 Aug 2019 01:49:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 45D3422F22;
	Tue, 20 Aug 2019 23:49:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ADmtN0rq2w+3; Tue, 20 Aug 2019 23:49:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E9E7022CCE;
	Tue, 20 Aug 2019 23:49:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 73ADC1BF424
 for <devel@linuxdriverproject.org>; Tue, 20 Aug 2019 23:49:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7051A877BA
 for <devel@linuxdriverproject.org>; Tue, 20 Aug 2019 23:49:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id maYi72m6TaZv for <devel@linuxdriverproject.org>;
 Tue, 20 Aug 2019 23:49:48 +0000 (UTC)
X-Greylist: delayed 00:06:39 by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1A6C78776E
 for <devel@driverdev.osuosl.org>; Tue, 20 Aug 2019 23:49:48 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id f17so146778pfn.6
 for <devel@driverdev.osuosl.org>; Tue, 20 Aug 2019 16:49:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ehuber-info.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ZNeHvssg09fNvHI3DXHKSI/SzYLvR3bMkUJqk2lTcVU=;
 b=vU8oLGcPcPkkoK9Lm5ONhZtcaMF31nnnujH/Hua7pItm7vzAM0+JDvAaPuIMfdqmNZ
 GeyTsV1YYC76tsY5MMaGrXRlTdjUwol/Zoo9VFqFgcI0GRaQhboGNECrBeJNzRDizrk0
 dvfNVwyJqZ26FaNbp1bRVeEU9GGUaP0h6caNOGfF1QRL+8Fd/4oQwiM/28KgTtSK38a3
 z1wdLrn9Fmb++KQCKV80LFIs8mUN3W3kzSoBY2KPQF/9RWoA9kDSEsGfrxrNv7uCdpKo
 mXz/LnDZxo4zQN6FCliClSn44vpTaz+qwSrisD9RMr71RCuRPRgNwA+8I2i9XOKDUIai
 qcxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ZNeHvssg09fNvHI3DXHKSI/SzYLvR3bMkUJqk2lTcVU=;
 b=GrJtEnq+LdQDLuCps3GzyXIzz6X1NVe9UX3stsx9PierNvAR/4dhq4pkspXCS/ylrX
 szZDNnOdhCVN6vYymBVDnwPT+D7iGyTxmj7tmeYU3G2zAy5PCgKYB6h/OgXHquE+oVqO
 gIrxBbL2fevJ0LlfYTxfydldCBCdA9PzDItu8YUxs59izhbR6jxMvqH9kytCA3D0jdxF
 ARAOLzxuThLoa6rbY2arxRe+rZjxSdDnW+0CCcuFxrE97OnWBkYxp20DvrTt5np7sRBS
 9LUiHxhUDh13VXffhmAg8O/x+KwtF2jaBZxXEKuxGdojUdcc/GCSedcRan3O+n98sGe/
 +/Gw==
X-Gm-Message-State: APjAAAXgppm8aqV8M9yRpoomWy2UrZEtLj1m0lB3//VasWmt9ejr7tSQ
 nnH71JG34rjyqK1I5f/Tn7QfQw==
X-Google-Smtp-Source: APXvYqzTgP6XmBe/BNUOZ5sY+Cf6HWF+5AGA9CU/ctJV8lITWzCUXmWaL4NlXFrN9WHyO8imTFoK/w==
X-Received: by 2002:a17:90a:e2c5:: with SMTP id
 fr5mr2505231pjb.122.1566344590544; 
 Tue, 20 Aug 2019 16:43:10 -0700 (PDT)
Received: from ip-172-31-5-250.us-west-1.compute.internal
 (ec2-52-53-212-143.us-west-1.compute.amazonaws.com. [52.53.212.143])
 by smtp.gmail.com with ESMTPSA id b14sm21249511pfo.15.2019.08.20.16.43.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Aug 2019 16:43:09 -0700 (PDT)
From: me@ehuber.info
To: gregkh@linuxfoundation.org
Subject: [PATCH 2/2] comedi: move #ifdef 0'd stuff to TODO
Date: Tue, 20 Aug 2019 23:43:07 +0000
Message-Id: <20190820234307.5234-3-me@ehuber.info>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190820234307.5234-1-me@ehuber.info>
References: <20190820234307.5234-1-me@ehuber.info>
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
Cc: devel@driverdev.osuosl.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Edmund Huber <me@ehuber.info>

---
 drivers/staging/comedi/TODO                |  1 +
 drivers/staging/comedi/drivers/ni_pcimio.c | 48 ----------------------
 2 files changed, 1 insertion(+), 48 deletions(-)

diff --git a/drivers/staging/comedi/TODO b/drivers/staging/comedi/TODO
index f733c017f..4fe1028ca 100644
--- a/drivers/staging/comedi/TODO
+++ b/drivers/staging/comedi/TODO
@@ -5,6 +5,7 @@ TODO:
 	- audit userspace interface
 		- Fix coverity 1195261
 	- cleanup the individual comedi drivers as well
+	- maybe add drivers for BOARD_PCI6115, BOARD_PXI6115, BOARD_PXI6731 (see history on ni_pcimio.c)
 
 Please send patches to Greg Kroah-Hartman <greg@kroah.com> and
 copy:
diff --git a/drivers/staging/comedi/drivers/ni_pcimio.c b/drivers/staging/comedi/drivers/ni_pcimio.c
index e2e64e234..aadba7e31 100644
--- a/drivers/staging/comedi/drivers/ni_pcimio.c
+++ b/drivers/staging/comedi/drivers/ni_pcimio.c
@@ -481,43 +481,6 @@ static const struct ni_board_struct ni_boards[] = {
 		.ao_speed	= 250,
 		.caldac		= { ad8804, ad8804 },
 	},
-#if 0
-	/* The 6115 boards probably need their own driver */
-	[BOARD_PCI6115] = {	/* .device_id = 0x2ed0, */
-		.name		= "pci-6115",
-		.n_adchan	= 4,
-		.ai_maxdata	= 0x0fff,
-		.ai_fifo_depth	= 8192,
-		.gainlkup	= ai_gain_611x,
-		.ai_speed	= 100,
-		.n_aochan	= 2,
-		.ao_maxdata	= 0xffff,
-		.ao_671x	= 1,
-		.ao_fifo_depth	= 2048,
-		.ao_speed	= 250,
-		.reg_611x	= 1,
-		/* XXX */
-		.caldac		= { ad8804_debug, ad8804_debug, ad8804_debug },
-	},
-#endif
-#if 0
-	[BOARD_PXI6115] = {	/* .device_id = ????, */
-		.name		= "pxi-6115",
-		.n_adchan	= 4,
-		.ai_maxdata	= 0x0fff,
-		.ai_fifo_depth	= 8192,
-		.gainlkup	= ai_gain_611x,
-		.ai_speed	= 100,
-		.n_aochan	= 2,
-		.ao_maxdata	= 0xffff,
-		.ao_671x	= 1,
-		.ao_fifo_depth	= 2048,
-		.ao_speed	= 250,
-		.reg_611x	= 1,
-		/* XXX */
-		.caldac		= { ad8804_debug, ad8804_debug, ad8804_debug },
-	},
-#endif
 	[BOARD_PCI6711] = {
 		.name = "pci-6711",
 		.n_aochan	= 4,
@@ -569,17 +532,6 @@ static const struct ni_board_struct ni_boards[] = {
 		.reg_type	= ni_reg_6711,
 		.caldac		= { ad8804_debug },
 	},
-#if 0
-	[BOARD_PXI6731] = {	/* .device_id = ????, */
-		.name		= "pxi-6731",
-		.n_aochan	= 4,
-		.ao_maxdata	= 0xffff,
-		.ao_fifo_depth	= 8192,
-		.ao_range_table	= &range_bipolar10,
-		.reg_type	= ni_reg_6711,
-		.caldac		= { ad8804_debug },
-	},
-#endif
 	[BOARD_PCI6733] = {
 		.name		= "pci-6733",
 		.n_aochan	= 8,
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

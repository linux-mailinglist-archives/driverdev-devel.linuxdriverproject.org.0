Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 09D6B2287E9
	for <lists+driverdev-devel@lfdr.de>; Tue, 21 Jul 2020 20:02:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6AD588815B;
	Tue, 21 Jul 2020 18:02:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PxMIdq9ATJAe; Tue, 21 Jul 2020 18:02:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1FF8A88123;
	Tue, 21 Jul 2020 18:02:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E233B1BF3C1
 for <devel@linuxdriverproject.org>; Tue, 21 Jul 2020 18:02:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DC0E587F9A
 for <devel@linuxdriverproject.org>; Tue, 21 Jul 2020 18:02:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gtOmm5A7k7Gi for <devel@linuxdriverproject.org>;
 Tue, 21 Jul 2020 18:02:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f66.google.com (mail-pj1-f66.google.com
 [209.85.216.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C041287F00
 for <devel@driverdev.osuosl.org>; Tue, 21 Jul 2020 18:02:07 +0000 (UTC)
Received: by mail-pj1-f66.google.com with SMTP id md7so2058256pjb.1
 for <devel@driverdev.osuosl.org>; Tue, 21 Jul 2020 11:02:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=Grk4fhmrhoHmo+3IVBVSXOkk7YltMX5ZsI4ShxCvGQk=;
 b=hUQDn5dakYa8qRLBGEiIq1BB/sQv5e7we1FOvnn9bmo8EWxgRLWxi0u441YceQGIK5
 MdSxeIOJYag2P2n9FQWrstEo+QxjlL3Ax+QUCRPibLip0XtuvXvQUVRrDcOfNddCJTSr
 q8sVFB1IkuQmnrF4YZy1RSGqT4xvcpq6hOxbPaRqsiJcmZ7qDTQloUwAtbLxC3XM9diW
 yK8f9c1qBZjenrc4FCbszxIGbi3KsMlzJdoXJprmZogRwq7ugqLNOPjF1a4YBXnvo7xO
 eHybHKdWX6w38twhXIi2XqLRwXQWy4Mv2N0kr60dZYhMQJ2JYNTRy0ZTIBpw220IQJrn
 Wg1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=Grk4fhmrhoHmo+3IVBVSXOkk7YltMX5ZsI4ShxCvGQk=;
 b=uannqH0gurbW9AzbMcGqu8YTKtRNDGl7pFvkTAt9runBBPaQ8qdvhPOHIiQ7o0qB7q
 bxAoSdHZL8cRkvN9ZjXQKqUhVIWALAUVeu/5lbOn7rzj2NrgJeAXnGmPvljoPLxKOrAv
 +tCkb8v2mDF8YH3RYpEOHHYHf7O4EgRXNmjmGTiY4/Cx/PNjUFNWl0ebt+i9V1pQaxWL
 o88ZblY4KhQas8qEC/3lykgYXhRY7PkgARDZ5vSvhTim4UD/hdB+1LDwLo61rCTvG3Hb
 J8YgqRazXz5KF0Jf7CVQezgF9I+anTWGEI2mUz3HBm+RUFR6mlo3fGCXri6VQN63SbGp
 OtHQ==
X-Gm-Message-State: AOAM530lU4PtCNCRgUO88oY20tXfyTEVVGHp2xxo96CziyibZvKUrtp9
 J+/yq+fTrcvo60R7mptDECD0Rgb/fok=
X-Google-Smtp-Source: ABdhPJyFMQx8WFqfK/rb5Yd5C6ptjmkhxKm2+xU6atAZ10x0N88v8wHSotDYfT0sXILet5Uz4CQxtg==
X-Received: by 2002:a17:902:44c:: with SMTP id
 70mr22679342ple.73.1595354527248; 
 Tue, 21 Jul 2020 11:02:07 -0700 (PDT)
Received: from rahulg-ThinkPad-T450 ([122.175.73.180])
 by smtp.gmail.com with ESMTPSA id g6sm21222645pfr.129.2020.07.21.11.02.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Jul 2020 11:02:06 -0700 (PDT)
Date: Tue, 21 Jul 2020 23:32:03 +0530
From: Rahul Gottipati <rahul.blr97@gmail.com>
To: gregkh@linuxfoundation.org, insop.song@gainspeed.com
Subject: [PATCH] staging: gs_fpgaboot: get bus width input
Message-ID: <20200721180203.GA16154@rahulg-ThinkPad-T450>
MIME-Version: 1.0
Content-Disposition: inline
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This adds a module parameter to get the program bus width as an
input rather than hardcoding it, and checks off a TODO item.

Signed-off-by: Rahul Gottipati <rahul.blr97@gmail.com>
---
 drivers/staging/gs_fpgaboot/gs_fpgaboot.c | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/gs_fpgaboot/gs_fpgaboot.c b/drivers/staging/gs_fpgaboot/gs_fpgaboot.c
index 3e154562c64d..3d79e046c060 100644
--- a/drivers/staging/gs_fpgaboot/gs_fpgaboot.c
+++ b/drivers/staging/gs_fpgaboot/gs_fpgaboot.c
@@ -32,6 +32,10 @@ static char	*file = "xlinx_fpga_firmware.bit";
 module_param(file, charp, 0444);
 MODULE_PARM_DESC(file, "Xilinx FPGA firmware file.");
 
+static unsigned int bus_width_bytes = 2;
+module_param(bus_width_bytes, uint, 0444);
+MODULE_PARM_DESC(bus_width_bytes, "Program bus width in bytes.");
+
 static void read_bitstream(u8 *bitdata, u8 *buf, int *offset, int rdsize)
 {
 	memcpy(buf, bitdata + *offset, rdsize);
@@ -319,7 +323,15 @@ static int gs_fpgaboot(void)
 		goto err_out2;
 	}
 
-	err = gs_download_image(fimage, bus_2byte);
+	if (bus_width_bytes == 2) {
+		err = gs_download_image(fimage, bus_2byte);
+	} else if (bus_width_bytes == 1) {
+		err = gs_download_image(fimage, bus_1byte);
+	} else {
+		pr_err("unsupported program bus width\n");
+		goto err_out2;
+	}
+
 	if (err) {
 		pr_err("gs_download_image error\n");
 		goto err_out2;
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

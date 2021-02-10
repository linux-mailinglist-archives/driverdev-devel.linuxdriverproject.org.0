Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 920B631690E
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Feb 2021 15:25:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DF5BB87311;
	Wed, 10 Feb 2021 14:25:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QC1vdRddKRvX; Wed, 10 Feb 2021 14:25:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5B62F8729E;
	Wed, 10 Feb 2021 14:25:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DB40C1BF3FD
 for <devel@linuxdriverproject.org>; Wed, 10 Feb 2021 14:25:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D64FB872F5
 for <devel@linuxdriverproject.org>; Wed, 10 Feb 2021 14:25:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uky-4XcTCZGC for <devel@linuxdriverproject.org>;
 Wed, 10 Feb 2021 14:25:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com
 [209.85.215.169])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8A6628729E
 for <devel@driverdev.osuosl.org>; Wed, 10 Feb 2021 14:25:44 +0000 (UTC)
Received: by mail-pg1-f169.google.com with SMTP id o7so1346664pgl.1
 for <devel@driverdev.osuosl.org>; Wed, 10 Feb 2021 06:25:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=U8I480O/49ORaRi+QiD8YAganudXzh1u6v9aJFMTd2A=;
 b=bgoACTLsYcSXdtbBijoA/1R+6cPM5HJOZ8Yyuk/AfUNzddLT/TYI0kdOP/Gx22wVx/
 Q35AMhua5Rtxfw0aMVZ8OTSokS8svhyX1nVCM9SxVQ54oCMJ/MrKADpsbTAZ1G+ZHKaD
 c38ZvYGfbkMjdVavs98HgBZnp++3AInu6ICuiIB/HzDQAb2/WOkyXEgW5QogbnBDnh57
 Uq8HPDbHx+/BQEWD1RfTqvDe+LlloFNuL7V0+CTWFJfX3+oWCwc12D6Z7hHHSJDXNH7v
 Nj9GMNxs5kt6oT5lklWQO2OQz07GM3VpIYi4ZUtDseDkxodRY59seYX6AB3jo86AZJ4t
 0klg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=U8I480O/49ORaRi+QiD8YAganudXzh1u6v9aJFMTd2A=;
 b=V70P7FaMdX5eQeV3+YCClKv50DMVy9XjGjTMUBdQfyy0hLYt7IoAZSvOMFG9WmIcsd
 qdayiWKT0x/qPufQfePcoMFwp4kxufgyABgIYDmIPr7NvgSqFsG+RqGk7yF/CYPDvmX9
 c35lwOXb1KBpzi/iFAGfeB/X59CVBYg9PeyEP40019cZeRJophrid6Cwx5uQByv0HpiQ
 5kBQF6rjIfd9tkpdmGuAhBhLcL/gxu82CZ6tlrk2LPejEQ4NMaIaD6qthBxz3sG9PYjZ
 Ypgt2XqWmvOgifOD/UjP1wTY1X2Cu2xEoo77bD9Nya66fpJSub1YCCZULwMX/CEl8XMR
 Yxjg==
X-Gm-Message-State: AOAM530SgB2vwHws2Viy9+pbXCwN9Xv0bpfvp0kPWJUrnjRf88LqJ9uq
 rOs37B8vby+4cbJonYRZ22A=
X-Google-Smtp-Source: ABdhPJwNsxiX3m6b8wB4JOUQEeiU1TCrZ9qTvxdOAd7YXjO9GMBSXn+F/Syac/p+9o6PzBCZFglnKA==
X-Received: by 2002:a05:6a00:1707:b029:1cc:2d49:9f29 with SMTP id
 h7-20020a056a001707b02901cc2d499f29mr3328564pfc.8.1612967143985; 
 Wed, 10 Feb 2021 06:25:43 -0800 (PST)
Received: from localhost.localdomain ([103.200.106.135])
 by smtp.googlemail.com with ESMTPSA id a30sm2565800pfh.66.2021.02.10.06.25.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Feb 2021 06:25:43 -0800 (PST)
From: Amey Narkhede <ameynarkhede03@gmail.com>
To: gregkh@linuxfoundation.org,
	dan.carpenter@oracle.com
Subject: [PATCH v3] staging: gdm724x: Fix DMA from stack
Date: Wed, 10 Feb 2021 19:55:12 +0530
Message-Id: <20210210142512.23152-1-ameynarkhede03@gmail.com>
X-Mailer: git-send-email 2.30.1
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
Cc: devel@driverdev.osuosl.org, Amey Narkhede <ameynarkhede03@gmail.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Stack allocated buffers cannot be used for DMA
on all architectures so allocate hci_packet buffer
using kmalloc.

Signed-off-by: Amey Narkhede <ameynarkhede03@gmail.com>
---
Changes in v3:
	- Remove superfluous buf pointer
	- Reduce size of allocation of hci_packet to match number of
	bytes used for DMA

 drivers/staging/gdm724x/gdm_usb.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/gdm724x/gdm_usb.c b/drivers/staging/gdm724x/gdm_usb.c
index dc4da66c3..80c58a3ef 100644
--- a/drivers/staging/gdm724x/gdm_usb.c
+++ b/drivers/staging/gdm724x/gdm_usb.c
@@ -56,20 +56,24 @@ static int gdm_usb_recv(void *priv_dev,

 static int request_mac_address(struct lte_udev *udev)
 {
-	u8 buf[16] = {0,};
-	struct hci_packet *hci = (struct hci_packet *)buf;
+	struct hci_packet *hci;
 	struct usb_device *usbdev = udev->usbdev;
 	int actual;
 	int ret = -1;

+	hci = kmalloc(5, GFP_KERNEL);
+	if (!hci)
+		return -ENOMEM;
+
 	hci->cmd_evt = gdm_cpu_to_dev16(udev->gdm_ed, LTE_GET_INFORMATION);
 	hci->len = gdm_cpu_to_dev16(udev->gdm_ed, 1);
 	hci->data[0] = MAC_ADDRESS;

-	ret = usb_bulk_msg(usbdev, usb_sndbulkpipe(usbdev, 2), buf, 5,
+	ret = usb_bulk_msg(usbdev, usb_sndbulkpipe(usbdev, 2), &hci, 5,
 			   &actual, 1000);

 	udev->request_mac_addr = 1;
+	kfree(hci);

 	return ret;
 }
--
2.30.1
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 501AB3156C5
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Feb 2021 20:32:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4D9C485A5A;
	Tue,  9 Feb 2021 19:32:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2OHoUW9pRj0Z; Tue,  9 Feb 2021 19:32:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 21B4D85F4C;
	Tue,  9 Feb 2021 19:32:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BE0BA1BF284
 for <devel@linuxdriverproject.org>; Tue,  9 Feb 2021 19:32:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id BACE8858C9
 for <devel@linuxdriverproject.org>; Tue,  9 Feb 2021 19:32:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IM1kC8vR0Pqi for <devel@linuxdriverproject.org>;
 Tue,  9 Feb 2021 19:32:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com
 [209.85.215.182])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BBCB7857CB
 for <devel@driverdev.osuosl.org>; Tue,  9 Feb 2021 19:32:08 +0000 (UTC)
Received: by mail-pg1-f182.google.com with SMTP id t26so718636pgv.3
 for <devel@driverdev.osuosl.org>; Tue, 09 Feb 2021 11:32:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=kIh4OLXPZqyT593P1uGyKCdBeoEDHVFwCLVWLT+c4Mg=;
 b=Lt1uRsey0/tR64szLfqruKn04IQZuHfwckjuXpX/9mVwCAQULcPWOKRNfLKv/wNNCZ
 IzK2zPHOpi3J87qTeZS0Iet11OTonqXt8vBlEhO+DyA8O97wmur92vRLWaRKH8IhveM7
 g+KdLNtWU4eLWg78V3eoj8T30yPd8iAKmkVzQpdm0qpFVolIcI/bbTsLyzz1A4ZWUa2R
 Ka4bJGIKKn6UZFe8Gcj0x5FNCresZkSDxnttXZcOOlDDj0AwlKq38QJ1tOgsp+PevUNu
 KAiZhSXYDBTZF2wHN+G4wZRqYm+rnJztk3Ru28lzKf9IkjZ8JCJoKKUOYFsSw5uaoVPO
 RnxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=kIh4OLXPZqyT593P1uGyKCdBeoEDHVFwCLVWLT+c4Mg=;
 b=qzU5slMf/DT/U/EFH5yJztTB02AGWnJHtXITNcwfDQ3DV6NXlbI8GkJKHqpgz+z8iK
 1MTDd6mAM6krQrEx49x+cVzLFr1IY5TMTN5y50268L7XQmX9bYBGs0zT3JsWk30lszB4
 bZ7a0OWJFxDdlrlZgWz1wvOffQud6790o7TeH4l3EuaIGwdXHxXUD2YRfKfU1MXNEvdJ
 +kBJ32nqzWyjl2YRC00lFKxkg5mYwOimFgP79ooZ0lxXB3JFoWDDFQjTuLKX5f45MzLB
 POH1FEKxQCZ3gmkrK3tW3DVSbPDmj4x0wxsusfIUiSiIFTlbfvPXUayXHRkYjiGcNovG
 mrMQ==
X-Gm-Message-State: AOAM532LfeKyZhrQa7p28fbmznqdQd81lkzCLg4KsWXFWdZ5bHcqc+u1
 jfYpilxsRn1uhFVWtWrI91w=
X-Google-Smtp-Source: ABdhPJyTl78Zz2DcYCabZN13Y/BG0wPYREHUDsozd+maJ4kevTAOkkg3edzEq8Cvh7Nx+qY7w5+f7g==
X-Received: by 2002:a62:52d1:0:b029:1da:1371:20b8 with SMTP id
 g200-20020a6252d10000b02901da137120b8mr16948374pfb.73.1612899128436; 
 Tue, 09 Feb 2021 11:32:08 -0800 (PST)
Received: from localhost.localdomain ([103.200.106.135])
 by smtp.googlemail.com with ESMTPSA id z16sm22936977pgj.51.2021.02.09.11.32.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Feb 2021 11:32:07 -0800 (PST)
From: ameynarkhede03@gmail.com
To: gregkh@linuxfoundation.org,
	dan.carpenter@oracle.com
Subject: [PATCH v2] staging: gdm724x: Fix DMA from stack
Date: Wed, 10 Feb 2021 01:01:47 +0530
Message-Id: <20210209193147.558514-1-ameynarkhede03@gmail.com>
X-Mailer: git-send-email 2.30.0
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

From: Amey Narkhede <ameynarkhede03@gmail.com>

Stack allocated buffers cannot be used for DMA
on all architectures so allocate hci_packet buffer
using kzalloc().

Signed-off-by: Amey Narkhede <ameynarkhede03@gmail.com>
---
 drivers/staging/gdm724x/gdm_usb.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/gdm724x/gdm_usb.c b/drivers/staging/gdm724x/gdm_usb.c
index dc4da66c3..c4a9b90c5 100644
--- a/drivers/staging/gdm724x/gdm_usb.c
+++ b/drivers/staging/gdm724x/gdm_usb.c
@@ -56,11 +56,15 @@ static int gdm_usb_recv(void *priv_dev,

 static int request_mac_address(struct lte_udev *udev)
 {
-	u8 buf[16] = {0,};
-	struct hci_packet *hci = (struct hci_packet *)buf;
+	u8 *buf;
+	struct hci_packet *hci;
 	struct usb_device *usbdev = udev->usbdev;
 	int actual;
 	int ret = -1;
+	buf = kzalloc(16, GFP_KERNEL);
+	if (!buf)
+		return -ENOMEM;
+	hci = (struct hci_packet *)buf;

 	hci->cmd_evt = gdm_cpu_to_dev16(udev->gdm_ed, LTE_GET_INFORMATION);
 	hci->len = gdm_cpu_to_dev16(udev->gdm_ed, 1);
@@ -70,6 +74,7 @@ static int request_mac_address(struct lte_udev *udev)
 			   &actual, 1000);

 	udev->request_mac_addr = 1;
+	kfree(buf);

 	return ret;
 }
--
2.30.0
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

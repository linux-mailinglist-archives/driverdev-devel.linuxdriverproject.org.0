Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D6E33184F6
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Feb 2021 06:39:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EA4C86F521
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Feb 2021 05:39:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ScL65B04Wss3 for <lists+driverdev-devel@lfdr.de>;
	Thu, 11 Feb 2021 05:39:25 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 294A16F650; Thu, 11 Feb 2021 05:39:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 47A7A6F480;
	Thu, 11 Feb 2021 05:39:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F3E691BF83A
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 05:38:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id ED77886C5A
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 05:38:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9xD1lyn_-z03 for <devel@linuxdriverproject.org>;
 Thu, 11 Feb 2021 05:38:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com
 [209.85.216.51])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id ED72B86C48
 for <devel@driverdev.osuosl.org>; Thu, 11 Feb 2021 05:38:54 +0000 (UTC)
Received: by mail-pj1-f51.google.com with SMTP id z9so2794386pjl.5
 for <devel@driverdev.osuosl.org>; Wed, 10 Feb 2021 21:38:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DkXaHbb7vfykOZTzC+xBJRdgo6D6KFDFoMk3bIB0y48=;
 b=rIlTHtfRRMnexiBN16ky6IIM2MAx4co/9o7WPcw9X4ioxz5IsxhxNnBKhzI9A7ZwUF
 +RVX6MWWTJ08gfUfrbxnnCypUaHZ5GoSI7kMo4KNUQWd5X+ntOlO9qyTYI369aqCc8EJ
 pAlntRfuI39nXx1DCwSPUtW93PkuL6mMBx1WM6BX6/ACvsNSvMNN32ZJwatDMEo5TSKS
 Dspq9fObwxdqu9YE3lG+inENRPh8XwkA8J+mlLP23bAHrLWg4+RQRDnkbLnTFCOF6rSY
 6ZRwR41bYKSLAM1viUAef6rczrb2SZ4q0kcf/xiYdpQKOsMSOJUPrQvWqidOOrG6Ex8w
 wwLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DkXaHbb7vfykOZTzC+xBJRdgo6D6KFDFoMk3bIB0y48=;
 b=MfpzCxemY7TStv+N/E86VSbp2G8Pjlvv1Dj/qC9y1Ga3BL+4SvZMUbsvL7rji//n4v
 3D9xLOSHhbu6KrBJsujbkinPQgvkYMIldWTsy1RScKZKO1sMyJQk/7wFsmQg0kk4uq9e
 uCobpxZvbMHjVhWGqkCIhczk1Kb837w+bHOZnfRV0Lwq5uE98nyUHRawCf7nsB/dwUSX
 62eubb/vJNrrI5VwBq5460x8jEzUhACdz2mmDCZXHfji30WEkWh2UM5tobsWKsk0i1Z6
 S8ZCZMKnD/yjr5zno4TR+m6gV+o+wvQqXNeg4wfY3dEC/OCWn+LQd42nWaAW51VCdcfl
 qTEQ==
X-Gm-Message-State: AOAM531k6wP4wZ36A0InRzoJ/YJTUveZrP6ELQh3a4a/SiZLB2PyIXgj
 8Z5y1/63uORyPmBa8raoETU=
X-Google-Smtp-Source: ABdhPJzKo6Ld8SfUdADvztVyYjrxWsk6xblowX30cNJR6Go7zw8d+MnCYFq9aNLcFj4MvL5Oe1SiuQ==
X-Received: by 2002:a17:902:7c0d:b029:e2:e9cd:6280 with SMTP id
 x13-20020a1709027c0db02900e2e9cd6280mr1043758pll.22.1613021934616; 
 Wed, 10 Feb 2021 21:38:54 -0800 (PST)
Received: from localhost.localdomain ([103.200.106.135])
 by smtp.googlemail.com with ESMTPSA id v1sm4513641pfi.99.2021.02.10.21.38.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Feb 2021 21:38:54 -0800 (PST)
From: Amey Narkhede <ameynarkhede03@gmail.com>
To: gregkh@linuxfoundation.org,
	dan.carpenter@oracle.com
Subject: [PATCH v4] staging: gdm724x: Fix DMA from stack
Date: Thu, 11 Feb 2021 11:08:19 +0530
Message-Id: <20210211053819.34858-1-ameynarkhede03@gmail.com>
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
Changes in v4:
	- Use struct_size to allocate memory for hci_packet
	- Fix memory corruption

 drivers/staging/gdm724x/gdm_usb.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/gdm724x/gdm_usb.c b/drivers/staging/gdm724x/gdm_usb.c
index dc4da66c3..54bdb64f5 100644
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

+	hci = kmalloc(struct_size(hci, data, 1), GFP_KERNEL);
+	if (!hci)
+		return -ENOMEM;
+
 	hci->cmd_evt = gdm_cpu_to_dev16(udev->gdm_ed, LTE_GET_INFORMATION);
 	hci->len = gdm_cpu_to_dev16(udev->gdm_ed, 1);
 	hci->data[0] = MAC_ADDRESS;

-	ret = usb_bulk_msg(usbdev, usb_sndbulkpipe(usbdev, 2), buf, 5,
+	ret = usb_bulk_msg(usbdev, usb_sndbulkpipe(usbdev, 2), hci, 5,
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

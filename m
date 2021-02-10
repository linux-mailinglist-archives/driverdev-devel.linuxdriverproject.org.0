Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E3C7031607E
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Feb 2021 09:02:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 53E176F72E
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Feb 2021 08:02:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 13GlMmf4JGvq for <lists+driverdev-devel@lfdr.de>;
	Wed, 10 Feb 2021 08:02:28 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 568F76F6E1; Wed, 10 Feb 2021 08:02:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id DE11B6F6BE;
	Wed, 10 Feb 2021 08:02:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2E3391BF282
 for <devel@linuxdriverproject.org>; Wed, 10 Feb 2021 08:02:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1F70E8563A
 for <devel@linuxdriverproject.org>; Wed, 10 Feb 2021 08:02:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Azhuk3nAC8PA for <devel@linuxdriverproject.org>;
 Wed, 10 Feb 2021 08:02:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com
 [209.85.216.50])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9F8C385533
 for <devel@driverdev.osuosl.org>; Wed, 10 Feb 2021 08:02:00 +0000 (UTC)
Received: by mail-pj1-f50.google.com with SMTP id e9so697573pjj.0
 for <devel@driverdev.osuosl.org>; Wed, 10 Feb 2021 00:02:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Slj9l/VQZUt/KaQ6/TUAGUUDhforIs71tVz3o7zQQ5E=;
 b=P7tpCvNf15gnEGdU+0sJnNw62dAnELLrG8NarD9qveiIiLvghu128VmnVXJsvGXiFF
 ZEsxaIe0bXmDlNuRwla+S1X2bwpBKyMfctARqcsrmsWxGBU5ZbsshMekFY8O3RAySSOF
 Ef2PsEtTB9+iDH9+YgS1JvwwxSTC7NnXHp1lcB9kGBsy2STP76WQlQoqi1ZM4MF7oCnC
 duzSYHqzdNQs373JGXPIxGH+csrOghj4UuoWPjthN/8gR6A76bykmHkdjvQyXVWc/Yjn
 ywffns2MEHVrFEs/DUbHeF6MWToqk3pqIraQf6OTtQVSn2W9f4HnapB8OJSHFaUm2ER1
 KdOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Slj9l/VQZUt/KaQ6/TUAGUUDhforIs71tVz3o7zQQ5E=;
 b=AlCC0aOkIaNPdNXh2VwAHl30CtonGpbXVfsGE74tJWvzdHgL9OefSlWw2y4CuPM4m4
 vUxXQOsmqCnhQXus+BkctYEmML3WIIQY1oJ8RodB7SHs0cEZREWIDSJzcE1OChuuqXOk
 u1XNaQ4/5FuPJamjy4WoPVjVJ9+xS3Nvs9Ngr0xqtdDDTi+uOQIkkBrLaahbJfVnK6IX
 MX8/0ovLldBoZC8kD+27u9Np9RUdnnkHx9zAxnIAVpfVaZyXzHSpoLa9Q7a+Sq3WbD/B
 vL+wYS4/uPG1Y0lP8sp6iQR2rI6pH3Lss2yJ2AI+LInl2mbXjiOSIYyiYji69IbZsB2A
 y9Vw==
X-Gm-Message-State: AOAM531uO+MqY90ABmstuxPAIKzmFaiOjfUUbkYK5heh++WHI70mE4r7
 OmLk2DluLgiEFkPL8oAq+jE=
X-Google-Smtp-Source: ABdhPJx4q9nhVqe3Et6N+22cZ7MCAFU4h/lbXsa0lueUpcg3nUYaup7azYxrIeRCY5Yr+GKLuxCQ6g==
X-Received: by 2002:a17:902:e211:b029:e2:843c:426e with SMTP id
 u17-20020a170902e211b02900e2843c426emr1962098plb.16.1612944120197; 
 Wed, 10 Feb 2021 00:02:00 -0800 (PST)
Received: from localhost.localdomain ([103.200.106.135])
 by smtp.googlemail.com with ESMTPSA id m5sm1287180pgj.11.2021.02.10.00.01.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Feb 2021 00:01:59 -0800 (PST)
From: Amey Narkhede <ameynarkhede03@gmail.com>
To: gregkh@linuxfoundation.org,
	dan.carpenter@oracle.com
Subject: [PATCH v2] staging: gdm724x: Fix DMA from stack
Date: Wed, 10 Feb 2021 13:31:34 +0530
Message-Id: <20210210080134.1978-1-ameynarkhede03@gmail.com>
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

Stack allocated buffers cannot be used for DMA
on all architectures so allocate hci_packet buffer
using kzalloc().

Signed-off-by: Amey Narkhede <ameynarkhede03@gmail.com>
---
Changes in v2:
	- Fixed build warning
	- Fixed memory leak using kfree

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

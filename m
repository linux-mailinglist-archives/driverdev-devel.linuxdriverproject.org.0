Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 89FBF31521C
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Feb 2021 15:54:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DD05F86A01;
	Tue,  9 Feb 2021 14:54:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id A9fGn7ANhjTK; Tue,  9 Feb 2021 14:54:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D5EBB85F6D;
	Tue,  9 Feb 2021 14:54:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A7BA11BF3E5
 for <devel@linuxdriverproject.org>; Tue,  9 Feb 2021 14:54:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9656B6F53F
 for <devel@linuxdriverproject.org>; Tue,  9 Feb 2021 14:54:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1YtW-weVQG3s for <devel@linuxdriverproject.org>;
 Tue,  9 Feb 2021 14:54:39 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id D6DBB6F545; Tue,  9 Feb 2021 14:54:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com
 [209.85.216.41])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BC82F6F53F
 for <devel@driverdev.osuosl.org>; Tue,  9 Feb 2021 14:54:38 +0000 (UTC)
Received: by mail-pj1-f41.google.com with SMTP id z9so1780728pjl.5
 for <devel@driverdev.osuosl.org>; Tue, 09 Feb 2021 06:54:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=KsFPmTIeHm7DtYVfmhESnu0dmNeWI5KMqfpQCLa5iyM=;
 b=c0UCx2hpMuMRuWZw0veFTmfeYTp9GcEPe41wCtVLRucXalJm2ayodh4x6gaRR/xJkm
 a3fq863JBv3+GLa1/utbL3s4/16clhaAxE+uHQTdDE6ie9pnasbiQfNXqM+m2tF1jL/a
 /EthGW58r+LVspVgjDAnjwfLVBjb97mEHiZOKZkUGxhucN5eTKUhIFMO+nbJ52/NG9vT
 9GvCX9BxkZy8xql8JAngqhJseaAbBodVm9CsME8aiUb2hlQApmldx/Z6bh2Cw5B08cmj
 RkFph55uISoFpfubzPWGsHsHF/8brFKX9qqqG7RDqcRNqNYQMHrVbzr4EjZCaHvw1f5p
 Ei7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=KsFPmTIeHm7DtYVfmhESnu0dmNeWI5KMqfpQCLa5iyM=;
 b=XXe1jjmzVLRzna5p/jgfAY12AqgiFEGzs6x88+j2hM8HkK54XYhLa7Z/LhxtHfmy2L
 TKANuEZlHQU23KMUO9vYUd/q5KobV/cWXjhSgENUxH94a+yBE/MdhMnSi1CtywUVkKE9
 +p/iQdaAYBuTcW1HE29yMLVW0H49xfOlL51twCAXU2+tvFVIq9YUdufO73/h2oTOEtRE
 6bgmCXHe3VUov68XcSNgSAoaVvQMs6oxVicu3mvEURNSrRqeQTu5TcFpxDIrBGU3g7hH
 3YbLKU8MCg+RlVTYCJlQR9HnfAlxS7Khjky4yNlgYF4oJRSTb3JJdzw3K/czTY9RhnJP
 /miw==
X-Gm-Message-State: AOAM530dXGRUkPoI8yLHH1/Qzq8GYvH+ZZJLL9+f0Noh8pHBzoaEIReG
 d1Klka0a+/mF/kT4difQ8cMstxDN47I=
X-Google-Smtp-Source: ABdhPJxV86a/ldtHrtX1gHDG2mnkJoZqklMH4sbHBhbkJY7FNHpM9sW6HMLw9uUsOHofh5tY4/ZGNA==
X-Received: by 2002:a17:902:e812:b029:de:5af2:3d09 with SMTP id
 u18-20020a170902e812b02900de5af23d09mr21645098plg.33.1612882477400; 
 Tue, 09 Feb 2021 06:54:37 -0800 (PST)
Received: from localhost.localdomain ([103.200.106.135])
 by smtp.googlemail.com with ESMTPSA id e23sm8878798pfd.145.2021.02.09.06.54.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Feb 2021 06:54:36 -0800 (PST)
From: ameynarkhede03@gmail.com
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: gdm724x: Fix DMA from stack
Date: Tue,  9 Feb 2021 20:24:15 +0530
Message-Id: <20210209145415.29609-1-ameynarkhede03@gmail.com>
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
on all architectures so allocate usbdev buffer
using kmalloc().

Signed-off-by: Amey Narkhede <ameynarkhede03@gmail.com>
---
 drivers/staging/gdm724x/gdm_usb.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/gdm724x/gdm_usb.c b/drivers/staging/gdm724x/gdm_usb.c
index dc4da66c3..50dc463d4 100644
--- a/drivers/staging/gdm724x/gdm_usb.c
+++ b/drivers/staging/gdm724x/gdm_usb.c
@@ -56,7 +56,7 @@ static int gdm_usb_recv(void *priv_dev,

 static int request_mac_address(struct lte_udev *udev)
 {
-	u8 buf[16] = {0,};
+	u8 *buf;
 	struct hci_packet *hci = (struct hci_packet *)buf;
 	struct usb_device *usbdev = udev->usbdev;
 	int actual;
@@ -66,6 +66,10 @@ static int request_mac_address(struct lte_udev *udev)
 	hci->len = gdm_cpu_to_dev16(udev->gdm_ed, 1);
 	hci->data[0] = MAC_ADDRESS;

+	buf = kmalloc(16, GFP_KERNEL);
+	if (!buf)
+		return -ENOMEM;
+
 	ret = usb_bulk_msg(usbdev, usb_sndbulkpipe(usbdev, 2), buf, 5,
 			   &actual, 1000);

--
2.30.0
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

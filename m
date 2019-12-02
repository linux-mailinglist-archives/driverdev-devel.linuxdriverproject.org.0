Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 43C1510E72F
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Dec 2019 09:56:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6344486AF0;
	Mon,  2 Dec 2019 08:56:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zhKzAoc-DZka; Mon,  2 Dec 2019 08:56:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C160A86822;
	Mon,  2 Dec 2019 08:56:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AAB521BF2A6
 for <devel@linuxdriverproject.org>; Mon,  2 Dec 2019 08:56:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A6B76204F1
 for <devel@linuxdriverproject.org>; Mon,  2 Dec 2019 08:56:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id N8sfFzZb3EMS for <devel@linuxdriverproject.org>;
 Mon,  2 Dec 2019 08:56:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
 [209.85.208.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 937582010C
 for <devel@driverdev.osuosl.org>; Mon,  2 Dec 2019 08:56:27 +0000 (UTC)
Received: by mail-lj1-f194.google.com with SMTP id j6so30067235lja.2
 for <devel@driverdev.osuosl.org>; Mon, 02 Dec 2019 00:56:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rl1LB5EX7oIVC0mGuDqRbEVhDWig1nq2VNrs1gvJuaw=;
 b=cb9uTb3Hm5X5qoLUc6D4AlEev6Hc88T7gszGgeGiyv4/+VCmxkkPaEnuC4zKNRxCeA
 TPrBK1y/5kUkYuTTk2Wgg/PhTo1XVQgxDMsPOf5TxVc3mrcEsnvflojwOUg8SAzdBe+C
 iyyV8g5YsMc4EtpV/Q4urm7ESVXEi+CFEjDpODaSb7+sWaUDoV4r1pZSBspzGZNXgOHY
 mhUBc8qe44Y4B9SX5yhx0yo0ve7kochb4RhKq6y91ye+oG1rgYi8veQRQjlGr26cI0nj
 W1wLAsBEAMdJCF9DpEDPZhYHxjjbmUQCnfH2oIuE2HUpo2wOLPPNvRXXvCGtOreRr294
 YouA==
X-Gm-Message-State: APjAAAWQ502zcffaaRvv5bCo5jLwdbqaK4xxvb5MKqZY+Vw5q5jwkvri
 +PVGcNPtqj1CqILhJ8LxoUI=
X-Google-Smtp-Source: APXvYqwRd3xGb/t3PETM2Lts/w4SDIabwmc7fZxPHq77jLNKOyGJUZSpLoQaby/lNY6m6qnLrIP48A==
X-Received: by 2002:a2e:970e:: with SMTP id r14mr44042644lji.57.1575276985866; 
 Mon, 02 Dec 2019 00:56:25 -0800 (PST)
Received: from xi.terra (c-14b8e655.07-184-6d6c6d4.bbcust.telenor.se.
 [85.230.184.20])
 by smtp.gmail.com with ESMTPSA id z26sm2582160lfq.69.2019.12.02.00.56.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Dec 2019 00:56:24 -0800 (PST)
Received: from johan by xi.terra with local (Exim 4.92.3)
 (envelope-from <johan@xi.terra>)
 id 1ibhVM-0003K5-1e; Mon, 02 Dec 2019 09:56:28 +0100
From: Johan Hovold <johan@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 2/3] staging: gigaset: fix illegal free on probe errors
Date: Mon,  2 Dec 2019 09:56:09 +0100
Message-Id: <20191202085610.12719-3-johan@kernel.org>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191202085610.12719-1-johan@kernel.org>
References: <20191202085610.12719-1-johan@kernel.org>
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
Cc: devel@driverdev.osuosl.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, stable <stable@vger.kernel.org>,
 Johan Hovold <johan@kernel.org>, Tilman Schmidt <tilman@imap.cc>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The driver failed to initialise its receive-buffer pointer, something
which could lead to an illegal free on late probe errors.

Fix this by making sure to clear all driver data at allocation.

Fixes: 2032e2c2309d ("usb_gigaset: code cleanup")
Cc: stable <stable@vger.kernel.org>     # 2.6.33
Cc: Tilman Schmidt <tilman@imap.cc>
Signed-off-by: Johan Hovold <johan@kernel.org>
---
 drivers/staging/isdn/gigaset/usb-gigaset.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/staging/isdn/gigaset/usb-gigaset.c b/drivers/staging/isdn/gigaset/usb-gigaset.c
index 5e393e7dde45..a84722d83bc6 100644
--- a/drivers/staging/isdn/gigaset/usb-gigaset.c
+++ b/drivers/staging/isdn/gigaset/usb-gigaset.c
@@ -571,8 +571,7 @@ static int gigaset_initcshw(struct cardstate *cs)
 {
 	struct usb_cardstate *ucs;
 
-	cs->hw.usb = ucs =
-		kmalloc(sizeof(struct usb_cardstate), GFP_KERNEL);
+	cs->hw.usb = ucs = kzalloc(sizeof(struct usb_cardstate), GFP_KERNEL);
 	if (!ucs) {
 		pr_err("out of memory\n");
 		return -ENOMEM;
@@ -584,9 +583,6 @@ static int gigaset_initcshw(struct cardstate *cs)
 	ucs->bchars[3] = 0;
 	ucs->bchars[4] = 0x11;
 	ucs->bchars[5] = 0x13;
-	ucs->bulk_out_buffer = NULL;
-	ucs->bulk_out_urb = NULL;
-	ucs->read_urb = NULL;
 	tasklet_init(&cs->write_tasklet,
 		     gigaset_modem_fill, (unsigned long) cs);
 
-- 
2.24.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

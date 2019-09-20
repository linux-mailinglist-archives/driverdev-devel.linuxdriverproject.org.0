Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E444B898F
	for <lists+driverdev-devel@lfdr.de>; Fri, 20 Sep 2019 04:51:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3B11487E5C;
	Fri, 20 Sep 2019 02:51:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Sg2ghDzYt4B0; Fri, 20 Sep 2019 02:51:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5231B87E0A;
	Fri, 20 Sep 2019 02:51:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 241281BF3F9
 for <devel@linuxdriverproject.org>; Fri, 20 Sep 2019 02:51:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1AAC52044D
 for <devel@linuxdriverproject.org>; Fri, 20 Sep 2019 02:51:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Q9Ntt5PMa2Gs for <devel@linuxdriverproject.org>;
 Fri, 20 Sep 2019 02:51:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f65.google.com (mail-io1-f65.google.com
 [209.85.166.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 5B1A720355
 for <devel@driverdev.osuosl.org>; Fri, 20 Sep 2019 02:51:48 +0000 (UTC)
Received: by mail-io1-f65.google.com with SMTP id q1so12859480ion.1
 for <devel@driverdev.osuosl.org>; Thu, 19 Sep 2019 19:51:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=KLNKw4tCKcdLAT44IjaioZ3ZpL5CeMupWEppqyZEuqM=;
 b=lww7NWm2Spk5uLAjc9c0kzm5jMwyutinQTf/h3SF1eeZZdmHHJFKhUI03kOAbK0wk1
 D0Bagu5kODj2DORENWGxpb1qoQBqacV3xJ/tIA7b3SE4iOknGgMfDcFOX1OasZ9ov+RX
 LtD6zy4FWd/E+8WFAblQVNbrnISaVGInIvgYQG2J4tDIbTVGH1fwtMo06I+j5O06fyXG
 AsF0fRLekD2yi5OmawZeq65VkKSysU5/xaLsMg+xshiS3P1wz51iUH8ieluzTAM/MfBu
 g+TCW5WILMFP82HC2bFZgBAjeGQSOUNqDufWN2mRry25b51J7ncdN98XJkCTO71DPQWq
 WKsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=KLNKw4tCKcdLAT44IjaioZ3ZpL5CeMupWEppqyZEuqM=;
 b=JvNcwm2P7TIwPccpaXJCJEjewznpJj8RDbBDZuDavw2PmPVqhIjt4tMKWGqinhIm/w
 wcHj9su4qbFpzdnIbZCNX4DqWPpu7/AdaLz7b8j4wmB+VsxjzghKhhl7DusAaq6YCBq0
 dpBvBvA7yHWgV83b9OUJBb/IfxePtu9MKsYoCoFlyXjwAVyAcOfl2I8/GtQvd1SxVi2j
 +IqGd860EcjQjmlycooAn6KvmIN5barXnSe1na47ofEVTHJxIhORyOYPZvDX6A/ORg2m
 UJqfm0f2l8sr2VNTuaqt0StQZVoNee27WVnvAbvAVg6MgkcEVMARJ4wSXV3oOm7KSABz
 R26A==
X-Gm-Message-State: APjAAAWEOiHzlup0pcDMAA3C5q+2TrnsTsdSp1YfvH6JX1CBbb1JFtzw
 CmvzRd7hT2oFYFVBwCc6GAot94Ysvyo=
X-Google-Smtp-Source: APXvYqzpe1k4MLS+eqvcBWElYxS/s8lKEXGbM7ZJbfdmlMsZ2IZxL/B0hBRgQHd4UEDEkAMCmW0vjw==
X-Received: by 2002:a02:7f8a:: with SMTP id r132mr16390921jac.46.1568947907511; 
 Thu, 19 Sep 2019 19:51:47 -0700 (PDT)
Received: from cs-dulles.cs.umn.edu (cs-dulles.cs.umn.edu. [128.101.35.54])
 by smtp.googlemail.com with ESMTPSA id c5sm451907ioq.61.2019.09.19.19.51.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Sep 2019 19:51:47 -0700 (PDT)
From: Navid Emamdoost <navid.emamdoost@gmail.com>
To: 
Subject: [PATCH] staging: rtl8192u: fix multiple memory leaks on error path
Date: Thu, 19 Sep 2019 21:51:33 -0500
Message-Id: <20190920025137.29407-1-navid.emamdoost@gmail.com>
X-Mailer: git-send-email 2.17.1
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kjlu@umn.edu, linux-kernel@vger.kernel.org, emamd001@umn.edu,
 Nishka Dasgupta <nishkadg.linux@gmail.com>, smccaman@umn.edu,
 Colin Ian King <colin.king@canonical.com>,
 Navid Emamdoost <navid.emamdoost@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

In rtl8192_tx on error handling path allocated urbs and also skb should
be released.

Signed-off-by: Navid Emamdoost <navid.emamdoost@gmail.com>
---
 drivers/staging/rtl8192u/r8192U_core.c | 17 ++++++++++++-----
 1 file changed, 12 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
index fe1f279ca368..b62b03802b1b 100644
--- a/drivers/staging/rtl8192u/r8192U_core.c
+++ b/drivers/staging/rtl8192u/r8192U_core.c
@@ -1422,7 +1422,7 @@ short rtl8192_tx(struct net_device *dev, struct sk_buff *skb)
 		(struct tx_fwinfo_819x_usb *)(skb->data + USB_HWDESC_HEADER_LEN);
 	struct usb_device *udev = priv->udev;
 	int pend;
-	int status;
+	int status, rt = -1;
 	struct urb *tx_urb = NULL, *tx_urb_zero = NULL;
 	unsigned int idx_pipe;
 
@@ -1566,8 +1566,10 @@ short rtl8192_tx(struct net_device *dev, struct sk_buff *skb)
 		}
 		if (bSend0Byte) {
 			tx_urb_zero = usb_alloc_urb(0, GFP_ATOMIC);
-			if (!tx_urb_zero)
-				return -ENOMEM;
+			if (!tx_urb_zero) {
+				rt = -ENOMEM;
+				goto error;
+			}
 			usb_fill_bulk_urb(tx_urb_zero, udev,
 					  usb_sndbulkpipe(udev, idx_pipe),
 					  &zero, 0, tx_zero_isr, dev);
@@ -1577,7 +1579,7 @@ short rtl8192_tx(struct net_device *dev, struct sk_buff *skb)
 					 "Error TX URB for zero byte %d, error %d",
 					 atomic_read(&priv->tx_pending[tcb_desc->queue_index]),
 					 status);
-				return -1;
+				goto error;
 			}
 		}
 		netif_trans_update(dev);
@@ -1588,7 +1590,12 @@ short rtl8192_tx(struct net_device *dev, struct sk_buff *skb)
 	RT_TRACE(COMP_ERR, "Error TX URB %d, error %d",
 		 atomic_read(&priv->tx_pending[tcb_desc->queue_index]),
 		 status);
-	return -1;
+
+error:
+	dev_kfree_skb_any(skb);
+	usb_free_urb(tx_urb);
+	usb_free_urb(tx_urb_zero);
+	return rt;
 }
 
 static short rtl8192_usb_initendpoints(struct net_device *dev)
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

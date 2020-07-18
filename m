Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7AE5224CC7
	for <lists+driverdev-devel@lfdr.de>; Sat, 18 Jul 2020 17:59:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A13AE880C2;
	Sat, 18 Jul 2020 15:58:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H+4FiB8CDJet; Sat, 18 Jul 2020 15:58:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1B22E88035;
	Sat, 18 Jul 2020 15:58:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 278E31BF5A5
 for <devel@linuxdriverproject.org>; Sat, 18 Jul 2020 15:58:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0B4A220110
 for <devel@linuxdriverproject.org>; Sat, 18 Jul 2020 15:58:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jUu4NaCxNyZm for <devel@linuxdriverproject.org>;
 Sat, 18 Jul 2020 15:58:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 1624E20108
 for <devel@driverdev.osuosl.org>; Sat, 18 Jul 2020 15:58:54 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id k4so6717635pld.12
 for <devel@driverdev.osuosl.org>; Sat, 18 Jul 2020 08:58:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=s1UWpjWdsLNWPlgbdy02tqmEYswuYmQoob6quBB6g04=;
 b=QCGB1hi0YESLSG6rF2XZhgypBDF9IneUM2cGfrQpqcYDNVV9K7SLbWVfXxBg4IRgbW
 ym/Gfby5QUlRO53MnGwyyoqNzGv9jTXHFbFs8f9eiOf3glPygV4Ut9BOyY/0H6cJbQFM
 nlUgd7cvNOFJKpBNP60HyUfRjdv8nQ4YEButGXbsfylTmkLCK+OWMtpvW4Y75Ze1NuSn
 pHk09lKOQsO6FG1JZmJvaAULb46heVk/Kw5HkpChtgG/9ZrogvrBiRt3de+K+OMxQSC3
 /tNnA91swimrnOVKZ1cIXqpiyCkvZv4MJ+fGHPs0JY3oKw7W34sifBakFMTfMi5+e8aF
 SQRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=s1UWpjWdsLNWPlgbdy02tqmEYswuYmQoob6quBB6g04=;
 b=pTEUZKm0C5D4rzGKmB8jYwAS51jTf2P/Dzvr2rJsIY7+6mFhE0Q5A6zV/ZpgnmLp9/
 9hA07e0bsxV1Nep7mU0s06DIiMuIvRcBv7OGjTO7Eya2x165ICO24RnbylqdJBqD668j
 Ind6L4mP4aT4kYUzp6gkgCX91i3v/ctk5KPYeGHwGahLTEQiQnf5OGeW4hduQ9GClkfU
 HJgZig5MNy6Q1IdeLZ18h9NcvJ4iRertTQTZwFv03S9h40ejh6n9u6vmCzpoT3XRdBkL
 hiN3UNS/3NeLw3Kx2y4Eex2mwaknAP978UdNDs3rlZAFdzThW45sfo+MjYfMSjkqPgVj
 sceA==
X-Gm-Message-State: AOAM530HcfeMF2nSi3qlg2xmFsgiWW9AddgeoWcV5ZR8OlSDLiipZlgP
 iTRdfl9ZB646XdiPlSmXV7Q=
X-Google-Smtp-Source: ABdhPJwJ0PpQSHUZCXAZkdM2zvR/fLQPIt5NF9WZAzK5BadG8Usgow1YkN8XSCicaj4xZU6M/X811Q==
X-Received: by 2002:a17:90a:1f06:: with SMTP id
 u6mr15009934pja.33.1595087933448; 
 Sat, 18 Jul 2020 08:58:53 -0700 (PDT)
Received: from thinkpad.teksavvy.com ([69.172.171.109])
 by smtp.gmail.com with ESMTPSA id bx18sm5837889pjb.49.2020.07.18.08.58.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 18 Jul 2020 08:58:52 -0700 (PDT)
From: Rustam Kovhaev <rkovhaev@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: wlan-ng: properly check endpoint types
Date: Sat, 18 Jul 2020 08:58:36 -0700
Message-Id: <20200718155836.86384-1-rkovhaev@gmail.com>
X-Mailer: git-send-email 2.27.0
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
Cc: devel@driverdev.osuosl.org,
 syzbot+c2a1fa67c02faa0de723@syzkaller.appspotmail.com,
 linux-kernel@vger.kernel.org, Rustam Kovhaev <rkovhaev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

As syzkaller detected, wlan-ng driver submits bulk urb without checking
that the endpoint type is actually bulk, add usb_urb_ep_type_check()

Reported-and-tested-by: syzbot+c2a1fa67c02faa0de723@syzkaller.appspotmail.com
Link: https://syzkaller.appspot.com/bug?extid=c2a1fa67c02faa0de723
Signed-off-by: Rustam Kovhaev <rkovhaev@gmail.com>
---
 drivers/staging/wlan-ng/hfa384x_usb.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/staging/wlan-ng/hfa384x_usb.c b/drivers/staging/wlan-ng/hfa384x_usb.c
index fa1bf8b069fd..7cde60ea68a2 100644
--- a/drivers/staging/wlan-ng/hfa384x_usb.c
+++ b/drivers/staging/wlan-ng/hfa384x_usb.c
@@ -339,6 +339,12 @@ static int submit_rx_urb(struct hfa384x *hw, gfp_t memflags)
 
 	hw->rx_urb_skb = skb;
 
+	result = usb_urb_ep_type_check(&hw->rx_urb);
+	if (result) {
+	       netdev_warn(hw->wlandev->netdev, "invalid rx endpoint");
+	       goto cleanup;
+	}
+
 	result = -ENOLINK;
 	if (!hw->wlandev->hwremoved &&
 	    !test_bit(WORK_RX_HALT, &hw->usb_flags)) {
@@ -354,6 +360,7 @@ static int submit_rx_urb(struct hfa384x *hw, gfp_t memflags)
 		}
 	}
 
+cleanup:
 	/* Don't leak memory if anything should go wrong */
 	if (result != 0) {
 		dev_kfree_skb(skb);
@@ -388,6 +395,12 @@ static int submit_tx_urb(struct hfa384x *hw, struct urb *tx_urb, gfp_t memflags)
 	struct net_device *netdev = hw->wlandev->netdev;
 	int result;
 
+	result = usb_urb_ep_type_check(&hw->tx_urb);
+	if (result) {
+	       netdev_warn(hw->wlandev->netdev, "invalid tx endpoint");
+	       goto done;
+	}
+
 	result = -ENOLINK;
 	if (netif_running(netdev)) {
 		if (!hw->wlandev->hwremoved &&
@@ -407,6 +420,7 @@ static int submit_tx_urb(struct hfa384x *hw, struct urb *tx_urb, gfp_t memflags)
 		}
 	}
 
+done:
 	return result;
 }
 
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

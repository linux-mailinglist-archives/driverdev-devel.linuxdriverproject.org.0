Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FDBB56290
	for <lists+driverdev-devel@lfdr.de>; Wed, 26 Jun 2019 08:48:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8346E87B62;
	Wed, 26 Jun 2019 06:48:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mgn7FjPp1Q4o; Wed, 26 Jun 2019 06:48:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 87D4087B08;
	Wed, 26 Jun 2019 06:48:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 596491BF3CC
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 06:48:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 56E5285FFD
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 06:48:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UwuBb94tL6ka for <devel@linuxdriverproject.org>;
 Wed, 26 Jun 2019 06:48:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id DA3B785FEB
 for <devel@driverdev.osuosl.org>; Wed, 26 Jun 2019 06:48:10 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id k13so714884pgq.9
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2019 23:48:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=M658MrNADCrnrRj3uIjrd1YTXI9VBSOlqqpYyKx0SR4=;
 b=LvscHvaptVYukmSY67Bv80s9y2yCdms+NFJLTnlsD3QKLdEiHiYAffBw0SeN46snp3
 QxLCv7y6ME3ebG3QPzLQxpfTrKFZa0HTrgrxftmCUJDxIGPB/NjCqBfI/E81deKgBSza
 xrnEIpF8Ccb56GE8QffamCwVuDaPOmiVAQzBK+ayQmGutdbyROJAkmiKZ4uCKW+0gtG/
 EFW67qVuSov+0snhVs8G/WpY1i7pU9B1JJfL4U6CvlCXgUgppUFpjDViwnkJeN+zHjbS
 4Dur6Is8p9RGNgNr7EvGHxJdESbKmhW0FvYBfNC+2ORVJL96N2pB3qZoKFr1nKJSNXII
 YCFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=M658MrNADCrnrRj3uIjrd1YTXI9VBSOlqqpYyKx0SR4=;
 b=Xcfr7Dvk+Ont1kYTwsD7JjQ2HD7JmwKXY/85XhL1+IDRXixwrwNlLV8C8F7daC3Mvv
 dI2YaRO+3GVikUsoLg0MOjrcwD4dIyBTlYjWvjhg2K5+sK8v2GZmkJ1VLrH8AjKQlV8u
 bfcmSXAPuokG0bjZeHJh9WXlMvHHNIjnRfdnv5cmwYE7xcuwiEUdJlW5MAE4WHGN6mxr
 2D9+orVyUhc5rUdLTqxe+uRsYP8cYNvUBX8eCwaQOZeOmIY4w70+R0YOe9fP8EVTq81M
 nu7DqOdfMcp2YoUf+V6DH+NbXoZqwFMNz+jcxAo5IRTUcHM4TKI0Y4tTjhh2iMqXT5+3
 mvtg==
X-Gm-Message-State: APjAAAV1f6MsPz7NBl34gMZaG/PPJ4VUhVDyjg9MToNuhIHlPnbv0YSO
 +7xOCS08bZy0Is/qEKYbpBI=
X-Google-Smtp-Source: APXvYqzUfq3wo04UBVbSPsq1pdOhCYQoYN73oB6Btdw4SFwe3/E/T7l9kPb7OyC9ju9zNJYC+nETyQ==
X-Received: by 2002:a63:fb17:: with SMTP id o23mr1363908pgh.362.1561531690493; 
 Tue, 25 Jun 2019 23:48:10 -0700 (PDT)
Received: from localhost.localdomain ([110.227.94.173])
 by smtp.gmail.com with ESMTPSA id i123sm2765678pfe.147.2019.06.25.23.48.08
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 25 Jun 2019 23:48:10 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH 1/2] staging: rtl8192u: Change type of rtl8192_rx_initiate()
Date: Wed, 26 Jun 2019 12:17:58 +0530
Message-Id: <20190626064759.3190-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Change type of function rtl8192_rx_initiate from int to void as it
always returns 0 and this value is never used.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8192u/r8192U_core.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
index 4065a4710142..e78806fef79f 100644
--- a/drivers/staging/rtl8192u/r8192U_core.c
+++ b/drivers/staging/rtl8192u/r8192U_core.c
@@ -713,7 +713,7 @@ static u32 get_rxpacket_shiftbytes_819xusb(struct ieee80211_rx_stats *pstats)
 		+ pstats->RxBufShift);
 }
 
-static int rtl8192_rx_initiate(struct net_device *dev)
+static void rtl8192_rx_initiate(struct net_device *dev)
 {
 	struct r8192_priv *priv = (struct r8192_priv *)ieee80211_priv(dev);
 	struct urb *entry;
@@ -763,8 +763,6 @@ static int rtl8192_rx_initiate(struct net_device *dev)
 		skb_queue_tail(&priv->rx_queue, skb);
 		usb_submit_urb(entry, GFP_KERNEL);
 	}
-
-	return 0;
 }
 
 void rtl8192_set_rxconf(struct net_device *dev)
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

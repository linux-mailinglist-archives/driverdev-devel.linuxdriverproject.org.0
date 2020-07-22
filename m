Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A11A229CD3
	for <lists+driverdev-devel@lfdr.de>; Wed, 22 Jul 2020 18:11:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 36D2D883C6;
	Wed, 22 Jul 2020 16:11:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1Arc1ecP-8Lo; Wed, 22 Jul 2020 16:11:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2B47A880E9;
	Wed, 22 Jul 2020 16:11:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id ED2451BF321
 for <devel@linuxdriverproject.org>; Wed, 22 Jul 2020 16:11:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E9DF58538A
 for <devel@linuxdriverproject.org>; Wed, 22 Jul 2020 16:11:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZJRmDy5TEet7 for <devel@linuxdriverproject.org>;
 Wed, 22 Jul 2020 16:11:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7620A8525D
 for <devel@driverdev.osuosl.org>; Wed, 22 Jul 2020 16:11:02 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id l6so1222080plt.7
 for <devel@driverdev.osuosl.org>; Wed, 22 Jul 2020 09:11:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=HmPcqdLvVGHN8YIZDSoWp5mmL8DNRYwFD2mWJlFG/CI=;
 b=m0v9IQWnDgV4s6SMh/3HK0Ls3dL54sIPnN+m5UT2/hUC3PlDl2/W4kuw8mLT/+t/cN
 HxiCHcfv8HDrIysntb62I552PqeuEOyH/S3SO3QBkcx+RYaeSULjwkP8arqM1QWO4wg1
 E6yzW6xGFhKPhLOTimdH487g2u68ZJqeiWPUxM01HC06RbE1hniX0ZTXTdPWg2yufgjd
 nLTIf5z1CQ9sfy3TvT/oebTz//xFOR4fVrxrSBEhCivva3v/3XBk4x9TSl5DGIdulDLH
 BE6h9ocHdNRBxV2BbVliv5GN8cFfm7d+CBU5ngLDUJQnsAzFN2IEdQkyveZQvervZIHb
 WyAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=HmPcqdLvVGHN8YIZDSoWp5mmL8DNRYwFD2mWJlFG/CI=;
 b=gIv6DxSiXDu+jDoA5j7ct2tlSxM/yIupAaUIYNjGzf825DpYkumOmFfynTjDhJE2VH
 pDUXFMwxpzD20AjjjEa+fYeavfr6k5/nPoBpuKphnk43xreynlOp0SdsRaAD+KRwqvQk
 qLV+fiDPqN99ZL/GVaOR7O4NM2ji74hQ96lAQOqTfmSkvKGAWh/NG5JeNOhwHAmArRwY
 cBItnJ9vY0e+fPG4TQU1Lc9szBs9roe25UFbD5lwJtoj6sQNwvTfq+P76RjkAbtmar5L
 DNnmqab9NiLJcdmzOBT9SA3u5zBA8pAWnl+MrZ/jjVeyb2OaBgFWY0gpr/Zr0IkyYupm
 7K5w==
X-Gm-Message-State: AOAM530icqvReQm4hBu1hMPS37Elw5VWUtAE6p6EP152N3YtghXHGhXf
 SWFq+mNE4B6bLYPybDKPvsA=
X-Google-Smtp-Source: ABdhPJzbx4BjNV5Obyp/YLufMMjsWtKMTtCF6Df/GgQvhyi0ZF27dT0hVdtJ2eX5wQF9bVXuMITvpw==
X-Received: by 2002:a17:902:b084:: with SMTP id p4mr213677plr.58.1595434261973; 
 Wed, 22 Jul 2020 09:11:01 -0700 (PDT)
Received: from thinkpad.teksavvy.com ([69.172.171.109])
 by smtp.gmail.com with ESMTPSA id 21sm37393pfu.124.2020.07.22.09.11.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Jul 2020 09:11:01 -0700 (PDT)
From: Rustam Kovhaev <rkovhaev@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: wlan-ng: properly check endpoint types
Date: Wed, 22 Jul 2020 09:10:52 -0700
Message-Id: <20200722161052.999754-1-rkovhaev@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Rustam Kovhaev <rkovhaev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

As syzkaller detected, wlan-ng driver does not do sanity check of
endpoints in prism2sta_probe_usb(), add check for xfer direction and type

Reported-and-tested-by: syzbot+c2a1fa67c02faa0de723@syzkaller.appspotmail.com
Link: https://syzkaller.appspot.com/bug?extid=c2a1fa67c02faa0de723
Signed-off-by: Rustam Kovhaev <rkovhaev@gmail.com>
---
 drivers/staging/wlan-ng/prism2usb.c | 16 +++++++++++++++-
 1 file changed, 15 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/wlan-ng/prism2usb.c b/drivers/staging/wlan-ng/prism2usb.c
index 4689b2170e4f..456603fd26c0 100644
--- a/drivers/staging/wlan-ng/prism2usb.c
+++ b/drivers/staging/wlan-ng/prism2usb.c
@@ -61,11 +61,25 @@ static int prism2sta_probe_usb(struct usb_interface *interface,
 			       const struct usb_device_id *id)
 {
 	struct usb_device *dev;
-
+	const struct usb_endpoint_descriptor *epd;
+	const struct usb_host_interface *iface_desc = interface->cur_altsetting;
 	struct wlandevice *wlandev = NULL;
 	struct hfa384x *hw = NULL;
 	int result = 0;
 
+	if (iface_desc->desc.bNumEndpoints != 2) {
+		result = -ENODEV;
+		goto failed;
+	}
+
+	result = -EINVAL;
+	epd = &iface_desc->endpoint[1].desc;
+	if (!usb_endpoint_is_bulk_in(epd))
+		goto failed;
+	epd = &iface_desc->endpoint[2].desc;
+	if (!usb_endpoint_is_bulk_out(epd))
+		goto failed;
+
 	dev = interface_to_usbdev(interface);
 	wlandev = create_wlan();
 	if (!wlandev) {
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

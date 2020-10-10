Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 56E57289F5A
	for <lists+driverdev-devel@lfdr.de>; Sat, 10 Oct 2020 10:29:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C896F87061;
	Sat, 10 Oct 2020 08:29:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id l_osbHupJ-uC; Sat, 10 Oct 2020 08:29:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5709687012;
	Sat, 10 Oct 2020 08:29:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EF1C81BF30D
 for <devel@linuxdriverproject.org>; Sat, 10 Oct 2020 08:29:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id EBEFC87837
 for <devel@linuxdriverproject.org>; Sat, 10 Oct 2020 08:29:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WmejH6vp3KLd for <devel@linuxdriverproject.org>;
 Sat, 10 Oct 2020 08:29:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1B12D87835
 for <devel@driverdev.osuosl.org>; Sat, 10 Oct 2020 08:29:43 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id x22so8891845pfo.12
 for <devel@driverdev.osuosl.org>; Sat, 10 Oct 2020 01:29:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Ujl0XMo+P2qPzI898K3phXYWEBycnuuMtmf0dkiRFm4=;
 b=hEQ4o52s/F1ZVoAggS29VtGDMZDIdG6bVDIOeyJS6dOmt1JlEwrS39DBQl1HR85b1t
 XWtgMhHfwiUum/ivKsrgwpGWqkRFcBKQAkZdGsG910kGaxF3cYOWs3wYwUsHDGxGmptE
 mWcwOWi/RVH4x/aHn+a5PlsSSx7Et1tRI+ItP4JsJUSn9CZd5Ln52SFSMicOJl0Df+lM
 glb58Msd5Ow+M93wFye0MCgkdJKJIsDIFM0aIUXdoKQhhvBToEF/bbe8TmLaNm8aA0aM
 mappevSsOGzb70suuoiIe38J/rZukwVqojWS0YULTkGsjInzm/wHWS7W8iuZBxu/ORMt
 ggYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Ujl0XMo+P2qPzI898K3phXYWEBycnuuMtmf0dkiRFm4=;
 b=M2Oba8oqu/dqegvlYpSab8ypE8W9fyGTd4XeyrYt1ysvLdEtLIG3lRw/mEfPiHg7HI
 9bWLTqsfmL6gw1OToGGbLkmrOoTTpu7KlO4jFGn7k4h0190G/cfc/vPdbU4KzAuOQWhF
 ASKISW7I8bvnIz3nK1m2/IjY/tCT6ahMLObCVbDTig9utb9Uw23M0qNRPyFjMe0RMqVk
 n+QUZvYGAXak8Zonwfr3oKEOgWI+NVCEmeev5Gpy8YPhqByUpAuy6q/ZCq8dMLd7Xvjv
 BnF8i6nq7kr1IUGsiJr0gStW+vDxr3Qd4N+xzWGun6lFliVeIU09+zHl2yFs/RItlJdJ
 fczg==
X-Gm-Message-State: AOAM532kUUs1ky1I9nEtmNw/bFQ/pa7TgT+7VmCoOgq5c2K9QdPKFGRR
 0NkdPW047vT56Q2wUw5ugAE=
X-Google-Smtp-Source: ABdhPJzFAobmdRLZl/VDshqghj1XOTtQifHi3qfxvI/4/S3GKV3QBrbxn36Te3/przQmxHOrcCU1Vg==
X-Received: by 2002:a62:1851:0:b029:154:8ed7:bf5d with SMTP id
 78-20020a6218510000b02901548ed7bf5dmr15563861pfy.66.1602318582487; 
 Sat, 10 Oct 2020 01:29:42 -0700 (PDT)
Received: from localhost.localdomain ([49.207.200.2])
 by smtp.gmail.com with ESMTPSA id g13sm12991877pgd.82.2020.10.10.01.29.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 10 Oct 2020 01:29:41 -0700 (PDT)
From: Anant Thazhemadam <anant.thazhemadam@gmail.com>
To: 
Subject: [PATCH v3] staging: comedi: check validity of wMaxPacketSize of usb
 endpoints found
Date: Sat, 10 Oct 2020 13:59:32 +0530
Message-Id: <20201010082933.5417-1-anant.thazhemadam@gmail.com>
X-Mailer: git-send-email 2.25.1
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
Cc: devel@driverdev.osuosl.org, Anant Thazhemadam <anant.thazhemadam@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Ian Abbott <abbotti@mev.co.uk>,
 syzbot+009f546aa1370056b1c2@syzkaller.appspotmail.com,
 linux-kernel-mentees@lists.linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

While finding usb endpoints in vmk80xx_find_usb_endpoints(), check if 
wMaxPacketSize = 0 for the endpoints found.

Some devices have isochronous endpoints that have wMaxPacketSize = 0
(as required by the USB-2 spec).
However, since this doesn't apply here, wMaxPacketSize = 0 can be
considered to be invalid.

Reported-by: syzbot+009f546aa1370056b1c2@syzkaller.appspotmail.com
Tested-by: syzbot+009f546aa1370056b1c2@syzkaller.appspotmail.com
Signed-off-by: Anant Thazhemadam <anant.thazhemadam@gmail.com>
---
Changes in v3:
	* Correctly list version information

Changes in v2:
	* Fix coding style issue

The error (as detected by syzbot) is generated in 
vmk80xx_write_packet() (which is called in vmk80xx_reset_device()) when
it tries to assign devpriv->usb_tx_buf[0] = cmd.

This NULL pointer dereference issue arises because
size = usb_endpoint_maxp(devpriv->ep_tx) = 0.

This can be traced back to vmk80xx_find_usb_endpoints(), where the usb 
endpoints are found, and assigned accordingly.
(For some more insight, in vmk80xx_find_usb_endpoints(), 
if one of intf->cur_altsetting->iface_desc->endpoints' desc value = 0, 
and consequently this endpoint is assigned to devpriv->ep_tx,
this issue gets triggered.)

Checking if the wMaxPacketSize of an endpoint is invalid and returning
an error value accordingly, seems to fix the error.

We could also alternatively perform this checking (if the size is 0 or not) 
in vmk80xx_reset_device() itself, but it only seemed like covering up the issue
at that place, rather than fixing it, so I wasn't sure that was any better.

However, if I'm not wrong, this might end up causing the probe to fail, and I'm 
not sure if that's the right thing to do in cases like this, and if it isn't I'd
like some input on what exactly is the required course of action in cases like this.

 drivers/staging/comedi/drivers/vmk80xx.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/staging/comedi/drivers/vmk80xx.c b/drivers/staging/comedi/drivers/vmk80xx.c
index 65dc6c51037e..cb0a965d3c37 100644
--- a/drivers/staging/comedi/drivers/vmk80xx.c
+++ b/drivers/staging/comedi/drivers/vmk80xx.c
@@ -667,6 +667,9 @@ static int vmk80xx_find_usb_endpoints(struct comedi_device *dev)
 	if (!devpriv->ep_rx || !devpriv->ep_tx)
 		return -ENODEV;
 
+	if (!usb_endpoint_maxp(devpriv->ep_rx) || !usb_endpoint_maxp(devpriv->ep_tx))
+		return -EINVAL;
+
 	return 0;
 }
 
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B3C30288E91
	for <lists+driverdev-devel@lfdr.de>; Fri,  9 Oct 2020 18:17:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7143D2E2DB;
	Fri,  9 Oct 2020 16:17:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uVC1j9MswlGp; Fri,  9 Oct 2020 16:17:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 269C62E2D0;
	Fri,  9 Oct 2020 16:17:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D7FE21BF255
 for <devel@linuxdriverproject.org>; Fri,  9 Oct 2020 16:17:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D3849877A2
 for <devel@linuxdriverproject.org>; Fri,  9 Oct 2020 16:17:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xIlGLZe0+Gvv for <devel@linuxdriverproject.org>;
 Fri,  9 Oct 2020 16:17:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 532F1877A1
 for <devel@driverdev.osuosl.org>; Fri,  9 Oct 2020 16:17:11 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id o8so4682718pll.4
 for <devel@driverdev.osuosl.org>; Fri, 09 Oct 2020 09:17:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Bmx9gH8QKYILpVv8/AwBKiqUZ1W2aX/bT7meRLse05U=;
 b=cPgy8ppfUqoug6Hor5S2QVmhFZWHFrqJXMkkIlCfoLjsNgIXVupZCDSidSxzpRprlj
 rfjpDWTuGxujG0WGnuwCUd6DtrIqIe0Q4piEXyARszAGEaARe7MERlHX28vBE6rjBXwn
 wmM+lgmATC9rUzbL/+UIHkSlNXi/qBUfCT9r6Mi6QAD4XJCyy6XEmUsTKED84w+Y3gj3
 8j/Y8BiwF6GBByc7N15bCx8BOlnz2THm/VCh31ARuX6A4D//SleD+C8Zo0UXPmgVQdBI
 mMt4n+Q+5NQjk4XxRrSDeY/BaUvWQymMw6xAi760bKR2bgDfqkEBy2f7SpGyHP+Vad6P
 l0PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Bmx9gH8QKYILpVv8/AwBKiqUZ1W2aX/bT7meRLse05U=;
 b=H4kvyZfiT8qLGx8OfaPOcQTOb+KBMIp2PP1Wc1cchXBRlbmK70MRm8T1NzYjkj9rU0
 3zIHiYRglAkg5DeDPIn+CR+vRnzii5zcXawutOKZXEHzKtBjKm80LOKMuWi2fFbXeUXb
 uw1adREhIsOKfw7kd88NNZp58zGzNBbrNnxdzq1uR46R273+HUzX5M8NMruATdNKF6Ln
 2yfYYsDVJFlgwDT3yf/29BP3PTA5GKQbkY0jiX+uCrGCQZwpHAKOuvKLXvnRKmzZs/+V
 RFaqhKU6Rr8IyCAINt7nirp7bHDFigUjaWf+TQ04IFyx2NcFJpGpa2zs7lXKvceAuHn7
 NqQA==
X-Gm-Message-State: AOAM530kFo+iVFTFTLR56H5Euagbjg0kqTlGfLXUTNvlTAyG+y0gySgR
 kBFxxiX7DNQ2lFyUKpAwqNI=
X-Google-Smtp-Source: ABdhPJxAPI/0Ac3xxOCN4zvAfkmbcnL5mU1jLjyIiq9aO2HXzi8cW2Uw5SZniELgmxOPso9AYka+6A==
X-Received: by 2002:a17:902:21:b029:d2:564a:5dc6 with SMTP id
 30-20020a1709020021b02900d2564a5dc6mr12808284pla.14.1602260230641; 
 Fri, 09 Oct 2020 09:17:10 -0700 (PDT)
Received: from localhost.localdomain ([49.207.205.113])
 by smtp.gmail.com with ESMTPSA id s6sm9367662pfd.157.2020.10.09.09.17.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 09 Oct 2020 09:17:09 -0700 (PDT)
From: Anant Thazhemadam <anant.thazhemadam@gmail.com>
To: 
Subject: [PATCH] staging: comedi: check validity of wMaxPacketSize of usb
 endpoints found
Date: Fri,  9 Oct 2020 21:46:44 +0530
Message-Id: <20201009161646.286286-1-anant.thazhemadam@gmail.com>
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
 
+	if(!usb_endpoint_maxp(devpriv->ep_rx) || !usb_endpoint_maxp(devpriv->ep_tx))
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

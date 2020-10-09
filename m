Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EEB5288EAB
	for <lists+driverdev-devel@lfdr.de>; Fri,  9 Oct 2020 18:20:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C58CF2E2CE;
	Fri,  9 Oct 2020 16:20:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VaDfdBL8GOf9; Fri,  9 Oct 2020 16:20:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D8C512E2D0;
	Fri,  9 Oct 2020 16:20:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 503E31BF255
 for <devel@linuxdriverproject.org>; Fri,  9 Oct 2020 16:20:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4B43E86F2B
 for <devel@linuxdriverproject.org>; Fri,  9 Oct 2020 16:20:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rEl3fqoEIN74 for <devel@linuxdriverproject.org>;
 Fri,  9 Oct 2020 16:20:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id AEFCF86C41
 for <devel@driverdev.osuosl.org>; Fri,  9 Oct 2020 16:20:39 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id 144so7282460pfb.4
 for <devel@driverdev.osuosl.org>; Fri, 09 Oct 2020 09:20:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=mP+aJbUAat0UV4esY+1JsE6q/zZ+Jt33VyknqBiKg6E=;
 b=H8vtangYCZZ+rQo2KOQ7hhPSTvZztsIedGeLPsRZ1uamjVukb7XGoPTUeMIx+FIzRu
 b6vFDbHC4nyU2AsQjT8sNUGWq2ZCcmSjFp3vw+lgMY5ATWNuQNZdAK2H/hjU8O3V9CtT
 HallgOMsilAG0KHTairyYihZzET/881krznSKPcC/cjm0uz+ng1KI+JTtuj7oSJxuj/J
 VzmK/OlUs+oT4QptXSWDbMgHNk0OIGU7ojpB9m7mwm31BM+AjreQhCPGeWr7sNZAzubO
 wWfm3H2Ph4/Gno9/d/WoPQYybFh74inmjJDTI76qXPo42YHTlAuP7iv7pACAIj63B9Ds
 CJvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=mP+aJbUAat0UV4esY+1JsE6q/zZ+Jt33VyknqBiKg6E=;
 b=Ao5Dtd+k3b7eDloVps9Tjc+0jCtYaiz7NmaOWxz8LCpLFIHRjB58DNkwULBySOx5LP
 ExFda0rrN3nZfMtFiv3TdANoY71sMLsHtACbU1eNHjowtoZgOfN4U8CRugVzTXNVA1mO
 SJHXA+1sBo+n5LAAPJ4j4XdY41NhyFG5xQC0OVTMZQe8cuupdDeH6auMbXinNR6YEIkg
 TYsUTqIDsHdPdEFufJ3hVUWWFx3HlP2FJNOqu4YASlw58LyXnEjZliu74KdWgAj4oi79
 iLL+dm3KI32VAUjudxo1Fu6V8QNXqqQuK+7wKaFPHVLo7KM47gG3Mh+HGwC4VQs7Zpoj
 X0pA==
X-Gm-Message-State: AOAM531VKTzrrV7vWTyKmr3wSe+GomDm5hPCmgXhxDYhuNr4zon/5t46
 kwMINubGj1XqmRyU2D/x4K1YIpQZZZ6h2oyPhq0=
X-Google-Smtp-Source: ABdhPJyARPOvuTSwMuRPOKozcnKxADEWGnflnK+0e+Bke7F1X7H6ejWfNx6wuvsaN93e4Q1NYAr2Lw==
X-Received: by 2002:a17:90a:1861:: with SMTP id
 r88mr5337711pja.222.1602260439006; 
 Fri, 09 Oct 2020 09:20:39 -0700 (PDT)
Received: from localhost.localdomain ([49.207.205.113])
 by smtp.gmail.com with ESMTPSA id h31sm11163325pgh.71.2020.10.09.09.20.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 09 Oct 2020 09:20:38 -0700 (PDT)
From: Anant Thazhemadam <anant.thazhemadam@gmail.com>
To: 
Subject: [PATCH] staging: comedi: check validity of wMaxPacketSize of usb
 endpoints found
Date: Fri,  9 Oct 2020 21:50:29 +0530
Message-Id: <20201009162030.293781-1-anant.thazhemadam@gmail.com>
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

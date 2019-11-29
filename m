Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A6AA10D3D1
	for <lists+driverdev-devel@lfdr.de>; Fri, 29 Nov 2019 11:20:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8379B230F3;
	Fri, 29 Nov 2019 10:20:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wUY93NOYA1aT; Fri, 29 Nov 2019 10:20:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8E5A82041A;
	Fri, 29 Nov 2019 10:20:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9E5E81BF349
 for <devel@linuxdriverproject.org>; Fri, 29 Nov 2019 10:19:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 99C8287D6F
 for <devel@linuxdriverproject.org>; Fri, 29 Nov 2019 10:19:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GZAVA8VxhK-i for <devel@linuxdriverproject.org>;
 Fri, 29 Nov 2019 10:19:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
 [209.85.208.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id AA59787D47
 for <devel@driverdev.osuosl.org>; Fri, 29 Nov 2019 10:19:58 +0000 (UTC)
Received: by mail-lj1-f194.google.com with SMTP id c19so4382691lji.11
 for <devel@driverdev.osuosl.org>; Fri, 29 Nov 2019 02:19:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=YQ9NZqfEPBjz3KOdFZmTMVER3EPMPaak6R0HUkbsMbw=;
 b=X71nJ61S3WWFyqGU108dbRx6RvzhXZyb2yPfMg931wkpoNxY1pdLwy4qPRj00NjG8u
 W6dII0IB54JXRTQu5Rj4fFlRv6Y00C2PEpEt4bISMkYFMlrq/zktkbpRwVN37zW6BCtm
 Ht7TMMUAMvtMYcofvzuQciZqAlohvMMgB76AiD9AQB6D5nfymhALsVlwg1quOZxsEm3v
 PzGZGLT5TXeq+2YLthTjMCruLz8s5bR+kfv1N8RTehQoGfWUqNMuafKBmZ8jtuT0Ihzi
 NzHBJtTv2CG4CevWmvyf4YWGsFFhIdsmGvkoJaTyv+b3p9xjZ5n7iz15U91FAiJCCZHN
 lY6A==
X-Gm-Message-State: APjAAAWO4UBN1S0ardDn8bGs3Eyfqudv7jow56dNl3OmUiaBpWS4QJa+
 Gtn2ytwKT4Cep6Ds8glNo6E=
X-Google-Smtp-Source: APXvYqzJB4YmHHDLdWxGw/gxHtBIsdyjdqqfFfBq0afNUwu5NbJ0VZT2+sgpIvQC3mGQpJOi7q44FA==
X-Received: by 2002:a2e:8016:: with SMTP id j22mr989015ljg.24.1575022796898;
 Fri, 29 Nov 2019 02:19:56 -0800 (PST)
Received: from xi.terra (c-14b8e655.07-184-6d6c6d4.bbcust.telenor.se.
 [85.230.184.20])
 by smtp.gmail.com with ESMTPSA id g85sm9990868lfd.66.2019.11.29.02.19.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 Nov 2019 02:19:54 -0800 (PST)
Received: from johan by xi.terra with local (Exim 4.92.3)
 (envelope-from <johan@xi.terra>)
 id 1iadNU-0002Yq-Hx; Fri, 29 Nov 2019 11:19:56 +0100
From: Johan Hovold <johan@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 4/4] staging: gigaset: rename endpoint-descriptor identifier
Date: Fri, 29 Nov 2019 11:17:53 +0100
Message-Id: <20191129101753.9721-5-johan@kernel.org>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191129101753.9721-1-johan@kernel.org>
References: <20191129101753.9721-1-johan@kernel.org>
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
 linux-kernel@vger.kernel.org, Johan Hovold <johan@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Rename an endpoint-descriptor pointer to shut up a checkpatch warning
about a line being over 80 columns, which is bound to generate a bunch
of clean up patches otherwise.

Signed-off-by: Johan Hovold <johan@kernel.org>
---
 drivers/staging/isdn/gigaset/usb-gigaset.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/isdn/gigaset/usb-gigaset.c b/drivers/staging/isdn/gigaset/usb-gigaset.c
index 6c07c8379711..d5fab2ea25b4 100644
--- a/drivers/staging/isdn/gigaset/usb-gigaset.c
+++ b/drivers/staging/isdn/gigaset/usb-gigaset.c
@@ -652,7 +652,7 @@ static int gigaset_probe(struct usb_interface *interface,
 	struct usb_host_interface *hostif = interface->cur_altsetting;
 	struct cardstate *cs = NULL;
 	struct usb_cardstate *ucs = NULL;
-	struct usb_endpoint_descriptor *endpoint;
+	struct usb_endpoint_descriptor *epd;
 	int buffer_size;
 
 	gig_dbg(DEBUG_ANY, "%s: Check if device matches ...", __func__);
@@ -703,17 +703,17 @@ static int gigaset_probe(struct usb_interface *interface,
 	/* save address of controller structure */
 	usb_set_intfdata(interface, cs);
 
-	endpoint = &hostif->endpoint[0].desc;
+	epd = &hostif->endpoint[0].desc;
 
-	if (!usb_endpoint_dir_out(endpoint) || !usb_endpoint_xfer_bulk(endpoint)) {
+	if (!usb_endpoint_dir_out(epd) || !usb_endpoint_xfer_bulk(epd)) {
 		dev_err(&interface->dev, "missing bulk-out endpoint\n");
 		retval = -ENODEV;
 		goto error;
 	}
 
-	buffer_size = le16_to_cpu(endpoint->wMaxPacketSize);
+	buffer_size = le16_to_cpu(epd->wMaxPacketSize);
 	ucs->bulk_out_size = buffer_size;
-	ucs->bulk_out_epnum = usb_endpoint_num(endpoint);
+	ucs->bulk_out_epnum = usb_endpoint_num(epd);
 	ucs->bulk_out_buffer = kmalloc(buffer_size, GFP_KERNEL);
 	if (!ucs->bulk_out_buffer) {
 		dev_err(cs->dev, "Couldn't allocate bulk_out_buffer\n");
@@ -728,9 +728,9 @@ static int gigaset_probe(struct usb_interface *interface,
 		goto error;
 	}
 
-	endpoint = &hostif->endpoint[1].desc;
+	epd = &hostif->endpoint[1].desc;
 
-	if (!usb_endpoint_dir_in(endpoint) || !usb_endpoint_xfer_int(endpoint)) {
+	if (!usb_endpoint_dir_in(epd) || !usb_endpoint_xfer_int(epd)) {
 		dev_err(&interface->dev, "missing int-in endpoint\n");
 		retval = -ENODEV;
 		goto error;
@@ -744,7 +744,7 @@ static int gigaset_probe(struct usb_interface *interface,
 		retval = -ENOMEM;
 		goto error;
 	}
-	buffer_size = le16_to_cpu(endpoint->wMaxPacketSize);
+	buffer_size = le16_to_cpu(epd->wMaxPacketSize);
 	ucs->rcvbuf_size = buffer_size;
 	ucs->rcvbuf = kmalloc(buffer_size, GFP_KERNEL);
 	if (!ucs->rcvbuf) {
@@ -754,10 +754,10 @@ static int gigaset_probe(struct usb_interface *interface,
 	}
 	/* Fill the interrupt urb and send it to the core */
 	usb_fill_int_urb(ucs->read_urb, udev,
-			 usb_rcvintpipe(udev, usb_endpoint_num(endpoint)),
+			 usb_rcvintpipe(udev, usb_endpoint_num(epd)),
 			 ucs->rcvbuf, buffer_size,
 			 gigaset_read_int_callback,
-			 cs, endpoint->bInterval);
+			 cs, epd->bInterval);
 
 	retval = usb_submit_urb(ucs->read_urb, GFP_KERNEL);
 	if (retval) {
-- 
2.24.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

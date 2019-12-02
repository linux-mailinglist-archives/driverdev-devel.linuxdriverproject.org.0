Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E55C710E72D
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Dec 2019 09:56:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8CC4F88884;
	Mon,  2 Dec 2019 08:56:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SVY-3B1QHZdo; Mon,  2 Dec 2019 08:56:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D4391887D1;
	Mon,  2 Dec 2019 08:56:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 12B091BF2A6
 for <devel@linuxdriverproject.org>; Mon,  2 Dec 2019 08:56:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0F987870DE
 for <devel@linuxdriverproject.org>; Mon,  2 Dec 2019 08:56:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id e5kBGjgMcj3s for <devel@linuxdriverproject.org>;
 Mon,  2 Dec 2019 08:56:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f68.google.com (mail-lf1-f68.google.com
 [209.85.167.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3CAAF86FEE
 for <devel@driverdev.osuosl.org>; Mon,  2 Dec 2019 08:56:28 +0000 (UTC)
Received: by mail-lf1-f68.google.com with SMTP id m30so25427190lfp.8
 for <devel@driverdev.osuosl.org>; Mon, 02 Dec 2019 00:56:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Vgj7PGsaCd+QK5EW8HOwKnXzkNAAF8dwOAUSS+ipPTs=;
 b=LRtX8d/KGjrkJb1+0QQMaQU5/LqZaWc5pS697CXf4nXhN6SI+CRCPnFxlhcaPoI1oM
 LYPtT3B+pCkRy6pERPL60I6h1ktQ1t2JeDMWznnLTF0pDD6J3LTtTyWdrLcwYKvAbPot
 OTErRE5TJ3zPuaV1XeQb4KumMzIqsNLdYEzAbzSPun3Ojlcsa2nQze27C1Fj15w40tJ8
 DDI4Aqa/YOaKhhhctGYz5P/G/pKMyCE4+COR/B/6UC9PeNh/uLPOSonHNQTxKnX8t2A/
 ti4Ar4JmJFaSmnvWZLEwBO/ZBZ554RWBgRd7Wim+OGdqTpTSSu1tAS93FmR3brTBpBR4
 DPow==
X-Gm-Message-State: APjAAAWwtHEOqBFzBkjw3H6ndwne1zY2+3eSY57EPAhoL7Qi4G0mcwVH
 WigqgCFWMcXts/Wkyvi9jq8=
X-Google-Smtp-Source: APXvYqwjI7A2nNfjVQ/adXNCF5IUWlHXA/tLmM97n2/NNaRd1GaOCFHc8A1kKyESx/7NfA4ZkO2/Pw==
X-Received: by 2002:ac2:5462:: with SMTP id e2mr33337163lfn.181.1575276986428; 
 Mon, 02 Dec 2019 00:56:26 -0800 (PST)
Received: from xi.terra (c-14b8e655.07-184-6d6c6d4.bbcust.telenor.se.
 [85.230.184.20])
 by smtp.gmail.com with ESMTPSA id e7sm14595995lja.5.2019.12.02.00.56.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Dec 2019 00:56:25 -0800 (PST)
Received: from johan by xi.terra with local (Exim 4.92.3)
 (envelope-from <johan@xi.terra>)
 id 1ibhVM-0003KA-45; Mon, 02 Dec 2019 09:56:28 +0100
From: Johan Hovold <johan@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 3/3] staging: gigaset: add endpoint-type sanity check
Date: Mon,  2 Dec 2019 09:56:10 +0100
Message-Id: <20191202085610.12719-4-johan@kernel.org>
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
 linux-kernel@vger.kernel.org, Johan Hovold <johan@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Add missing endpoint-type sanity checks to probe.

This specifically prevents a warning in USB core on URB submission when
fuzzing USB descriptors.

Signed-off-by: Johan Hovold <johan@kernel.org>
---
 drivers/staging/isdn/gigaset/usb-gigaset.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/staging/isdn/gigaset/usb-gigaset.c b/drivers/staging/isdn/gigaset/usb-gigaset.c
index a84722d83bc6..a20c0bfa68f3 100644
--- a/drivers/staging/isdn/gigaset/usb-gigaset.c
+++ b/drivers/staging/isdn/gigaset/usb-gigaset.c
@@ -705,6 +705,12 @@ static int gigaset_probe(struct usb_interface *interface,
 
 	endpoint = &hostif->endpoint[0].desc;
 
+	if (!usb_endpoint_is_bulk_out(endpoint)) {
+		dev_err(&interface->dev, "missing bulk-out endpoint\n");
+		retval = -ENODEV;
+		goto error;
+	}
+
 	buffer_size = le16_to_cpu(endpoint->wMaxPacketSize);
 	ucs->bulk_out_size = buffer_size;
 	ucs->bulk_out_epnum = usb_endpoint_num(endpoint);
@@ -724,6 +730,12 @@ static int gigaset_probe(struct usb_interface *interface,
 
 	endpoint = &hostif->endpoint[1].desc;
 
+	if (!usb_endpoint_is_int_in(endpoint)) {
+		dev_err(&interface->dev, "missing int-in endpoint\n");
+		retval = -ENODEV;
+		goto error;
+	}
+
 	ucs->busy = 0;
 
 	ucs->read_urb = usb_alloc_urb(0, GFP_KERNEL);
-- 
2.24.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

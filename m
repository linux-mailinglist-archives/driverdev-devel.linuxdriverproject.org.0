Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C4E41186FD
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Dec 2019 12:48:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3567085F53;
	Tue, 10 Dec 2019 11:48:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OL80HB97cIlg; Tue, 10 Dec 2019 11:48:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 101EC84C1E;
	Tue, 10 Dec 2019 11:48:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CD3951BF45A
 for <devel@linuxdriverproject.org>; Tue, 10 Dec 2019 11:48:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BACB687E3B
 for <devel@linuxdriverproject.org>; Tue, 10 Dec 2019 11:48:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8jbumEimIc5N for <devel@linuxdriverproject.org>;
 Tue, 10 Dec 2019 11:48:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f67.google.com (mail-lf1-f67.google.com
 [209.85.167.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 51FC387C14
 for <devel@driverdev.osuosl.org>; Tue, 10 Dec 2019 11:48:01 +0000 (UTC)
Received: by mail-lf1-f67.google.com with SMTP id i23so995979lfo.7
 for <devel@driverdev.osuosl.org>; Tue, 10 Dec 2019 03:48:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5C4SF4dYqrrVgr3TXUeoZ9GHkn69qJJjE9pwXzPrJrg=;
 b=Fibc5pWRwZ+e1T103HeJNfQNOTuCwd9rIMLtzCEoJqZL8Je+fvtczcVxW3AC0Umpni
 1NYU08GKr30ywJvZygYPtJAm7nzH3maLoOn5D8dHeTdGtunvpoofJwioQ8i/kJM7A1C1
 Zlq0RWLgvSngmn20JiOOzPx+G4QReCasLGjV9bWVXi6TKHlM2DFdbk/eboYp2jpbm86d
 hFflUepZTkULAnlKB/075mc46EWE15LgL4AT3wP9UefQaCp1yVhKNKS3EqvgDXDxKn9q
 dfckSyGt1aMU6yI5oG2eiCZCqoQbIPYu3b1L9y4T6t2zQEYhoXd131XAerryqouzUhfv
 +TYw==
X-Gm-Message-State: APjAAAUWDikHPoMvhiTE2LybKWuQIpytbWznUUFwMqsQK/YYEnvRznIt
 ngzn69/tfh3ShtNYGeWaXao=
X-Google-Smtp-Source: APXvYqxzDhvpXC8Gs8pOUopECbJJEaJy4ZsNQJ3HROeJjafJrIC0HjKI+nYfNFhmf3ZJhA1OTxsboA==
X-Received: by 2002:ac2:4476:: with SMTP id y22mr18829851lfl.169.1575978479262; 
 Tue, 10 Dec 2019 03:47:59 -0800 (PST)
Received: from xi.terra (c-14b8e655.07-184-6d6c6d4.bbcust.telenor.se.
 [85.230.184.20])
 by smtp.gmail.com with ESMTPSA id i1sm1640753lji.71.2019.12.10.03.47.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Dec 2019 03:47:58 -0800 (PST)
Received: from johan by xi.terra with local (Exim 4.92.3)
 (envelope-from <johan@xi.terra>)
 id 1iedzk-0001LQ-Ej; Tue, 10 Dec 2019 12:48:00 +0100
From: Johan Hovold <johan@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 1/2] staging: rtl8188eu: fix interface sanity check
Date: Tue, 10 Dec 2019 12:47:50 +0100
Message-Id: <20191210114751.5119-2-johan@kernel.org>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191210114751.5119-1-johan@kernel.org>
References: <20191210114751.5119-1-johan@kernel.org>
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
 Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
 linux-usb@vger.kernel.org, Johan Hovold <johan@kernel.org>,
 stable <stable@vger.kernel.org>, linux-kernel@vger.kernel.org,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Make sure to use the current alternate setting when verifying the
interface descriptors to avoid binding to an invalid interface.

Failing to do so could cause the driver to misbehave or trigger a WARN()
in usb_submit_urb() that kernels with panic_on_warn set would choke on.

Fixes: c2478d39076b ("staging: r8188eu: Add files for new driver - part 20")
Cc: stable <stable@vger.kernel.org>     # 3.12
Signed-off-by: Johan Hovold <johan@kernel.org>
---
 drivers/staging/rtl8188eu/os_dep/usb_intf.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/os_dep/usb_intf.c b/drivers/staging/rtl8188eu/os_dep/usb_intf.c
index 4fac9dca798e..a7cac0719b8b 100644
--- a/drivers/staging/rtl8188eu/os_dep/usb_intf.c
+++ b/drivers/staging/rtl8188eu/os_dep/usb_intf.c
@@ -70,7 +70,7 @@ static struct dvobj_priv *usb_dvobj_init(struct usb_interface *usb_intf)
 	phost_conf = pusbd->actconfig;
 	pconf_desc = &phost_conf->desc;
 
-	phost_iface = &usb_intf->altsetting[0];
+	phost_iface = usb_intf->cur_altsetting;
 	piface_desc = &phost_iface->desc;
 
 	pdvobjpriv->NumInterfaces = pconf_desc->bNumInterfaces;
-- 
2.24.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

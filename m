Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F0581186FB
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Dec 2019 12:48:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A361084D9A;
	Tue, 10 Dec 2019 11:48:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E1K_YKe-C3gZ; Tue, 10 Dec 2019 11:48:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9C23984A0D;
	Tue, 10 Dec 2019 11:48:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BF7BF1BF45A
 for <devel@linuxdriverproject.org>; Tue, 10 Dec 2019 11:48:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A7CDF20387
 for <devel@linuxdriverproject.org>; Tue, 10 Dec 2019 11:48:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jQevKZAKFfiV for <devel@linuxdriverproject.org>;
 Tue, 10 Dec 2019 11:48:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
 [209.85.208.194])
 by silver.osuosl.org (Postfix) with ESMTPS id B50802037A
 for <devel@driverdev.osuosl.org>; Tue, 10 Dec 2019 11:48:01 +0000 (UTC)
Received: by mail-lj1-f194.google.com with SMTP id h23so19495789ljc.8
 for <devel@driverdev.osuosl.org>; Tue, 10 Dec 2019 03:48:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=SomisIKYrhnGM9uPCjPrNcYhFDkrQCYHEW6V1huhmgY=;
 b=ePqoVgQFT6sy11A75PvqwsV2fsHvGEMucCAydj5W7K21pTvMrDWgmyfAdJEGJSdZN3
 INaStewFfPFtDZ4VR99w7gwL/EtSR6tBVfkAbQQOi57omNTEYKuFCsEeC4BPoHfB6/aj
 z2Ll1Z8AGp/CMHElZAvFP4EzjjNhqypZwSn2WZLGP4aZFaA02mkZWLrLDbA1/5DE1h1l
 agbauvlsAB2PwU0sC3xXMawEadDi22sMUKWz9CIXPNKO0C8q9umPeO7ojRw2/99qGDhY
 337712EdDBPAz5wKT2qLAuQyXKMykWbz6mIY9PsNqEYUwpnPBcJoGzPXh9qqyz8K+roZ
 pkbg==
X-Gm-Message-State: APjAAAWCw/26Jz301ijMkz4XJGkUpsKMpCs+A8bZ933UBu4cM3ycO/MY
 pu9lEdhLaoGCYx4ymFoHSiI=
X-Google-Smtp-Source: APXvYqzhnW9ewIEAdaW6Atd0gX1aWXfA2az8JTi5RDAus4VEAcywwZw8M/TtqqPMRQXyUn67c8Vs2g==
X-Received: by 2002:a05:651c:112d:: with SMTP id
 e13mr17386635ljo.99.1575978479806; 
 Tue, 10 Dec 2019 03:47:59 -0800 (PST)
Received: from xi.terra (c-14b8e655.07-184-6d6c6d4.bbcust.telenor.se.
 [85.230.184.20])
 by smtp.gmail.com with ESMTPSA id a9sm1441410lfk.23.2019.12.10.03.47.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Dec 2019 03:47:58 -0800 (PST)
Received: from johan by xi.terra with local (Exim 4.92.3)
 (envelope-from <johan@xi.terra>)
 id 1iedzk-0001LV-HT; Tue, 10 Dec 2019 12:48:00 +0100
From: Johan Hovold <johan@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 2/2] staging: rtl8712: fix interface sanity check
Date: Tue, 10 Dec 2019 12:47:51 +0100
Message-Id: <20191210114751.5119-3-johan@kernel.org>
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

Fixes: 2865d42c78a9 ("staging: r8712u: Add the new driver to the mainline kernel")
Cc: stable <stable@vger.kernel.org>     # 2.6.37
Signed-off-by: Johan Hovold <johan@kernel.org>
---
 drivers/staging/rtl8712/usb_intf.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8712/usb_intf.c b/drivers/staging/rtl8712/usb_intf.c
index ba1288297ee4..a87562f632a7 100644
--- a/drivers/staging/rtl8712/usb_intf.c
+++ b/drivers/staging/rtl8712/usb_intf.c
@@ -247,7 +247,7 @@ static uint r8712_usb_dvobj_init(struct _adapter *padapter)
 
 	pdvobjpriv->padapter = padapter;
 	padapter->eeprom_address_size = 6;
-	phost_iface = &pintf->altsetting[0];
+	phost_iface = pintf->cur_altsetting;
 	piface_desc = &phost_iface->desc;
 	pdvobjpriv->nr_endpoint = piface_desc->bNumEndpoints;
 	if (pusbd->speed == USB_SPEED_HIGH) {
-- 
2.24.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

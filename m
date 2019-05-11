Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C54C1A8DE
	for <lists+driverdev-devel@lfdr.de>; Sat, 11 May 2019 19:40:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A7D39234BD;
	Sat, 11 May 2019 17:40:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LFBUjLQSGSeW; Sat, 11 May 2019 17:40:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E88BE228AE;
	Sat, 11 May 2019 17:40:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AED001BF5F8
 for <devel@linuxdriverproject.org>; Sat, 11 May 2019 17:40:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id AB8B1865C4
 for <devel@linuxdriverproject.org>; Sat, 11 May 2019 17:40:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WCvovk9-nuyB for <devel@linuxdriverproject.org>;
 Sat, 11 May 2019 17:40:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A42468654D
 for <devel@driverdev.osuosl.org>; Sat, 11 May 2019 17:40:49 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id f2so10152346wmj.3
 for <devel@driverdev.osuosl.org>; Sat, 11 May 2019 10:40:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=nKPnqyotMntsOsT3kezjejwOTidVyz7Zx1LU17Gy4zw=;
 b=WWolrU8dm9cEWLzKTwgSu+wrgigWQ+F0LxZpGSR2SixEQbz0Hvn98SiEXObFp6a6Rp
 YnshvBihAY0ntO/FPXfUDrD2JdeL4nuYjJ5dFB5H6r9HRkppg6HsD6LG4WY/6wZQ7Kj9
 mgvARNRwwKCQzuZFrdBJhmMIXWdu0IdVSvM2vzKNKWtwp7PKskr9XGLxWyn2aPAJ2OV6
 wlkssVS3X+TAM5Jf4ERtiGcVHjrCOJtJw4sCAT/MIwwGipgsRC7oZqD3pPka57VsgOIY
 LLnoGumcBeRKF+u6cvxEia+EnvpWAARJfsL4mp6u6m/NX0/M/6rCO3a+scG5yIaH0aG2
 WWqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=nKPnqyotMntsOsT3kezjejwOTidVyz7Zx1LU17Gy4zw=;
 b=f8lHZS0e7HTAkZiG6PnlFt6eR4d7tPUm/PQS9+PIJWe1DtVXuzfJKF+g+N5kxTTpef
 IaR2cyTgeexHfmh7soijmwr6gx1FcX0BDOfC5kcIBunG3fPCu2P22Ew9zybsLiaPY9Lm
 DANG3rzxme/Kxz1dhl1F3ikP9Bd/xkQSYo7sQIahWhhzs4gJD6gIkpzIpwxHiEe4QJ4r
 vr3itvfLTEKhA2Q0BcUFA6Re/SsoFdosoNB8cgZpXTcVAhWcNWYjQVmOJBkWoiZ1EDKA
 73lwFfiv3IRtuu/JuijgJ+z66z/0P1sgu2wkNxjqmhdWz/YS5bdIgN5d5ak6lsZwNVxh
 5CxQ==
X-Gm-Message-State: APjAAAU8uS3j7ZBHNayY71zleUAVNgUp2wD2aGlk5WrCXVTv+Q3GaH2N
 k8Oxhe5MtcmuEo9NJbIl/phe27Y+
X-Google-Smtp-Source: APXvYqy8E7Ao+sWBQV//2L8HwHFtaMF9+A22HuQedQdmHCxe2OL/6zvt5ieweHn6e/nx1kc9l2WMBA==
X-Received: by 2002:a1c:ef0c:: with SMTP id n12mr7343209wmh.110.1557596448286; 
 Sat, 11 May 2019 10:40:48 -0700 (PDT)
Received: from meriadoc.lan
 (cpc78195-warw17-2-0-cust969.3-2.cable.virginm.net. [213.107.131.202])
 by smtp.gmail.com with ESMTPSA id c130sm17540666wmf.47.2019.05.11.10.40.47
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 11 May 2019 10:40:47 -0700 (PDT)
From: Tim Collier <osdevtc@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH] staging: wlan-ng: fix adapter initialization failure
Date: Sat, 11 May 2019 18:40:46 +0100
Message-Id: <20190511174046.5049-1-osdevtc@gmail.com>
X-Mailer: git-send-email 2.20.1
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Commit e895f00a8496 ("Staging: wlan-ng: hfa384x_usb.c Fixed too long
code line warnings.") moved the retrieval of the transfer buffer from
the URB from the top of function hfa384x_usbin_callback to a point
after reposting of the URB via a call to submit_rx_urb. The reposting
of the URB allocates a new transfer buffer so the new buffer is
retrieved instead of the buffer containing the response passed into
the callback. This results in failure to initialize the adapter with
an error reported in the system log (something like "CTLX[1] error:
state(Request failed)").

This change moves the retrieval to just before the point where the URB
is reposted so that the correct transfer buffer is retrieved and
initialization of the device succeeds.

Signed-off-by: Tim Collier <osdevtc@gmail.com>
---
 drivers/staging/wlan-ng/hfa384x_usb.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/wlan-ng/hfa384x_usb.c b/drivers/staging/wlan-ng/hfa384x_usb.c
index 6fde75d4f064..ab734534093b 100644
--- a/drivers/staging/wlan-ng/hfa384x_usb.c
+++ b/drivers/staging/wlan-ng/hfa384x_usb.c
@@ -3119,7 +3119,9 @@ static void hfa384x_usbin_callback(struct urb *urb)
 		break;
 	}
 
+	/* Save values from the RX URB before reposting overwrites it. */
 	urb_status = urb->status;
+	usbin = (union hfa384x_usbin *)urb->transfer_buffer;
 
 	if (action != ABORT) {
 		/* Repost the RX URB */
@@ -3136,7 +3138,6 @@ static void hfa384x_usbin_callback(struct urb *urb)
 	/* Note: the check of the sw_support field, the type field doesn't
 	 *       have bit 12 set like the docs suggest.
 	 */
-	usbin = (union hfa384x_usbin *)urb->transfer_buffer;
 	type = le16_to_cpu(usbin->type);
 	if (HFA384x_USB_ISRXFRM(type)) {
 		if (action == HANDLE) {
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C570E45F2
	for <lists+driverdev-devel@lfdr.de>; Fri, 25 Oct 2019 10:42:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 32ED486A79;
	Fri, 25 Oct 2019 08:41:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Gv1b32EXdq_k; Fri, 25 Oct 2019 08:41:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2370A86A63;
	Fri, 25 Oct 2019 08:41:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CE5241BF2B7
 for <devel@linuxdriverproject.org>; Fri, 25 Oct 2019 08:41:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C01D4204C9
 for <devel@linuxdriverproject.org>; Fri, 25 Oct 2019 08:41:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yw6Aw2u-H-lN for <devel@linuxdriverproject.org>;
 Fri, 25 Oct 2019 08:41:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by silver.osuosl.org (Postfix) with ESMTPS id EE22D20373
 for <devel@driverdev.osuosl.org>; Fri, 25 Oct 2019 08:41:33 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id e11so1318977wrv.4
 for <devel@driverdev.osuosl.org>; Fri, 25 Oct 2019 01:41:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=toVMsjD44LvraNrrrkCKyl7PecBBaqrrFfQVLEE7fKs=;
 b=e7kusUl3w3gFb27udcpdqP00rgVYrpA6gw8cRzBI0D8eBlGHixZiD9rP4jnfRt/xvS
 7TPyA4MJxFK3F9JxxTHMIoGSEjBzFrLnyEelsYBeYdph3g7bQ2sV9MTk73gUa0Q4yoQV
 y2ESVjb2n+pNKcX3XreH8OJia0tlPx6HId8xG5cdV4BBnm1rQcitxvo4amG5Uh101gub
 DF6y3fogXjSUQ7zVEet9M5BdmJCfE7zZbZ6/H85bcH5gzt61Jkrsu68IezAQoxC/tWKv
 c5QHKKdkgKR/P3tF4VW17ks+ff42u/fcUW1nxxZaHufBvl17Ev+E97J8WJh6FBdawzR8
 pUtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=toVMsjD44LvraNrrrkCKyl7PecBBaqrrFfQVLEE7fKs=;
 b=MoCcvUQRHo82ZiajlFwEbJy5W6Gqry8gPVjSNkrvHqWHCSZkwR0fXo2v36DqeTZvJT
 WtirQvQgi9kV1/eYD8uEtAzGTpjFTR7G0o/muNYCn4f+6CHnCEuhE0bcK9Er1Le40t/w
 R0H2r0QuLs+ngAV0VjzgeWdOiTxiQzh4WVF3uJ2I58hDUmDpo5ztB/RKWxSxmeoi0yUk
 o1c8wjXCFJkCdX++1AutQBfpMxPEVGOHL2YF7mWNTAa1woG1r9mE0pLMea1ju6yCclRx
 Ki8Cv983ENC8CErv9sxVO4Tdcy9O6udc3SrG0MomHAQ7coMEPenyPiXI+MgxiJoBKYOc
 NBlQ==
X-Gm-Message-State: APjAAAVFtm3eB5T5Kf1XlfZRV05AzRFutb8mApKyja2WQpFbgggt1F4w
 OS9QDd5vtnSAmvurg3LNo0GTPK1o
X-Google-Smtp-Source: APXvYqysL+aTL2fTpcSTHodqoXCtuJVmRzQXFUYoiDDCovVSiWbiZS17Xr98v7eb4J34241bKtkljg==
X-Received: by 2002:a05:6000:118f:: with SMTP id
 g15mr1753968wrx.242.1571992892364; 
 Fri, 25 Oct 2019 01:41:32 -0700 (PDT)
Received: from meriadoc.middleearth ([80.2.21.148])
 by smtp.gmail.com with ESMTPSA id 200sm2257986wme.32.2019.10.25.01.41.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Oct 2019 01:41:31 -0700 (PDT)
From: Tim Collier <osdevtc@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH 1/5] staging: wlan-ng: remove unnecessary casts from
 prism2usb.c
Date: Fri, 25 Oct 2019 09:41:22 +0100
Message-Id: <20191025084126.9181-2-osdevtc@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191025084126.9181-1-osdevtc@gmail.com>
References: <20191025084126.9181-1-osdevtc@gmail.com>
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

usb_get_intfdata returns a void pointer. It is not necessary to
explicitly cast to the desired type and removing the casts is
consistent with most use of usb_get_intfdata.

Signed-off-by: Tim Collier <osdevtc@gmail.com>
---
 drivers/staging/wlan-ng/prism2usb.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/wlan-ng/prism2usb.c b/drivers/staging/wlan-ng/prism2usb.c
index b5ba176004c1..352556f6870a 100644
--- a/drivers/staging/wlan-ng/prism2usb.c
+++ b/drivers/staging/wlan-ng/prism2usb.c
@@ -137,7 +137,7 @@ static void prism2sta_disconnect_usb(struct usb_interface *interface)
 {
 	struct wlandevice *wlandev;
 
-	wlandev = (struct wlandevice *)usb_get_intfdata(interface);
+	wlandev = usb_get_intfdata(interface);
 	if (wlandev) {
 		LIST_HEAD(cleanlist);
 		struct hfa384x_usbctlx *ctlx, *temp;
@@ -222,7 +222,7 @@ static int prism2sta_suspend(struct usb_interface *interface,
 	struct hfa384x *hw = NULL;
 	struct wlandevice *wlandev;
 
-	wlandev = (struct wlandevice *)usb_get_intfdata(interface);
+	wlandev = usb_get_intfdata(interface);
 	if (!wlandev)
 		return -ENODEV;
 
@@ -245,7 +245,7 @@ static int prism2sta_resume(struct usb_interface *interface)
 	struct hfa384x *hw = NULL;
 	struct wlandevice *wlandev;
 
-	wlandev = (struct wlandevice *)usb_get_intfdata(interface);
+	wlandev = usb_get_intfdata(interface);
 	if (!wlandev)
 		return -ENODEV;
 
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

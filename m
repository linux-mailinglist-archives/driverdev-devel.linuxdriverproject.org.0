Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DCD1E45F4
	for <lists+driverdev-devel@lfdr.de>; Fri, 25 Oct 2019 10:42:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BB12986A75;
	Fri, 25 Oct 2019 08:42:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wICZ7ZcjLdgn; Fri, 25 Oct 2019 08:42:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B42E2845C7;
	Fri, 25 Oct 2019 08:42:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A67C81BF2B7
 for <devel@linuxdriverproject.org>; Fri, 25 Oct 2019 08:41:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A3D5F87586
 for <devel@linuxdriverproject.org>; Fri, 25 Oct 2019 08:41:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YGfyKNOFdZ4V for <devel@linuxdriverproject.org>;
 Fri, 25 Oct 2019 08:41:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id DCE18874F7
 for <devel@driverdev.osuosl.org>; Fri, 25 Oct 2019 08:41:37 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id w9so1111726wmm.5
 for <devel@driverdev.osuosl.org>; Fri, 25 Oct 2019 01:41:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=L8WAhMYazygfIrrDE/SLqYnHCugQncXoxI7OOQgF/f4=;
 b=uz/eBtTN57pXErcGra8+4FuB6/iYKf2njstVWIX8QUsV4KFSV/3KiPb+v5tI9Z/8K1
 VUAvKeocOsVAxTqBNvl5l2Vyf5Jszvyvy7Yq1xQklnbHUTzkkZOXlH29zmwBQog3EKMC
 os0Qt9mwZgSkcGsKHl3xPn3yMDgxnM7606cwh+hR2PKuCNBEcpC9/vk+H5vgUQAzIJOX
 474ghWmat4L+a+cDDMHNSsTI9EerfgQyjr0rsgWJepYJVy2ny5ETc1Sf/5FgaVD6NnRc
 SXEGAKsyPyMFsKolX2XkwFVZbr4rsTv7f7KUe00kPftTCLRBrwvTvULnVdFF0mw4ll/F
 EqQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=L8WAhMYazygfIrrDE/SLqYnHCugQncXoxI7OOQgF/f4=;
 b=rjLp8DBbrCUcXRY7/ssgogqNXxXcgu5cRoxak0P2IFe3RTShJ7C/szoXh7AwO/fogd
 iRp0EnID1Gkk5k0emqwip3ZHJd5uroRMGcP21zQr2Pt2TP38JSw07WvtRsPrrsCMrcgy
 02yTKW8k1NwLXiVBdXeFko1NA/nsCHzfFDS9I9M3CA0tsNM/wcZzaptIRJ6RGU7T1FT8
 i2C86u7gkaJpnJ07K54iD8WDWehB6OlIuaMChZ/YBHoBS/FmX/j3/8SOfDuQM0vCbY67
 buOG9FhBbg4OsQ5GRpxeJklq6BLfuLVwHCjXhXH2X8QdEovF0WWh5EnBKojhYncna3ER
 xdCw==
X-Gm-Message-State: APjAAAV+tpAEq/NKdNVK0/cplOhq7qgte/y/UWPviuBSCtIgN/zvvASs
 txZ2k8wux/Uc7xfWp+7o72k=
X-Google-Smtp-Source: APXvYqybAHIYGmOIWQ/xPjh9na4dfIYu6iohyYlgcGbkg7YGk79XWT7iSW2A4FG+P++RQvPtNrj0+w==
X-Received: by 2002:a1c:a791:: with SMTP id q139mr2283608wme.155.1571992896405; 
 Fri, 25 Oct 2019 01:41:36 -0700 (PDT)
Received: from meriadoc.middleearth ([80.2.21.148])
 by smtp.gmail.com with ESMTPSA id 200sm2257986wme.32.2019.10.25.01.41.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Oct 2019 01:41:35 -0700 (PDT)
From: Tim Collier <osdevtc@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH 5/5] staging: wlan-ng: remove unused field from struct
 hfa384x_usbctlx
Date: Fri, 25 Oct 2019 09:41:26 +0100
Message-Id: <20191025084126.9181-6-osdevtc@gmail.com>
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

The variant field in struct hfa384x_usbctlx is not referenced anywhere
in the driver, so remove it.

Signed-off-by: Tim Collier <osdevtc@gmail.com>
---
 drivers/staging/wlan-ng/hfa384x.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/wlan-ng/hfa384x.h b/drivers/staging/wlan-ng/hfa384x.h
index 86fd3fcd8a36..bdd7f414fdbb 100644
--- a/drivers/staging/wlan-ng/hfa384x.h
+++ b/drivers/staging/wlan-ng/hfa384x.h
@@ -1181,8 +1181,6 @@ struct hfa384x_usbctlx {
 	ctlx_cmdcb_t cmdcb;	/* Async command callback */
 	ctlx_usercb_t usercb;	/* Async user callback, */
 	void *usercb_data;	/*  at CTLX completion  */
-
-	int variant;		/* Identifies cmd variant */
 };
 
 struct hfa384x_usbctlxq {
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

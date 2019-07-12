Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21E80666FA
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Jul 2019 08:28:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A1EAE882F2;
	Fri, 12 Jul 2019 06:28:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Mr7NAiaUNM4u; Fri, 12 Jul 2019 06:28:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B671985E93;
	Fri, 12 Jul 2019 06:28:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 035B41BF44C
 for <devel@linuxdriverproject.org>; Fri, 12 Jul 2019 06:28:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id F225285EA5
 for <devel@linuxdriverproject.org>; Fri, 12 Jul 2019 06:28:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ma9uqsfkyF6A for <devel@linuxdriverproject.org>;
 Fri, 12 Jul 2019 06:28:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6864C85E93
 for <devel@driverdev.osuosl.org>; Fri, 12 Jul 2019 06:28:27 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id j2so3853725pfe.6
 for <devel@driverdev.osuosl.org>; Thu, 11 Jul 2019 23:28:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=coxoQnLm5ssdr/nz22ptze0PBE9KNcCVGusoB8UzTzc=;
 b=j5mISilAI8BmtgwIH+qOoHfT/i9L4xyoz5WAYYl1nGci+7vpdk5fLU83Hn1BplVPmd
 gOe3nk5IzO75tRhROSg7Ox9HYweTAYPNyrtu88NYEMM+4D8EiaZHa+xPedVh4YYKaiyK
 k++DF34Y0Cyku8OybYRDWwDRbcyPsPGRNdNPkgp8X4zNH9e+89WdTjD/J42gtFOm9amO
 KjILt/oBS3NZPfSQoIxO1MYiPmDtZ5gUtnGJurO7OQsCr/SV3RNlyuO3I9A/YzkSviFp
 wD2u3Wdc9M1wyRphDTMSl5ibbPYRoxDYRvzWopLYzo19Glhb/zzXcrrYaXBeKfQaTcx3
 KkwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=coxoQnLm5ssdr/nz22ptze0PBE9KNcCVGusoB8UzTzc=;
 b=stP6P8snfI9iQ3M4AekPvIK5NnCHGU7okc7MU7nn2Wzsx6RgOzKd1/K245S10EtxPD
 s+2eiWwyTV9QViOEaM+E8Mpg7C46iSxy0jnohJIfP5LTM79nr/4w69K8sg4iO2D4S6A7
 prld19AyO82B1YVMeql7IVpqz5NrmG4EqYQfQCvCXORMLKymviieuDz3IL3g/WVkuAt6
 NXZ7r22eatMPNkr6tHCGdg4A+rqI3wkzXW32CLPDSDQcWxXi1icvbVJLrOkKAmeWeK+5
 ngqH3L4gh+rxJyxXi4XsIO6P70qP7bsHLwYAcGJIXBV/s0UWBd3Jm61AZDCaSasUBzRs
 l3Iw==
X-Gm-Message-State: APjAAAUgwVuZi8rlw8FDqG61gQ3uG+4ZStbd1ts+iuJ0qHk5i3tTT0ao
 RHG5QBTsNlXu4AML1K6hjWLRIxDZ
X-Google-Smtp-Source: APXvYqx7xhNc/EuVdUyQbdB6q+Wiv1apfuxMRom0U/lJ9IObpbD7Q1zBnH3DzqT8PH5SvGC9m38cqw==
X-Received: by 2002:a63:5920:: with SMTP id n32mr8566503pgb.352.1562912907102; 
 Thu, 11 Jul 2019 23:28:27 -0700 (PDT)
Received: from localhost.localdomain ([110.227.64.207])
 by smtp.gmail.com with ESMTPSA id p1sm8830629pff.74.2019.07.11.23.28.25
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 11 Jul 2019 23:28:26 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH 03/10] staging: wlan-ng: Remove function hfa384x_dowrid_async()
Date: Fri, 12 Jul 2019 11:58:00 +0530
Message-Id: <20190712062807.9361-3-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190712062807.9361-1-nishkadg.linux@gmail.com>
References: <20190712062807.9361-1-nishkadg.linux@gmail.com>
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove function hfa384x_dowrid_async as it does nothing except call
hfa384x_dowrid, and itself is called only once.
Move the contents of hfa384x_dowrid_async (i.e the call to
hfa384x_dowrid) to its call site.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/wlan-ng/hfa384x_usb.c | 15 ++-------------
 1 file changed, 2 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/wlan-ng/hfa384x_usb.c b/drivers/staging/wlan-ng/hfa384x_usb.c
index dc6abc654165..732ffb6aab0b 100644
--- a/drivers/staging/wlan-ng/hfa384x_usb.c
+++ b/drivers/staging/wlan-ng/hfa384x_usb.c
@@ -845,17 +845,6 @@ hfa384x_dorrid_async(struct hfa384x *hw,
 			      cmdcb, usercb, usercb_data);
 }
 
-static inline int
-hfa384x_dowrid_async(struct hfa384x *hw,
-		     u16 rid, void *riddata, unsigned int riddatalen,
-		     ctlx_cmdcb_t cmdcb,
-		     ctlx_usercb_t usercb, void *usercb_data)
-{
-	return hfa384x_dowrid(hw, DOASYNC,
-			      rid, riddata, riddatalen,
-			      cmdcb, usercb, usercb_data);
-}
-
 static inline int
 hfa384x_dormem_wait(struct hfa384x *hw,
 		    u16 page, u16 offset, void *data, unsigned int len)
@@ -2078,8 +2067,8 @@ hfa384x_drvr_setconfig_async(struct hfa384x *hw,
 			     void *buf,
 			     u16 len, ctlx_usercb_t usercb, void *usercb_data)
 {
-	return hfa384x_dowrid_async(hw, rid, buf, len,
-				    hfa384x_cb_status, usercb, usercb_data);
+	return hfa384x_dowrid(hw, DOASYNC, rid, buf, len, hfa384x_cb_status,
+			      usercb, usercb_data);
 }
 
 /*----------------------------------------------------------------
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

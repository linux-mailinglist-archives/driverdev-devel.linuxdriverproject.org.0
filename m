Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C90A7770E0
	for <lists+driverdev-devel@lfdr.de>; Fri, 26 Jul 2019 20:05:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id EC52B89B78;
	Fri, 26 Jul 2019 18:05:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UbeHbzFSy-Zv; Fri, 26 Jul 2019 18:05:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 68F1789976;
	Fri, 26 Jul 2019 18:05:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6547E1BF3BD
 for <devel@linuxdriverproject.org>; Fri, 26 Jul 2019 18:05:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0C9CD87F47
 for <devel@linuxdriverproject.org>; Fri, 26 Jul 2019 18:05:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QFlgSDGmAxUV for <devel@linuxdriverproject.org>;
 Fri, 26 Jul 2019 18:05:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3DFB187F3E
 for <devel@driverdev.osuosl.org>; Fri, 26 Jul 2019 18:05:06 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id p74so48683058wme.4
 for <devel@driverdev.osuosl.org>; Fri, 26 Jul 2019 11:05:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GRv1uPtp3JZb2L9jLLvJekEXywnzsMYNKfjR4TArm3Y=;
 b=bau49PHa34MEV8yDI/WbGik16Z/hKg7kLSfyGI7v3akORbEZp27XRSQkXp1XzUQLjz
 CFus+rWBbyGCcl8ygt/fb50JMMgWkPuB9rEkGvxu/olVrh67rfwvOOzv8m+agDWCtK41
 7YRVl33MHVAgZCEu21Wjjl9Rw6+LKJ/zEO0u8RdNjNPv8wzAD+EukqjfJNiMKtlxjDRF
 +jmeLOHtq6vAdypieXDKzUHFa/9kkyNv7yZ7Gvfb5w+gqw6914o0VzCmDPW8XgD34eBN
 WfnVP6eq49QBE3Gl/gUHSwxP8Mi/+dziv5+QO+WzleLOMEIDmZOzWn4LpeddfXK/fM0O
 pz9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GRv1uPtp3JZb2L9jLLvJekEXywnzsMYNKfjR4TArm3Y=;
 b=VflCi+Ii+D1O6qviv/cGrVmBPIKF3aWL5NBKo8D/dyb3Lp+IaUS52dDmEjV4Whlif1
 K0LRv/28EKD6IOhr7JqXl7rOp1L5SlxZDkiy+DyZRFXct7lOmkcd5KYR3/KiEq0ggbJY
 MZXIo+giexg4CeHqFKTVYWJSCqQlWK5UdNPP6dK0+qCMyMm0PaBGSbLSIsSVfWy7A3+3
 sDaU5IyWZfraBjKWQV4pa96HVPn2pbGErTXeRzmTzr8rH7KrjaOBEqKuXaIkkw71o+Zm
 yDLqgavdWGDmwm0LWdY/It+H07lIe1ORf4mvvNF6mIifyimdI8EF3BMdlLr9zgrvYS6F
 V+eg==
X-Gm-Message-State: APjAAAUUO81v+QTlpl+qyQAEmRvcj84qPEK5jEKuJsgVC+0U6ZRcEU1v
 3nTvpARFFCZOouu8ouNTYUU=
X-Google-Smtp-Source: APXvYqyLbzvuhCvDINqvCBQ19P7eZpTf/lDa/jrblhIW+kYmO+Z40erre5PrRcQxpiBpvsucnDnOEQ==
X-Received: by 2002:a05:600c:225a:: with SMTP id
 a26mr90622604wmm.81.1564164304810; 
 Fri, 26 Jul 2019 11:05:04 -0700 (PDT)
Received: from localhost.localdomain
 ([2a02:8108:96bf:e0ab:2b68:5d76:a12a:e6ba])
 by smtp.gmail.com with ESMTPSA id p14sm43535931wrx.17.2019.07.26.11.05.03
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 26 Jul 2019 11:05:04 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 6/6] staging: rtl8188eu: cleanup comparsion to NULL in
 usb_halinit.c
Date: Fri, 26 Jul 2019 20:04:48 +0200
Message-Id: <20190726180448.2290-6-straube.linux@gmail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190726180448.2290-1-straube.linux@gmail.com>
References: <20190726180448.2290-1-straube.linux@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Use if(!x) instead of if(x == NULL).
Reported by checkpatch.

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8188eu/hal/usb_halinit.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/hal/usb_halinit.c b/drivers/staging/rtl8188eu/hal/usb_halinit.c
index 0f54fde2f47b..16a57b31a439 100644
--- a/drivers/staging/rtl8188eu/hal/usb_halinit.c
+++ b/drivers/staging/rtl8188eu/hal/usb_halinit.c
@@ -1889,7 +1889,7 @@ void UpdateHalRAMask8188EUsb(struct adapter *adapt, u32 mac_id, u8 rssi_level)
 	if (mac_id >= NUM_STA) /* CAM_SIZE */
 		return;
 	psta = pmlmeinfo->FW_sta_info[mac_id].psta;
-	if (psta == NULL)
+	if (!psta)
 		return;
 	switch (mac_id) {
 	case 0:/*  for infra mode */
-- 
2.22.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

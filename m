Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C1D7A666F9
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Jul 2019 08:28:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E928A2277A;
	Fri, 12 Jul 2019 06:28:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IBfeewqhtQdO; Fri, 12 Jul 2019 06:28:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 05056203D0;
	Fri, 12 Jul 2019 06:28:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0287C1BF44C
 for <devel@linuxdriverproject.org>; Fri, 12 Jul 2019 06:28:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E7C2D875CF
 for <devel@linuxdriverproject.org>; Fri, 12 Jul 2019 06:28:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id T3Xy-7kiTfVe for <devel@linuxdriverproject.org>;
 Fri, 12 Jul 2019 06:28:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6177D875C7
 for <devel@driverdev.osuosl.org>; Fri, 12 Jul 2019 06:28:25 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id q4so4063685pgj.8
 for <devel@driverdev.osuosl.org>; Thu, 11 Jul 2019 23:28:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Zc4X4V4MvBYQGbX7ZH2/XH2vuIWK7fwOMxhW2BTGdGo=;
 b=O7T8TBM+wOBl+DGIqXbdbMYpFH6nHeM7afSTptYxsbcD7Z6JfXNrIaf7foWRcwGTKI
 xCGXP4c77zVkVsqLRBLcFLBXY81qCo3iUocyM+II+y+eGJZOKQa0AwdN6q5F6x3libKc
 0Tt6a7zzk9N62iVBFFjxyT2ILIPzEH0fpNeZczpVFFSo1JXSVu/HXuSg4WrphRsqFDUa
 m6nVzWSjUGu7drjF/LyChTTSjmFpsaX/wS06mX05J0Po7MDZmZJOIZqUSXwVvr7pHE36
 M6AZWqd/JCls71aRtLnXh6HZjO/i486deZxetYFDHeJ/lDoXzYUdzdRNnzdMZ4b8fUYJ
 uNGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Zc4X4V4MvBYQGbX7ZH2/XH2vuIWK7fwOMxhW2BTGdGo=;
 b=RXzP8BkbQ98W5MMrKJhYcM4WBSiHxDYYw5AUZJ1dzAG656ooMI0qXNVVtGNcH1Fxoi
 aqBGIfgOfrUPTqc1cy+D5uK1EZ207c8Eefkpji3qycCGIEyjNoJ9vhy2OT5OCrvcSq5G
 JqSQab0NXRRr/dKMPe5eA8IksbuKE7FXO5vEs7GZOPKEQAnAEx2C2VBpU4f2SAXrYTaj
 pRDfV+F1ukjdfVj5Dxs4wgGUvulBNiHmbrVAFGBxVXxX55rux7vi6lSa2vek6A5xtpGL
 SrXwtDsv7lVmKkymrBJTF/J54N7qep1R/M/MbtrBydXQRNJNYMmCNVOecPYfD2nfe2hg
 qKuA==
X-Gm-Message-State: APjAAAWekFwIissk3Yi102suX+8zQ62lJiHB7qkioi50ZN+uAWkgmBY7
 1012IfsNF0cc1D0hC+6yL5I=
X-Google-Smtp-Source: APXvYqyWmu8Nn3A6R/JMDDubDH0i4ItHP/tgYgB2OfPmu0uEV9RyG2qtLxbO3cTyHuGVhsXS8Tj57g==
X-Received: by 2002:a17:90a:bf02:: with SMTP id
 c2mr9702973pjs.73.1562912905069; 
 Thu, 11 Jul 2019 23:28:25 -0700 (PDT)
Received: from localhost.localdomain ([110.227.64.207])
 by smtp.gmail.com with ESMTPSA id p1sm8830629pff.74.2019.07.11.23.28.23
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 11 Jul 2019 23:28:24 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH 02/10] staging: wlan-ng: Remove function hfa384x_dowrid_wait()
Date: Fri, 12 Jul 2019 11:57:59 +0530
Message-Id: <20190712062807.9361-2-nishkadg.linux@gmail.com>
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

Remove inline function hfa384x_dowrid_wait as it is only called once (in
hfa384x_drvr_setconfig) and its contents are only a single line (a call
to hfa384x_dowrid).
Replace the call to hfa384x_dowrid_wait with its contents i.e the call
to hfa384x_dowrid.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/wlan-ng/hfa384x_usb.c | 10 +---------
 1 file changed, 1 insertion(+), 9 deletions(-)

diff --git a/drivers/staging/wlan-ng/hfa384x_usb.c b/drivers/staging/wlan-ng/hfa384x_usb.c
index 4befc615d8e2..dc6abc654165 100644
--- a/drivers/staging/wlan-ng/hfa384x_usb.c
+++ b/drivers/staging/wlan-ng/hfa384x_usb.c
@@ -845,14 +845,6 @@ hfa384x_dorrid_async(struct hfa384x *hw,
 			      cmdcb, usercb, usercb_data);
 }
 
-static inline int
-hfa384x_dowrid_wait(struct hfa384x *hw, u16 rid, void *riddata,
-		    unsigned int riddatalen)
-{
-	return hfa384x_dowrid(hw, DOWAIT,
-			      rid, riddata, riddatalen, NULL, NULL, NULL);
-}
-
 static inline int
 hfa384x_dowrid_async(struct hfa384x *hw,
 		     u16 rid, void *riddata, unsigned int riddatalen,
@@ -2414,7 +2406,7 @@ int hfa384x_drvr_readpda(struct hfa384x *hw, void *buf, unsigned int len)
  */
 int hfa384x_drvr_setconfig(struct hfa384x *hw, u16 rid, void *buf, u16 len)
 {
-	return hfa384x_dowrid_wait(hw, rid, buf, len);
+	return hfa384x_dowrid(hw, DOWAIT, rid, buf, len, NULL, NULL, NULL);
 }
 
 /*----------------------------------------------------------------
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

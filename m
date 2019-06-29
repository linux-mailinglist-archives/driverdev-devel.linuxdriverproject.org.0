Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EB81D5AA1D
	for <lists+driverdev-devel@lfdr.de>; Sat, 29 Jun 2019 12:25:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A408420495;
	Sat, 29 Jun 2019 10:25:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uwgVn4J+u-8E; Sat, 29 Jun 2019 10:25:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 57F0F20499;
	Sat, 29 Jun 2019 10:25:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7AB471BF405
 for <devel@linuxdriverproject.org>; Sat, 29 Jun 2019 10:25:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7794085C20
 for <devel@linuxdriverproject.org>; Sat, 29 Jun 2019 10:25:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1PWa3hPsnf8d for <devel@linuxdriverproject.org>;
 Sat, 29 Jun 2019 10:25:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id ECEF585BB1
 for <devel@driverdev.osuosl.org>; Sat, 29 Jun 2019 10:25:18 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id c85so4220728pfc.1
 for <devel@driverdev.osuosl.org>; Sat, 29 Jun 2019 03:25:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=CxypI43ytN5Ipwu2eJZ9WP6oEc0mtS7rDBKUGQ2NaIQ=;
 b=IglXVzc9+65oiSs+QIqDDdQJA4wtPHj4OWUpcEffOBeVIQExouQzLhoPfNW0Rtpp3J
 PmhRSZyEsp1Jd2//XWqZDRbf2TZxZNlCQZc3vRnmlzTkM+RsH2RhJWDaw+rdoY///qk1
 L6OslWHFZN3G08Hs+8KieXGxS9s3QT97W/Luq5WS9MMO4q5QeG2GPNXCAGFnm9u/FJ+1
 qC7aFDr9bAgbX9TCmS6NcYTn5HkKbMs2kTmXH8VnUa5PmjE3ISysbUWSdyu+WtjwzDKW
 eXgCmdIjBu8me25aQrPSS/dGWT4FeztP+hoHQq8OJconr6neNa+hoHWSPQzDEunhOC5j
 t7hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=CxypI43ytN5Ipwu2eJZ9WP6oEc0mtS7rDBKUGQ2NaIQ=;
 b=gBNerK1OLFxDPtIdJlDXM7LZlBXVBV1AQYw/XLvbnJxqqFxyyE0J9iQetuOWWG4zTP
 Qd4U/knWiVF7rIXIG1uj5O14zjTg1g0dLKCv1geUqg7o1v83s1LOJE0OVVetmdy2EPPN
 y+beMCvD7b6UzGjLEN/0+A9q6NDiE4JwXMOHmsdSmjuYRsPQujz+vxCgiv0GutHGKjDQ
 1J9yJLqzPH/icn6psI7r/Ut66Sa2n4ZgJwrPKrj9x46x6bmyh9/8jplJla2LDcFG82G5
 6d3myTSGhYjJhwD0nY0qI6SEXMLU89DxRuNUkOE21pKSE74emkgyCsT3LbTUnM68fv5k
 70gg==
X-Gm-Message-State: APjAAAUrHGhXJ6vLnJk5qwIEEvvVTSpXkJLK9Rqw6LDUu734pFOL4QvD
 T98K79jUQDwuO6RGuBLfNeE=
X-Google-Smtp-Source: APXvYqzsO6ZZ4yrDO5RiEb7WhYzA6reScVpUYT/VG+itFRvT/f5pne9ZmAj+dob2oajhm6V/9GeFrA==
X-Received: by 2002:a17:90a:9905:: with SMTP id
 b5mr19086055pjp.70.1561803918651; 
 Sat, 29 Jun 2019 03:25:18 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.92.187])
 by smtp.gmail.com with ESMTPSA id x5sm9859134pjp.21.2019.06.29.03.25.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 29 Jun 2019 03:25:18 -0700 (PDT)
Date: Sat, 29 Jun 2019 15:55:14 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Himadri Pandya <himadri18.07@gmail.com>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 06/10] staging/rtl8723bs/hal: fix comparison to true/false is
 error prone
Message-ID: <20190629102514.GA15194@hari-Inspiron-1545>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
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

fix below issues reported by checkpatch

CHECK: Using comparison to false is error prone
CHECK: Using comparison to true is error prone

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/rtl8723bs/hal/rtl8723b_dm.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c b/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c
index 6578147..e6ddce3 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c
@@ -152,14 +152,14 @@ void rtl8723b_HalDmWatchDog(struct adapter *Adapter)
 
 	hw_init_completed = Adapter->hw_init_completed;
 
-	if (hw_init_completed == false)
+	if (!hw_init_completed)
 		goto skip_dm;
 
 	bFwCurrentInPSMode = adapter_to_pwrctl(Adapter)->bFwCurrentInPSMode;
 	rtw_hal_get_hwreg(Adapter, HW_VAR_FWLPS_RF_ON, (u8 *)(&bFwPSAwake));
 
 	if (
-		(hw_init_completed == true) &&
+		(hw_init_completed) &&
 		((!bFwCurrentInPSMode) && bFwPSAwake)
 	) {
 		/*  */
@@ -170,7 +170,7 @@ void rtl8723b_HalDmWatchDog(struct adapter *Adapter)
 	}
 
 	/* ODM */
-	if (hw_init_completed == true) {
+	if (hw_init_completed) {
 		u8 bLinked = false;
 		u8 bsta_state = false;
 		u8 bBtDisabled = true;
@@ -233,7 +233,7 @@ void rtl8723b_HalDmWatchDog_in_LPS(struct adapter *Adapter)
 	struct sta_priv *pstapriv = &Adapter->stapriv;
 	struct sta_info *psta = NULL;
 
-	if (Adapter->hw_init_completed == false)
+	if (!Adapter->hw_init_completed)
 		goto skip_lps_dm;
 
 
@@ -242,7 +242,7 @@ void rtl8723b_HalDmWatchDog_in_LPS(struct adapter *Adapter)
 
 	ODM_CmnInfoUpdate(&pHalData->odmpriv, ODM_CMNINFO_LINK, bLinked);
 
-	if (bLinked == false)
+	if (!bLinked)
 		goto skip_lps_dm;
 
 	if (!(pDM_Odm->SupportAbility & ODM_BB_RSSI_MONITOR))
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

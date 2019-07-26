Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D0452770E7
	for <lists+driverdev-devel@lfdr.de>; Fri, 26 Jul 2019 20:05:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 834DD88E88;
	Fri, 26 Jul 2019 18:05:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7rPS385XHzM5; Fri, 26 Jul 2019 18:05:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6D38288EA8;
	Fri, 26 Jul 2019 18:05:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 78E521BF3BD
 for <devel@linuxdriverproject.org>; Fri, 26 Jul 2019 18:05:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 727AB89976
 for <devel@linuxdriverproject.org>; Fri, 26 Jul 2019 18:05:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yvaYCpr2utlN for <devel@linuxdriverproject.org>;
 Fri, 26 Jul 2019 18:05:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5654489983
 for <devel@driverdev.osuosl.org>; Fri, 26 Jul 2019 18:05:05 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id v19so48417398wmj.5
 for <devel@driverdev.osuosl.org>; Fri, 26 Jul 2019 11:05:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=enVHRv1hzuB9DJdnWqCR0Hba3g3fFl7T7q4qjet7quA=;
 b=Bu1C08H+O89Gvqnc4MHs/dvqLDwOEJNxd6PUlhpPQ0/MtUyUKJALlsF6V0/OJoTpy3
 HexvSPG2yUEyBOdTLuDe4PNpvHWY/tkhtLPMkuxBSRRB3jww9NFWkZt+j++TkHLGhvsi
 88MNZFZGpB5XgLwL3F0Kd6+ibWUztbZbJf4wgv+FLKgYLQKasIgu2h1MMnazBkDZGIkv
 kMqcQ5F+zH5URiax79p3LvX7ivpFhgn1ygoYSkVt7GjwblZVmyICM75PrOg1Dl+L9/jo
 AQ8O519KEHDHZwHdNwnu0VXz5Ko1Mu74bfWwnpb46t36/6SLTCAC+UmT/xu+MIsqVd9H
 hEKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=enVHRv1hzuB9DJdnWqCR0Hba3g3fFl7T7q4qjet7quA=;
 b=TFZC+UDTNnEiRspyVD/ihZC9C3Y4En8AqRU98+6y8Fm9zxKGfT+Fzb+Z5NPGvg2Q2f
 49b8p8lM7PRwUfQP+atapuOI80Y6738a7vNHYH2fvJ2p0lAplC0AZBoaDDE2OZZlcNJg
 LfSyfPgafOZ62cCPbtF/vk5VpQUsE1rqKWEcr2fC2fbuBEBGWp/ga641jZg3BplVsEPg
 Yxdv0p9Bdabc/nHCz54fSG8g7a/fYwOtjQ2qWM6okGX9Bcl4S4LJ2qlQzm+9ut5dNLWI
 2ucpI4hOhI3rfo1tNGIozDvjItfZRAdJK2Cncpd/3r5yTgk/psPA0TIsdPwBh2Slkifj
 KzZQ==
X-Gm-Message-State: APjAAAUktLeAASZqjTz5LFKrd1fhNo43ZVs3mJKQvEw6PbyzG7N7y+Ah
 ZCC8+0+/jgkhmUM4ZT5YSUk=
X-Google-Smtp-Source: APXvYqwAjH34PdGkB7r0hZnVFL3ktfFsk6yV6XpbWZqQ2po4BATrPac2HREJBiM9pPGXA/uWD2Lz2g==
X-Received: by 2002:a1c:a909:: with SMTP id s9mr85344396wme.20.1564164303895; 
 Fri, 26 Jul 2019 11:05:03 -0700 (PDT)
Received: from localhost.localdomain
 ([2a02:8108:96bf:e0ab:2b68:5d76:a12a:e6ba])
 by smtp.gmail.com with ESMTPSA id p14sm43535931wrx.17.2019.07.26.11.05.03
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 26 Jul 2019 11:05:03 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 5/6] staging: rtl8188eu: add spaces around '-' and '*' in
 usb_halinit.c
Date: Fri, 26 Jul 2019 20:04:47 +0200
Message-Id: <20190726180448.2290-5-straube.linux@gmail.com>
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

Add spaces around '-' and '*' to improve readability and follow kernel
coding style. Reported by checkpatch.

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8188eu/hal/usb_halinit.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/usb_halinit.c b/drivers/staging/rtl8188eu/hal/usb_halinit.c
index 40162f111195..0f54fde2f47b 100644
--- a/drivers/staging/rtl8188eu/hal/usb_halinit.c
+++ b/drivers/staging/rtl8188eu/hal/usb_halinit.c
@@ -190,7 +190,7 @@ static void _InitPageBoundary(struct adapter *Adapter)
 {
 	/*  RX Page Boundary */
 	/*  */
-	u16 rxff_bndy = MAX_RX_DMA_BUFFER_SIZE_88E-1;
+	u16 rxff_bndy = MAX_RX_DMA_BUFFER_SIZE_88E - 1;
 
 	usb_write16(Adapter, (REG_TRXFF_BNDY + 2), rxff_bndy);
 }
@@ -1298,7 +1298,7 @@ void rtw_hal_set_hwreg(struct adapter *Adapter, u8 variable, u8 *val)
 			struct mlme_ext_priv	*pmlmeext = &Adapter->mlmeextpriv;
 			struct mlme_ext_info	*pmlmeinfo = &pmlmeext->mlmext_info;
 
-			tsf = pmlmeext->TSFValue - do_div(pmlmeext->TSFValue, (pmlmeinfo->bcn_interval*1024)) - 1024; /* us */
+			tsf = pmlmeext->TSFValue - do_div(pmlmeext->TSFValue, (pmlmeinfo->bcn_interval * 1024)) - 1024; /* us */
 
 			if (((pmlmeinfo->state & 0x03) == WIFI_FW_ADHOC_STATE) || ((pmlmeinfo->state & 0x03) == WIFI_FW_AP_STATE))
 				StopTxBeacon(Adapter);
@@ -1484,7 +1484,7 @@ void rtw_hal_set_hwreg(struct adapter *Adapter, u8 variable, u8 *val)
 				else
 					ulContent = 0;
 				/*  polling bit, and No Write enable, and address */
-				ulCommand = CAM_CONTENT_COUNT*ucIndex + i;
+				ulCommand = CAM_CONTENT_COUNT * ucIndex + i;
 				ulCommand = ulCommand | CAM_POLLINIG |
 					    CAM_WRITE;
 				/*  write content 0 is equall to mark invalid */
-- 
2.22.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

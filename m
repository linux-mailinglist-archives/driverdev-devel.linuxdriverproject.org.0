Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B2DBC9E5E
	for <lists+driverdev-devel@lfdr.de>; Thu,  3 Oct 2019 14:25:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DB5D088236;
	Thu,  3 Oct 2019 12:25:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jjlQzqTuVzgt; Thu,  3 Oct 2019 12:25:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6CE1188196;
	Thu,  3 Oct 2019 12:25:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B610A1BF5AC
 for <devel@linuxdriverproject.org>; Thu,  3 Oct 2019 12:25:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B1BE61FD43
 for <devel@linuxdriverproject.org>; Thu,  3 Oct 2019 12:25:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xBypY5sVt7cg for <devel@linuxdriverproject.org>;
 Thu,  3 Oct 2019 12:25:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by silver.osuosl.org (Postfix) with ESMTPS id A110E20512
 for <devel@driverdev.osuosl.org>; Thu,  3 Oct 2019 12:25:38 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id 7so2131614wme.1
 for <devel@driverdev.osuosl.org>; Thu, 03 Oct 2019 05:25:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lleiCD1v15l9Knq/O5s6uOY5ExpJMMfHSdvlMxr6Vcg=;
 b=tjbXHeyN83Cp9mfYg6tMmuCTa8iJlm2AtRkNUAUmvZfqMRXO5ErwNPiTFg4RqiSmNU
 yooE7YjhTsk6R+xdORaqzFj93gsbin6YREP/vTW3MYm3K6INWohS159Do2xjVpfAyZlS
 bIOr7lEJ0ctcpwpPkFVL1HrxJDl+QCATHH0it9BDav0K3QgoKkA+68bdBrS44aaW7IbG
 By5pWfvKjz9FRXc6r/bBROrmFb060ZG8E+/C+c0XXJZLjXHT6RgpLVPOmlJ+t6eeypD3
 YCiaUng9m7nfEPZVqSRVoYUOR65TQgBXgk+/NcLaCHaJp5bOb9uTiaFpuhW5VQUAvWmO
 AA4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lleiCD1v15l9Knq/O5s6uOY5ExpJMMfHSdvlMxr6Vcg=;
 b=M9+TNnHChOhJvwGAfcsR/V8Z2Bc+N9shTRzeTsjWIcAhllHTkquDXL1VW1PfD2Oghw
 GcMGj36LNsviy/32MaM0ZIULB0s38lnfhlpBbT6ex3mHXENVnLSUJ4VcCBUJf+4fZoU0
 6v59/v+Gt+BuTWQuhlw7x093Et5GzE7LfvXAL2U6xQZzeILBRvNySxq4hlFA1NHHQoVw
 eO4hvtuhxnTqA6rlD3FT0CHMW9OSFKg0byfyaLKoebenVEt9PfGXvk/rKOe6ysdHEXvV
 Z9AY0uDbVZ9BLwWc4TkYI3g8P1/Bd7RjWaBcUD05VRAJR7MnV6G14kP/80o6dsY2VNXx
 RXRQ==
X-Gm-Message-State: APjAAAU537MmOz8ukN/8IBqE8qhwt3siyLGldjo+ITMeCFyLhp7DORFv
 aSKznIgmGbiGblgb1SYZ5ZA=
X-Google-Smtp-Source: APXvYqyEuPiddb/r4iV5RZ/2bLpIuHN1lQrx6jlHqD0XiQXyNIrRs+ECucgSNcu+GQPyJYAj6JwrOg==
X-Received: by 2002:a7b:c108:: with SMTP id w8mr6875006wmi.8.1570105537024;
 Thu, 03 Oct 2019 05:25:37 -0700 (PDT)
Received: from localhost.localdomain
 ([2a02:8108:96bf:e0ab:2b68:5d76:a12a:e6ba])
 by smtp.gmail.com with ESMTPSA id f17sm2699322wru.29.2019.10.03.05.25.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 03 Oct 2019 05:25:36 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 4/4] staging: rtl8188eu: cleanup comments in update_hw_ht_param
Date: Thu,  3 Oct 2019 14:25:14 +0200
Message-Id: <20191003122514.1760-5-straube.linux@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191003122514.1760-1-straube.linux@gmail.com>
References: <20191003122514.1760-1-straube.linux@gmail.com>
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

Cleanup comments in update_hw_ht_param to follow kernel coding style
and avoid line length over 80 characters.

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_ap.c | 13 +++++--------
 1 file changed, 5 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_ap.c b/drivers/staging/rtl8188eu/core/rtw_ap.c
index 97cab71cef23..9aa44c921aca 100644
--- a/drivers/staging/rtl8188eu/core/rtw_ap.c
+++ b/drivers/staging/rtl8188eu/core/rtw_ap.c
@@ -567,20 +567,17 @@ static void update_hw_ht_param(struct adapter *padapter)
 
 	DBG_88E("%s\n", __func__);
 
-	/* handle A-MPDU parameter field */
-	/*
-		ampdu_params_info [1:0]:Max AMPDU Len => 0:8k , 1:16k, 2:32k, 3:64k
-		ampdu_params_info [4:2]:Min MPDU Start Spacing
-	*/
+	/* handle A-MPDU parameter field
+	 * ampdu_params_info [1:0]:Max AMPDU Len => 0:8k , 1:16k, 2:32k, 3:64k
+	 * ampdu_params_info [4:2]:Min MPDU Start Spacing
+	 */
 	max_ampdu_len = pmlmeinfo->HT_caps.ampdu_params_info & 0x03;
 	min_mpdu_spacing = (pmlmeinfo->HT_caps.ampdu_params_info & 0x1c) >> 2;
 
 	rtw_hal_set_hwreg(padapter, HW_VAR_AMPDU_MIN_SPACE, &min_mpdu_spacing);
 	rtw_hal_set_hwreg(padapter, HW_VAR_AMPDU_FACTOR, &max_ampdu_len);
 
-	/*  */
-	/*  Config SM Power Save setting */
-	/*  */
+	/* Config SM Power Save setting */
 	pmlmeinfo->SM_PS = (le16_to_cpu(pmlmeinfo->HT_caps.cap_info) & 0x0C) >> 2;
 	if (pmlmeinfo->SM_PS == WLAN_HT_CAP_SM_PS_STATIC)
 		DBG_88E("%s(): WLAN_HT_CAP_SM_PS_STATIC\n", __func__);
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

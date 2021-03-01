Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DBF93281A9
	for <lists+driverdev-devel@lfdr.de>; Mon,  1 Mar 2021 16:02:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DA47083C0C;
	Mon,  1 Mar 2021 15:02:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 33kxFot9XcE4; Mon,  1 Mar 2021 15:02:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DDC4D83C6A;
	Mon,  1 Mar 2021 15:02:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 16BCD1BF361
 for <devel@linuxdriverproject.org>; Mon,  1 Mar 2021 15:02:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 138844308F
 for <devel@linuxdriverproject.org>; Mon,  1 Mar 2021 15:02:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PdlVuTEi6-nx for <devel@linuxdriverproject.org>;
 Mon,  1 Mar 2021 15:02:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com
 [209.85.167.45])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 44C3A43084
 for <devel@driverdev.osuosl.org>; Mon,  1 Mar 2021 15:02:05 +0000 (UTC)
Received: by mail-lf1-f45.google.com with SMTP id p21so25939208lfu.11
 for <devel@driverdev.osuosl.org>; Mon, 01 Mar 2021 07:02:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=WwrzUvZ5yocslNzLPz/+/yDqLHOwVJVt8KAK4XaUJ54=;
 b=pxsCRmf+Bku0z5XleI5DIoXJgtj28wITCgUV/KDkkurgi3uoO697wSEizXZMPEQGp0
 8bmvF3Gy+uAe3r73wpi0Ya/95JRM8WKaZx2ddX5xdz43IrFf4RHrRsp2hQoGnVxDDwlg
 gp3yAJ/scqlG4Y2pynHAwOiyl3f4Z55Yo4bN7IseQsA4t/8cxGPeobiXCzNj73x8uaNu
 PdXCMBPf9h5zPM/F3EF2eMP8vCYxz78/ryBASoGvet32q/4C2e9EpBl0+RivUCwCIqZx
 NTOC72VtBFdVJl0B6V+Vk/rcjLmHF6gAclNO2tcSvkiOXsZfFB+V3BGoVB6yg8Sd5S5A
 kGgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=WwrzUvZ5yocslNzLPz/+/yDqLHOwVJVt8KAK4XaUJ54=;
 b=A3dK5l3nbu+zgMiKdlYa5R4hRxt+MLhjzcrp7l+SFFoRFO7WuONIHp+Dd8lx34sIhy
 FE1OhViDNNjNeEqnfwxJKopsdzuTLGNcVNwP4zI7bT4eiMGIwOU1SjxqarpST9Xehu+q
 CR0vKUTP434XPrWO9GfCViGQBle1djQVTVd7Et2XvP+YTDdK+nis82y0/acEUSQo+BqP
 GETkw3LN2O+5LFicLn6AcfOBOFNDkn67MR8R8+kgKzvQadSu52qzZ1+V5KpiiRXIJ+zZ
 jXTbBHas2Md142dcIu51Y/d/ueG71jNeBNgzO3MjDAm+xYo+QsASCXVkyPLJIG/75jcu
 I6hg==
X-Gm-Message-State: AOAM531FKhpOX548L4FY2Sq3jH1zFhPFTCGEQCrT/CLzZ3JitAkpkXkF
 41waGYiHiP3ShlZGtLsU1QH0h76ejbwo
X-Google-Smtp-Source: ABdhPJxb4VhNXkBSAYzAK+cQ4G5KbLcjafeFEVVulyYwXPigdpBAouZGQ3PIDtOtqlhZRyNuFnamVw==
X-Received: by 2002:a19:740f:: with SMTP id v15mr6772705lfe.247.1614610922388; 
 Mon, 01 Mar 2021 07:02:02 -0800 (PST)
Received: from mainframe ([139.193.28.239])
 by smtp.gmail.com with ESMTPSA id c19sm2065203ljk.60.2021.03.01.07.01.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 01 Mar 2021 07:02:01 -0800 (PST)
Date: Mon, 1 Mar 2021 22:01:50 +0700
From: Candy Febriyanto <cfebriyanto@gmail.com>
To: devel@driverdev.osuosl.org
Subject: [PATCH v2 2/3] staging: rtl8723bs: hal: Replace sprintf with scnprintf
Message-ID: <ed564fb9e325f757b2b937df37689d40b96d8831.1614610197.git.cfebriyanto@gmail.com>
References: <cover.1614610197.git.cfebriyanto@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1614610197.git.cfebriyanto@gmail.com>
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
Cc: gregkh@linuxfoundation.org, Larry.Finger@lwfinger.net, hdegoede@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The use of sprintf with format string here means that there is a risk
that the writes will go out of bounds, replace it with scnprintf.

Also avoid unnecessarily passing "%s" on some of the function calls.

Signed-off-by: Candy Febriyanto <cfebriyanto@gmail.com>
Reviewed-by: Hans de Goede <hdegoede@redhat.com>
---
 drivers/staging/rtl8723bs/hal/hal_com.c | 45 +++++++++++++------------
 1 file changed, 24 insertions(+), 21 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/hal_com.c b/drivers/staging/rtl8723bs/hal/hal_com.c
index 16b259acbe1a..173ccaba2537 100644
--- a/drivers/staging/rtl8723bs/hal/hal_com.c
+++ b/drivers/staging/rtl8723bs/hal/hal_com.c
@@ -40,47 +40,50 @@ void rtw_hal_data_deinit(struct adapter *padapter)
 
 void dump_chip_info(HAL_VERSION	ChipVersion)
 {
-	int cnt = 0;
-	u8 buf[128];
+	char buf[128];
+	size_t cnt = 0;
+
+	cnt += scnprintf(buf + cnt, sizeof(buf) - cnt, "Chip Version Info: CHIP_8723B_%s_",
+			IS_NORMAL_CHIP(ChipVersion) ? "Normal_Chip" : "Test_Chip");
 
-	cnt += sprintf((buf+cnt), "Chip Version Info: CHIP_8723B_");
-	cnt += sprintf((buf+cnt), "%s_", IS_NORMAL_CHIP(ChipVersion) ? "Normal_Chip" : "Test_Chip");
 	if (IS_CHIP_VENDOR_TSMC(ChipVersion))
-		cnt += sprintf((buf+cnt), "%s_", "TSMC");
+		cnt += scnprintf(buf + cnt, sizeof(buf) - cnt, "TSMC_");
 	else if (IS_CHIP_VENDOR_UMC(ChipVersion))
-		cnt += sprintf((buf+cnt), "%s_", "UMC");
+		cnt += scnprintf(buf + cnt, sizeof(buf) - cnt, "UMC_");
 	else if (IS_CHIP_VENDOR_SMIC(ChipVersion))
-		cnt += sprintf((buf+cnt), "%s_", "SMIC");
+		cnt += scnprintf(buf + cnt, sizeof(buf) - cnt, "SMIC_");
 
 	if (IS_A_CUT(ChipVersion))
-		cnt += sprintf((buf+cnt), "A_CUT_");
+		cnt += scnprintf(buf + cnt, sizeof(buf) - cnt, "A_CUT_");
 	else if (IS_B_CUT(ChipVersion))
-		cnt += sprintf((buf+cnt), "B_CUT_");
+		cnt += scnprintf(buf + cnt, sizeof(buf) - cnt, "B_CUT_");
 	else if (IS_C_CUT(ChipVersion))
-		cnt += sprintf((buf+cnt), "C_CUT_");
+		cnt += scnprintf(buf + cnt, sizeof(buf) - cnt, "C_CUT_");
 	else if (IS_D_CUT(ChipVersion))
-		cnt += sprintf((buf+cnt), "D_CUT_");
+		cnt += scnprintf(buf + cnt, sizeof(buf) - cnt, "D_CUT_");
 	else if (IS_E_CUT(ChipVersion))
-		cnt += sprintf((buf+cnt), "E_CUT_");
+		cnt += scnprintf(buf + cnt, sizeof(buf) - cnt, "E_CUT_");
 	else if (IS_I_CUT(ChipVersion))
-		cnt += sprintf((buf+cnt), "I_CUT_");
+		cnt += scnprintf(buf + cnt, sizeof(buf) - cnt, "I_CUT_");
 	else if (IS_J_CUT(ChipVersion))
-		cnt += sprintf((buf+cnt), "J_CUT_");
+		cnt += scnprintf(buf + cnt, sizeof(buf) - cnt, "J_CUT_");
 	else if (IS_K_CUT(ChipVersion))
-		cnt += sprintf((buf+cnt), "K_CUT_");
+		cnt += scnprintf(buf + cnt, sizeof(buf) - cnt, "K_CUT_");
 	else
-		cnt += sprintf((buf+cnt), "UNKNOWN_CUT(%d)_", ChipVersion.CUTVersion);
+		cnt += scnprintf(buf + cnt, sizeof(buf) - cnt,
+				"UNKNOWN_CUT(%d)_", ChipVersion.CUTVersion);
 
 	if (IS_1T1R(ChipVersion))
-		cnt += sprintf((buf+cnt), "1T1R_");
+		cnt += scnprintf(buf + cnt, sizeof(buf) - cnt, "1T1R_");
 	else if (IS_1T2R(ChipVersion))
-		cnt += sprintf((buf+cnt), "1T2R_");
+		cnt += scnprintf(buf + cnt, sizeof(buf) - cnt, "1T2R_");
 	else if (IS_2T2R(ChipVersion))
-		cnt += sprintf((buf+cnt), "2T2R_");
+		cnt += scnprintf(buf + cnt, sizeof(buf) - cnt, "2T2R_");
 	else
-		cnt += sprintf((buf+cnt), "UNKNOWN_RFTYPE(%d)_", ChipVersion.RFType);
+		cnt += scnprintf(buf + cnt, sizeof(buf) - cnt,
+				"UNKNOWN_RFTYPE(%d)_", ChipVersion.RFType);
 
-	cnt += sprintf((buf+cnt), "RomVer(%d)\n", ChipVersion.ROMVer);
+	cnt += scnprintf(buf + cnt, sizeof(buf) - cnt, "RomVer(%d)\n", ChipVersion.ROMVer);
 
 	DBG_871X("%s", buf);
 }
-- 
2.30.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 249CD327F23
	for <lists+driverdev-devel@lfdr.de>; Mon,  1 Mar 2021 14:13:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9BF5983C37;
	Mon,  1 Mar 2021 13:13:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AAcdKWrThb6H; Mon,  1 Mar 2021 13:13:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B6C5983A4B;
	Mon,  1 Mar 2021 13:13:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C431D1BF372
 for <devel@linuxdriverproject.org>; Mon,  1 Mar 2021 13:13:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BFD3760659
 for <devel@linuxdriverproject.org>; Mon,  1 Mar 2021 13:13:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KALBJjtKDh3F for <devel@linuxdriverproject.org>;
 Mon,  1 Mar 2021 13:13:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com
 [209.85.216.50])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 623A460640
 for <devel@driverdev.osuosl.org>; Mon,  1 Mar 2021 13:13:38 +0000 (UTC)
Received: by mail-pj1-f50.google.com with SMTP id e9so11807737pjj.0
 for <devel@driverdev.osuosl.org>; Mon, 01 Mar 2021 05:13:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=gPZTi/36RdypSXCmyORyFg/1OChTAFU57YJiMLuS4To=;
 b=mNrzGBgzbhTtkUdsBuFxJzcisjDI3vhubXkueuJHqdbZEK/IK4XbHxBaI+bqIS3bhm
 /OvsVg8vMdSa3Px9OFXFZe/e3q1RKomm4TCc9B13/obHSn8+t52iRE8hoW+fJhef/UPd
 g/GKBwstp/a1wKyyCCRirD9G19vcAobu6OkOetXv/6JqC5/Fgpu3E10KhqGsUclPtol0
 pYaTTzWN6w1cPwjVgNVxED+o5NaYU8KIElObRum5WekultLgjXDPLL2Qq4c8OT5ZuwFM
 r3P+d/SMTwfLe/U5hCFBFXtEKlOO1z7SA65bixeUE4oy6LdOrW+EFhG7tqK83dVBiJDF
 SUUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=gPZTi/36RdypSXCmyORyFg/1OChTAFU57YJiMLuS4To=;
 b=C//wSz5oTQoCihg8YsGLtXISuqUmXWkn9Mnph+5zRyg14cwrRAyE6Pt6dQlFNzEw08
 XnnLB+avmFPuRF0hwTDYhJf22GGWVC/9fPNDl7O7i9hL6pJpp2s/FGHnAwy4/C+e/oiW
 JZbCuOpqdz1nqzrwShol4DMdlLncwQ0ptly7zVp4bhYgaJYN2n31ARBZf2S2yp6HBUg7
 7IO7xkDh55VMCD5AH0cMgLBy5oqxNFuv3linrdusOSYd2XQFnyCFdq5NI6UyPnUQJxbE
 l11r/d9Q6sg/7tv964jnBJUZl5zzaA/ss0nJu4KglU/Lv4Ry4bStpYFXzkkp1dnjTxuF
 RZNA==
X-Gm-Message-State: AOAM531tqqjSDuknLZoIB58Cfvj6N4q81X37lV7kVWFVrUE6/ugky9vz
 yGKXgzYo807HfcHfWnVuTA==
X-Google-Smtp-Source: ABdhPJyAwIpcRk3b6a3AKzEIuexTdRpVoO5f2JI88XytUzyc1N8yJXJVe96xh3PhDlZ6aor619r9HA==
X-Received: by 2002:a17:90b:390c:: with SMTP id
 ob12mr17006748pjb.163.1614604417891; 
 Mon, 01 Mar 2021 05:13:37 -0800 (PST)
Received: from mainframe ([139.193.28.239])
 by smtp.gmail.com with ESMTPSA id f18sm17492283pjq.53.2021.03.01.05.13.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 01 Mar 2021 05:13:36 -0800 (PST)
Date: Mon, 1 Mar 2021 20:13:30 +0700
From: Candy Febriyanto <cfebriyanto@gmail.com>
To: gregkh@linuxfoundation.org, hdegoede@redhat.com,
 Larry.Finger@lwfinger.net, devel@driverdev.osuosl.org
Subject: [PATCH 2/3] staging: rtl8723bs: hal: Replace sprintf with scnprintf
Message-ID: <ed564fb9e325f757b2b937df37689d40b96d8831.1614603705.git.cfebriyanto@gmail.com>
References: <cover.1614603705.git.cfebriyanto@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1614603705.git.cfebriyanto@gmail.com>
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

The use of sprintf with format string here means that there is a risk
that the writes will go out of bounds, replace it with scnprintf.

Also avoid unnecessarily passing "%s" on some of the function calls.

Signed-off-by: Candy Febriyanto <cfebriyanto@gmail.com>
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

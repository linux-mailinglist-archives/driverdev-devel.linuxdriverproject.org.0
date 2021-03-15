Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 49AFB33C3AD
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 18:11:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CED446F56F;
	Mon, 15 Mar 2021 17:11:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id r_FcWCUE3Q9G; Mon, 15 Mar 2021 17:11:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4C3756F478;
	Mon, 15 Mar 2021 17:11:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7A4471BF33C
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6A33283486
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6NCA22lrP4qb for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 17:06:33 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com
 [IPv6:2a00:1450:4864:20::530])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BB44083478
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 17:06:33 +0000 (UTC)
Received: by mail-ed1-x530.google.com with SMTP id dm8so18223933edb.2
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 10:06:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=4s8m/I1ZW7XtrsDe5NqvNk/iOV6v9p1pWB6Q5iaAkBs=;
 b=Spk9B34exAQ2kfdr7uHT8TSMJ6m0V2oD/jXYb1icoMNH3TjTW0RY82gSgM7g9UwC1W
 beaqSwECfndIOpJpaurqIone4tEXXLuyfyJTcTzYn6YO85GkJMfxxn1r8zvy0Tr2Deby
 mJznHfJQk/YN7xpR17qhM3EGG3F5Faw8/wXOnc1hxYonlnhHyh/mKY5cWa58xjL1EmsC
 TMf9vwbLLEJsUgXtUjgqDbODVD6nfCukEjRUj+DNwJLH8uUQ0nc/px0pVmHTNA9pyD5T
 iCxEqc8StuhVCLcNRg9C5X9dWKvalqCHjCPx26w5TRPIKyUo7l2m90pMme5ZPibocxYE
 RCnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4s8m/I1ZW7XtrsDe5NqvNk/iOV6v9p1pWB6Q5iaAkBs=;
 b=H0SCSwoldnEL5pq+/AkRaBAMfI8wAJCMMTCOhV9aX0jmoIaSizUDs+CuZTZNNxJpTq
 wR9cn0ydvZGdbQcnHCw8wMo1r6c/oOQ/HLOrw6M6A3qG/YtK41FRUKgWCJTCcBy0wKwl
 tooO/HuzM3Gpz25u7q6V03M8FarzOZ/rPSyZ7rXAmBHzlgJjgz+WZ/MrTrXE7D6nt82a
 VWi5koeiWK9Ug4/N5UZcwP9r+u65N9mSr3BCddBBE6PHx8DHE61kG/2yu76BTzgI9WGO
 uO5WGOodHP3lKPnUJFVwEBtERlRYPY2+rMgedfxBePVoXMfW6o8FzuK0YzaiLVpuOs8I
 9K1Q==
X-Gm-Message-State: AOAM532kVufX/r4s2OMz3NAOGUKFRWTPBCBck7ITcbEZ0wtz2DrZR8DT
 aCtKuzwjgGFZjQJDKxQe7fg=
X-Google-Smtp-Source: ABdhPJyOvIeHLnUgenRrR4EwrEmVvluUclnKontKycg4nTz+MJ0URvwiFE8d5MOSVU/iEcsnpSmgnw==
X-Received: by 2002:aa7:c850:: with SMTP id g16mr30632132edt.324.1615827992028; 
 Mon, 15 Mar 2021 10:06:32 -0700 (PDT)
Received: from gimli.cesven (93-48-145-141.ip257.fastwebnet.it.
 [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id gq25sm7879608ejb.85.2021.03.15.10.06.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Mar 2021 10:06:31 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 29/57] Staging: rtl8723bs: fix spaces in odm_NoiseMonitor.c
Date: Mon, 15 Mar 2021 18:05:50 +0100
Message-Id: <20210315170618.2566-30-marcocesati@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210315170618.2566-1-marcocesati@gmail.com>
References: <20210315170618.2566-1-marcocesati@gmail.com>
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

This commit fixes the following checkpatch.pl error:

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #22: FILE: ./hal/odm_NoiseMonitor.c:22:
    +	struct DM_ODM_T * pDM_Odm,

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 drivers/staging/rtl8723bs/hal/odm_NoiseMonitor.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/hal/odm_NoiseMonitor.c b/drivers/staging/rtl8723bs/hal/odm_NoiseMonitor.c
index 7743540b7817..54b9a70a7060 100644
--- a/drivers/staging/rtl8723bs/hal/odm_NoiseMonitor.c
+++ b/drivers/staging/rtl8723bs/hal/odm_NoiseMonitor.c
@@ -19,7 +19,7 @@
 #define ValidCnt				5
 
 static s16 odm_InbandNoise_Monitor_NSeries(
-	struct DM_ODM_T * pDM_Odm,
+	struct DM_ODM_T *pDM_Odm,
 	u8 bPauseDIG,
 	u8 IGIValue,
 	u32 max_time
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

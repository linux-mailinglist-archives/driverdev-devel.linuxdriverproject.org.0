Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DED5533C3C1
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 18:13:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 728D44DD08;
	Mon, 15 Mar 2021 17:13:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dXbGcY7LpF-U; Mon, 15 Mar 2021 17:13:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9321347A73;
	Mon, 15 Mar 2021 17:13:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3C73B1BF33C
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2BF5447A73
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id T6qPPet31ggN for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 17:06:40 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com
 [IPv6:2a00:1450:4864:20::632])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 64A5D47489
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 17:06:40 +0000 (UTC)
Received: by mail-ej1-x632.google.com with SMTP id mj10so67516035ejb.5
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 10:06:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=2FrSHS2D09HtP1JVh382hBSqc3+E7gI2R8FWJ4HpBX0=;
 b=Yqo8P5HawkpidxtrdVlxXJ98ryATV/pK9YyE0i6T49bcr+kWcedCXJxW9YW5jMBMQR
 ZqWxF2NMPA5U6SOZRHXTzz7yBT3NHR/KhdC3EQpFpeVApwLAkbI6ich7wxTf6lPJQkYU
 BKnrCwC1tkg4z3uxzm7+glW1b1SYU1U5oaHY1FrfOO3Mo+VKR16mAQ9RaPbNjpulkzK5
 TrABwzP17JXUKjbuUhsbFeClqwZR+dbHkg6f7X/xMVq+2NfQyaG2W+vdmN6yGCu7cw/M
 GQ+BxToW0f26nRltkNtWCDdwBEqeEXYIuAB3yAkHWLVDRzZn2oEBOcxlpWPAt9gm6EXX
 vj+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2FrSHS2D09HtP1JVh382hBSqc3+E7gI2R8FWJ4HpBX0=;
 b=gO1n8ubEB1gW4QE4rpEznXg6OixVImjJarlHkI/zgpe/5q/8Y/G86A5lucp94BJdTR
 spFth3YOmRnZ8Il1v73O9NZQJC+TFBUnM5VwLf/iJJ/SYYwyI6bx0042v4gh60Y2owA9
 xsTSERweUGDLeurlm42Ddlg3tkhUY/p3nv/yA30OycPp1Kmpn/ESJ97bKK9Ggeniks3N
 ofoLF5jfnwVFr2uLy8ax9kfDcQUHy0+4e8GYqBI2Ad5yBoCxy/DspuEY40p6j2A3xOTy
 1q+RwNCGHrCOisYHnW+KOWBetUuJ5+H4sUs3U6AeN3pJ/d/uGjakmtQXaaPqz/yAs4Cx
 3Vbg==
X-Gm-Message-State: AOAM531ZqDsFOnU+7jUMA2SdjTC9I1US5XjJ5S6TivYFshYl3lSKQ1fF
 MVrxZhP6IZVg3Ibqs6D/eNM=
X-Google-Smtp-Source: ABdhPJzUynt1vYNfYrdA273bUdTIVNJrKsqyWD2tWsZVMNz4yts8suhzy/JSwTygyusK4Bg9OhnjFA==
X-Received: by 2002:a17:907:2bdd:: with SMTP id
 gv29mr23927559ejc.259.1615827998584; 
 Mon, 15 Mar 2021 10:06:38 -0700 (PDT)
Received: from gimli.cesven (93-48-145-141.ip257.fastwebnet.it.
 [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id gq25sm7879608ejb.85.2021.03.15.10.06.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Mar 2021 10:06:38 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 37/57] Staging: rtl8723bs: fix spaces in rtl8723b_phycfg.c
Date: Mon, 15 Mar 2021 18:05:58 +0100
Message-Id: <20210315170618.2566-38-marcocesati@gmail.com>
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

This commit fixes the following checkpatch.pl errors:

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #597: FILE: ./hal/rtl8723b_phycfg.c:597:
    +	struct DM_ODM_T * pDM_Odm = &pHalData->odmpriv;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #598: FILE: ./hal/rtl8723b_phycfg.c:598:
    +	struct FAT_T * pDM_FatTable = &pDM_Odm->DM_FatTable;

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c b/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c
index d67eb83e4011..9868d9f2b4df 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c
@@ -594,8 +594,8 @@ u8 PHY_GetTxPowerIndex(
 void PHY_SetTxPowerLevel8723B(struct adapter *Adapter, u8 Channel)
 {
 	struct hal_com_data *pHalData = GET_HAL_DATA(Adapter);
-	struct DM_ODM_T * pDM_Odm = &pHalData->odmpriv;
-	struct FAT_T * pDM_FatTable = &pDM_Odm->DM_FatTable;
+	struct DM_ODM_T *pDM_Odm = &pHalData->odmpriv;
+	struct FAT_T *pDM_FatTable = &pDM_Odm->DM_FatTable;
 	u8 RFPath = ODM_RF_PATH_A;
 
 	if (pHalData->AntDivCfg) {/*  antenna diversity Enable */
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

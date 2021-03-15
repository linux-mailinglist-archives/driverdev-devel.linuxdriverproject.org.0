Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B59533C3C8
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 18:13:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D5AB46F478;
	Mon, 15 Mar 2021 17:13:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0xqytsuI5GjL; Mon, 15 Mar 2021 17:13:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1A757606AE;
	Mon, 15 Mar 2021 17:13:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 030641BF33C
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 52C586F549
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Itiuy6RhYkoG for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 17:06:43 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com
 [IPv6:2a00:1450:4864:20::634])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7EA266F576
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 17:06:43 +0000 (UTC)
Received: by mail-ej1-x634.google.com with SMTP id p7so56192225eju.6
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 10:06:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=7TX01P5Ebv0u3enHckHZxlHD4ZJGxTqeUO5a7kSI1rQ=;
 b=DAGE74v8JSnKbz0jMGEuW1lKc8Ao26DF+CQcyA+4uNmsNO6TWbWOpdPUi0sezq+o4k
 CDZid77+mvOO1ilIRd0dhwS/OjVX2Wc0iitU/rN7uVigEqk777h8l1oGJcPN8KOs0Pr4
 SDZHhYJ4+JSYKUorcss2Om0xmN4rXzf2ksYEvxI6cajMpsjrQTUv125cwKm/xJXNFlfD
 PJRXtqU/Yr3KnXWf1VKaJvMXGVCGP/I2PEzt7hd8cT43hN/L4WGNnTg5W4nobO7j9KBU
 SPZLccJmfyw+Hjne9ICg/8SRl88TaIVOkHvPcr7nuUiM3q75SvnSmuUWr2SvCF3Azqqy
 GQHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7TX01P5Ebv0u3enHckHZxlHD4ZJGxTqeUO5a7kSI1rQ=;
 b=HAGyj35VdTxdNm1xe35Vx4C4RNu02hNSQrpixP4k2eex6jWYViYvm9aah0GO3kgggF
 644X0FeUlnwyXLg6Z44/HUJUB6WElWPKyA3X2Bd/XEL0rNd1Z7Mv0C4XN5zsKrZiCWyO
 qyr7VtQrwZOZM3EyT8pmEXLTqgKt1H/9YQ1/L2q6IUhc7Zhahh6Yz7A4hRCaIiGfWrPg
 3jxCrJEbSlhux8zd18Fnzv9Y25WwXE1V/N/q77w/VLIHuY/f+bilqIxOea4IkzpNvyVe
 RbhGA/JCbxPthxfqI4Z7IZT2uN1j7FGao+QUsGMlf5g/iJ7f/egzxkc6Veef9vXGSdEm
 uIjg==
X-Gm-Message-State: AOAM53108ueMWcYM00/rC7x4ku3PoYcPB61225nzOpAfdNDw2n253VB5
 dziZkeBAOMn/T7WHUMoDpOY=
X-Google-Smtp-Source: ABdhPJwNQEkkU/4e8BVIq/oZV2peZbkSX/t1liKiTVAPIaGWgzF6QgBzbCHAsorcHdgG2FqllHnFYA==
X-Received: by 2002:a17:906:12db:: with SMTP id
 l27mr24453377ejb.500.1615828001810; 
 Mon, 15 Mar 2021 10:06:41 -0700 (PDT)
Received: from gimli.cesven (93-48-145-141.ip257.fastwebnet.it.
 [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id gq25sm7879608ejb.85.2021.03.15.10.06.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Mar 2021 10:06:41 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 41/57] Staging: rtl8723bs: fix spaces in hal_com.h
Date: Mon, 15 Mar 2021 18:06:02 +0100
Message-Id: <20210315170618.2566-42-marcocesati@gmail.com>
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

    ERROR:POINTER_LOCATION: "foo *	bar" should be "foo *bar"
    #218: FILE: ./include/hal_com.h:218:
    +	struct adapter *	Adapter,

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #230: FILE: ./include/hal_com.h:230:
    +void rtw_init_hal_com_default_value(struct adapter * Adapter);

    ERROR:POINTER_LOCATION: "foo *				bar" should be "foo *bar"
    #282: FILE: ./include/hal_com.h:282:
    +	void *				pValue1,

    ERROR:POINTER_LOCATION: "foo *				bar" should be "foo *bar"
    #283: FILE: ./include/hal_com.h:283:
    +	void *				pValue2);

    ERROR:POINTER_LOCATION: "foo *			bar" should be "foo *bar"
    #285: FILE: ./include/hal_com.h:285:
    +	struct adapter *			Adapter,

    ERROR:POINTER_LOCATION: "foo *				bar" should be "foo *bar"
    #287: FILE: ./include/hal_com.h:287:
    +	void *				pValue1,

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 drivers/staging/rtl8723bs/include/hal_com.h | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/hal_com.h b/drivers/staging/rtl8723bs/include/hal_com.h
index c4b83eb16326..272d7ec4e15d 100644
--- a/drivers/staging/rtl8723bs/include/hal_com.h
+++ b/drivers/staging/rtl8723bs/include/hal_com.h
@@ -215,9 +215,9 @@ u8 MRateToHwRate(u8 rate);
 u8 HwRateToMRate(u8 rate);
 
 void HalSetBrateCfg(
-	struct adapter *	Adapter,
-	u8 	*mBratesOS,
-	u16 		*pBrateCfg);
+	struct adapter *Adapter,
+	u8 *mBratesOS,
+	u16	*pBrateCfg);
 
 bool
 Hal_MappingOutPipe(
@@ -227,7 +227,7 @@ u8 NumOutPipe
 
 void hal_init_macaddr(struct adapter *adapter);
 
-void rtw_init_hal_com_default_value(struct adapter * Adapter);
+void rtw_init_hal_com_default_value(struct adapter *Adapter);
 
 void c2h_evt_clear(struct adapter *adapter);
 s32 c2h_evt_read_88xx(struct adapter *adapter, u8 *buf);
@@ -279,12 +279,12 @@ void rtw_bb_rf_gain_offset(struct adapter *padapter);
 
 void GetHalODMVar(struct adapter *Adapter,
 	enum HAL_ODM_VARIABLE		eVariable,
-	void *				pValue1,
-	void *				pValue2);
+	void *pValue1,
+	void *pValue2);
 void SetHalODMVar(
-	struct adapter *			Adapter,
+	struct adapter *Adapter,
 	enum HAL_ODM_VARIABLE		eVariable,
-	void *				pValue1,
+	void *pValue1,
 	bool					bSet);
 
 #ifdef CONFIG_BACKGROUND_NOISE_MONITOR
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

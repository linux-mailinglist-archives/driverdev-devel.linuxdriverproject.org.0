Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 70F102D0055
	for <lists+driverdev-devel@lfdr.de>; Sun,  6 Dec 2020 04:46:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B73C02750D;
	Sun,  6 Dec 2020 03:46:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3dLNeQuOpYJ5; Sun,  6 Dec 2020 03:45:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D5DBC2E4E2;
	Sun,  6 Dec 2020 03:45:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D41171BF962
 for <devel@linuxdriverproject.org>; Sun,  6 Dec 2020 03:45:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CE6AA87563
 for <devel@linuxdriverproject.org>; Sun,  6 Dec 2020 03:45:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xEpW8gUi1FaJ for <devel@linuxdriverproject.org>;
 Sun,  6 Dec 2020 03:45:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f46.google.com (mail-io1-f46.google.com
 [209.85.166.46])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2BC2786BEC
 for <devel@driverdev.osuosl.org>; Sun,  6 Dec 2020 03:45:32 +0000 (UTC)
Received: by mail-io1-f46.google.com with SMTP id y5so9988689iow.5
 for <devel@driverdev.osuosl.org>; Sat, 05 Dec 2020 19:45:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=7qkNKRbDcUUBwj4iE09P22MAxUjsp1i2IjCK22JBaNw=;
 b=K3Xacm+ALpMCMgLd5dMXNV8jpgof/q3XY2HvxGHwzrNT1SmLVlp3/LNUWcOvqkA+Sv
 ovZ+A/iurKJTuKx1ZBNW7p2THk9BHHNnxLQu3BsyfXNg1pdutZ2Xmi+/gqstIdrNdSpF
 8fXSwlbNbU2ILmN5GqpIx7fHUztsVBWeC1Y/54HEn5sXrURFm7CSB3PEoJblnemqvFxa
 RhUPiTNKgioorD7cScsBPUL5xxiDIfCS/8loWjM6/1y0gmzQ+2XZIMANJYxYQz/Kwu1F
 tJcnXEjHBtKXdqa/BituwyKrBh85qy5hr75FDZhXxQVSremHY4cyfUpKN503SgKwNTIL
 j6rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7qkNKRbDcUUBwj4iE09P22MAxUjsp1i2IjCK22JBaNw=;
 b=Ooi/NxI3vIMIE72MXGEXk7+Vqg7QRBwBxrFFLSEJwpvPUBk7SGFMN/qmLDEnMDrUuL
 N3itTM3mzpvS1WrZ26EaPbdPVS/iX0wu3lzQtfNA2GKnj1L9x4mb9Y+9XvWD1qOsooZK
 ZDKd2xFvFERek7O/OUuHDVDQQ965c9VWdWM6x6FHhighfjiQLn744+nLiQKkcmGzbefs
 p/Zyk+MzTLyveVJmFs9q6SDE0QffPFYSjaN8z/qEM8O4xvf58w3jLZ1BWPFgunVIS4lu
 NmRi1CBcBDjRxryTCmE+Tr2tbndmAyBzSYMKYqUjlkdlBgDJ524Hkz+Qir4DB9Rx3B9H
 +qYg==
X-Gm-Message-State: AOAM530IRkMVhzb6q+LULJVhAvcqnXcirbheJS9fC6/D65zQh+gGH3Fd
 4X8JsEsDXFRPtZJdjP/GWrA0s3b6J+E=
X-Google-Smtp-Source: ABdhPJw6HHjZb88oT7T9qa/YCnyOZP41p8Jpoi72+tH03BXkNWpB2VnFGehobFpmjC36s0ezpu0dbQ==
X-Received: by 2002:a02:6c50:: with SMTP id w77mr13359501jab.68.1607226331614; 
 Sat, 05 Dec 2020 19:45:31 -0800 (PST)
Received: from localhost.localdomain (c-73-242-81-227.hsd1.mn.comcast.net.
 [73.242.81.227])
 by smtp.gmail.com with ESMTPSA id v63sm3908553ioe.52.2020.12.05.19.45.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 05 Dec 2020 19:45:31 -0800 (PST)
From: Ross Schmidt <ross.schm.dev@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 08/10] staging: rtl8723bs: remove unused macros
Date: Sat,  5 Dec 2020 21:45:15 -0600
Message-Id: <20201206034517.4276-8-ross.schm.dev@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201206034517.4276-1-ross.schm.dev@gmail.com>
References: <20201206034517.4276-1-ross.schm.dev@gmail.com>
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
 Ross Schmidt <ross.schm.dev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove many macros from wifi.h because they are unused.

Signed-off-by: Ross Schmidt <ross.schm.dev@gmail.com>
---
 drivers/staging/rtl8723bs/include/wifi.h | 33 ------------------------
 1 file changed, 33 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/wifi.h b/drivers/staging/rtl8723bs/include/wifi.h
index c3a4a0bad0d7..41de2605c517 100644
--- a/drivers/staging/rtl8723bs/include/wifi.h
+++ b/drivers/staging/rtl8723bs/include/wifi.h
@@ -643,39 +643,6 @@ struct ADDBA_request {
 #define IEEE80211_HT_CAP_TXBF_TX_NDP		0x00000010
 #define IEEE80211_HT_CAP_TXBF_EXPLICIT_COMP_STEERING_CAP	0x00000400
 
-/* 802.11n HT IE masks */
-#define IEEE80211_HT_IE_CHA_SEC_OFFSET		0x03
-#define IEEE80211_HT_IE_CHA_SEC_NONE		0x00
-#define IEEE80211_HT_IE_CHA_SEC_ABOVE		0x01
-#define IEEE80211_HT_IE_CHA_SEC_BELOW		0x03
-#define IEEE80211_HT_IE_CHA_WIDTH		0x04
-#define IEEE80211_HT_IE_HT_PROTECTION		0x0003
-#define IEEE80211_HT_IE_NON_GF_STA_PRSNT	0x0004
-#define IEEE80211_HT_IE_NON_HT_STA_PRSNT	0x0010
-
-/*
- * A-PMDU buffer sizes
- * According to IEEE802.11n spec size varies from 8K to 64K (in powers of 2)
- */
-#define IEEE80211_MIN_AMPDU_BUF 0x8
-
-#define HT_INFO_HT_PARAM_SECONDARY_CHNL_OFF_MASK	((u8) BIT(0) | BIT(1))
-#define HT_INFO_HT_PARAM_SECONDARY_CHNL_ABOVE		((u8) BIT(0))
-#define HT_INFO_HT_PARAM_SECONDARY_CHNL_BELOW		((u8) BIT(0) | BIT(1))
-#define HT_INFO_HT_PARAM_REC_TRANS_CHNL_WIDTH		((u8) BIT(2))
-#define HT_INFO_HT_PARAM_RIFS_MODE			((u8) BIT(3))
-#define HT_INFO_HT_PARAM_CTRL_ACCESS_ONLY		((u8) BIT(4))
-#define HT_INFO_HT_PARAM_SRV_INTERVAL_GRANULARITY	((u8) BIT(5))
-
-#define HT_INFO_STBC_PARAM_DUAL_BEACON			((u16) BIT(6))
-#define HT_INFO_STBC_PARAM_DUAL_STBC_PROTECT		((u16) BIT(7))
-#define HT_INFO_STBC_PARAM_SECONDARY_BCN		((u16) BIT(8))
-#define HT_INFO_STBC_PARAM_LSIG_TXOP_PROTECT_ALLOWED	((u16) BIT(9))
-#define HT_INFO_STBC_PARAM_PCO_ACTIVE			((u16) BIT(10))
-#define HT_INFO_STBC_PARAM_PCO_PHASE			((u16) BIT(11))
-
-
-
 /* endif */
 
 /* 	===============WPS Section =============== */
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

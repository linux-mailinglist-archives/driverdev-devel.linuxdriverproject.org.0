Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id EDCC8338755
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Mar 2021 09:29:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 60D3F4ED51;
	Fri, 12 Mar 2021 08:29:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FZf9s0gI2BkT; Fri, 12 Mar 2021 08:29:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 145BB4EC61;
	Fri, 12 Mar 2021 08:29:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A53731BF59B
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 08:26:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 99D154ED4E
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 08:26:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IgRJXETKMF3C for <devel@linuxdriverproject.org>;
 Fri, 12 Mar 2021 08:26:57 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com
 [IPv6:2a00:1450:4864:20::335])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A6D694ED4F
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 08:26:57 +0000 (UTC)
Received: by mail-wm1-x335.google.com with SMTP id o26so3253925wmc.5
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 00:26:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=DrNQP0RCQwC6/6AcIDUEKMgbwgA4AOEUJHHM8AndxWk=;
 b=rTEKdMtybCUIB3HemfqG5khWn/DHV8PggmTwlDLBpLza2QhlkvCTcysHpOMra4y3ZS
 VynAu83arJImL8IaGVyU6ZKrgHnnBd3ZvfeD+NC1PUDiUC0qm0S8WQDsFjNCo4hutAx1
 jSaU72tlQtEn1/MMJLhrG5U3IB2F8lm6NUcTly+e+7czPebg1ZQgY+MZBAWab/lVfjWG
 aVGfTZ6ekCzJdnKsMNfFjw8E4CfoFMwgpiaTNnojtzHOlViSPWUPcQsKx4I3tf3drrFO
 0EzPExs4akLNq09sf7qgJtc4eF5FIpdrpj2TN28NZKJ8fvHyyCXTO6x4SFgd+DbwhfUY
 50Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DrNQP0RCQwC6/6AcIDUEKMgbwgA4AOEUJHHM8AndxWk=;
 b=jlYxoXC+1cxKnnC7QZMLxqOpvOgJg2pDC+wa3RebZ7LXhrd5ZLkhZccr30z4MIdNMQ
 FRyoE3QlPaINpQVj44DVareompp45XIMLA9kKirRobKM/LuZKWVfWI1/VZANVlld/O/+
 +nNWdLQ1UpaZjHFa1QDwpY6ghcGThVWjg8icn3ya1t0F8/PGL9k3UcAESvVdm5x881n1
 y3PH8NJDYjn99bt/CUw7wL3HJ6xjrX+l0cBMzPTWELGS6AYw4e0wYOBel0dt9mOKLHH9
 pYRAfwaFQ0j0K0A+mkwd8eZpyKd6QlLTl6Qbx/12TA3YGbu3GnBUikvQPKJwwQ2hzBRP
 YEMA==
X-Gm-Message-State: AOAM530bPedRL+eP1zfj1xIwO+F3qPiTgm1hoqCLF4bFoXXo01xd6ydJ
 K++gturDw2eUnzkr2kj2z2c=
X-Google-Smtp-Source: ABdhPJw2pG3E9dNThIyPhxihNakFGt3BS53sZ195dKwGE7Dzt3sw5cgKtt5qb+0PlmRskXbEPc5nnw==
X-Received: by 2002:a7b:cc1a:: with SMTP id f26mr11779340wmh.19.1615537615853; 
 Fri, 12 Mar 2021 00:26:55 -0800 (PST)
Received: from gimli.cesven (93-48-145-141.ip257.fastwebnet.it.
 [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id i8sm7743979wry.90.2021.03.12.00.26.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Mar 2021 00:26:55 -0800 (PST)
From: Marco Cesati <marcocesati@gmail.com>
X-Google-Original-From: Marco Cesati <marco.cesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 13/33] staging: rtl8723bs: remove typedefs in rtw_ht.h
Date: Fri, 12 Mar 2021 09:26:18 +0100
Message-Id: <20210312082638.25512-14-marco.cesati@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210312082638.25512-1-marco.cesati@gmail.com>
References: <20210312082638.25512-1-marco.cesati@gmail.com>
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

This commit fixes the following checkpatch.pl warnings:

    WARNING: do not add new typedefs
    #40: FILE: include/rtw_ht.h:40:
    +typedef enum AGGRE_SIZE {

    WARNING: do not add new typedefs
    #51: FILE: include/rtw_ht.h:51:
    +typedef enum _RT_HT_INF0_CAP {

    WARNING: do not add new typedefs
    #62: FILE: include/rtw_ht.h:62:
    +typedef enum _RT_HT_INF1_CAP {

Signed-off-by: Marco Cesati <marco.cesati@gmail.com>
---
 drivers/staging/rtl8723bs/include/rtw_ht.h | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/rtw_ht.h b/drivers/staging/rtl8723bs/include/rtw_ht.h
index a72f51031f89..bce5bff3b844 100644
--- a/drivers/staging/rtl8723bs/include/rtw_ht.h
+++ b/drivers/staging/rtl8723bs/include/rtw_ht.h
@@ -37,7 +37,7 @@ struct ht_priv {
 
 };
 
-typedef enum AGGRE_SIZE {
+enum AGGRE_SIZE_E {
 	HT_AGG_SIZE_8K = 0,
 	HT_AGG_SIZE_16K = 1,
 	HT_AGG_SIZE_32K = 2,
@@ -46,9 +46,9 @@ typedef enum AGGRE_SIZE {
 	VHT_AGG_SIZE_256K = 5,
 	VHT_AGG_SIZE_512K = 6,
 	VHT_AGG_SIZE_1024K = 7,
-} AGGRE_SIZE_E, *PAGGRE_SIZE_E;
+};
 
-typedef enum _RT_HT_INF0_CAP {
+enum RT_HT_INF0_CAPBILITY {
 	RT_HT_CAP_USE_TURBO_AGGR = 0x01,
 	RT_HT_CAP_USE_LONG_PREAMBLE = 0x02,
 	RT_HT_CAP_USE_AMPDU = 0x04,
@@ -57,13 +57,13 @@ typedef enum _RT_HT_INF0_CAP {
 	RT_HT_CAP_USE_92SE = 0x20,
 	RT_HT_CAP_USE_88C_92C = 0x40,
 	RT_HT_CAP_USE_AP_CLIENT_MODE = 0x80,	/*  AP team request to reserve this bit, by Emily */
-} RT_HT_INF0_CAPBILITY, *PRT_HT_INF0_CAPBILITY;
+};
 
-typedef enum _RT_HT_INF1_CAP {
+enum RT_HT_INF1_CAPBILITY {
 	RT_HT_CAP_USE_VIDEO_CLIENT = 0x01,
 	RT_HT_CAP_USE_JAGUAR_BCUT = 0x02,
 	RT_HT_CAP_USE_JAGUAR_CCUT = 0x04,
-} RT_HT_INF1_CAPBILITY, *PRT_HT_INF1_CAPBILITY;
+};
 
 #define	LDPC_HT_ENABLE_RX			BIT0
 #define	LDPC_HT_ENABLE_TX			BIT1
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

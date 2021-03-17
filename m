Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5935733FAFA
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Mar 2021 23:23:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0301684169;
	Wed, 17 Mar 2021 22:23:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7j_Ee7E_lT8S; Wed, 17 Mar 2021 22:23:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4CA9C84150;
	Wed, 17 Mar 2021 22:23:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 411031BF21A
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 22:21:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A6A144EDDA
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 22:21:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JCqrtN182cNt for <devel@linuxdriverproject.org>;
 Wed, 17 Mar 2021 22:21:26 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com
 [IPv6:2a00:1450:4864:20::631])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D855C4EDD7
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 22:21:25 +0000 (UTC)
Received: by mail-ej1-x631.google.com with SMTP id jy13so817852ejc.2
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 15:21:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=CWQyX2oD9jTObOpuHKviO7NkzNeZ21Kl9r9pKuCXvjU=;
 b=dWatsGiWdE9v/wIaoy9gxHSY9xIqqVLZPEkX/ThY4ZRHPtBabEh6slSHpfB7fGmbhH
 BVCWMPOLtyoGukGr88C4fNcSIpIivWHL3wEI78DI8CULVjSvtB3H2/BYMezU48PMiiQo
 f30pkuny8i3ScJdRfxZVnYUsEUAhTZPoRB/xrMRjL9i2X6z2PcbzWCCo96OQoXVru2Sy
 QAfic185+A6cyHb4fM3QdzSt8oPvnFJ1f6t+HFseHqzBbjNZZQ5IGE6LBC7h1v/mchF3
 vPnVQ3dc17c0hIQWT+0QrAdr67Ij0iGbFZf7LNPCe8LNPDvLf/2c0MgVZlHEfNjM+0Tw
 0EnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=CWQyX2oD9jTObOpuHKviO7NkzNeZ21Kl9r9pKuCXvjU=;
 b=WB21lUauWCGkUy7saeXcS/FqygXnN/EPsiiMZX+N0JjWJ/kDSWBs7h367EoC/GebhE
 0MyNah5bk5ATSEpA7x+y8oRU04HxNk+/fIlB/lCnghkNXEXlcKr2EiWZh4aXVp5spZRU
 Ha4CzMiK19djGzCj0htKKSd8UF0XvhYtfHZd7q/MR7Bq8eh3jViF1YMp+Aq7nW5dXWd7
 t2+bFBtNC9ylonG1CkGDdTBleaeHBdXV68YrHsnroRQjJ8E7EV4r2TR9UxKxUWLHMYVx
 B9YfcPo6zbLalS+72l9g2rlHIMJjrDJWCtDzBiMjzn4XojGuGW3Qne4jyfgVFo5Wathu
 5mIQ==
X-Gm-Message-State: AOAM531Zf6f/ojuOMpQWfflzsR963l7H9IvH+OiFIzY225Vg4kDgA8KJ
 dZnA2pMTU/efL9hFIkjOhHg=
X-Google-Smtp-Source: ABdhPJxIpkwAeM7KD1ORONC/mDPd8QTwydhdBT1bRwpsChQzMiqyzHmxF/Wl/tRcLCp9OmP7rdt4Mg==
X-Received: by 2002:a17:906:c099:: with SMTP id
 f25mr38639290ejz.141.1616019684142; 
 Wed, 17 Mar 2021 15:21:24 -0700 (PDT)
Received: from gimli.home (93-48-145-141.ip257.fastwebnet.it. [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id
 cf4sm104304edb.19.2021.03.17.15.21.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Mar 2021 15:21:23 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 08/43] Staging: rtl8723bs: fix names in rtw_ht.h
Date: Wed, 17 Mar 2021 23:20:55 +0100
Message-Id: <20210317222130.29528-9-marcocesati@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210317222130.29528-1-marcocesati@gmail.com>
References: <20210317222130.29528-1-marcocesati@gmail.com>
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

This commit converts names of structs / enums
in include/rtw_ht.h from ALL_CAPS format to lowercase

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 drivers/staging/rtl8723bs/include/rtw_ht.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/rtw_ht.h b/drivers/staging/rtl8723bs/include/rtw_ht.h
index bce5bff3b844..fb321d20d276 100644
--- a/drivers/staging/rtl8723bs/include/rtw_ht.h
+++ b/drivers/staging/rtl8723bs/include/rtw_ht.h
@@ -37,7 +37,7 @@ struct ht_priv {
 
 };
 
-enum AGGRE_SIZE_E {
+enum aggre_size_e {
 	HT_AGG_SIZE_8K = 0,
 	HT_AGG_SIZE_16K = 1,
 	HT_AGG_SIZE_32K = 2,
@@ -48,7 +48,7 @@ enum AGGRE_SIZE_E {
 	VHT_AGG_SIZE_1024K = 7,
 };
 
-enum RT_HT_INF0_CAPBILITY {
+enum rt_ht_inf0_capbility {
 	RT_HT_CAP_USE_TURBO_AGGR = 0x01,
 	RT_HT_CAP_USE_LONG_PREAMBLE = 0x02,
 	RT_HT_CAP_USE_AMPDU = 0x04,
@@ -59,7 +59,7 @@ enum RT_HT_INF0_CAPBILITY {
 	RT_HT_CAP_USE_AP_CLIENT_MODE = 0x80,	/*  AP team request to reserve this bit, by Emily */
 };
 
-enum RT_HT_INF1_CAPBILITY {
+enum rt_ht_inf1_capbility {
 	RT_HT_CAP_USE_VIDEO_CLIENT = 0x01,
 	RT_HT_CAP_USE_JAGUAR_BCUT = 0x02,
 	RT_HT_CAP_USE_JAGUAR_CCUT = 0x04,
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

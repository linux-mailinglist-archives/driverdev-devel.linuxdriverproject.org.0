Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 095D420B4CC
	for <lists+driverdev-devel@lfdr.de>; Fri, 26 Jun 2020 17:38:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CB0922046F;
	Fri, 26 Jun 2020 15:38:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id o1bwWJWV7HRK; Fri, 26 Jun 2020 15:38:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 62AAE20198;
	Fri, 26 Jun 2020 15:38:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E01B81BF295
 for <devel@linuxdriverproject.org>; Fri, 26 Jun 2020 15:38:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id CB798200E5
 for <devel@linuxdriverproject.org>; Fri, 26 Jun 2020 15:38:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gm63Beoauget for <devel@linuxdriverproject.org>;
 Fri, 26 Jun 2020 15:38:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com
 [209.85.160.193])
 by silver.osuosl.org (Postfix) with ESMTPS id C40F92002E
 for <devel@driverdev.osuosl.org>; Fri, 26 Jun 2020 15:38:28 +0000 (UTC)
Received: by mail-qt1-f193.google.com with SMTP id z2so7779168qts.5
 for <devel@driverdev.osuosl.org>; Fri, 26 Jun 2020 08:38:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=o2Ikny20NfFg5ztOT9jAikHgTETSs1qvvd29P7rUpwk=;
 b=KctYodQaUev1ai4UhpD8v7HeRQ1nE5DkSA/YHk67OSvh1IkDnPE7ajWn/DAeNHOGCF
 fyzEJcP+tALrgcJ1i87NF9E0p320bHQWVwdwErj8didSW50bdbm6bk9VSLoMsfYQJrOP
 yQOjSoYsuW7crDXe2CIJfb/V2TEWMfH0Tih4SBB0XeMjjx5pfjC4FFYtCMA5yzUOq2S2
 b6vSyNV3mg1pziGKybKV/Kyeu25pb6IS5gNGx2rT13Hl2hb3Ng6QSRldjAM8GFjoFr/3
 CE0dg6Dq+JETFSiYejiDyC+/BfnXGL+bQ1OZWugOTHU9Bk1CWsZ8r0FgWEcB/4ILHG4R
 KXYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=o2Ikny20NfFg5ztOT9jAikHgTETSs1qvvd29P7rUpwk=;
 b=X9HdazvOIOf3qTgYcBf42q3j2U2J+sOYZHPTeOeFpIw1J5KM3q9mErdb/L9cnahpCY
 0aJygrVdOJ3RScHc0DCYxSw0GSrS3XL41Qh7/FfIqFqOye8AzceFN96KLXblgSUyIJax
 DySr1zGkuWcll6+k5A+xoXHRpMulgD3otixVHitqQwC7PMthPL4Yplc6UxOgPlEHSqvs
 XxgyKouD+QYApci+8Bmr1pfN09RFP/pPJd5HgnHTSj9nKX1BvtB+taJIujHZUC+Wk4Q0
 Ovr6mxD7abr1FmcLqh0hsSt577vCBJjAQG9EiBJn9oMOsIvZcny8mnXnuXcF5eWI8YM9
 vXOQ==
X-Gm-Message-State: AOAM531ALu7odYEIMPk0M93fAZPCmAqNmmCarbzKCYlD8NQjS5SDJJAa
 kgUyWXVYVKqFdmw0MCF66wQ=
X-Google-Smtp-Source: ABdhPJzqsrT4UOsb4GHqiS3w6FcocsJ90qUR+xiX55JN9a0QBfF1+uiMfkCrKM4mwQvMVWMvzKffsg==
X-Received: by 2002:ac8:6746:: with SMTP id n6mr3421897qtp.307.1593185907777; 
 Fri, 26 Jun 2020 08:38:27 -0700 (PDT)
Received: from mooncell.myfiosgateway.com
 (pool-173-75-208-99.phlapa.fios.verizon.net. [173.75.208.99])
 by smtp.gmail.com with ESMTPSA id y40sm9719918qtc.29.2020.06.26.08.38.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 26 Jun 2020 08:38:27 -0700 (PDT)
From: Brooke Basile <brookebasile@gmail.com>
To: Larry.Finger@lwfinger.net, gregkh@linuxfoundation.org,
 straube.linux@gmail.com, colin.king@canonical.com
Subject: [PATCH 4/4] staging: rtl8188eu: Replace function name with __func__
Date: Fri, 26 Jun 2020 11:36:42 -0400
Message-Id: <20200626153639.8097-4-brookebasile@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200626153639.8097-3-brookebasile@gmail.com>
References: <20200626153639.8097-1-brookebasile@gmail.com>
 <20200626153639.8097-2-brookebasile@gmail.com>
 <20200626153639.8097-3-brookebasile@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Brooke Basile <brookebasile@gmail.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix the following checkpatch warning:
	WARNING: Prefer using '"%s...", __func__' to using 'rtw_get_bcn_info', this function's name, in a string

Signed-off-by: Brooke Basile <brookebasile@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_ieee80211.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_ieee80211.c b/drivers/staging/rtl8188eu/core/rtw_ieee80211.c
index bf6b2fe9735f..0c43c0dcf95c 100644
--- a/drivers/staging/rtl8188eu/core/rtw_ieee80211.c
+++ b/drivers/staging/rtl8188eu/core/rtw_ieee80211.c
@@ -986,10 +986,10 @@ void rtw_get_bcn_info(struct wlan_network *pnetwork)
 		if (bencrypt)
 			pnetwork->BcnInfo.encryp_protocol = ENCRYP_PROTOCOL_WEP;
 	}
-	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("rtw_get_bcn_info: pnetwork->encryp_protocol is %x\n",
-		 pnetwork->BcnInfo.encryp_protocol));
-	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("rtw_get_bcn_info: pnetwork->encryp_protocol is %x\n",
-		 pnetwork->BcnInfo.encryp_protocol));
+	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("%s: pnetwork->encryp_protocol is %x\n",
+		 __func__, pnetwork->BcnInfo.encryp_protocol));
+	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("%s: pnetwork->encryp_protocol is %x\n",
+		 __func__, pnetwork->BcnInfo.encryp_protocol));
 	rtw_get_cipher_info(pnetwork);
 
 	/* get bwmode and ch_offset */
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

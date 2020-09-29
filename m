Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B49127BD2A
	for <lists+driverdev-devel@lfdr.de>; Tue, 29 Sep 2020 08:32:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 903B386700;
	Tue, 29 Sep 2020 06:32:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fj6xK5JjDGGx; Tue, 29 Sep 2020 06:32:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 00E61866E9;
	Tue, 29 Sep 2020 06:32:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id ECC1A1BF2F9
 for <devel@linuxdriverproject.org>; Tue, 29 Sep 2020 06:32:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E97858558A
 for <devel@linuxdriverproject.org>; Tue, 29 Sep 2020 06:32:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ywk2amiD29s1 for <devel@linuxdriverproject.org>;
 Tue, 29 Sep 2020 06:32:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f67.google.com (mail-ej1-f67.google.com
 [209.85.218.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C573985549
 for <devel@driverdev.osuosl.org>; Tue, 29 Sep 2020 06:32:37 +0000 (UTC)
Received: by mail-ej1-f67.google.com with SMTP id nw23so13387568ejb.4
 for <devel@driverdev.osuosl.org>; Mon, 28 Sep 2020 23:32:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3oJmcECA/aWg2+W0uCsnzjhTRbsQ9LfkA10CFN31d7U=;
 b=cIhlxUKSEG+LHkEc1wdy85mJUSOGhnAQRAp5RSjjSvwNsVXnOMhKjrD/tsq8R5CV4F
 ErHNZC585JdBOFFvdj7eW42y7bAc/fB8lHgQQik4var+Jrd0jFbTqoECt20t/bTM5B95
 5YSuXLb/mD0gcR0wLIjgz9DJQrUjMtf2NZ0kuLIRTw8WUTlNFbvqn9Lg7ALzlvJ06gGd
 5oKSQu7C9lKr3lB65OOsEyk2zwoIuzO5vlEhKPQLSk/4e6qJMJsdKtdmbFGf2hV6x7wn
 JbYDR/Y4vzbHUP4rvSrW1yMxJEg1dVgAr1tdphvO5AbLPHhcXRiIP+VedR8y9eD9EiL3
 D3vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3oJmcECA/aWg2+W0uCsnzjhTRbsQ9LfkA10CFN31d7U=;
 b=gu45+PypvCcXEZe1AXYBFTmvn/ugosHtBIG/sm3hjRXI7/6YXsdoqitJTPqPBbQJ76
 1Cgg/HpBsFQzrDjJZpKFjw9ltvMMbVYK+6kyKOKL6UxTcBAGMXSmbOZj68+AJdEsmnww
 O3WDf4muVp3CCs6ZcIZ9lD82A4gH0LcFNaVMnv5MtNYO4ACdpJKXxBJvt0bsaYp24Lho
 bI4/XQ3Gk9lBGZRoVd4KRoX0m5kCP5EXcnUtV8h+7OuEG6t6BahRWVzz2JYq+wTP+GlM
 W5Rkf1jVS/RirvFNb7LM48Y3JfY6DQ7vm+k7Vrlsvr57ZWVM/YsrPwdR13tLlmliDqQ8
 W1Ww==
X-Gm-Message-State: AOAM531Wxe3wcHpBeiVI32OD3B4vzIl4vNm6ek8Xqx6IrrImeJw9OtNs
 HOXfGc073iWW3AJOXQflOrc=
X-Google-Smtp-Source: ABdhPJww4RFJkRuW8bSpYOKBWEddh0CuKbPrMdppQm2/gbtfQCNsMCS0jBzwU+0bTPdQAtqJvnY+Fw==
X-Received: by 2002:a17:906:3c47:: with SMTP id
 i7mr2278093ejg.554.1601361156303; 
 Mon, 28 Sep 2020 23:32:36 -0700 (PDT)
Received: from localhost.localdomain
 (ipservice-092-219-207-039.092.219.pools.vodafone-ip.de. [92.219.207.39])
 by smtp.gmail.com with ESMTPSA id r8sm4730915edy.87.2020.09.28.23.32.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Sep 2020 23:32:35 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 5/8] staging: rtl8188eu: rename struct field bUsed -> used
Date: Tue, 29 Sep 2020 08:28:44 +0200
Message-Id: <20200929062847.23985-5-straube.linux@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200929062847.23985-1-straube.linux@gmail.com>
References: <20200929062847.23985-1-straube.linux@gmail.com>
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

Rename field of struct rt_pmkid_list to avoid camel case.

bUsed -> used

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_mlme.c        | 2 +-
 drivers/staging/rtl8188eu/include/rtw_security.h | 2 +-
 drivers/staging/rtl8188eu/os_dep/ioctl_linux.c   | 6 +++---
 3 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme.c b/drivers/staging/rtl8188eu/core/rtw_mlme.c
index d34d46506b50..668a24f25fce 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme.c
@@ -1672,7 +1672,7 @@ static int SecIsInPMKIDList(struct adapter *Adapter, u8 *bssid)
 	int i = 0;
 
 	do {
-		if ((psecuritypriv->PMKIDList[i].bUsed) &&
+		if ((psecuritypriv->PMKIDList[i].used) &&
 		    (!memcmp(psecuritypriv->PMKIDList[i].bssid, bssid, ETH_ALEN)))
 			break;
 	} while (++i < NUM_PMKID_CACHE);
diff --git a/drivers/staging/rtl8188eu/include/rtw_security.h b/drivers/staging/rtl8188eu/include/rtw_security.h
index 737f1da81f6b..d08a8d8adccf 100644
--- a/drivers/staging/rtl8188eu/include/rtw_security.h
+++ b/drivers/staging/rtl8188eu/include/rtw_security.h
@@ -81,7 +81,7 @@ union Keytype {
 };
 
 struct rt_pmkid_list {
-	u8	bUsed;
+	u8	used;
 	u8	bssid[ETH_ALEN];
 	u8	PMKID[16];
 	u8	SsidBuf[33];
diff --git a/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c b/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
index 9919413b6f7e..8e10462f1fbe 100644
--- a/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
@@ -782,7 +782,7 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
 				/*  BSSID is matched, the same AP => rewrite with new PMKID. */
 				DBG_88E("[%s] BSSID exists in the PMKList.\n", __func__);
 				memcpy(psecuritypriv->PMKIDList[j].PMKID, pPMK->pmkid, IW_PMKID_LEN);
-				psecuritypriv->PMKIDList[j].bUsed = true;
+				psecuritypriv->PMKIDList[j].used = true;
 				psecuritypriv->PMKIDIndex = j + 1;
 				blInserted = true;
 				break;
@@ -797,7 +797,7 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
 			memcpy(psecuritypriv->PMKIDList[psecuritypriv->PMKIDIndex].bssid, strIssueBssid, ETH_ALEN);
 			memcpy(psecuritypriv->PMKIDList[psecuritypriv->PMKIDIndex].PMKID, pPMK->pmkid, IW_PMKID_LEN);
 
-			psecuritypriv->PMKIDList[psecuritypriv->PMKIDIndex].bUsed = true;
+			psecuritypriv->PMKIDList[psecuritypriv->PMKIDIndex].used = true;
 			psecuritypriv->PMKIDIndex++;
 			if (psecuritypriv->PMKIDIndex == 16)
 				psecuritypriv->PMKIDIndex = 0;
@@ -809,7 +809,7 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
 			if (!memcmp(psecuritypriv->PMKIDList[j].bssid, strIssueBssid, ETH_ALEN)) {
 				/*  BSSID is matched, the same AP => Remove this PMKID information and reset it. */
 				eth_zero_addr(psecuritypriv->PMKIDList[j].bssid);
-				psecuritypriv->PMKIDList[j].bUsed = false;
+				psecuritypriv->PMKIDList[j].used = false;
 				break;
 			}
 		}
-- 
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E672125E75B
	for <lists+driverdev-devel@lfdr.de>; Sat,  5 Sep 2020 13:57:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 98FCA86BBB;
	Sat,  5 Sep 2020 11:57:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ca4I5zBohHrI; Sat,  5 Sep 2020 11:57:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B23998693C;
	Sat,  5 Sep 2020 11:57:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 081781BF405
 for <devel@linuxdriverproject.org>; Sat,  5 Sep 2020 11:57:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id F2FD08756D
 for <devel@linuxdriverproject.org>; Sat,  5 Sep 2020 11:57:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P7YUBsFfgj03 for <devel@linuxdriverproject.org>;
 Sat,  5 Sep 2020 11:57:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0DF8C8756B
 for <devel@driverdev.osuosl.org>; Sat,  5 Sep 2020 11:57:34 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id s13so9076682wmh.4
 for <devel@driverdev.osuosl.org>; Sat, 05 Sep 2020 04:57:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=f4aoGFxNszSIUAcbHGuDlBMtXkOLa4x8B3iFVhhfOO8=;
 b=PWYdNE+NkrEnk5G1ea8IxtZb2eUKVlxu/lz5HtaK6VGQ7XedtklWR1ea0nIVkQIaPM
 4nRCXWrLS3/WiTXWVTSaT8RSJ5Y8iGZBJ3/MMAEWWiYBPaD1xzUTVJLCH/DAOklkWInV
 Qi/4qUzTUGaf3qV2Hmgg1ITFXec5HtwSQZ8kMw8gG01Qu37MTCmVmpaDEcj3YEi7k/F7
 pBMCj7iMRWIM499k83tzUx25OCJeItKjcqMop8Ti3l0VcqNlDLa3uoJFjAwIEEIe5SeU
 FzvU+7RclG0DUCKU/o5jzl9lnEcaYFj5LywYo7zRq+oAmmxkBfd5QMxnQPaBZ+JVMUAO
 5HMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=f4aoGFxNszSIUAcbHGuDlBMtXkOLa4x8B3iFVhhfOO8=;
 b=dEfa17KXeovCd7qgXSmMGAKL4cQohbTmJZOG3PIpQVa1v0nkScQa4Lpj4WEMauOTmQ
 Bpb3X/FbiTuxzVFyGquiXSF70B8oVMm6PTqjNzL6Lg6BEPiI6p0cQ7LUGNxBRMtIwusV
 GEKoW0wc+w1kqiTH7AoaVKBV/HpPqjuijCJ/1puvTK9QIhAn1mfDiU9Gh9Gu9Xm/l7rE
 WWt+P4AJvm7ozKdoV6l3yFloAfn7/PnJueiyjTeP/aGoDPR3hA7tr9zlP1TBTLtuMAxh
 DYEZYieN4Xn8x9dvhKD0IzMPFCVGvG/4XT13NKJD2hc4YxDLC/61Zw3sXcgtLz9HfTra
 uV1w==
X-Gm-Message-State: AOAM5308AwZ6B9MunajOTzFhi/t8nKdY2AK5KPkgbTxQg3zV1B6a67ZN
 ShoqMNqjTuzo7aAFORoPUeE=
X-Google-Smtp-Source: ABdhPJwsEVFfVGJILIA8cv1wnvjyfLmYey8Y0tyNh5XX02jhX04pVWvRybUxGEDN8UiM6HgvS7hiCQ==
X-Received: by 2002:a7b:c44b:: with SMTP id l11mr11789966wmi.52.1599307052463; 
 Sat, 05 Sep 2020 04:57:32 -0700 (PDT)
Received: from localhost.localdomain
 (ipservice-092-219-207-123.092.219.pools.vodafone-ip.de. [92.219.207.123])
 by smtp.gmail.com with ESMTPSA id 124sm17517159wmd.31.2020.09.05.04.57.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 05 Sep 2020 04:57:31 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8188eu: clean up whitespace in
 wpa_set_encryption()
Date: Sat,  5 Sep 2020 13:53:58 +0200
Message-Id: <20200905115358.10278-1-straube.linux@gmail.com>
X-Mailer: git-send-email 2.28.0
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

Clean up unnecessary whitespace in wpa_set_encryption() by removing
extra spaces and replacing tabs with spaces. Clears a checkpatch error.

ERROR: space prohibited before that close parenthesis ')'

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8188eu/os_dep/ioctl_linux.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c b/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
index dbcfdd7cae32..77ecf4fe8382 100644
--- a/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
@@ -343,9 +343,9 @@ static int wpa_set_encryption(struct net_device *dev, struct ieee_param *param,
 {
 	int ret = 0;
 	u32 wep_key_idx, wep_key_len, wep_total_len;
-	struct ndis_802_11_wep	 *pwep = NULL;
+	struct ndis_802_11_wep *pwep = NULL;
 	struct adapter *padapter = rtw_netdev_priv(dev);
-	struct mlme_priv	*pmlmepriv = &padapter->mlmepriv;
+	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	struct security_priv *psecuritypriv = &padapter->securitypriv;
 
 	param->u.crypt.err = 0;
@@ -437,11 +437,11 @@ static int wpa_set_encryption(struct net_device *dev, struct ieee_param *param,
 					psta->ieee8021x_blocked = false;
 
 				if ((padapter->securitypriv.ndisencryptstatus == Ndis802_11Encryption2Enabled) ||
-				    (padapter->securitypriv.ndisencryptstatus ==  Ndis802_11Encryption3Enabled))
+				    (padapter->securitypriv.ndisencryptstatus == Ndis802_11Encryption3Enabled))
 					psta->dot118021XPrivacy = padapter->securitypriv.dot11PrivacyAlgrthm;
 
 				if (param->u.crypt.set_tx == 1) { /* pairwise key */
-					memcpy(psta->dot118021x_UncstKey.skey,  param->u.crypt.key, min_t(u16, param->u.crypt.key_len, 16));
+					memcpy(psta->dot118021x_UncstKey.skey, param->u.crypt.key, min_t(u16, param->u.crypt.key_len, 16));
 
 					if (strcmp(param->u.crypt.alg, "TKIP") == 0) { /* set mic key */
 						memcpy(psta->dot11tkiptxmickey.skey, &param->u.crypt.key[16], 8);
@@ -453,7 +453,7 @@ static int wpa_set_encryption(struct net_device *dev, struct ieee_param *param,
 
 					rtw_setstakey_cmd(padapter, (unsigned char *)psta, true);
 				} else { /* group key */
-					memcpy(padapter->securitypriv.dot118021XGrpKey[param->u.crypt.idx].skey,  param->u.crypt.key, min_t(u16, param->u.crypt.key_len, 16 ));
+					memcpy(padapter->securitypriv.dot118021XGrpKey[param->u.crypt.idx].skey, param->u.crypt.key, min_t(u16, param->u.crypt.key_len, 16));
 					memcpy(padapter->securitypriv.dot118021XGrptxmickey[param->u.crypt.idx].skey, &param->u.crypt.key[16], 8);
 					memcpy(padapter->securitypriv.dot118021XGrprxmickey[param->u.crypt.idx].skey, &param->u.crypt.key[24], 8);
 					padapter->securitypriv.binstallGrpkey = true;
@@ -473,7 +473,7 @@ static int wpa_set_encryption(struct net_device *dev, struct ieee_param *param,
 					pbcmc_sta->ieee8021x_blocked = false;
 
 				if ((padapter->securitypriv.ndisencryptstatus == Ndis802_11Encryption2Enabled) ||
-				    (padapter->securitypriv.ndisencryptstatus ==  Ndis802_11Encryption3Enabled))
+				    (padapter->securitypriv.ndisencryptstatus == Ndis802_11Encryption3Enabled))
 					pbcmc_sta->dot118021XPrivacy = padapter->securitypriv.dot11PrivacyAlgrthm;
 			}
 		}
-- 
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CE5F2588DA
	for <lists+driverdev-devel@lfdr.de>; Thu, 27 Jun 2019 19:42:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9E238862B4;
	Thu, 27 Jun 2019 17:42:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vxRKcvztxJsY; Thu, 27 Jun 2019 17:42:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 14BDC85FB2;
	Thu, 27 Jun 2019 17:42:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C1BC11BF3F9
 for <devel@linuxdriverproject.org>; Thu, 27 Jun 2019 17:41:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id BE5D985DDC
 for <devel@linuxdriverproject.org>; Thu, 27 Jun 2019 17:41:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9FHVOcmubPSi for <devel@linuxdriverproject.org>;
 Thu, 27 Jun 2019 17:41:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 424FE85429
 for <devel@driverdev.osuosl.org>; Thu, 27 Jun 2019 17:41:55 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id k8so1681890plt.3
 for <devel@driverdev.osuosl.org>; Thu, 27 Jun 2019 10:41:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=2VYDCnCkjTc4D1Rc+1yi7URn+GvuL8YDs5hLnh987G4=;
 b=PeqMnVa90eH6XmW4Pwsb1MXiobPzsonXWvpMiumT1y2ej23Ow+SoW62w2O/LDbeO1e
 3h1DOn9wKWrO5nmTyyVmso448pE11L8us2+8iCzL/7A1aO3jxIxznGrXNdl46RhED/A+
 j4pOnE2yggAaQFq2Yv6FiPvuNC1PrcGRl0tdgfpSMjSsvIVaaOIkA+7I4hyiLaI6Twsa
 EKUj4NTKisERy29J50AR4MqEybp12UGPbYKAT1/hBLmbwlLZ0OXQt7MOk89G53T0OkR5
 cPnJYlUlSPDxgkzaXmQMW6OwAjnUmqAUYW6aIhZmyLL7nKZ73H4RHzhfYYIc1BHA2z4r
 tu6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=2VYDCnCkjTc4D1Rc+1yi7URn+GvuL8YDs5hLnh987G4=;
 b=ook91zYpx9BTjEab6OlTai59Ixq7/k6nPthv2tqinmhpzfHiXv1F2iv97gulyWks4G
 SmWbr4YnqZotLcva+HaqV5QEFmozw281pCJg8Rp/gPn3JkOIOpMTRU9dRqLfD55Xz6+S
 b1PK26QeiaXE3x1qDCFN2RUAaWvxep0NKLD/j5NxVoJXlSBOruKJ5VHGktXnWc/6YmCv
 1m6pH/jycstKtin6W7WdYL9xdPlYAK1rrgOQYXr85tOOqCvd+F+apUJYcH1KSYK/mmyw
 rgi2kvhLM73ye7D7JsAuFGRyRTat1QjtOzeY9So49d4QwjLM3vciL/GG4ojFOpKe64EN
 xYbA==
X-Gm-Message-State: APjAAAX9lMH+Kv0VZ9y3/iRkolBDM93M3P/+en1+mx42hoNT0iaVh+qH
 bWZ+u5a3x/2TyoRfrgptXzk=
X-Google-Smtp-Source: APXvYqzy/YIr9pHDGrFuSAuRUcPDT3AJwGJ65uBsd/zz3swNtVS7UMhIo+cnDoLJAxvfN4wspOSY3w==
X-Received: by 2002:a17:902:2ec5:: with SMTP id
 r63mr5946757plb.21.1561657314951; 
 Thu, 27 Jun 2019 10:41:54 -0700 (PDT)
Received: from hfq-skylake.ipads-lab.se.sjtu.edu.cn ([202.120.40.82])
 by smtp.googlemail.com with ESMTPSA id l44sm5656206pje.29.2019.06.27.10.41.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 27 Jun 2019 10:41:54 -0700 (PDT)
From: Fuqian Huang <huangfq.daxian@gmail.com>
To: 
Subject: [PATCH 48/87] rtl8723bs: os_dep: replace rtw_malloc and memset with
 rtw_zmalloc
Date: Fri, 28 Jun 2019 01:41:44 +0800
Message-Id: <20190627174147.4504-1-huangfq.daxian@gmail.com>
X-Mailer: git-send-email 2.11.0
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
Cc: devel@driverdev.osuosl.org, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Omer Efrat <omer.efrat@tandemg.com>,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 Jia-Ju Bai <baijiaju1990@gmail.com>,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 Mamta Shukla <mamtashukla555@gmail.com>,
 Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>,
 Emanuel Bennici <benniciemanuel78@gmail.com>,
 Fuqian Huang <huangfq.daxian@gmail.com>, Wen Yang <wen.yang99@zte.com.cn>,
 Larry Finger <Larry.Finger@lwfinger.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

rtw_malloc + memset(0) -> rtw_zmalloc

Signed-off-by: Fuqian Huang <huangfq.daxian@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c |  8 ++------
 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c    | 12 +++---------
 2 files changed, 5 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
index db553f2e4c0b..f8e0723f5d1f 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
@@ -1078,12 +1078,10 @@ static int cfg80211_rtw_add_key(struct wiphy *wiphy, struct net_device *ndev,
 	DBG_871X("pairwise =%d\n", pairwise);
 
 	param_len = sizeof(struct ieee_param) + params->key_len;
-	param = rtw_malloc(param_len);
+	param = rtw_zmalloc(param_len);
 	if (param == NULL)
 		return -1;
 
-	memset(param, 0, param_len);
-
 	param->cmd = IEEE_CMD_SET_ENCRYPTION;
 	memset(param->sta_addr, 0xff, ETH_ALEN);
 
@@ -2167,15 +2165,13 @@ static int cfg80211_rtw_connect(struct wiphy *wiphy, struct net_device *ndev,
 		{
 			wep_key_len = wep_key_len <= 5 ? 5 : 13;
 			wep_total_len = wep_key_len + FIELD_OFFSET(struct ndis_802_11_wep, KeyMaterial);
-			pwep = rtw_malloc(wep_total_len);
+			pwep = rtw_zmalloc(wep_total_len);
 			if (pwep == NULL) {
 				DBG_871X(" wpa_set_encryption: pwep allocate fail !!!\n");
 				ret = -ENOMEM;
 				goto exit;
 			}
 
-			memset(pwep, 0, wep_total_len);
-
 			pwep->KeyLength = wep_key_len;
 			pwep->Length = wep_total_len;
 
diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index e3d356952875..1491d420929c 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -478,14 +478,12 @@ static int wpa_set_encryption(struct net_device *dev, struct ieee_param *param,
 		if (wep_key_len > 0) {
 			wep_key_len = wep_key_len <= 5 ? 5 : 13;
 			wep_total_len = wep_key_len + FIELD_OFFSET(struct ndis_802_11_wep, KeyMaterial);
-			pwep = rtw_malloc(wep_total_len);
+			pwep = rtw_zmalloc(wep_total_len);
 			if (pwep == NULL) {
 				RT_TRACE(_module_rtl871x_ioctl_os_c, _drv_err_, (" wpa_set_encryption: pwep allocate fail !!!\n"));
 				goto exit;
 			}
 
-			memset(pwep, 0, wep_total_len);
-
 			pwep->KeyLength = wep_key_len;
 			pwep->Length = wep_total_len;
 
@@ -2144,12 +2142,10 @@ static int rtw_wx_set_enc_ext(struct net_device *dev,
 	int ret = 0;
 
 	param_len = sizeof(struct ieee_param) + pext->key_len;
-	param = rtw_malloc(param_len);
+	param = rtw_zmalloc(param_len);
 	if (param == NULL)
 		return -1;
 
-	memset(param, 0, param_len);
-
 	param->cmd = IEEE_CMD_SET_ENCRYPTION;
 	memset(param->sta_addr, 0xff, ETH_ALEN);
 
@@ -3522,14 +3518,12 @@ static int rtw_set_encryption(struct net_device *dev, struct ieee_param *param,
 		if (wep_key_len > 0) {
 			wep_key_len = wep_key_len <= 5 ? 5 : 13;
 			wep_total_len = wep_key_len + FIELD_OFFSET(struct ndis_802_11_wep, KeyMaterial);
-			pwep = rtw_malloc(wep_total_len);
+			pwep = rtw_zmalloc(wep_total_len);
 			if (pwep == NULL) {
 				DBG_871X(" r871x_set_encryption: pwep allocate fail !!!\n");
 				goto exit;
 			}
 
-			memset(pwep, 0, wep_total_len);
-
 			pwep->KeyLength = wep_key_len;
 			pwep->Length = wep_total_len;
 
-- 
2.11.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

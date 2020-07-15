Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D51422117A
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 Jul 2020 17:47:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3CFCD8AD13;
	Wed, 15 Jul 2020 15:47:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uj1iRm+Mc+Ce; Wed, 15 Jul 2020 15:47:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 881938AABD;
	Wed, 15 Jul 2020 15:47:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3CCD81BF349
 for <devel@linuxdriverproject.org>; Wed, 15 Jul 2020 15:47:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 38B9E8B60D
 for <devel@linuxdriverproject.org>; Wed, 15 Jul 2020 15:47:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5SRI5UvXu3fX for <devel@linuxdriverproject.org>;
 Wed, 15 Jul 2020 15:47:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8BF658B604
 for <devel@driverdev.osuosl.org>; Wed, 15 Jul 2020 15:47:06 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id x8so2542866plm.10
 for <devel@driverdev.osuosl.org>; Wed, 15 Jul 2020 08:47:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=sLH6sJiQXmgSukJgX8/DO69X96LYF+NzNLc7t6L2/Sg=;
 b=uAmWLwE/X7tejts48oDLWu0N6J93qGudNux6Py3WgedC2uNFNKbkxWa4xcuJj8DSNJ
 WCmMZk7dNnRWhN8uwqZsSYcpSXoq2ffwYgs1/2uwBDpmB2OM3EWvKDeS/CGdwcwd/qkN
 2y9RqYoC3ANMVx2b4g20hxXBH/jgNBuiZ3oQOljHnsWA7JF3/m2eMeA4hDCq71NYJtY7
 zw4on+IR8Rs9jUyRk+NpBkFyjF/iZawih3U0wO8Z/VpTlk8LfeBsfOP0gyfQJGfxvqvm
 88uude+3Opu9bwq/gsHcN0Z5KYVj/rBh4zq0sjSiWMQkZWsCPo2KYdkBF4lctkwU4JIi
 xIVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=sLH6sJiQXmgSukJgX8/DO69X96LYF+NzNLc7t6L2/Sg=;
 b=EC/3GBD1iHQGS0u84/0hXZlraLmhvcf0AahpkX9PktE4dpV1cOxaUCKVjtrOmKW1Z5
 Wei5QR4WI+StNhJWN8iw6aczcMKk6T3s1I67K8AIXVXLDFp90h6cVJAx9SfSFHOVZBy/
 sl4SUcXc+C8w71qPrChLGF4nW1lt1yhFXyX9NY1Mj7wPU/7zeiF270Dtwl5JMLhbZS1N
 1Zeuc0QTCSFhhMWFB1R86jMSWGrR4vHDEdOHhiGRGcsD7UrPpCkWFg6Pbc+VgbMZFVQh
 e/EODFv9LwmDINs0PHYC6KT0olW412GjNvNb66yWVOpoLZe8bFk6mY1FzrX3R9FCeKvu
 PqZQ==
X-Gm-Message-State: AOAM532pT+EF6NxCdaCQM+7BKT463118RtmyNomF3Xm7mhLDOABWAsoG
 LHwfPhCsdBoWKgUoLk0+Jg8=
X-Google-Smtp-Source: ABdhPJxxYu7No5w89yfleDz0iprY6cdSbOIG/ccb39GlpAwOINaCRTj9MkoTwMfKq+GPxG/gu1MM0g==
X-Received: by 2002:a17:902:680c:: with SMTP id
 h12mr99767plk.142.1594828026116; 
 Wed, 15 Jul 2020 08:47:06 -0700 (PDT)
Received: from arpitha-Inspiron-7570.lan ([49.206.11.188])
 by smtp.gmail.com with ESMTPSA id g26sm2446064pfq.205.2020.07.15.08.47.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Jul 2020 08:47:05 -0700 (PDT)
From: Arpitha Raghunandan <98.arpi@gmail.com>
To: Larry.Finger@lwfinger.net, gregkh@linuxfoundation.org,
 puranjay12@gmail.com, yepeilin.cs@gmail.com
Subject: [PATCH v3] staging: rtl8188eu: core: fix coding style issues
Date: Wed, 15 Jul 2020 21:16:23 +0530
Message-Id: <20200715154623.78315-1-98.arpi@gmail.com>
X-Mailer: git-send-email 2.25.1
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
Cc: devel@driverdev.osuosl.org, Arpitha Raghunandan <98.arpi@gmail.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixing WARNING: Prefer using '"%s...", __func__' to using 'function_name'
in a string in rtw_ioctl_set.c

Signed-off-by: Arpitha Raghunandan <98.arpi@gmail.com>
---
Changes v2->v3:
- Added information about what changed from previous versions
Changes v1->v2:
- Added full name in From and Signed-off-by

 drivers/staging/rtl8188eu/core/rtw_ioctl_set.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_ioctl_set.c b/drivers/staging/rtl8188eu/core/rtw_ioctl_set.c
index 9cc77ab4fd6b..fa88e8b2852d 100644
--- a/drivers/staging/rtl8188eu/core/rtw_ioctl_set.c
+++ b/drivers/staging/rtl8188eu/core/rtw_ioctl_set.c
@@ -44,12 +44,12 @@ u8 rtw_do_join(struct adapter *padapter)
 
 		if (!pmlmepriv->LinkDetectInfo.bBusyTraffic ||
 		    pmlmepriv->to_roaming > 0) {
-			RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_info_, ("rtw_do_join(): site survey if scanned_queue is empty\n."));
+			RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_info_, ("%s: site survey if scanned_queue is empty\n.", __func__));
 			/*  submit site_survey_cmd */
 			ret = rtw_sitesurvey_cmd(padapter, &pmlmepriv->assoc_ssid, 1, NULL, 0);
 			if (ret != _SUCCESS) {
 				pmlmepriv->to_join = false;
-				RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_err_, ("rtw_do_join(): site survey return error\n."));
+				RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_err_, ("%s: site survey return error\n.", __func__));
 			}
 		} else {
 			pmlmepriv->to_join = false;
@@ -313,7 +313,7 @@ u8 rtw_set_802_11_infrastructure_mode(struct adapter *padapter,
 	enum ndis_802_11_network_infra *pold_state = &cur_network->network.InfrastructureMode;
 
 	RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_notice_,
-		 ("+rtw_set_802_11_infrastructure_mode: old =%d new =%d fw_state = 0x%08x\n",
+		 ("+%s: old =%d new =%d fw_state = 0x%08x\n", __func__,
 		  *pold_state, networktype, get_fwstate(pmlmepriv)));
 
 	if (*pold_state != networktype) {
@@ -496,7 +496,7 @@ u8 rtw_set_802_11_add_wep(struct adapter *padapter, struct ndis_802_11_wep *wep)
 		break;
 	}
 	RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_info_,
-		 ("rtw_set_802_11_add_wep:before memcpy, wep->KeyLength = 0x%x wep->KeyIndex = 0x%x  keyid =%x\n",
+		 ("%s:before memcpy, wep->KeyLength = 0x%x wep->KeyIndex = 0x%x  keyid =%x\n", __func__,
 		 wep->KeyLength, wep->KeyIndex, keyid));
 
 	memcpy(&psecuritypriv->dot11DefKey[keyid].skey[0],
@@ -507,7 +507,7 @@ u8 rtw_set_802_11_add_wep(struct adapter *padapter, struct ndis_802_11_wep *wep)
 	psecuritypriv->dot11PrivacyKeyIndex = keyid;
 
 	RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_info_,
-		 ("rtw_set_802_11_add_wep:security key material : %x %x %x %x %x %x %x %x %x %x %x %x %x\n",
+		 ("%s:security key material : %x %x %x %x %x %x %x %x %x %x %x %x %x\n", __func__,
 		 psecuritypriv->dot11DefKey[keyid].skey[0],
 		 psecuritypriv->dot11DefKey[keyid].skey[1],
 		 psecuritypriv->dot11DefKey[keyid].skey[2],
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

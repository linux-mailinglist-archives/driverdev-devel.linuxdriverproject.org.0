Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4945220F35
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 Jul 2020 16:28:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6AF498AE67;
	Wed, 15 Jul 2020 14:28:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rc-K8j0pqOGy; Wed, 15 Jul 2020 14:28:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C6E358AD47;
	Wed, 15 Jul 2020 14:28:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6206B1BF846
 for <devel@linuxdriverproject.org>; Wed, 15 Jul 2020 14:28:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5370589684
 for <devel@linuxdriverproject.org>; Wed, 15 Jul 2020 14:28:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XW4bBMoZNLpF for <devel@linuxdriverproject.org>;
 Wed, 15 Jul 2020 14:28:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BCCD68967E
 for <devel@driverdev.osuosl.org>; Wed, 15 Jul 2020 14:28:08 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id b9so2463497plx.6
 for <devel@driverdev.osuosl.org>; Wed, 15 Jul 2020 07:28:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=KBeNhu4r9ct33AD8nCJXuATCP+neQ9VRMXlPD66LODI=;
 b=bJ+tC554X0Z6XqwKuLjItvQCNuXil4sEPt5/kcK+5lquxGsA5DfrMx926ECsIDfxoe
 2fg8PqXxt9DdZ/rhAsVjkO6be9/BOqmLIITSoueABAs8Yd1VFtFV12kaezh/4oQXQzSI
 zsZEEip04dcCec0GwMCWnXXCvju1HDFr3GPnwKKa2P3Wo0LPitr5hEHkJhlqyoac9w4u
 ncKmJbGO/6EjmhaDgGtR7r2dNdVwgYw3qIB4sz4usgkeo9dJO6lrPRPiFKxcTusgDDbq
 TreOYCTOgHker/rRu+jzmdz7kehDXAZgMx3Gjm3JzS7f8ZAZ8BaW8wxk0I8RIYQw0F+I
 zbKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=KBeNhu4r9ct33AD8nCJXuATCP+neQ9VRMXlPD66LODI=;
 b=PBQau+kzV4vnXtw+bTJIAFsHftCTubbsNuP0puknJ/8eTFjw48izm+lk1GwLqICarl
 dFbPv4Ga5wWatfLlXF85LAk2TAC8mZNRorxGukg6coKvd9FyHNYG8+sgNpcNCRuANT+T
 ZOaXw+cr86Jy3Jt+ok26vL7vfCwEWoDdBgxsf12O80zMcb9uZgrzB07qRNmgqsm63gEu
 WaVlvU8lDfNJ3xth+brB8mUqC/gVCRFpMoqDO4BHoSGqrykwz887NNoCJwac0BSDr95S
 1ccI/L3YbrPaN9s90JeUCgt2QpiynRAFGvtcGDVnWoMHzzVJyeFzfgnlHxNWazL2RvRM
 NKLg==
X-Gm-Message-State: AOAM5337LzMlkcd1P3wK2vFzSFanrhCNbh64JEaQ3Pyzl8urKuy9sV3/
 FjJan7fj8ZZFo4ohiZiLB9Y=
X-Google-Smtp-Source: ABdhPJx/jqAj8OJkuIeTpRWjFpTG7mKBnmmil4xsrr7Uid+wQiSPt/pDI30z7NJCu4rLwQ8BpHppxg==
X-Received: by 2002:a17:90b:4a06:: with SMTP id
 kk6mr10302117pjb.186.1594823288335; 
 Wed, 15 Jul 2020 07:28:08 -0700 (PDT)
Received: from arpitha-Inspiron-7570.lan ([49.206.11.188])
 by smtp.gmail.com with ESMTPSA id ji2sm2335989pjb.1.2020.07.15.07.28.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Jul 2020 07:28:07 -0700 (PDT)
From: Arpitha Raghunandan <98.arpi@gmail.com>
To: Larry.Finger@lwfinger.net, gregkh@linuxfoundation.org,
 puranjay12@gmail.com, yepeilin.cs@gmail.com
Subject: [PATCH v2] staging: rtl8188eu: core: fix coding style issues
Date: Wed, 15 Jul 2020 19:57:10 +0530
Message-Id: <20200715142710.76205-1-98.arpi@gmail.com>
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

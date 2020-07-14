Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B98B220003
	for <lists+driverdev-devel@lfdr.de>; Tue, 14 Jul 2020 23:27:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 25DA587A88;
	Tue, 14 Jul 2020 21:27:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LPi7KJd4AOBK; Tue, 14 Jul 2020 21:27:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D895987A4C;
	Tue, 14 Jul 2020 21:27:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C32831BF362
 for <devel@linuxdriverproject.org>; Tue, 14 Jul 2020 21:27:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BFB4189973
 for <devel@linuxdriverproject.org>; Tue, 14 Jul 2020 21:27:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id crvC3DSQQ7-5 for <devel@linuxdriverproject.org>;
 Tue, 14 Jul 2020 21:27:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f68.google.com (mail-pj1-f68.google.com
 [209.85.216.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3D43A8995D
 for <devel@driverdev.osuosl.org>; Tue, 14 Jul 2020 21:27:05 +0000 (UTC)
Received: by mail-pj1-f68.google.com with SMTP id cm21so7790pjb.3
 for <devel@driverdev.osuosl.org>; Tue, 14 Jul 2020 14:27:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VQGQidYI0HuOTJB5SyluznwAshWCGJHDKysMMkUDPn4=;
 b=ZS6AcdqKzLWc3bUzqs3TEDBMIlFYbIkPNHSbBeDM3U/3BJMaKti7q73i7A2usl3gqD
 x/3AhLYZGMSCE2xdZFhfopvEZGLkImAUfTAwlT70/mgJeW7FDYCjQZaaybi6poymMScf
 7DKMmtz1w29yQodxqGxZrD6NYXuSj4hBC7/Klw8numcOagIldTz7zvROVMGgUllyel47
 Tm/Pllyhw2K7y47phPHFf7QL2EIeS+o1+rE6IvgbaRCxotIY3HZjQdDwswWYEzISiAIQ
 Ti34Klj0UhRY3Hu+7O2y88OPqm1nRGurEJI7Qd+IWwLlEYnH9BLqEVPKPPpSgYBv2Ak4
 IDbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VQGQidYI0HuOTJB5SyluznwAshWCGJHDKysMMkUDPn4=;
 b=MCFeHTcX+HmHgyeMD04GR8dJoTqArxRAP981rgpM2mfWDgpNVBDwj/4dGdDUOsuWgW
 zTXbkuijiXV5V2LV72Y4WGP3m0pnpCGPG/yIwKTrq0A78HJ4MmFwhXgpbCZIOt99owcT
 gYx8gWeQvHzSgPyjFzqUZyHNjdKqn0srzOpO7P55B4gaJKrQnVFaJX9fRqGdIRhXr2X2
 qa8ZBoqMZhgQmboKziwpHWzIjQ8yuPrAYnkAyP0CnsEk/AHh9pJM1p7A7l5DJDPFRMPL
 F5nIphijynikYftMJrAZnNvB9svmDaecUE0U4t9tYYzdRJjDlacADFeETDWtQzEXwYKo
 4AGw==
X-Gm-Message-State: AOAM531m9JEE4qFWWRz+Eyl8CWU6w4QUNB/bn73MxKgGH8rF2M/rvVLP
 6KdemF6mXK39kkxoyjgWFnA=
X-Google-Smtp-Source: ABdhPJwWT1SaRmSOH2iD3vjhVUNof8OdjC75JYNDBceQLWgdCplk5YYEca45LTvYmpfMdRwDlpiolw==
X-Received: by 2002:a17:90a:c003:: with SMTP id
 p3mr6678167pjt.120.1594762024854; 
 Tue, 14 Jul 2020 14:27:04 -0700 (PDT)
Received: from arpitha-Inspiron-7570.lan ([49.206.11.188])
 by smtp.gmail.com with ESMTPSA id np5sm31274pjb.43.2020.07.14.14.27.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Jul 2020 14:27:04 -0700 (PDT)
From: Arpitha <98.arpi@gmail.com>
To: Larry.Finger@lwfinger.net, gregkh@linuxfoundation.org,
 puranjay12@gmail.com, yepeilin.cs@gmail.com
Subject: [PATCH] staging: rtl8188eu: core: fix coding style issues
Date: Wed, 15 Jul 2020 02:55:59 +0530
Message-Id: <20200714212559.57584-1-98.arpi@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Arpitha <98.arpi@gmail.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixing WARNING: Prefer using '"%s...", __func__' to using 'function_name'
in a string in rtw_ioctl_set.c

Signed-off-by: Arpitha <98.arpi@gmail.com>
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

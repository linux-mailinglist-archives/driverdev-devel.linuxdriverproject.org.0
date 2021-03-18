Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EC10F3408E2
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Mar 2021 16:28:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7861B842B1;
	Thu, 18 Mar 2021 15:28:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kvFB90lxgWzu; Thu, 18 Mar 2021 15:28:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 940DA8428D;
	Thu, 18 Mar 2021 15:28:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 938A71BF341
 for <devel@linuxdriverproject.org>; Thu, 18 Mar 2021 15:27:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9046D6FA27
 for <devel@linuxdriverproject.org>; Thu, 18 Mar 2021 15:27:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mbk-gFAnzTt6 for <devel@linuxdriverproject.org>;
 Thu, 18 Mar 2021 15:27:11 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com
 [IPv6:2a00:1450:4864:20::433])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BCC456064D
 for <devel@driverdev.osuosl.org>; Thu, 18 Mar 2021 15:27:10 +0000 (UTC)
Received: by mail-wr1-x433.google.com with SMTP id v11so5969008wro.7
 for <devel@driverdev.osuosl.org>; Thu, 18 Mar 2021 08:27:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=cuXuquJSPXh4uSZyOAEbuoqGCSemWYbmYBGp6zbceho=;
 b=A8a8iRiLdgIRExwuI1wmNUd/SlhxoOpwOi2niPev2pFifFcP/jH7I5sEWAwjRyAh7i
 7zEcW4xq2VrntqI40p5G5VvdDJ5CTXLDGiUJJjgcRvexuTB8foAdfp9VNVf+VpHO5Upr
 LWeYF82urRYb1e8hi5dbYemhHcVVpl9A5nr/4cnLXv/sI1Zvh1EJeZVplQipdn4VatVl
 w8NTihfhrqwAWUkcwk3Eh3eDDAyf2IlqcAYgpa6OtRItyNuHvMpAS82/DcOyeRfo2cYm
 SnLAWw7GgY64HYe1d54e0iDM9xB/4oKkHivsn7r3Dp7dVQS3PGgf8q1zVnQ+ATNSuXKW
 unVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=cuXuquJSPXh4uSZyOAEbuoqGCSemWYbmYBGp6zbceho=;
 b=AZ8YF3C4CmA/ctr/RqP6sdsOPQQW7FhTcrmRTkYnDAKiIKxCBbMBFOiKMb+O0QCzuW
 WP2edSW22eq5envKcYqDIfIoGyURWO99ChD08X/9BGXo+yiOojqg0IwBjE4+ypKgGxGA
 A8XEkujNE2psXcf2vPrv6sFsPU/w271qighOs5WSOq92sNQNI9D4Mx81IPltfzW+wepS
 YVEEED4yGDobgEG3LIP9z+ZD4dWb93DcAX556HfAhI9rRBXMPolVKTfTyTUUqtzdOCVw
 5cGZfNQ/J/5STbP7QDZbFOLEHS5b6ECy9THEELgtiGRw3F3lJ8YTQgWyY2Al85aBw9sc
 4R2w==
X-Gm-Message-State: AOAM530n3AYgeXX4DOg1cm47N5ZS9Io30cItSj7+GOkAw6AaXiZtLabB
 Li2cvyuPxk4iTuTOEhonxGP1yetz8tqcog==
X-Google-Smtp-Source: ABdhPJx7DsRfXOoojfNtACF9jRIonP2Hbfg6ICex5wPgjk205f8KCw4Nx8rWrZ4fspIfF7D8PdtYig==
X-Received: by 2002:adf:a3d3:: with SMTP id m19mr10470550wrb.24.1616081229161; 
 Thu, 18 Mar 2021 08:27:09 -0700 (PDT)
Received: from agape ([151.46.162.59])
 by smtp.gmail.com with ESMTPSA id c16sm4179827wrs.81.2021.03.18.08.27.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Mar 2021 08:27:08 -0700 (PDT)
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 10/15] staging: rtl8723bs: remove unnecessary logging in
 hal/rtl8723b_cmd.c
Date: Thu, 18 Mar 2021 16:26:05 +0100
Message-Id: <20210318152610.16758-11-fabioaiuto83@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210318152610.16758-1-fabioaiuto83@gmail.com>
References: <YFMb+7jjmj7Oty8B@kroah.com>
 <20210318152610.16758-1-fabioaiuto83@gmail.com>
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
 Fabio Aiuto <fabioaiuto83@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

fix the following checkpatch.pl issues:

WARNING: Unnecessary ftrace-like logging - prefer using ftrace
129: FILE: drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c:129:
+	/* DBG_871X("%s\n", __func__); */
--
WARNING: Unnecessary ftrace-like logging - prefer using ftrace
222: FILE: drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c:222:
+	/* DBG_871X("%s\n", __func__); */
--
WARNING: Unnecessary ftrace-like logging - prefer using ftrace
329: FILE: drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c:329:
+	/* DBG_871X("%s\n", __func__); */
--
WARNING: Unnecessary ftrace-like logging - prefer using ftrace
696: FILE: drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c:696:
+	DBG_871X("%s()\n", __func__);
--
WARNING: Unnecessary ftrace-like logging - prefer using ftrace
794: FILE: drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c:794:
+	/* DBG_871X("%s---->\n", __func__); */
--
WARNING: Unnecessary ftrace-like logging - prefer using ftrace
965: FILE: drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c:965:
+	/* DBG_871X("%s---->\n", __func__); */

Signed-off-by: Fabio Aiuto <fabioaiuto83@gmail.com>
---
 drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c | 13 -------------
 1 file changed, 13 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c b/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
index 61fd643c244f..f6c191863747 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
@@ -125,9 +125,6 @@ static void ConstructBeacon(struct adapter *padapter, u8 *pframe, u32 *pLength)
 	struct wlan_bssid_ex *cur_network = &(pmlmeinfo->network);
 	u8 bc_addr[] = {0xff, 0xff, 0xff, 0xff, 0xff, 0xff};
 
-
-	/* DBG_871X("%s\n", __func__); */
-
 	pwlanhdr = (struct ieee80211_hdr *)pframe;
 
 	fctrl = &(pwlanhdr->frame_control);
@@ -219,8 +216,6 @@ static void ConstructPSPoll(struct adapter *padapter, u8 *pframe, u32 *pLength)
 	struct mlme_ext_priv *pmlmeext = &(padapter->mlmeextpriv);
 	struct mlme_ext_info *pmlmeinfo = &(pmlmeext->mlmext_info);
 
-	/* DBG_871X("%s\n", __func__); */
-
 	pwlanhdr = (struct ieee80211_hdr *)pframe;
 
 	/*  Frame control. */
@@ -326,8 +321,6 @@ static void ConstructProbeRsp(struct adapter *padapter, u8 *pframe, u32 *pLength
 	uint wps_ielen;
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 
-	/* DBG_871X("%s\n", __func__); */
-
 	pwlanhdr = (struct ieee80211_hdr *)pframe;
 
 	mac = myid(&(padapter->eeprompriv));
@@ -692,9 +685,6 @@ void rtl8723b_set_FwPsTuneParam_cmd(struct adapter *padapter)
 void rtl8723b_set_FwPwrModeInIPS_cmd(struct adapter *padapter, u8 cmd_param)
 {
 	/* BIT0:enable, BIT1:NoConnect32k */
-
-	DBG_871X("%s()\n", __func__);
-
 	FillH2CCmd8723B(padapter, H2C_8723B_FWLPS_IN_IPS_, 1, &cmd_param);
 }
 
@@ -791,8 +781,6 @@ static void rtl8723b_set_FwRsvdPagePkt(
 
 	struct RSVDPAGE_LOC RsvdPageLoc;
 
-	/* DBG_871X("%s---->\n", __func__); */
-
 	pxmitpriv = &padapter->xmitpriv;
 	pmlmeext = &padapter->mlmeextpriv;
 	pmlmeinfo = &pmlmeext->mlmext_info;
@@ -962,7 +950,6 @@ static void rtl8723b_set_AP_FwRsvdPagePkt(
 	u32 TotalPacketLen = 0, MaxRsvdPageBufSize = 0;
 	struct RSVDPAGE_LOC RsvdPageLoc;
 
-	/* DBG_871X("%s---->\n", __func__); */
 	DBG_8192C("+" FUNC_ADPT_FMT ": iface_type =%d\n",
 		FUNC_ADPT_ARG(padapter), get_iface_type(padapter));
 
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

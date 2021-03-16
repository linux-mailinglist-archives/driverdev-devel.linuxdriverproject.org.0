Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B08233D773
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Mar 2021 16:31:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id F0C5B431A6;
	Tue, 16 Mar 2021 15:31:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lHkLoBqcNg5A; Tue, 16 Mar 2021 15:31:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 58AD342FC0;
	Tue, 16 Mar 2021 15:30:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DB4161BF301
 for <devel@linuxdriverproject.org>; Tue, 16 Mar 2021 15:30:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C85464ED55
 for <devel@linuxdriverproject.org>; Tue, 16 Mar 2021 15:30:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n7HMpPXP9Zia for <devel@linuxdriverproject.org>;
 Tue, 16 Mar 2021 15:30:48 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com
 [IPv6:2a00:1450:4864:20::330])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DD4864EC80
 for <devel@driverdev.osuosl.org>; Tue, 16 Mar 2021 15:30:47 +0000 (UTC)
Received: by mail-wm1-x330.google.com with SMTP id
 m20-20020a7bcb940000b029010cab7e5a9fso1687083wmi.3
 for <devel@driverdev.osuosl.org>; Tue, 16 Mar 2021 08:30:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=vuIwBRbiam1ooCxdpqGgCQL+gzZRk+zauspKrWZZM/U=;
 b=kne1wwX6KHZRnoiTuOuyDuIoNiX0l8vApMYayO26ZrcQ84F5QRw94ZsHlEKrmIcNmv
 ujDUT0fY7Jjs1zPPVtmLKawQfIVMQs9EhvGWM1dHcnoI2xTTdDm8uYxukVFvH1iaIPdt
 ggTtcImawgTEnxYJ28sCG+Vvv4a/RQ6g7aLx9FKBsD9v+jsyfdtfBijesGg4K57oiDdq
 aWYNa+wcLYXgFprnzTInfuMlg9pXTaisrDfQmFMEzeSgKPIRpDjhEsoBV9YEusXrlRkL
 WQs5JzwBtUdYDiCCQLkzNEndXv0co52/Y6bSVliOqqXse1EI2GdKcmP7Mf6hi0ObyxJ4
 wXfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=vuIwBRbiam1ooCxdpqGgCQL+gzZRk+zauspKrWZZM/U=;
 b=mPbmlr2GIIx5GYkh2m4nCBju7CXNAM00U2I+YkECB5Y2tyCaNAlPCfVSM7ZxVNElkV
 crJOdGp6ZpRE2QI14qoOL2hljf2nQdhWhmBdU6XFvVIExAYvH+kMLpr2hQCw3L/LI2wI
 p3YHhvxgsEo2bz0Co7/h6vLGX5gV13mQTya3jfA9UPBM5LcRatHJFBGMy2XfZcfgmrja
 ka8Oh+Oh+/hwfo99mrMu7RE8nArEvFBp1l5p3En38SeHWl7QzNmtdd1CCCkdOoqO0UrB
 IwBdRAIo077tOzKfE0L2MGZWZqUA5u0tZCvpswdSAb42Ewsx67JPoJm/acimg7pTedeg
 cryA==
X-Gm-Message-State: AOAM531bUY3M+IrYTJfC/4I4J42u7B/yIseNigsrpVxoxbtpt+Pi7yCe
 QAjJv6Y3gDqBU6vSlWJD0l4=
X-Google-Smtp-Source: ABdhPJzHPSl0JEBDNALcOhjBqFMirDVVdBI/FzU8nHpMdRn1v+hT08VJcxW69frrDAePfgVfRTGtQA==
X-Received: by 2002:a05:600c:4146:: with SMTP id
 h6mr246820wmm.32.1615908646175; 
 Tue, 16 Mar 2021 08:30:46 -0700 (PDT)
Received: from agape.jhs ([5.171.72.71])
 by smtp.gmail.com with ESMTPSA id z3sm22721689wrw.96.2021.03.16.08.30.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Mar 2021 08:30:45 -0700 (PDT)
Date: Tue, 16 Mar 2021 16:30:43 +0100
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 03/12] staging: rtl8723bs: remove unused code blocks
 conditioned by never set CONFIG_DISABLE_MCS13TO15
Message-ID: <54e5805534f920d8c443874b759560a6127c8db8.1615907632.git.fabioaiuto83@gmail.com>
References: <cover.1615907632.git.fabioaiuto83@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1615907632.git.fabioaiuto83@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

remove conditional code blocks checked by unused
CONFIG_DISABLE_MCS13TO15

cleaning required in TODO file:

find and remove code blocks guarded by never set CONFIG_FOO defines

Signed-off-by: Fabio Aiuto <fabioaiuto83@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_mlme.c      | 16 +---------------
 drivers/staging/rtl8723bs/core/rtw_wlan_util.c |  7 -------
 2 files changed, 1 insertion(+), 22 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme.c b/drivers/staging/rtl8723bs/core/rtw_mlme.c
index 725f699abda9..a9e5c27a42f7 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme.c
@@ -2679,14 +2679,7 @@ unsigned int rtw_restructure_ht_ie(struct adapter *padapter, u8 *in_ie, u8 *out_
 		if (stbc_rx_enable)
 			ht_capie.cap_info |= cpu_to_le16(IEEE80211_HT_CAP_RX_STBC_2R);/* RX STBC two spatial stream */
 
-		#ifdef CONFIG_DISABLE_MCS13TO15
-		if (((cbw40_enable == 1) && (operation_bw == CHANNEL_WIDTH_40)) && (pregistrypriv->wifi_spec != 1))
-				set_mcs_rate_by_mask(ht_capie.mcs.rx_mask, MCS_RATE_2R_13TO15_OFF);
-		else
-				set_mcs_rate_by_mask(ht_capie.mcs.rx_mask, MCS_RATE_2R);
-		#else /* CONFIG_DISABLE_MCS13TO15 */
-			set_mcs_rate_by_mask(ht_capie.mcs.rx_mask, MCS_RATE_2R);
-		#endif /* CONFIG_DISABLE_MCS13TO15 */
+		set_mcs_rate_by_mask(ht_capie.mcs.rx_mask, MCS_RATE_2R);
 		break;
 	}
 
@@ -2809,14 +2802,7 @@ void rtw_update_ht_cap(struct adapter *padapter, u8 *pie, uint ie_len, u8 channe
 			break;
 		case RF_2T2R:
 		default:
-#ifdef CONFIG_DISABLE_MCS13TO15
-			if (pmlmeext->cur_bwmode == CHANNEL_WIDTH_40 && pregistrypriv->wifi_spec != 1)
-				set_mcs_rate_by_mask(pmlmeinfo->HT_caps.u.HT_cap_element.MCS_rate, MCS_RATE_2R_13TO15_OFF);
-			else
-				set_mcs_rate_by_mask(pmlmeinfo->HT_caps.u.HT_cap_element.MCS_rate, MCS_RATE_2R);
-#else /* CONFIG_DISABLE_MCS13TO15 */
 			set_mcs_rate_by_mask(pmlmeinfo->HT_caps.u.HT_cap_element.MCS_rate, MCS_RATE_2R);
-#endif /* CONFIG_DISABLE_MCS13TO15 */
 		}
 
 		/* switch to the 40M Hz mode according to the AP */
diff --git a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
index 3e211780cde4..2dd902b04509 100644
--- a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
+++ b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
@@ -1071,14 +1071,7 @@ void HT_caps_handler(struct adapter *padapter, struct ndis_80211_var_ie *pIE)
 		break;
 	case RF_2T2R:
 	default:
-#ifdef CONFIG_DISABLE_MCS13TO15
-		if (pmlmeext->cur_bwmode == CHANNEL_WIDTH_40 && pregistrypriv->wifi_spec != 1)
-			set_mcs_rate_by_mask(pmlmeinfo->HT_caps.u.HT_cap_element.MCS_rate, MCS_RATE_2R_13TO15_OFF);
-		else
-			set_mcs_rate_by_mask(pmlmeinfo->HT_caps.u.HT_cap_element.MCS_rate, MCS_RATE_2R);
-#else /* CONFIG_DISABLE_MCS13TO15 */
 		set_mcs_rate_by_mask(pmlmeinfo->HT_caps.u.HT_cap_element.MCS_rate, MCS_RATE_2R);
-#endif /* CONFIG_DISABLE_MCS13TO15 */
 	}
 
 	if (check_fwstate(pmlmepriv, WIFI_AP_STATE)) {
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id DED9A3408C5
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Mar 2021 16:27:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BF94D842B3;
	Thu, 18 Mar 2021 15:27:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id z6HZlatXpw9U; Thu, 18 Mar 2021 15:27:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0253E8428D;
	Thu, 18 Mar 2021 15:27:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BC5C11BF341
 for <devel@linuxdriverproject.org>; Thu, 18 Mar 2021 15:26:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B86478429A
 for <devel@linuxdriverproject.org>; Thu, 18 Mar 2021 15:26:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mVMmbbklYTdG for <devel@linuxdriverproject.org>;
 Thu, 18 Mar 2021 15:26:48 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com
 [IPv6:2a00:1450:4864:20::32b])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0361384286
 for <devel@driverdev.osuosl.org>; Thu, 18 Mar 2021 15:26:47 +0000 (UTC)
Received: by mail-wm1-x32b.google.com with SMTP id
 u5-20020a7bcb050000b029010e9316b9d5so3612084wmj.2
 for <devel@driverdev.osuosl.org>; Thu, 18 Mar 2021 08:26:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=LunxAGqca0bvCLdPnUiavGbIARk+BPOf+do3dcl5T4A=;
 b=I5eqpvvvIuyc8kGK/icE7OpW1t5dzmc4/ruuj6xFcfBOeXaPgh6NV4qT7INAzyWxEv
 EDMHCbP2HkJzvzgadxlsCor+w2XH1VxnxLaFWojCZqfQQoJqmRohtmP0C/LoeCLih3vf
 GHjGAHFAryqcIGxQlHO1xYfx2KGNh7f2vwG+8dtDUu/4ff3gq6rxLD+Vt++IXk50iAWa
 /uSFpf838Y8iU8wyPMZTpSsZSfOLN+/0wlgrNMGn/YrMzhnYKntYGCoFECaISyDusFtH
 j1TOZrresAmj3GmlGheJpR56+7/vE9jofzT7VePTtBanrcyv64NExYrWS9lcnF462W0s
 bZ5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=LunxAGqca0bvCLdPnUiavGbIARk+BPOf+do3dcl5T4A=;
 b=Mmwq6ucWTelgpZKP0PykR6MQb+D+rWNVwa4DWCLIQ02NJTafLT17oisL4NSv1jbFrH
 1/QEhPvsujP5AAQqf/QkDUjSYRUOkEnIS+5gcj+5OCZ01npN8jibV3jIHk4V2h4NpEPr
 pZNb9+LqcW4B03m59t1I+RsCdA06V2x5Uqau19a6b7brx/BbyBqa9ROHrHFGn7jtFiLc
 QFhsmeCQGEZ47oV+AnxeIsWQSBBWCFP3LyL89P2yBdwrustvE/C5NlqO84Xwtj5w9YiH
 LJYaLO/m8iaIjulAjSuWlD6cdGMUDOId54mQGEkTyv52v97cSSfbVeKlGjuW+AggxcC6
 NdXw==
X-Gm-Message-State: AOAM5313uzqRu+16yFwiU5eTF4urtserh1ZDbTSdxQYSSRRZlaS145mq
 CwxGahhc88LUUiLBfwT6v4Q=
X-Google-Smtp-Source: ABdhPJzKD4re/uQln+p6c1TorPkgCTTLriNtZWFHUumjJE6Is2YhCNG/ibB8rm7SJJCZXpg9bvRmOA==
X-Received: by 2002:a7b:cbcd:: with SMTP id n13mr4127054wmi.112.1616081206361; 
 Thu, 18 Mar 2021 08:26:46 -0700 (PDT)
Received: from agape ([151.46.162.59])
 by smtp.gmail.com with ESMTPSA id e1sm3601410wrd.44.2021.03.18.08.26.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Mar 2021 08:26:46 -0700 (PDT)
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 02/15] staging: rtl8723bs: remove unnecessary logging in
 core/rtw_mlme.c
Date: Thu, 18 Mar 2021 16:25:57 +0100
Message-Id: <20210318152610.16758-3-fabioaiuto83@gmail.com>
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
1134: FILE: drivers/staging/rtl8723bs/core/rtw_mlme.c:1134:
+		DBG_871X("%s\n", __func__);
--
WARNING: Unnecessary ftrace-like logging - prefer using ftrace
1223: FILE: drivers/staging/rtl8723bs/core/rtw_mlme.c:1223:
+	DBG_871X("%s\n", __func__);
--
WARNING: Unnecessary ftrace-like logging - prefer using ftrace
1528: FILE: drivers/staging/rtl8723bs/core/rtw_mlme.c:1528:
+	DBG_871X("%s\n", __func__);

Signed-off-by: Fabio Aiuto <fabioaiuto83@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_mlme.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme.c b/drivers/staging/rtl8723bs/core/rtw_mlme.c
index 725f699abda9..368f0cdea65c 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme.c
@@ -1131,8 +1131,6 @@ static struct sta_info *rtw_joinbss_update_stainfo(struct adapter *padapter, str
 
 	if (psta) { /* update ptarget_sta */
 
-		DBG_871X("%s\n", __func__);
-
 		psta->aid  = pnetwork->join_res;
 
 		update_sta_info(padapter, psta);
@@ -1220,8 +1218,6 @@ static void rtw_joinbss_update_network(struct adapter *padapter, struct wlan_net
 	struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
 	struct wlan_network  *cur_network = &(pmlmepriv->cur_network);
 
-	DBG_871X("%s\n", __func__);
-
 	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("\nfw_state:%x, BSSID:%pM\n"
 		, get_fwstate(pmlmepriv), MAC_ARG(pnetwork->network.MacAddress)));
 
@@ -1525,7 +1521,7 @@ void rtw_stassoc_event_callback(struct adapter *adapter, u8 *pbuf)
 	psta->qos_option = 0;
 	psta->mac_id = (uint)pstassoc->cam_id;
 	/* psta->aid = (uint)pstassoc->cam_id; */
-	DBG_871X("%s\n", __func__);
+
 	/* for ad-hoc mode */
 	rtw_hal_set_odm_var(adapter, HAL_ODM_STA_INFO, psta, true);
 
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C12369A1B
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Jul 2019 19:46:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id F1B6A86DCA;
	Mon, 15 Jul 2019 17:46:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id D7jGDBVfLgg3; Mon, 15 Jul 2019 17:46:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8388186D82;
	Mon, 15 Jul 2019 17:46:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D96561BF395
 for <devel@linuxdriverproject.org>; Mon, 15 Jul 2019 17:46:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D689820387
 for <devel@linuxdriverproject.org>; Mon, 15 Jul 2019 17:46:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NO7CAq54ubYQ for <devel@linuxdriverproject.org>;
 Mon, 15 Jul 2019 17:46:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by silver.osuosl.org (Postfix) with ESMTPS id C29A520021
 for <devel@driverdev.osuosl.org>; Mon, 15 Jul 2019 17:46:27 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id c73so7745083pfb.13
 for <devel@driverdev.osuosl.org>; Mon, 15 Jul 2019 10:46:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=FFqgSG9F031m7mlilYz1OsMw1AHlab2cWn77ylXznWQ=;
 b=uefMKJlV21LOHRI6/JVyMde8pUMN/xGrUurNHabZhCTt3Gw7b3gFXxylWv7K/Ou1qR
 KRJCuiHuFlN0QWixwxJPO8zMZesdMk2kGqLPpFiK8jPjQ2xtHiIAg/vZwJgEMuiAJ0om
 X6QoyCAWVfuWaQBQlRTGNW6BEt2+0m0lXE/L5CHOQxonl1jjMDiLRvuFYY+cUNKj9+nl
 mf2IHz0qkNrKTBhVRuHyy2N3W8I/YxyNKCQ5/u3wodtHHcQN/UQfLIPxYDVU0nK9EN7a
 KvlIm+1yvpXID/T6ADwHhnvFq8hATQ9hOkDhriDYbrLbsUWmswdR8J2ep1ffb2UVICJs
 bSXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=FFqgSG9F031m7mlilYz1OsMw1AHlab2cWn77ylXznWQ=;
 b=Tkbf9XH2pFf5NGOQ12k2LttEHvrsjS38sR6e+ypp2hlzxDhyYyUUD7dlAZsoRZi2/T
 9EDQcL+qTSRwD3HYV20pEv+lnUFiTtBhdWB1XqH4S5xhLr5Us48VHZb83drKY+IkjC5J
 pNDLomUAWmjm5uzzMUEb24kRXiYRzaTB6r6mkRdjKfDDUflUQN5xVbF3KbWrl1YRvrfM
 CcX535QPhv0WVyCLNBd93UKnCaTipR812X8z2mQ3f63LQ0SiPvTPRcOSPSkQmkUqQsyN
 9fdazIvlYV3xG3FJLEOqX2crA8FBJ5Xjj0UcrQEmLpCkhzKo2dLg7bThEjI05AbGcX4L
 vKjA==
X-Gm-Message-State: APjAAAU+SYCZT4Uvmtf2dqDGO606UgZ4GnpruvZJR+nUYYvN4eR9g6JM
 KVgq59A6wLH74IghmCE+Qt0=
X-Google-Smtp-Source: APXvYqzF0JAlj9eEdu7Ea7/EHvis6Cquh01Zz1aZmlfYgNxBiUIDto7s5HAKW/y7Lmp2gFyrvpvATw==
X-Received: by 2002:a63:4c14:: with SMTP id z20mr28098485pga.360.1563212787344; 
 Mon, 15 Jul 2019 10:46:27 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.86.126])
 by smtp.gmail.com with ESMTPSA id 97sm17195643pjz.12.2019.07.15.10.46.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 15 Jul 2019 10:46:26 -0700 (PDT)
Date: Mon, 15 Jul 2019 23:16:18 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Vatsala Narang <vatsalanarang@gmail.com>,
 Nishka Dasgupta <nishkadg.linux@gmail.com>,
 Emanuel Bennici <benniciemanuel78@gmail.com>,
 Hardik Singh Rathore <hardiksingh.k@gmail.com>,
 Madhumitha Prabakaran <madhumithabiw@gmail.com>,
 Michael Straube <straube.linux@gmail.com>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Hans de Goede <hdegoede@redhat.com>,
 Shobhit Kukreti <shobhitkukreti@gmail.com>,
 Paolo Abeni <pabeni@redhat.com>, Arnd Bergmann <arnd@arndb.de>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: rtl8723bs: core: Change return type of
 init_mlme_ext_priv
Message-ID: <20190715174618.GA8947@hari-Inspiron-1545>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

As init_mlme_ext_priv function always returns SUCCESS , We can change
return type from int to void.

Fixes below issue identified by coccicheck
drivers/staging/rtl8723bs/core/rtw_mlme_ext.c:464:5-8: Unneeded
variable: "res". Return "_SUCCESS" on line 492

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c    | 6 +-----
 drivers/staging/rtl8723bs/include/rtw_mlme_ext.h | 2 +-
 drivers/staging/rtl8723bs/os_dep/os_intfs.c      | 6 +-----
 3 files changed, 3 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index 4285844..0629117 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
@@ -459,9 +459,8 @@ static u8 init_channel_set(struct adapter *padapter, u8 ChannelPlan, RT_CHANNEL_
 	return chanset_size;
 }
 
-int	init_mlme_ext_priv(struct adapter *padapter)
+void init_mlme_ext_priv(struct adapter *padapter)
 {
-	int	res = _SUCCESS;
 	struct registry_priv *pregistrypriv = &padapter->registrypriv;
 	struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
@@ -488,9 +487,6 @@ int	init_mlme_ext_priv(struct adapter *padapter)
 #ifdef DBG_FIXED_CHAN
 	pmlmeext->fixed_chan = 0xFF;
 #endif
-
-	return res;
-
 }
 
 void free_mlme_ext_priv(struct mlme_ext_priv *pmlmeext)
diff --git a/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h b/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h
index 733bb94..70cd8c0 100644
--- a/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h
+++ b/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h
@@ -535,7 +535,7 @@ struct mlme_ext_priv
 };
 
 void init_mlme_default_rate_set(struct adapter *padapter);
-int init_mlme_ext_priv(struct adapter *padapter);
+void init_mlme_ext_priv(struct adapter *padapter);
 int init_hw_mlme_ext(struct adapter *padapter);
 void free_mlme_ext_priv (struct mlme_ext_priv *pmlmeext);
 extern void init_mlme_ext_timer(struct adapter *padapter);
diff --git a/drivers/staging/rtl8723bs/os_dep/os_intfs.c b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
index 544e799..d2decb3 100644
--- a/drivers/staging/rtl8723bs/os_dep/os_intfs.c
+++ b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
@@ -768,11 +768,7 @@ u8 rtw_init_drv_sw(struct adapter *padapter)
 		goto exit;
 	}
 
-	if (init_mlme_ext_priv(padapter) == _FAIL) {
-		RT_TRACE(_module_os_intfs_c_, _drv_err_, ("\n Can't init mlme_ext_priv\n"));
-		ret8 = _FAIL;
-		goto exit;
-	}
+	init_mlme_ext_priv(padapter);
 
 	if (_rtw_init_xmit_priv(&padapter->xmitpriv, padapter) == _FAIL) {
 		DBG_871X("Can't _rtw_init_xmit_priv\n");
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

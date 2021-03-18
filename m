Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 45AD83408CC
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Mar 2021 16:27:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D243C4EE37;
	Thu, 18 Mar 2021 15:27:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2R_6G-YaugIn; Thu, 18 Mar 2021 15:27:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B655E4EE06;
	Thu, 18 Mar 2021 15:27:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7FD851BF341
 for <devel@linuxdriverproject.org>; Thu, 18 Mar 2021 15:26:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6E3F44EE18
 for <devel@linuxdriverproject.org>; Thu, 18 Mar 2021 15:26:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id saDYPNEBReA4 for <devel@linuxdriverproject.org>;
 Thu, 18 Mar 2021 15:26:53 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com
 [IPv6:2a00:1450:4864:20::42b])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 955FF4EE06
 for <devel@driverdev.osuosl.org>; Thu, 18 Mar 2021 15:26:53 +0000 (UTC)
Received: by mail-wr1-x42b.google.com with SMTP id 61so5956856wrm.12
 for <devel@driverdev.osuosl.org>; Thu, 18 Mar 2021 08:26:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=MUnZPR9KH0cya06g4iCxL1syilN/kEp01BxfNl+HC9M=;
 b=uw1GTq65IGa2H8mq5fGQpyTGrg5ePQzskJTS1qt8BewmrN2wqFD3rZ3dJ/lvzGj8o4
 wvOAB+0XzoakbPYhqKKqDS+Q0lPqgt8vsjmjuonlLOGLqwRSP1ChJ+//+cO/XOQc/RlD
 Hogz41WW5DFNV83Ej8kydFck0TQHvRPj44A3aIDOb+sm4LH5vKCM+GHQxVY1s+kW9E+s
 X7k26soZ1seZbvz9dK8PXyOqKH+NchazmfAEU0ZTUGh38VQ/1Dtu+kGcVnqefDh1qz6K
 Hakg7td6uFlrr0EZhFrWejFz/kxolx4YYqPKr6aSfrYMQFKybDmLlJ0KS/uYFcom395j
 pTHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=MUnZPR9KH0cya06g4iCxL1syilN/kEp01BxfNl+HC9M=;
 b=tG8xoYAXIJiRfuHETHWlHHK1wN/mHbhiw9JcVRqihuCKWWx3ocwjALqAdFcqK7/E6+
 ArP+KCbvwgbNk+tnljsl8mSnm8aPEI9Qcx+ZXPXGpGO7JeoSaKIzFIFb8eucZaBsBGQI
 Y9rb7GXyDrwLONILnKhR/T5kt20MunY3XZMx8QMPxs0Rq3EW3FosBoqDwQ0ITEeMh2Qc
 XOnqYY6E67svjZ3Y9lJQ2DwhxJn6EFtvVQMRJFMg0kT8pBrdO+obznh5xbUcluD74oX+
 3G8Z5WGQCb+f4qjR/FsDbdQmwvfa/L8rZItwZtWXp9zwFn82iKs3xiYHrqOiGnYuupCT
 G/+Q==
X-Gm-Message-State: AOAM531Xj/I+dMIgtsM3Eg/RtKDLeBmraEmmYuCqd8USa8nq2szHsKCr
 rWZgutC0ejtEhmRLTTvGM/g=
X-Google-Smtp-Source: ABdhPJxRstMxhMoa/t/Nuivxd/u0UkhL0TG8AVb7D+zDFU9SiYmq7xZfSdHXflhdO+/GFasfhW53Xw==
X-Received: by 2002:a5d:65cd:: with SMTP id e13mr10484538wrw.334.1616081211975; 
 Thu, 18 Mar 2021 08:26:51 -0700 (PDT)
Received: from agape ([151.46.162.59])
 by smtp.gmail.com with ESMTPSA id l8sm3442773wrx.83.2021.03.18.08.26.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Mar 2021 08:26:51 -0700 (PDT)
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 04/15] staging: rtl8723bs: remove unnecessary logging in
 core/rtw_pwrctrl.c
Date: Thu, 18 Mar 2021 16:25:59 +0100
Message-Id: <20210318152610.16758-5-fabioaiuto83@gmail.com>
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
185: FILE: drivers/staging/rtl8723bs/core/rtw_pwrctrl.c:185:
+		DBG_871X("==>%s\n", __func__);
--
WARNING: Unnecessary ftrace-like logging - prefer using ftrace
606: FILE: drivers/staging/rtl8723bs/core/rtw_pwrctrl.c:606:
+	DBG_871X("%s.....\n", __func__);
--
WARNING: Unnecessary ftrace-like logging - prefer using ftrace
753: FILE: drivers/staging/rtl8723bs/core/rtw_pwrctrl.c:753:
+	/* DBG_871X("%s\n", __func__); */

Signed-off-by: Fabio Aiuto <fabioaiuto83@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_pwrctrl.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c b/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
index 2e6c522b74e3..908591a8f3c2 100644
--- a/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
+++ b/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
@@ -182,7 +182,6 @@ void rtw_ps_processor(struct adapter *padapter)
 		goto exit;
 
 	if ((pwrpriv->rf_pwrstate == rf_on) && ((pwrpriv->pwr_state_check_cnts%4) == 0)) {
-		DBG_871X("==>%s\n", __func__);
 		pwrpriv->change_rfpwrstate = rf_off;
 		{
 			ips_enter(padapter);
@@ -603,8 +602,6 @@ void LeaveAllPowerSaveModeDirect(struct adapter *Adapter)
 	struct mlme_priv *pmlmepriv = &(Adapter->mlmepriv);
 	struct pwrctrl_priv *pwrpriv = adapter_to_pwrctl(Adapter);
 
-	DBG_871X("%s.....\n", __func__);
-
 	if (Adapter->bSurpriseRemoved) {
 		DBG_871X(FUNC_ADPT_FMT ": bSurpriseRemoved =%d Skip!\n",
 			FUNC_ADPT_ARG(Adapter), Adapter->bSurpriseRemoved);
@@ -750,8 +747,6 @@ static void cpwm_event_callback(struct work_struct *work)
 	struct adapter *adapter = dvobj->if1;
 	struct reportpwrstate_parm report;
 
-	/* DBG_871X("%s\n", __func__); */
-
 	report.state = PS_STATE_S2;
 	cpwm_int_hdl(adapter, &report);
 }
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

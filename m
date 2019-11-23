Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE49B107EF9
	for <lists+driverdev-devel@lfdr.de>; Sat, 23 Nov 2019 16:16:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E55AA88191;
	Sat, 23 Nov 2019 15:16:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2srDGnwHaxTU; Sat, 23 Nov 2019 15:16:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2F9AB87889;
	Sat, 23 Nov 2019 15:16:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A342A1BF962
 for <devel@linuxdriverproject.org>; Sat, 23 Nov 2019 15:16:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9FD152034D
 for <devel@linuxdriverproject.org>; Sat, 23 Nov 2019 15:16:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YpxwErAXSShD for <devel@linuxdriverproject.org>;
 Sat, 23 Nov 2019 15:16:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by silver.osuosl.org (Postfix) with ESMTPS id 817D62034C
 for <devel@driverdev.osuosl.org>; Sat, 23 Nov 2019 15:16:49 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id s5so12192081wrw.2
 for <devel@driverdev.osuosl.org>; Sat, 23 Nov 2019 07:16:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vXrw9xXYn/OrnTMQI0ZQZW1/tehCBcD8aPYFJY2zdsc=;
 b=BAp3Pi7ZbAErJYMdHKzkv248C07xpb9NP8LhvRrXE9WQyBp6pfdnrM/kEPPGz+hQLa
 DWlgovKy8A1lisOW9+GenWY3WJFN6AOoPTr9ZONWGhdRQQgrm508nxwvqXxZXRQwcf1v
 N3kkXiR96ZDbvUc2xtijjdr37ex/ScCcati3uBbcNfIpzTfhIlgsU7aziDEiJB6bHUU1
 IkBFdKPQRGjF7mkA71fqovH4nUIddVgvcQyYvU6Wgp0LiW6XX8kuBBYGecJ9Ok2APRLF
 mp8GJ/LDOVKn5Ew1yn9kp4KjR7PnJsm/e5SqtGCGFPZTBcLCrgu6a4FC88tMgTtf1WJo
 etQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vXrw9xXYn/OrnTMQI0ZQZW1/tehCBcD8aPYFJY2zdsc=;
 b=SnHCuMga9hQWcsnUVdnvvwbHKI9hAjL015euL123svOXNgH+b/cu8OrQtsgJFmVJz0
 jnl6t7jjuTIMlWgUiYmrmx8ygPHAfH0+IFCJ8nNEXLtdWn0SDBp08k8yvuSkLSSrnZgI
 3tr3KB0z8apMKeJmm/IyCxknM/pneDDmuuDF8QumpOrBgqFhrp7w+TnTlSd83VU4yHlu
 v432K3Mi94YdfSvhYzBPbwnFpkL1HEIWWEvNGsPfyCva2HRRdlVQvcySZ4z40+wIGqYv
 5D8h8VzLHmtfxbptLIM4l2vs7neoYGp+HFah3rVXVrV7d6KPIDGs88NuZ8QgXCE73mv1
 mX5g==
X-Gm-Message-State: APjAAAWDQeVd/PrDoBn2mOE8cNbucmeq9PAW0zPm+ip3n6uDECTyivLL
 R5dHPi4NaQd2AejO9i0X6Nq0tZNJ6n8=
X-Google-Smtp-Source: APXvYqwR6NdHeDdjqDCeHHsiCZkALxbVSxcPUcWl6l3Inm0oheacR0ozm2tMlOtrrnn9ZZ9KFFj1Fw==
X-Received: by 2002:adf:fa87:: with SMTP id h7mr13430458wrr.172.1574522207969; 
 Sat, 23 Nov 2019 07:16:47 -0800 (PST)
Received: from localhost.localdomain
 (dslb-092-073-054-228.092.073.pools.vodafone-ip.de. [92.73.54.228])
 by smtp.gmail.com with ESMTPSA id p25sm2126311wma.20.2019.11.23.07.16.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 23 Nov 2019 07:16:47 -0800 (PST)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 2/3] staging: rtl8188eu: cleanup declarations in rtw_pwrctrl.c
Date: Sat, 23 Nov 2019 16:16:34 +0100
Message-Id: <20191123151635.155138-2-straube.linux@gmail.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191123151635.155138-1-straube.linux@gmail.com>
References: <20191123151635.155138-1-straube.linux@gmail.com>
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

Replace tabs with spaces in declarations to cleanup whitespace.

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_pwrctrl.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c b/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c
index 010a0cdf7940..8e99e10c1fd4 100644
--- a/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c
+++ b/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c
@@ -282,7 +282,7 @@ static void pwr_state_check_handler(struct timer_list *t)
  */
 void rtw_set_rpwm(struct adapter *padapter, u8 pslv)
 {
-	u8	rpwm;
+	u8 rpwm;
 	struct pwrctrl_priv *pwrpriv = &padapter->pwrctrlpriv;
 
 	pslv = PS_STATE(pslv);
@@ -335,8 +335,8 @@ void rtw_set_rpwm(struct adapter *padapter, u8 pslv)
 static u8 PS_RDY_CHECK(struct adapter *padapter)
 {
 	unsigned long curr_time, delta_time;
-	struct pwrctrl_priv	*pwrpriv = &padapter->pwrctrlpriv;
-	struct mlme_priv	*pmlmepriv = &padapter->mlmepriv;
+	struct pwrctrl_priv *pwrpriv = &padapter->pwrctrlpriv;
+	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 
 	curr_time = jiffies;
 	delta_time = curr_time - pwrpriv->DelayLPSLastTimeStamp;
@@ -437,7 +437,7 @@ s32 LPS_RF_ON_check(struct adapter *padapter, u32 delay_ms)
 /*  */
 void LPS_Enter(struct adapter *padapter)
 {
-	struct pwrctrl_priv	*pwrpriv = &padapter->pwrctrlpriv;
+	struct pwrctrl_priv *pwrpriv = &padapter->pwrctrlpriv;
 
 	if (!PS_RDY_CHECK(padapter))
 		return;
@@ -463,7 +463,7 @@ void LPS_Enter(struct adapter *padapter)
 /*		Leave the leisure power save mode. */
 void LPS_Leave(struct adapter *padapter)
 {
-	struct pwrctrl_priv	*pwrpriv = &padapter->pwrctrlpriv;
+	struct pwrctrl_priv *pwrpriv = &padapter->pwrctrlpriv;
 
 	if (pwrpriv->bLeisurePs) {
 		if (pwrpriv->pwr_mode != PS_MODE_ACTIVE) {
@@ -483,8 +483,8 @@ void LPS_Leave(struct adapter *padapter)
 /*  */
 void LeaveAllPowerSaveMode(struct adapter *Adapter)
 {
-	struct mlme_priv	*pmlmepriv = &Adapter->mlmepriv;
-	u8	enqueue = 0;
+	struct mlme_priv *pmlmepriv = &Adapter->mlmepriv;
+	u8 enqueue = 0;
 
 	if (check_fwstate(pmlmepriv, _FW_LINKED))
 		rtw_lps_ctrl_wk_cmd(Adapter, LPS_CTRL_LEAVE, enqueue);
@@ -611,7 +611,7 @@ int _rtw_pwr_wakeup(struct adapter *padapter, u32 ips_deffer_ms, const char *cal
 
 int rtw_pm_set_lps(struct adapter *padapter, u8 mode)
 {
-	int	ret = 0;
+	int ret = 0;
 	struct pwrctrl_priv *pwrctrlpriv = &padapter->pwrctrlpriv;
 
 	if (mode < PS_MODE_NUM) {
-- 
2.24.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

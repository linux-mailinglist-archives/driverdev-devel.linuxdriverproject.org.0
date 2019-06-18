Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 63BED4AA84
	for <lists+driverdev-devel@lfdr.de>; Tue, 18 Jun 2019 20:59:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D9A9E80CD5;
	Tue, 18 Jun 2019 18:59:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GKx2yX3UnQOc; Tue, 18 Jun 2019 18:59:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2F84482058;
	Tue, 18 Jun 2019 18:59:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AEB581BF20D
 for <devel@linuxdriverproject.org>; Tue, 18 Jun 2019 18:59:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id AB6CD8493F
 for <devel@linuxdriverproject.org>; Tue, 18 Jun 2019 18:59:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LugpqcorQIUc for <devel@linuxdriverproject.org>;
 Tue, 18 Jun 2019 18:59:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id ADB2384627
 for <devel@driverdev.osuosl.org>; Tue, 18 Jun 2019 18:59:31 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id e5so6072683pls.13
 for <devel@driverdev.osuosl.org>; Tue, 18 Jun 2019 11:59:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=y+ZDxvhg6PfCf4IaZBcbrHBra9kFTGCeQt6ukY9Ho2c=;
 b=nRncx7EOSI8bpyFlXJgspqlwi28rdU1sQt1sug6gGAs+t+Uv3/uUp1NQBzrbB1ze1T
 3FCDVP3O8gLOvoMlsUwnGW7mvMH3ImxYoCpJ2o5bfigZQuRdpYRrErD+1WCq4Pkz0avG
 yjsMV/DoEDfVhs78Q7Es607e/0os41JdWxGdvLnURS/nqAMm3mELuynV0CN7DOjOwt7B
 DhKZoPEXSIb2aF3QMVhz4cOtw6ow0GR4X7xxU5G0mQANMLqzSXPgJgoFibnLp614ejQH
 ygQZEassjhjVZppc7oBha8KP9r+Ol6JbokONcyIaVd1hsS/CK06iIazzIQ1Odu4HibEY
 5qDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=y+ZDxvhg6PfCf4IaZBcbrHBra9kFTGCeQt6ukY9Ho2c=;
 b=azv3GO5KzXEHaNyxh7qXyyx9VC++1sgT5QnZmwq83BpeIYI+NSIGWYsIjuvVXJvoUW
 +wCFFuhkUXqL1bPQjBUmRJwOPA5P+vrEVTK3dMJbAJS06olE9+bea5r2Cir7nxX4b4vA
 R6wvDAVqHLfabENCmtJQIdDpoNH1a1BIfmIr4ELZbGncY7qJ67sBq7r5ovutN9RQTlx0
 ohrGmY71EBSE1QZVUvm0uLFO4Ln9QEoiBq4PTl1LpldTmuADkEEQS49o0k5IFcEKXCbA
 edCDED1eVkntnfpbWxRRubRKSVmnl71+2W8dwrqjmh3uDK7wulKpiYj0Juk5+ecxZQSg
 SZrQ==
X-Gm-Message-State: APjAAAUfZz2uSLW60S6g0uiPzGwbG4U3eNsOfTk2usCKQr5NuQyt1YMZ
 fGVyTVzNR/LPmtj4H9LUyRZTByBW
X-Google-Smtp-Source: APXvYqwCNvxBPbmi9lBvV2rvBdNFjHetK1v0rh6W/q5yTjTULLOipHLy68oH9MJTww8Rq8taYliBfA==
X-Received: by 2002:a17:902:8609:: with SMTP id
 f9mr106993136plo.252.1560884371384; 
 Tue, 18 Jun 2019 11:59:31 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.92.187])
 by smtp.gmail.com with ESMTPSA id h62sm15489909pgc.54.2019.06.18.11.59.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 18 Jun 2019 11:59:31 -0700 (PDT)
Date: Wed, 19 Jun 2019 00:29:27 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Himadri Pandya <himadri18.07@gmail.com>,
 Nishka Dasgupta <nishkadg.linux@gmail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] staging: rtl8723bs: hal: rtl8723b_cmd: fix comparison to
 true is error prone
Message-ID: <20190618185926.GA10510@hari-Inspiron-1545>
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

this patch fixes below issues reported by checkpatch

CHECK: Using comparison to true is error prone
CHECK: Using comparison to false is error prone

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c b/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
index ceb317f..48efbfd 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
@@ -73,7 +73,7 @@ s32 FillH2CCmd8723B(struct adapter *padapter, u8 ElementID, u32 CmdLen, u8 *pCmd
 		goto exit;
 	}
 
-	if (padapter->bSurpriseRemoved == true)
+	if (padapter->bSurpriseRemoved)
 		goto exit;
 
 	/* pay attention to if  race condition happened in  H2C cmd setting. */
@@ -297,7 +297,7 @@ static void ConstructNullFunctionData(
 
 	SetSeqNum(pwlanhdr, 0);
 
-	if (bQoS == true) {
+	if (bQoS) {
 		struct ieee80211_qos_hdr *pwlanqoshdr;
 
 		SetFrameSubType(pframe, WIFI_QOS_DATA_NULL);
@@ -1071,7 +1071,7 @@ void rtl8723b_set_FwPwrMode_cmd(struct adapter *padapter, u8 psmode)
 	SET_8723B_H2CCMD_PWRMODE_PARM_PWR_STATE(u1H2CPwrModeParm, PowerState);
 	SET_8723B_H2CCMD_PWRMODE_PARM_BYTE5(u1H2CPwrModeParm, byte5);
 	if (psmode != PS_MODE_ACTIVE) {
-		if (pmlmeext->adaptive_tsf_done == false && pmlmeext->bcn_cnt > 0) {
+		if (!pmlmeext->adaptive_tsf_done && pmlmeext->bcn_cnt > 0) {
 			u8 ratio_20_delay, ratio_80_delay;
 
 			/* byte 6 for adaptive_early_32k */
@@ -1252,7 +1252,7 @@ static void rtl8723b_set_FwRemoteWakeCtrl_Cmd(struct adapter *padapter, u8 benab
 	FillH2CCmd8723B(padapter, H2C_8723B_REMOTE_WAKE_CTRL,
 		H2C_REMOTE_WAKE_CTRL_LEN, u1H2CRemoteWakeCtrlParm);
 #ifdef CONFIG_PNO_SUPPORT
-	if (ppwrpriv->wowlan_pno_enable && ppwrpriv->pno_in_resume == false) {
+	if (ppwrpriv->wowlan_pno_enable && !ppwrpriv->pno_in_resume) {
 		res = rtw_read8(padapter, REG_PNO_STATUS);
 		DBG_871X("cmd: 0x81 REG_PNO_STATUS: 0x%02x\n", res);
 		while (!(res&BIT(7)) && count < 25) {
@@ -1671,7 +1671,7 @@ static void rtl8723b_set_FwRsvdPagePkt(
 #endif /* CONFIG_WOWLAN */
 	{
 #ifdef CONFIG_PNO_SUPPORT
-		if (pwrctl->pno_in_resume == false && pwrctl->pno_inited == true) {
+		if (!pwrctl->pno_in_resume && pwrctl->pno_inited) {
 			/* Probe Request */
 			RsvdPageLoc.LocProbePacket = TotalPageNum;
 			ConstructProbeReq(
@@ -2119,7 +2119,7 @@ static void ConstructBtNullFunctionData(
 	SetDuration(pwlanhdr, 0);
 	SetSeqNum(pwlanhdr, 0);
 
-	if (bQoS == true) {
+	if (bQoS) {
 		struct ieee80211_qos_hdr *pwlanqoshdr;
 
 		SetFrameSubType(pframe, WIFI_QOS_DATA_NULL);
@@ -2307,7 +2307,7 @@ void rtl8723b_download_BTCoex_AP_mode_rsvd_page(struct adapter *padapter)
 		} while (!bcn_valid && (poll%10) != 0 && !padapter->bSurpriseRemoved && !padapter->bDriverStopped);
 	} while (!bcn_valid && (DLBcnCount <= 100) && !padapter->bSurpriseRemoved && !padapter->bDriverStopped);
 
-	if (true == bcn_valid) {
+	if (bcn_valid) {
 		struct pwrctrl_priv *pwrctl = adapter_to_pwrctl(padapter);
 		pwrctl->fw_psmode_iface_id = padapter->iface_id;
 		DBG_8192C(ADPT_FMT": DL RSVD page success! DLBcnCount:%d, poll:%d\n",
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

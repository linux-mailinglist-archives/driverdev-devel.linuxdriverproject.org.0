Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A04B813BCC
	for <lists+driverdev-devel@lfdr.de>; Sat,  4 May 2019 20:45:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4A77A87E4A;
	Sat,  4 May 2019 18:45:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id c44mKhblzpeL; Sat,  4 May 2019 18:45:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5ED70879DB;
	Sat,  4 May 2019 18:45:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 93B3B1BF5E9
 for <devel@linuxdriverproject.org>; Sat,  4 May 2019 18:45:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 90B07857D1
 for <devel@linuxdriverproject.org>; Sat,  4 May 2019 18:45:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id m2hCwtzjRF0z for <devel@linuxdriverproject.org>;
 Sat,  4 May 2019 18:45:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id EA884849B8
 for <devel@driverdev.osuosl.org>; Sat,  4 May 2019 18:45:15 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id z28so4586010pfk.0
 for <devel@driverdev.osuosl.org>; Sat, 04 May 2019 11:45:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=4ZV3T+sC26+wNJhp8FnOpe5j6bcSYkII4kHQNmenI7c=;
 b=U+F3lZww5+Udbo5orvUcEv9NexOUB7poM1PpojkQ0hAHDRiqMcPpQ5qBnxPn/9uyzw
 azbEU1BjDCWTLAiJgNAaPVp0CV6AIE6E+uoVyLbu/yfowKnDTyM4WvoTQFKunriFb7Kj
 mUIor1G86gDH6EPIKhnzihgID6XYcxEJIpwjldyRWCfrXfVbX28JgmQbePB+r001uPDj
 lkkUufKGjDZDXl/lo1ac9LOOzeOotAmiB8Q4CxBtJT/OWHfoh9aUkcEay11NTKy6zuk/
 uz9wLfgLpH8IxhNf4c9jsohkV4bq4ZQllsKhsHqXBrNku5YuiYw4lmXNHrOvDQuDIRdw
 kdOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=4ZV3T+sC26+wNJhp8FnOpe5j6bcSYkII4kHQNmenI7c=;
 b=rb5W5ClRuR0Knig++3tSmRAExpoeW5/SrRKU88hpVpmhhvukmwnPwvy8048cOWgt7U
 /EVgXF3QS5++2KlOSq0Wu0+qbvASetTCXHbseekPtf72DJhtPEeCInQbvRuOoNOH38NV
 7q+3EWxwbAdc+KASf0/S8+v1PfH434QyZyPR2oxPAjYj1CfWZ4kX/LcQeFTXpMTciQSx
 nFXGjSI+8hZhD2RaOvMrEjoFDVfbdfJAs82+nmFifq1rhllDg43wfGXhT9TASaMsZNah
 L/ORJynVYsCmMsp2S6flz7JHvdomg1MFxQVp3vGGYGFVvx1H8CrffuICpDItFZhtCd4r
 Ix5A==
X-Gm-Message-State: APjAAAXvs12tmsFkra1GvocXsYEJYQaAPqoBji2+Zt3QR98tKPJ+uB8G
 AU7zss2DsPtpaL0d/06nqTU=
X-Google-Smtp-Source: APXvYqwEK5X5HW1aM5mU0RNeMXXx+2Wx360kN2MF3Chng07x/EvrPMpQUFRz6ecvPGYdI+tPWK44Tw==
X-Received: by 2002:a63:3d0b:: with SMTP id k11mr299200pga.349.1556995515534; 
 Sat, 04 May 2019 11:45:15 -0700 (PDT)
Received: from localhost.localdomain ([103.87.57.241])
 by smtp.gmail.com with ESMTPSA id w189sm8072686pfw.147.2019.05.04.11.45.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 04 May 2019 11:45:15 -0700 (PDT)
From: Vatsala Narang <vatsalanarang@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 3/7] staging: rtl8723bs: core: Replace NULL comparisons.
Date: Sun,  5 May 2019 00:14:50 +0530
Message-Id: <20190504184450.25686-1-vatsalanarang@gmail.com>
X-Mailer: git-send-email 2.17.1
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
Cc: devel@driverdev.osuosl.org, julia.lawall@lip6.fr,
 linux-kernel@vger.kernel.org, hdegoede@redhat.com, hadess@hadess.net,
 Vatsala Narang <vatsalanarang@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Replace NULL comparisons in the file to get rid of checkpatch warning.

Signed-off-by: Vatsala Narang <vatsalanarang@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 32 +++++++++----------
 1 file changed, 16 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index a7c22e5e3559..32b66dce99cd 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
@@ -381,7 +381,7 @@ static void init_channel_list(struct adapter *padapter, RT_CHANNEL_INFO *channel
 				((BW40MINUS == o->bw) || (BW40PLUS == o->bw)))
 				continue;
 
-			if (reg == NULL) {
+			if (!reg) {
 				reg = &channel_list->reg_class[cla];
 				cla++;
 				reg->reg_class = o->op_class;
@@ -659,7 +659,7 @@ unsigned int OnProbeReq(struct adapter *padapter, union recv_frame *precv_frame)
 			/*  allocate a new one */
 			DBG_871X("going to alloc stainfo for rc ="MAC_FMT"\n",  MAC_ARG(get_sa(pframe)));
 			psta = rtw_alloc_stainfo(pstapriv, get_sa(pframe));
-			if (psta == NULL) {
+			if (!psta) {
 				/* TODO: */
 				DBG_871X(" Exceed the upper limit of supported clients...\n");
 				return _SUCCESS;
@@ -1217,7 +1217,7 @@ unsigned int OnAssocReq(struct adapter *padapter, union recv_frame *precv_frame)
 	}
 
 	pstat = rtw_get_stainfo(pstapriv, GetAddr2Ptr(pframe));
-	if (pstat == NULL) {
+	if (!pstat) {
 		status = _RSON_CLS2_;
 		goto asoc_class2_error;
 	}
@@ -1377,7 +1377,7 @@ unsigned int OnAssocReq(struct adapter *padapter, union recv_frame *precv_frame)
 		goto OnAssocReqFail;
 
 	pstat->flags &= ~(WLAN_STA_WPS | WLAN_STA_MAYBE_WPS);
-	if (wpa_ie == NULL) {
+	if (!wpa_ie) {
 		if (elems.wps_ie) {
 			DBG_871X("STA included WPS IE in "
 				   "(Re)Association Request - assume WPS is "
@@ -1943,7 +1943,7 @@ unsigned int OnAction_back(struct adapter *padapter, union recv_frame *precv_fra
 	addr = GetAddr2Ptr(pframe);
 	psta = rtw_get_stainfo(pstapriv, addr);
 
-	if (psta == NULL)
+	if (!psta)
 		return _SUCCESS;
 
 	frame_body = (unsigned char *)(pframe + sizeof(struct ieee80211_hdr_3addr));
@@ -2462,7 +2462,7 @@ void issue_beacon(struct adapter *padapter, int timeout_ms)
 	/* DBG_871X("%s\n", __func__); */
 
 	pmgntframe = alloc_mgtxmitframe(pxmitpriv);
-	if (pmgntframe == NULL) {
+	if (!pmgntframe) {
 		DBG_871X("%s, alloc mgnt frame fail\n", __func__);
 		return;
 	}
@@ -2843,7 +2843,7 @@ static int _issue_probereq(struct adapter *padapter,
 	RT_TRACE(_module_rtl871x_mlme_c_, _drv_notice_, ("+issue_probereq\n"));
 
 	pmgntframe = alloc_mgtxmitframe(pxmitpriv);
-	if (pmgntframe == NULL)
+	if (!pmgntframe)
 		goto exit;
 
 	/* update attribute */
@@ -3907,7 +3907,7 @@ void issue_action_BA(struct adapter *padapter, unsigned char *raddr, unsigned ch
 	DBG_871X("%s, category =%d, action =%d, status =%d\n", __func__, category, action, status);
 
 	pmgntframe = alloc_mgtxmitframe(pxmitpriv);
-	if (pmgntframe == NULL)
+	if (!pmgntframe)
 		return;
 
 	/* update attribute */
@@ -5031,12 +5031,12 @@ void report_survey_event(struct adapter *padapter, union recv_frame *precv_frame
 	pcmdpriv = &padapter->cmdpriv;
 
 	pcmd_obj = rtw_zmalloc(sizeof(struct cmd_obj));
-	if (pcmd_obj == NULL)
+	if (!pcmd_obj)
 		return;
 
 	cmdsz = (sizeof(struct survey_event) + sizeof(struct C2HEvent_Header));
 	pevtcmd = rtw_zmalloc(cmdsz);
-	if (pevtcmd == NULL) {
+	if (!pevtcmd) {
 		kfree(pcmd_obj);
 		return;
 	}
@@ -5084,12 +5084,12 @@ void report_surveydone_event(struct adapter *padapter)
 	struct cmd_priv *pcmdpriv = &padapter->cmdpriv;
 
 	pcmd_obj = rtw_zmalloc(sizeof(struct cmd_obj));
-	if (pcmd_obj == NULL)
+	if (!pcmd_obj)
 		return;
 
 	cmdsz = (sizeof(struct surveydone_event) + sizeof(struct C2HEvent_Header));
 	pevtcmd = rtw_zmalloc(cmdsz);
-	if (pevtcmd == NULL) {
+	if (!pevtcmd) {
 		kfree(pcmd_obj);
 		return;
 	}
@@ -5131,12 +5131,12 @@ void report_join_res(struct adapter *padapter, int res)
 	struct cmd_priv *pcmdpriv = &padapter->cmdpriv;
 
 	pcmd_obj = rtw_zmalloc(sizeof(struct cmd_obj));
-	if (pcmd_obj == NULL)
+	if (!pcmd_obj)
 		return;
 
 	cmdsz = (sizeof(struct joinbss_event) + sizeof(struct C2HEvent_Header));
 	pevtcmd = rtw_zmalloc(cmdsz);
-	if (pevtcmd == NULL) {
+	if (!pevtcmd) {
 		kfree(pcmd_obj);
 		return;
 	}
@@ -5182,12 +5182,12 @@ void report_wmm_edca_update(struct adapter *padapter)
 	struct cmd_priv *pcmdpriv = &padapter->cmdpriv;
 
 	pcmd_obj = rtw_zmalloc(sizeof(struct cmd_obj));
-	if (pcmd_obj == NULL)
+	if (!pcmd_obj)
 		return;
 
 	cmdsz = (sizeof(struct wmm_event) + sizeof(struct C2HEvent_Header));
 	pevtcmd = rtw_zmalloc(cmdsz);
-	if (pevtcmd == NULL) {
+	if (!pevtcmd) {
 		kfree(pcmd_obj);
 		return;
 	}
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

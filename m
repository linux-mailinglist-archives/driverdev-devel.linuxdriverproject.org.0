Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AFDDA13FA4
	for <lists+driverdev-devel@lfdr.de>; Sun,  5 May 2019 15:20:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A99DA85B94;
	Sun,  5 May 2019 13:20:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KIdfBY50gO_h; Sun,  5 May 2019 13:20:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C21218538A;
	Sun,  5 May 2019 13:20:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 05F351BF3B8
 for <devel@linuxdriverproject.org>; Sun,  5 May 2019 13:20:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id F3EB18538A
 for <devel@linuxdriverproject.org>; Sun,  5 May 2019 13:20:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fhlHv87Ll2_L for <devel@linuxdriverproject.org>;
 Sun,  5 May 2019 13:20:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 45F1F85116
 for <devel@driverdev.osuosl.org>; Sun,  5 May 2019 13:20:31 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id y13so5284446pfm.11
 for <devel@driverdev.osuosl.org>; Sun, 05 May 2019 06:20:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=2Doo+lglnNPg0EyRNMNjdEFntKFoZq9VqOdtgBEWIpY=;
 b=GGYQSg1n0GjOtWcjQQp2/X4i9CJpyrTM5+MEWZNJifHlRXiroZXNi6IGeX9qdC319L
 jeL5fA/gUTrPEo15bv+yXPpunrIZdrok7nGaxYByeGH8nW/tyC9daEkn69uNCroGn5vF
 cfZ19/CCB4fnkw03uOBt+ZgH2+BJ54twu6HQbGbfLK99a52ernaLIwKQvVgsUglLME17
 tShiHapzofNbbJAwnH3XnTCY3/Hkvpg8KVcQ2w0d0Abpwn9HWnY5ikjHX0qbKC6dij5E
 NkttvuCI/SZcR7xxy6x21qzXxtjntqoh84QG4AnePMy3VSD3KvETT5evCxWb5k/bnzzC
 mAGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=2Doo+lglnNPg0EyRNMNjdEFntKFoZq9VqOdtgBEWIpY=;
 b=s4Sr4s8kp3nS2Sxz9Ml9PP9cx5GUVRTh+T9ACu5MgN1GGcn7sp0NHqzV7K03Z+6zjm
 egoOhQf4Z0b+ErcWt4fHtHKthUqs5zDM0Awk8UQQhB5T/x5IG39lw37gPFkW8VdPKYiz
 OvW4DpQf+L5pYXDZnxchOoPO8NEuSo3KgFn2j6JgWlUGV8GztDo6JIejeZvUPRlPKp5N
 yfWaP97riwu+E1S7lltRz5NGghE+DmyfLPcM1SedA0HYoWACGya5GkqaOWaoJ+gn4bCG
 bH/SMKVvTL6jyVSiJGuDriQ4cadjspLveKwiVA3Arm0rHzd1jcqbBQgdbcBkBNj9mGBo
 vF7w==
X-Gm-Message-State: APjAAAWZ07awh6M+NRo+uIxtLHaWLQsGnzDbP4UYX+Z8pBIWAwhaXg9Z
 eYix0Lz6TGtMqug8jtsoarnquIEO
X-Google-Smtp-Source: APXvYqyR1sx82moMHP0c+jfWLdDOoW6kqZIvx88jMKpJFY1EsoOsNvHG2dQu8WM75zKd7qs/b5NkdA==
X-Received: by 2002:a63:4c26:: with SMTP id z38mr25331775pga.425.1557062430850; 
 Sun, 05 May 2019 06:20:30 -0700 (PDT)
Received: from localhost.localdomain ([103.87.56.229])
 by smtp.gmail.com with ESMTPSA id y14sm9493801pga.54.2019.05.05.06.20.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 05 May 2019 06:20:30 -0700 (PDT)
From: Vatsala Narang <vatsalanarang@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 2/6] staging: rtl8723bs: core: Replace NULL comparisons.
Date: Sun,  5 May 2019 18:50:13 +0530
Message-Id: <20190505132013.4289-1-vatsalanarang@gmail.com>
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
index 00d84d34da97..ac70bbaae722 100644
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
@@ -3909,7 +3909,7 @@ void issue_action_BA(struct adapter *padapter, unsigned char *raddr, unsigned ch
 	DBG_871X("%s, category =%d, action =%d, status =%d\n", __func__, category, action, status);
 
 	pmgntframe = alloc_mgtxmitframe(pxmitpriv);
-	if (pmgntframe == NULL)
+	if (!pmgntframe)
 		return;
 
 	/* update attribute */
@@ -5033,12 +5033,12 @@ void report_survey_event(struct adapter *padapter, union recv_frame *precv_frame
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
@@ -5086,12 +5086,12 @@ void report_surveydone_event(struct adapter *padapter)
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
@@ -5133,12 +5133,12 @@ void report_join_res(struct adapter *padapter, int res)
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
@@ -5184,12 +5184,12 @@ void report_wmm_edca_update(struct adapter *padapter)
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

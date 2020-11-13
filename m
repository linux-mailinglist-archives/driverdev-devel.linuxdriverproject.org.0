Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C7C52B22E5
	for <lists+driverdev-devel@lfdr.de>; Fri, 13 Nov 2020 18:46:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E939D8792A;
	Fri, 13 Nov 2020 17:46:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 83va0LnwHxCj; Fri, 13 Nov 2020 17:46:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id F383F87917;
	Fri, 13 Nov 2020 17:46:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 462BE1BF990
 for <devel@linuxdriverproject.org>; Fri, 13 Nov 2020 17:46:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id EB81F2E262
 for <devel@linuxdriverproject.org>; Fri, 13 Nov 2020 17:46:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZOOR9Ywjlx+C for <devel@linuxdriverproject.org>;
 Fri, 13 Nov 2020 17:46:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f175.google.com (mail-il1-f175.google.com
 [209.85.166.175])
 by silver.osuosl.org (Postfix) with ESMTPS id 5180122DEC
 for <devel@driverdev.osuosl.org>; Fri, 13 Nov 2020 17:46:51 +0000 (UTC)
Received: by mail-il1-f175.google.com with SMTP id y17so9218255ilg.4
 for <devel@driverdev.osuosl.org>; Fri, 13 Nov 2020 09:46:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linuxfoundation.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Qd1eMF3Snx/S44vJhI0lvR0izYUd0pJkDl8pUTw476M=;
 b=hnfllv1gN4r7GNagxEOwgUdFDGtSCe/tY5l8KidnnPeysqSCyDBndquy0gCJuKbJq/
 jaZcRjjNqLMlX+YmeiyD0jd5t/Os9nPnfPdNb6q3Ch76GtVI+LYxELHsGq/D+rAXDLnX
 /74wwP+gRr977rJiLuZJFnov7dAPAFZJF1bAw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Qd1eMF3Snx/S44vJhI0lvR0izYUd0pJkDl8pUTw476M=;
 b=W3xTKSoHRjkpfw3Tb72XZFR/NDF396aGxt97bvr8tlYgAnYRtmjrIXxpp/2TAI4g1G
 ZjCiXLc7PXovp4TGk1ln1JuyEHtn3jI8kltKLEvVFp9DvuVefl9uGLAKpGTtmIr9kuZ5
 33TpJkRCUJ8FedQUK/LZc8DElua6/6I11GbbRVxNwi3I2m9RJOOZqGlJkOBaJc0AqWIa
 kSvxQue14umj/s0cDrJUVavzFtRBHuKUS7TMIPSsBiDkFKywrXXmbqKNG4hBq5bOjaFW
 CnhYST23hrTSuKDU10ndsG7osKHF1njxx27cRNzieDcKy/WBI1rVdG4LDpx0GZxme+p8
 1XlQ==
X-Gm-Message-State: AOAM532oeuf7GkYpOimM+slCcLZ4d/2JbtvlMe7hjdFttaAFx8KsD49w
 H+YqeDkKL5hpZLYVgKOQ4/L7JA==
X-Google-Smtp-Source: ABdhPJyFLtVZS22Hy3GIumYaSmQAg9OWpbhsIVkMZRkDcO/qSiEIaFmQze9v57BiyqDlDSgejUn3Ug==
X-Received: by 2002:a92:600e:: with SMTP id u14mr660525ilb.221.1605289606467; 
 Fri, 13 Nov 2020 09:46:46 -0800 (PST)
Received: from shuah-t480s.internal (c-24-9-64-241.hsd1.co.comcast.net.
 [24.9.64.241])
 by smtp.gmail.com with ESMTPSA id y14sm4772585ilb.66.2020.11.13.09.46.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Nov 2020 09:46:45 -0800 (PST)
From: Shuah Khan <skhan@linuxfoundation.org>
To: gregkh@linuxfoundation.org,
	keescook@chromium.org,
	peterz@infradead.org
Subject: [PATCH v2 11/13] drivers/staging/rtl8188eu: convert stats to use
 seqnum_ops
Date: Fri, 13 Nov 2020 10:46:13 -0700
Message-Id: <9862cdd72a54d11dc0d08489df4c19902aab3785.1605287778.git.skhan@linuxfoundation.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <cover.1605287778.git.skhan@linuxfoundation.org>
References: <cover.1605287778.git.skhan@linuxfoundation.org>
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
 Shuah Khan <skhan@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Sequence Number api provides interfaces for unsigned atomic up counters
leveraging atomic_t and atomic64_t ops underneath. Convert it to use
seqnum_ops.

atomic_t variables used for stats are atomic counters. Convert them to
use seqnum_ops.

Signed-off-by: Shuah Khan <skhan@linuxfoundation.org>
---
 drivers/staging/rtl8188eu/core/rtw_mlme_ext.c | 23 ++++++++++++++-----
 .../staging/rtl8188eu/include/rtw_mlme_ext.h  |  3 ++-
 2 files changed, 19 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
index b3eddcb83cd0..d8b5ab1dac26 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
@@ -7,6 +7,7 @@
 #define _RTW_MLME_EXT_C_
 
 #include <linux/ieee80211.h>
+#include <linux/seqnum_ops.h>
 #include <asm/unaligned.h>
 
 #include <osdep_service.h>
@@ -3860,7 +3861,7 @@ static void init_mlme_ext_priv_value(struct adapter *padapter)
 		_12M_RATE_, _24M_RATE_, 0xff,
 	};
 
-	atomic_set(&pmlmeext->event_seq, 0);
+	seqnum32_init(&pmlmeext->event_seq);
 	pmlmeext->mgnt_seq = 0;/* reset to zero when disconnect at client mode */
 
 	pmlmeext->cur_channel = padapter->registrypriv.channel;
@@ -4189,7 +4190,9 @@ void report_survey_event(struct adapter *padapter,
 	pc2h_evt_hdr = (struct C2HEvent_Header *)(pevtcmd);
 	pc2h_evt_hdr->len = sizeof(struct survey_event);
 	pc2h_evt_hdr->ID = _Survey_EVT_;
-	pc2h_evt_hdr->seq = atomic_inc_return(&pmlmeext->event_seq);
+
+	/* seq is unsigned int seq:8 */
+	pc2h_evt_hdr->seq = seqnum32_inc_return(&pmlmeext->event_seq);
 
 	psurvey_evt = (struct survey_event *)(pevtcmd + sizeof(struct C2HEvent_Header));
 
@@ -4239,7 +4242,9 @@ void report_surveydone_event(struct adapter *padapter)
 	pc2h_evt_hdr = (struct C2HEvent_Header *)(pevtcmd);
 	pc2h_evt_hdr->len = sizeof(struct surveydone_event);
 	pc2h_evt_hdr->ID = _SurveyDone_EVT_;
-	pc2h_evt_hdr->seq = atomic_inc_return(&pmlmeext->event_seq);
+
+	/* seq is unsigned int seq:8 */
+	pc2h_evt_hdr->seq = seqnum32_inc_return(&pmlmeext->event_seq);
 
 	psurveydone_evt = (struct surveydone_event *)(pevtcmd + sizeof(struct C2HEvent_Header));
 	psurveydone_evt->bss_cnt = pmlmeext->sitesurvey_res.bss_cnt;
@@ -4283,7 +4288,9 @@ void report_join_res(struct adapter *padapter, int res)
 	pc2h_evt_hdr = (struct C2HEvent_Header *)(pevtcmd);
 	pc2h_evt_hdr->len = sizeof(struct joinbss_event);
 	pc2h_evt_hdr->ID = _JoinBss_EVT_;
-	pc2h_evt_hdr->seq = atomic_inc_return(&pmlmeext->event_seq);
+
+	/* seq is unsigned int seq:8 */
+	pc2h_evt_hdr->seq = seqnum32_inc_return(&pmlmeext->event_seq);
 
 	pjoinbss_evt = (struct joinbss_event *)(pevtcmd + sizeof(struct C2HEvent_Header));
 	memcpy((unsigned char *)(&pjoinbss_evt->network.network), &pmlmeinfo->network, sizeof(struct wlan_bssid_ex));
@@ -4333,7 +4340,9 @@ void report_del_sta_event(struct adapter *padapter, unsigned char *MacAddr,
 	pc2h_evt_hdr = (struct C2HEvent_Header *)(pevtcmd);
 	pc2h_evt_hdr->len = sizeof(struct stadel_event);
 	pc2h_evt_hdr->ID = _DelSTA_EVT_;
-	pc2h_evt_hdr->seq = atomic_inc_return(&pmlmeext->event_seq);
+
+	/* seq is unsigned int seq:8 */
+	pc2h_evt_hdr->seq = seqnum32_inc_return(&pmlmeext->event_seq);
 
 	pdel_sta_evt = (struct stadel_event *)(pevtcmd + sizeof(struct C2HEvent_Header));
 	ether_addr_copy((unsigned char *)(&pdel_sta_evt->macaddr), MacAddr);
@@ -4386,7 +4395,9 @@ void report_add_sta_event(struct adapter *padapter, unsigned char *MacAddr,
 	pc2h_evt_hdr = (struct C2HEvent_Header *)(pevtcmd);
 	pc2h_evt_hdr->len = sizeof(struct stassoc_event);
 	pc2h_evt_hdr->ID = _AddSTA_EVT_;
-	pc2h_evt_hdr->seq = atomic_inc_return(&pmlmeext->event_seq);
+
+	/* seq is unsigned int seq:8 */
+	pc2h_evt_hdr->seq = seqnum32_inc_return(&pmlmeext->event_seq);
 
 	padd_sta_evt = (struct stassoc_event *)(pevtcmd + sizeof(struct C2HEvent_Header));
 	ether_addr_copy((unsigned char *)(&padd_sta_evt->macaddr), MacAddr);
diff --git a/drivers/staging/rtl8188eu/include/rtw_mlme_ext.h b/drivers/staging/rtl8188eu/include/rtw_mlme_ext.h
index b11a6886a083..09b7e3bb2738 100644
--- a/drivers/staging/rtl8188eu/include/rtw_mlme_ext.h
+++ b/drivers/staging/rtl8188eu/include/rtw_mlme_ext.h
@@ -7,6 +7,7 @@
 #ifndef __RTW_MLME_EXT_H_
 #define __RTW_MLME_EXT_H_
 
+#include <linux/seqnum_ops.h>
 #include <osdep_service.h>
 #include <drv_types.h>
 #include <wlan_bssdef.h>
@@ -393,7 +394,7 @@ struct p2p_oper_class_map {
 struct mlme_ext_priv {
 	struct adapter	*padapter;
 	u8	mlmeext_init;
-	atomic_t	event_seq;
+	struct	seqnum32 event_seq;
 	u16	mgnt_seq;
 
 	unsigned char	cur_channel;
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

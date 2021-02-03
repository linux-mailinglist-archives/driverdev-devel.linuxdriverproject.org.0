Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C27D30E216
	for <lists+driverdev-devel@lfdr.de>; Wed,  3 Feb 2021 19:12:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 26768871B2;
	Wed,  3 Feb 2021 18:12:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rZM7Q4aPnMiK; Wed,  3 Feb 2021 18:12:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 83839871A7;
	Wed,  3 Feb 2021 18:12:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8BC731BF2F9
 for <devel@linuxdriverproject.org>; Wed,  3 Feb 2021 18:12:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8803187164
 for <devel@linuxdriverproject.org>; Wed,  3 Feb 2021 18:12:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iQxk66v5zToZ for <devel@linuxdriverproject.org>;
 Wed,  3 Feb 2021 18:12:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f175.google.com (mail-il1-f175.google.com
 [209.85.166.175])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 48E4C87158
 for <devel@driverdev.osuosl.org>; Wed,  3 Feb 2021 18:12:23 +0000 (UTC)
Received: by mail-il1-f175.google.com with SMTP id y15so86591ilj.11
 for <devel@driverdev.osuosl.org>; Wed, 03 Feb 2021 10:12:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linuxfoundation.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=sMW3CNRkXAOc9KAd8J07IhXCHX6Qv+SqEQtIsx8ACMQ=;
 b=b9fnxMS19FGFawMAjOPzOEcoC4JgrqxWgH8K2OX2hwQqH1l4SDSpNNoUUstpJzf4G9
 KY0hONkplnyMToYmcCauhew9EeN5GPuDVyaOF5DrLuEUVQ2Ne4S7nr4yk7QUfbHjUjhC
 jJLnBv8suG996FrIsQO9a86ihkZy+BQnf4FxE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=sMW3CNRkXAOc9KAd8J07IhXCHX6Qv+SqEQtIsx8ACMQ=;
 b=hFIi6n57w105sTrzirU1+9th8H/Adi5ftvrZymRRVTl46t3VuJXIlFv87QHaLFaVsf
 xJ2vn6kXRWkf/unB6cHzhsltSaDfwfA5aG0lfiuOyUbh8ExZCVp3n6ovmfVRK4tfRx/+
 vPfd0qkjfzt7aFA4dBrZqckIu9KHB9VNb2xmFwI9KcCvh1Or0Kmlteb4grx3/QvLRiN9
 3lDyDaPH72UdcxNPBTw0G9nqXqGVnoEVKQ2T+IeqQnXPCWRCLgLLlinbIYMUQqcFYwIl
 J3K8GhSgySi/Jqydxfc6l6cxTgRndTcjGeE1WGz5gwfpZj5SfOi00qDEGrFXu3CeyMYS
 atDw==
X-Gm-Message-State: AOAM5303XTz8b77X65VCY0YrVPkNYTT4mRfjro6K4vP6xO0+GZqs1g/N
 /zpOOdjkihhVsRlZu0mG2kaVWA==
X-Google-Smtp-Source: ABdhPJxjrtfT1+6QN/5yrKNnuIvDVPU5UrlfJEcRxt7l04gm+3ENjo/Y9yfHqeiCNcK9Ib3TtZNR/Q==
X-Received: by 2002:a92:650b:: with SMTP id z11mr3627266ilb.84.1612375942658; 
 Wed, 03 Feb 2021 10:12:22 -0800 (PST)
Received: from shuah-t480s.internal (c-24-9-64-241.hsd1.co.comcast.net.
 [24.9.64.241])
 by smtp.gmail.com with ESMTPSA id h21sm399684iob.30.2021.02.03.10.12.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 03 Feb 2021 10:12:22 -0800 (PST)
From: Shuah Khan <skhan@linuxfoundation.org>
To: corbet@lwn.net, gregkh@linuxfoundation.org, peterz@infradead.org,
 keescook@chromium.org, rafael@kernel.org, lenb@kernel.org,
 james.morse@arm.com, tony.luck@intel.com, bp@alien8.de
Subject: [PATCH v3 5/7] drivers/staging/rtl8723bs: convert event_seq to use
 seqnum_ops
Date: Wed,  3 Feb 2021 11:12:01 -0700
Message-Id: <1dffcc128b59ed991f9fb9f5064a05741c282f26.1612314468.git.skhan@linuxfoundation.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <cover.1612314468.git.skhan@linuxfoundation.org>
References: <cover.1612314468.git.skhan@linuxfoundation.org>
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
Cc: devel@driverdev.osuosl.org, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-acpi@vger.kernel.org,
 linux-kselftest@vger.kernel.org, Shuah Khan <skhan@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Sequence Number api provides interfaces for unsigned atomic up counters
leveraging atomic_t and atomic64_t ops underneath. Convert it to use
seqnum_ops.

event_seq atomic_t variables are atomic counters. Convert them to use
seqnum_ops.

Signed-off-by: Shuah Khan <skhan@linuxfoundation.org>
---
 drivers/staging/rtl8723bs/core/rtw_cmd.c      |  3 +-
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 33 +++++++++++++------
 drivers/staging/rtl8723bs/include/rtw_cmd.h   |  3 +-
 .../staging/rtl8723bs/include/rtw_mlme_ext.h  |  3 +-
 4 files changed, 29 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
index 3fe79169a811..4db737cd748e 100644
--- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
+++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
@@ -10,6 +10,7 @@
 #include <rtw_debug.h>
 #include <hal_btcoex.h>
 #include <linux/jiffies.h>
+#include <linux/seqnum_ops.h>
 
 static struct _cmd_callback rtw_cmd_callback[] = {
 	{GEN_CMD_CODE(_Read_MACREG), NULL}, /*0*/
@@ -207,7 +208,7 @@ static void c2h_wk_callback(_workitem * work);
 int rtw_init_evt_priv(struct evt_priv *pevtpriv)
 {
 	/* allocate DMA-able/Non-Page memory for cmd_buf and rsp_buf */
-	atomic_set(&pevtpriv->event_seq, 0);
+	seqnum32_init(&pevtpriv->event_seq, 0);
 	pevtpriv->evt_done_cnt = 0;
 
 	_init_workitem(&pevtpriv->c2h_wk, c2h_wk_callback, NULL);
diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index fa4b0259c5ae..46e7f487a5ba 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
@@ -11,6 +11,7 @@
 #include <rtw_wifi_regd.h>
 #include <hal_btcoex.h>
 #include <linux/kernel.h>
+#include <linux/seqnum_ops.h>
 #include <asm/unaligned.h>
 
 static struct mlme_handler mlme_sta_tbl[] = {
@@ -281,7 +282,7 @@ static void init_mlme_ext_priv_value(struct adapter *padapter)
 	struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
 	struct mlme_ext_info *pmlmeinfo = &pmlmeext->mlmext_info;
 
-	atomic_set(&pmlmeext->event_seq, 0);
+	seqnum32_init(&pmlmeext->event_seq, 0);
 	pmlmeext->mgnt_seq = 0;/* reset to zero when disconnect at client mode */
 	pmlmeext->sa_query_seq = 0;
 	pmlmeext->mgnt_80211w_IPN = 0;
@@ -5049,7 +5050,9 @@ void report_survey_event(struct adapter *padapter, union recv_frame *precv_frame
 	pc2h_evt_hdr = (struct C2HEvent_Header *)(pevtcmd);
 	pc2h_evt_hdr->len = sizeof(struct survey_event);
 	pc2h_evt_hdr->ID = GEN_EVT_CODE(_Survey);
-	pc2h_evt_hdr->seq = atomic_inc_return(&pmlmeext->event_seq);
+
+	/* seq is unsigned int seq:8 */
+	pc2h_evt_hdr->seq = seqnum32_inc(&pmlmeext->event_seq);
 
 	psurvey_evt = (struct survey_event *)(pevtcmd + sizeof(struct C2HEvent_Header));
 
@@ -5102,7 +5105,9 @@ void report_surveydone_event(struct adapter *padapter)
 	pc2h_evt_hdr = (struct C2HEvent_Header *)(pevtcmd);
 	pc2h_evt_hdr->len = sizeof(struct surveydone_event);
 	pc2h_evt_hdr->ID = GEN_EVT_CODE(_SurveyDone);
-	pc2h_evt_hdr->seq = atomic_inc_return(&pmlmeext->event_seq);
+
+	/* seq is unsigned int seq:8 */
+	pc2h_evt_hdr->seq = seqnum32_inc(&pmlmeext->event_seq);
 
 	psurveydone_evt = (struct surveydone_event *)(pevtcmd + sizeof(struct C2HEvent_Header));
 	psurveydone_evt->bss_cnt = pmlmeext->sitesurvey_res.bss_cnt;
@@ -5149,7 +5154,9 @@ void report_join_res(struct adapter *padapter, int res)
 	pc2h_evt_hdr = (struct C2HEvent_Header *)(pevtcmd);
 	pc2h_evt_hdr->len = sizeof(struct joinbss_event);
 	pc2h_evt_hdr->ID = GEN_EVT_CODE(_JoinBss);
-	pc2h_evt_hdr->seq = atomic_inc_return(&pmlmeext->event_seq);
+
+	/* seq is unsigned int seq:8 */
+	pc2h_evt_hdr->seq = seqnum32_inc(&pmlmeext->event_seq);
 
 	pjoinbss_evt = (struct joinbss_event *)(pevtcmd + sizeof(struct C2HEvent_Header));
 	memcpy((unsigned char *)(&(pjoinbss_evt->network.network)), &(pmlmeinfo->network), sizeof(struct wlan_bssid_ex));
@@ -5200,7 +5207,9 @@ void report_wmm_edca_update(struct adapter *padapter)
 	pc2h_evt_hdr = (struct C2HEvent_Header *)(pevtcmd);
 	pc2h_evt_hdr->len = sizeof(struct wmm_event);
 	pc2h_evt_hdr->ID = GEN_EVT_CODE(_WMM);
-	pc2h_evt_hdr->seq = atomic_inc_return(&pmlmeext->event_seq);
+
+	/* seq is unsigned int seq:8 */
+	pc2h_evt_hdr->seq = seqnum32_inc(&pmlmeext->event_seq);
 
 	pwmm_event = (struct wmm_event *)(pevtcmd + sizeof(struct C2HEvent_Header));
 	pwmm_event->wmm = 0;
@@ -5247,7 +5256,9 @@ void report_del_sta_event(struct adapter *padapter, unsigned char *MacAddr, unsi
 	pc2h_evt_hdr = (struct C2HEvent_Header *)(pevtcmd);
 	pc2h_evt_hdr->len = sizeof(struct stadel_event);
 	pc2h_evt_hdr->ID = GEN_EVT_CODE(_DelSTA);
-	pc2h_evt_hdr->seq = atomic_inc_return(&pmlmeext->event_seq);
+
+	/* seq is unsigned int seq:8 */
+	pc2h_evt_hdr->seq = seqnum32_inc(&pmlmeext->event_seq);
 
 	pdel_sta_evt = (struct stadel_event *)(pevtcmd + sizeof(struct C2HEvent_Header));
 	memcpy((unsigned char *)(&(pdel_sta_evt->macaddr)), MacAddr, ETH_ALEN);
@@ -5300,7 +5311,9 @@ void report_add_sta_event(struct adapter *padapter, unsigned char *MacAddr, int
 	pc2h_evt_hdr = (struct C2HEvent_Header *)(pevtcmd);
 	pc2h_evt_hdr->len = sizeof(struct stassoc_event);
 	pc2h_evt_hdr->ID = GEN_EVT_CODE(_AddSTA);
-	pc2h_evt_hdr->seq = atomic_inc_return(&pmlmeext->event_seq);
+
+	/* seq is unsigned int seq:8 */
+	pc2h_evt_hdr->seq = seqnum32_inc(&pmlmeext->event_seq);
 
 	padd_sta_evt = (struct stassoc_event *)(pevtcmd + sizeof(struct C2HEvent_Header));
 	memcpy((unsigned char *)(&(padd_sta_evt->macaddr)), MacAddr, ETH_ALEN);
@@ -6616,10 +6629,10 @@ u8 mlme_evt_hdl(struct adapter *padapter, unsigned char *pbuf)
 
 	#ifdef CHECK_EVENT_SEQ
 	/*  checking event sequence... */
-	if (evt_seq != (atomic_read(&pevt_priv->event_seq) & 0x7f)) {
+	if (evt_seq != (seqnum32_get(&pevt_priv->event_seq) & 0x7f)) {
 		RT_TRACE(_module_rtl871x_cmd_c_, _drv_info_,
 			 ("Event Seq Error! %d vs %d\n", (evt_seq & 0x7f),
-			  (atomic_read(&pevt_priv->event_seq) & 0x7f)));
+			  (seqnum32_get(&pevt_priv->event_seq) & 0x7f)));
 
 		pevt_priv->event_seq = (evt_seq+1)&0x7f;
 
@@ -6643,7 +6656,7 @@ u8 mlme_evt_hdl(struct adapter *padapter, unsigned char *pbuf)
 
 	}
 
-	atomic_inc(&pevt_priv->event_seq);
+	seqnum32_inc(&pevt_priv->event_seq);
 
 	peventbuf += 2;
 
diff --git a/drivers/staging/rtl8723bs/include/rtw_cmd.h b/drivers/staging/rtl8723bs/include/rtw_cmd.h
index 56c77bc7ca81..cc0ea649388b 100644
--- a/drivers/staging/rtl8723bs/include/rtw_cmd.h
+++ b/drivers/staging/rtl8723bs/include/rtw_cmd.h
@@ -8,6 +8,7 @@
 #define __RTW_CMD_H_
 
 #include <linux/completion.h>
+#include <linux/seqnum_ops.h>
 
 #define C2H_MEM_SZ (16*1024)
 
@@ -62,7 +63,7 @@
 		struct rtw_cbuf *c2h_queue;
 		#define C2H_QUEUE_MAX_LEN 10
 
-		atomic_t event_seq;
+		struct seqnum32 event_seq;
 		u8 *evt_buf;	/* shall be non-paged, and 4 bytes aligned */
 		u8 *evt_allocated_buf;
 		u32 evt_done_cnt;
diff --git a/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h b/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h
index 1567831caf91..537813c00670 100644
--- a/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h
+++ b/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h
@@ -7,6 +7,7 @@
 #ifndef __RTW_MLME_EXT_H_
 #define __RTW_MLME_EXT_H_
 
+#include <linux/seqnum_ops.h>
 
 /* 	Commented by Albert 20101105 */
 /* 	Increase the SURVEY_TO value from 100 to 150  (100ms to 150ms) */
@@ -461,7 +462,7 @@ struct p2p_oper_class_map {
 struct mlme_ext_priv {
 	struct adapter	*padapter;
 	u8 mlmeext_init;
-	atomic_t		event_seq;
+	struct seqnum32	event_seq;
 	u16 mgnt_seq;
 	u16 sa_query_seq;
 	u64 mgnt_80211w_IPN;
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

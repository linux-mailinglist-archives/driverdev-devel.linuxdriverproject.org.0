Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A8422B22E3
	for <lists+driverdev-devel@lfdr.de>; Fri, 13 Nov 2020 18:46:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C679F875C0;
	Fri, 13 Nov 2020 17:46:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Zgmgddm-SxhK; Fri, 13 Nov 2020 17:46:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D4AE18758D;
	Fri, 13 Nov 2020 17:46:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 856AD1BF990
 for <devel@linuxdriverproject.org>; Fri, 13 Nov 2020 17:46:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 81113874D9
 for <devel@linuxdriverproject.org>; Fri, 13 Nov 2020 17:46:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XswNw9FGn_L0 for <devel@linuxdriverproject.org>;
 Fri, 13 Nov 2020 17:46:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f193.google.com (mail-il1-f193.google.com
 [209.85.166.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 62ED5874AA
 for <devel@driverdev.osuosl.org>; Fri, 13 Nov 2020 17:46:46 +0000 (UTC)
Received: by mail-il1-f193.google.com with SMTP id g7so9192590ilr.12
 for <devel@driverdev.osuosl.org>; Fri, 13 Nov 2020 09:46:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linuxfoundation.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gWMHp39aqhVdsLR3L+nV+MkbZ+VN9N1vHN/GLCjPdNE=;
 b=RcR6lIQzqg0ca/3xnu4OMc3zwzYe8ozs49EVp7djUBrZK7EOMnED32Y6tfFwTS2Hqz
 MCN24ujnRQwyaVKNmOS22ehQn5G64+MwqhP+DZI9IF4pNyzS9ovbdVkOqyqVg8HNs9WP
 oqZih2ToRsmS1vEvQpza4DJaUN8hjxp4bBs/o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gWMHp39aqhVdsLR3L+nV+MkbZ+VN9N1vHN/GLCjPdNE=;
 b=Or4FJXS/fbDS38krbFWLABWzw8gxrGda06CuUXxE/rw4x/wD7Kgszza12jbXHi3PTd
 fzARks3knsn00VjKVqgCWAum8VhrwksxDdsCpUcsgd4nfLgxy0XXQvJXAQOjByQpXtHr
 qvMMRY0MbT6OJRlGEQS47sN4udy47JIWPlf2kU3UxE1lh8lggUwW7WKQAc51BOCN5hLX
 Yq3QQl5IrzFrTlPE6UvWTQI4BJmZRXPPKPYeInvXkN8hSxzEUlbeE+IMJx0Y+l6QhrN4
 Hy2m1uDNczEDj27DefUvMiNeUgWr+dtpUAYU6SedlpgWTtiaDuw4ZuuTe7sqA+bXlqXH
 BjaA==
X-Gm-Message-State: AOAM53285OKoTLezJ52M+LOIhFjMg4XGHxZpJ8KGMoen1pEem8ejFFvj
 geAl/XAU5MRFOkHPq3YWDw3mJg==
X-Google-Smtp-Source: ABdhPJzyr/QoC+SZoDFh2rofWNinbPqw6/Ub9ktDuvGYfZ7Cj9HBeg1eeUjW+uvyQ40LyDMftPyZZA==
X-Received: by 2002:a92:35c7:: with SMTP id c68mr734852ilf.251.1605289603568; 
 Fri, 13 Nov 2020 09:46:43 -0800 (PST)
Received: from shuah-t480s.internal (c-24-9-64-241.hsd1.co.comcast.net.
 [24.9.64.241])
 by smtp.gmail.com with ESMTPSA id y14sm4772585ilb.66.2020.11.13.09.46.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Nov 2020 09:46:43 -0800 (PST)
From: Shuah Khan <skhan@linuxfoundation.org>
To: gregkh@linuxfoundation.org,
	keescook@chromium.org,
	peterz@infradead.org
Subject: [PATCH v2 09/13] drivers/staging/rtl8723bs: convert stats to use
 seqnum_ops
Date: Fri, 13 Nov 2020 10:46:11 -0700
Message-Id: <34ff683c46a964194a272b63f7baf2206c201d88.1605287778.git.skhan@linuxfoundation.org>
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
 drivers/staging/rtl8723bs/core/rtw_cmd.c      |  3 +-
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 33 +++++++++++++------
 drivers/staging/rtl8723bs/include/rtw_cmd.h   |  3 +-
 .../staging/rtl8723bs/include/rtw_mlme_ext.h  |  3 +-
 4 files changed, 29 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
index 2abe205e3453..a82a0d9af3b0 100644
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
+	seqnum32_init(&pevtpriv->event_seq);
 	pevtpriv->evt_done_cnt = 0;
 
 	_init_workitem(&pevtpriv->c2h_wk, c2h_wk_callback, NULL);
diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index b912ad2f4b72..48be6049b45c 100644
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
+	seqnum32_init(&pmlmeext->event_seq);
 	pmlmeext->mgnt_seq = 0;/* reset to zero when disconnect at client mode */
 	pmlmeext->sa_query_seq = 0;
 	pmlmeext->mgnt_80211w_IPN = 0;
@@ -5051,7 +5052,9 @@ void report_survey_event(struct adapter *padapter, union recv_frame *precv_frame
 	pc2h_evt_hdr = (struct C2HEvent_Header *)(pevtcmd);
 	pc2h_evt_hdr->len = sizeof(struct survey_event);
 	pc2h_evt_hdr->ID = GEN_EVT_CODE(_Survey);
-	pc2h_evt_hdr->seq = atomic_inc_return(&pmlmeext->event_seq);
+
+	/* seq is unsigned int seq:8 */
+	pc2h_evt_hdr->seq = seqnum32_inc_return(&pmlmeext->event_seq);
 
 	psurvey_evt = (struct survey_event *)(pevtcmd + sizeof(struct C2HEvent_Header));
 
@@ -5104,7 +5107,9 @@ void report_surveydone_event(struct adapter *padapter)
 	pc2h_evt_hdr = (struct C2HEvent_Header *)(pevtcmd);
 	pc2h_evt_hdr->len = sizeof(struct surveydone_event);
 	pc2h_evt_hdr->ID = GEN_EVT_CODE(_SurveyDone);
-	pc2h_evt_hdr->seq = atomic_inc_return(&pmlmeext->event_seq);
+
+	/* seq is unsigned int seq:8 */
+	pc2h_evt_hdr->seq = seqnum32_inc_return(&pmlmeext->event_seq);
 
 	psurveydone_evt = (struct surveydone_event *)(pevtcmd + sizeof(struct C2HEvent_Header));
 	psurveydone_evt->bss_cnt = pmlmeext->sitesurvey_res.bss_cnt;
@@ -5151,7 +5156,9 @@ void report_join_res(struct adapter *padapter, int res)
 	pc2h_evt_hdr = (struct C2HEvent_Header *)(pevtcmd);
 	pc2h_evt_hdr->len = sizeof(struct joinbss_event);
 	pc2h_evt_hdr->ID = GEN_EVT_CODE(_JoinBss);
-	pc2h_evt_hdr->seq = atomic_inc_return(&pmlmeext->event_seq);
+
+	/* seq is unsigned int seq:8 */
+	pc2h_evt_hdr->seq = seqnum32_inc_return(&pmlmeext->event_seq);
 
 	pjoinbss_evt = (struct joinbss_event *)(pevtcmd + sizeof(struct C2HEvent_Header));
 	memcpy((unsigned char *)(&(pjoinbss_evt->network.network)), &(pmlmeinfo->network), sizeof(struct wlan_bssid_ex));
@@ -5202,7 +5209,9 @@ void report_wmm_edca_update(struct adapter *padapter)
 	pc2h_evt_hdr = (struct C2HEvent_Header *)(pevtcmd);
 	pc2h_evt_hdr->len = sizeof(struct wmm_event);
 	pc2h_evt_hdr->ID = GEN_EVT_CODE(_WMM);
-	pc2h_evt_hdr->seq = atomic_inc_return(&pmlmeext->event_seq);
+
+	/* seq is unsigned int seq:8 */
+	pc2h_evt_hdr->seq = seqnum32_inc_return(&pmlmeext->event_seq);
 
 	pwmm_event = (struct wmm_event *)(pevtcmd + sizeof(struct C2HEvent_Header));
 	pwmm_event->wmm = 0;
@@ -5249,7 +5258,9 @@ void report_del_sta_event(struct adapter *padapter, unsigned char *MacAddr, unsi
 	pc2h_evt_hdr = (struct C2HEvent_Header *)(pevtcmd);
 	pc2h_evt_hdr->len = sizeof(struct stadel_event);
 	pc2h_evt_hdr->ID = GEN_EVT_CODE(_DelSTA);
-	pc2h_evt_hdr->seq = atomic_inc_return(&pmlmeext->event_seq);
+
+	/* seq is unsigned int seq:8 */
+	pc2h_evt_hdr->seq = seqnum32_inc_return(&pmlmeext->event_seq);
 
 	pdel_sta_evt = (struct stadel_event *)(pevtcmd + sizeof(struct C2HEvent_Header));
 	memcpy((unsigned char *)(&(pdel_sta_evt->macaddr)), MacAddr, ETH_ALEN);
@@ -5302,7 +5313,9 @@ void report_add_sta_event(struct adapter *padapter, unsigned char *MacAddr, int
 	pc2h_evt_hdr = (struct C2HEvent_Header *)(pevtcmd);
 	pc2h_evt_hdr->len = sizeof(struct stassoc_event);
 	pc2h_evt_hdr->ID = GEN_EVT_CODE(_AddSTA);
-	pc2h_evt_hdr->seq = atomic_inc_return(&pmlmeext->event_seq);
+
+	/* seq is unsigned int seq:8 */
+	pc2h_evt_hdr->seq = seqnum32_inc_return(&pmlmeext->event_seq);
 
 	padd_sta_evt = (struct stassoc_event *)(pevtcmd + sizeof(struct C2HEvent_Header));
 	memcpy((unsigned char *)(&(padd_sta_evt->macaddr)), MacAddr, ETH_ALEN);
@@ -6620,10 +6633,10 @@ u8 mlme_evt_hdl(struct adapter *padapter, unsigned char *pbuf)
 
 	#ifdef CHECK_EVENT_SEQ
 	/*  checking event sequence... */
-	if (evt_seq != (atomic_read(&pevt_priv->event_seq) & 0x7f)) {
+	if (evt_seq != (seqnum32_fetch(&pevt_priv->event_seq) & 0x7f)) {
 		RT_TRACE(_module_rtl871x_cmd_c_, _drv_info_,
 			 ("Event Seq Error! %d vs %d\n", (evt_seq & 0x7f),
-			  (atomic_read(&pevt_priv->event_seq) & 0x7f)));
+			  (seqnum32_fetch(&pevt_priv->event_seq) & 0x7f)));
 
 		pevt_priv->event_seq = (evt_seq+1)&0x7f;
 
@@ -6647,7 +6660,7 @@ u8 mlme_evt_hdl(struct adapter *padapter, unsigned char *pbuf)
 
 	}
 
-	atomic_inc(&pevt_priv->event_seq);
+	seqnum32_inc_return(&pevt_priv->event_seq);
 
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

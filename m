Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9ECC2AE03E
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Nov 2020 20:54:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4FAD487307;
	Tue, 10 Nov 2020 19:54:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OOtiYFOKRA9p; Tue, 10 Nov 2020 19:54:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5471987277;
	Tue, 10 Nov 2020 19:54:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 572441BF30A
 for <devel@linuxdriverproject.org>; Tue, 10 Nov 2020 19:54:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 53C8986410
 for <devel@linuxdriverproject.org>; Tue, 10 Nov 2020 19:54:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CHmFRrteKCMr for <devel@linuxdriverproject.org>;
 Tue, 10 Nov 2020 19:54:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f196.google.com (mail-il1-f196.google.com
 [209.85.166.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2D2B7863BE
 for <devel@driverdev.osuosl.org>; Tue, 10 Nov 2020 19:54:47 +0000 (UTC)
Received: by mail-il1-f196.google.com with SMTP id y17so13368424ilg.4
 for <devel@driverdev.osuosl.org>; Tue, 10 Nov 2020 11:54:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linuxfoundation.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=784hYvPZE9Kj7QTtRo1zol/rRngB0cVM6VmZ2jBAeR8=;
 b=QDSV/fLjN4nL8wEf8kaOtK3f+amOWKam4Tgzz+WrUsS5kMTinUVhMuOFKDeYwjj2fk
 QtO5lelWzk4ZXCpkFBEL+GA+Yl4aIfwwwgUgV3UprarfYrz0+huxieAsGFdJulfWsFPV
 ywsjSrWMhDg9Ns+4b7IXQDduZjNNXoenpzhIM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=784hYvPZE9Kj7QTtRo1zol/rRngB0cVM6VmZ2jBAeR8=;
 b=Eliy9VgM1EzdtUDBn63Cqy49aiLpEw57hhgX2uUAVIX1DFYhAtO58t72cX+XhZapkD
 NevWw2+SLpKk5sAOONXlhxl10Su8ydIo2x5jknKWP2c0QiH1edYTNcy3fi/ZxYWZaJbx
 BKWBsgpKXw6k6z1E22agZucTUgHZpzsvZVDXtH1VQrjcId8R3N0THUDy05uTNTAikIDX
 i8NtY/ZTej3loe7nhVZWSmiKLzrjwYoVsXZgaODi0K928zp1zk1OUNA1w/MWwa0AmQjS
 Pr68/a7WDaNuXScTuxlGGfJUw3z42AE30yeQt3l/tT7FuMm0xQb8DVe82oh1u0ofR28U
 Fpog==
X-Gm-Message-State: AOAM532gfBgOdGUFX5vhvEch3Szvu4vlT0WlzVzHqA4NYL7EPxP0hfsY
 jIwQYOSh3eCfemikZi8SYLB74g==
X-Google-Smtp-Source: ABdhPJxw4BEcLVk9f41wkm0Xyp9uehcK69ARUG5kJ31PYy8ogZQxIKS5U9/CCdLxCB5u+1wsU8w7nA==
X-Received: by 2002:a05:6e02:f0e:: with SMTP id
 x14mr14670137ilj.307.1605038086404; 
 Tue, 10 Nov 2020 11:54:46 -0800 (PST)
Received: from shuah-t480s.internal (c-24-9-64-241.hsd1.co.comcast.net.
 [24.9.64.241])
 by smtp.gmail.com with ESMTPSA id o14sm123971ilg.71.2020.11.10.11.54.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Nov 2020 11:54:45 -0800 (PST)
From: Shuah Khan <skhan@linuxfoundation.org>
To: gregkh@linuxfoundation.org,
	keescook@chromium.org,
	peterz@infradead.org
Subject: [PATCH 09/13] drivers/staging/rtl8723bs: convert stats to use
 seqnum_ops
Date: Tue, 10 Nov 2020 12:53:35 -0700
Message-Id: <500cc03f4fdea0237576913cfc739ae26d8a0b58.1605027593.git.skhan@linuxfoundation.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <cover.1605027593.git.skhan@linuxfoundation.org>
References: <cover.1605027593.git.skhan@linuxfoundation.org>
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

seqnum_ops api is introduced to be used when a variable is used as
a sequence/stat counter and doesn't guard object lifetimes. This
clearly differentiates atomic_t usages that guard object lifetimes.

seqnum32 variables wrap around to INT_MIN when it overflows and
should not be used to guard resource lifetimes, device usage and
open counts that control state changes, and pm states.

atomic_t variables used for stats are atomic counters. Overflow will
wrap around and reset the stats and no change with the conversion.

Convert them to use seqnum_ops. This conversion replaces inc_return()
with _inc() followed by _read().

Signed-off-by: Shuah Khan <skhan@linuxfoundation.org>
---
 drivers/staging/rtl8723bs/core/rtw_cmd.c      |  3 +-
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 33 +++++++++++++------
 drivers/staging/rtl8723bs/include/rtw_cmd.h   |  3 +-
 .../staging/rtl8723bs/include/rtw_mlme_ext.h  |  3 +-
 4 files changed, 29 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
index 2abe205e3453..c3350f97816d 100644
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
+	seqnum32_set(&pevtpriv->event_seq, 0);
 	pevtpriv->evt_done_cnt = 0;
 
 	_init_workitem(&pevtpriv->c2h_wk, c2h_wk_callback, NULL);
diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index b912ad2f4b72..addcd11b153b 100644
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
+	seqnum32_set(&pmlmeext->event_seq, 0);
 	pmlmeext->mgnt_seq = 0;/* reset to zero when disconnect at client mode */
 	pmlmeext->sa_query_seq = 0;
 	pmlmeext->mgnt_80211w_IPN = 0;
@@ -5051,7 +5052,9 @@ void report_survey_event(struct adapter *padapter, union recv_frame *precv_frame
 	pc2h_evt_hdr = (struct C2HEvent_Header *)(pevtcmd);
 	pc2h_evt_hdr->len = sizeof(struct survey_event);
 	pc2h_evt_hdr->ID = GEN_EVT_CODE(_Survey);
-	pc2h_evt_hdr->seq = atomic_inc_return(&pmlmeext->event_seq);
+
+	seqnum32_inc(&pmlmeext->event_seq);
+	pc2h_evt_hdr->seq = seqnum32_read(&pmlmeext->event_seq);
 
 	psurvey_evt = (struct survey_event *)(pevtcmd + sizeof(struct C2HEvent_Header));
 
@@ -5104,7 +5107,9 @@ void report_surveydone_event(struct adapter *padapter)
 	pc2h_evt_hdr = (struct C2HEvent_Header *)(pevtcmd);
 	pc2h_evt_hdr->len = sizeof(struct surveydone_event);
 	pc2h_evt_hdr->ID = GEN_EVT_CODE(_SurveyDone);
-	pc2h_evt_hdr->seq = atomic_inc_return(&pmlmeext->event_seq);
+
+	seqnum32_inc(&pmlmeext->event_seq);
+	pc2h_evt_hdr->seq = seqnum32_read(&pmlmeext->event_seq);
 
 	psurveydone_evt = (struct surveydone_event *)(pevtcmd + sizeof(struct C2HEvent_Header));
 	psurveydone_evt->bss_cnt = pmlmeext->sitesurvey_res.bss_cnt;
@@ -5151,7 +5156,9 @@ void report_join_res(struct adapter *padapter, int res)
 	pc2h_evt_hdr = (struct C2HEvent_Header *)(pevtcmd);
 	pc2h_evt_hdr->len = sizeof(struct joinbss_event);
 	pc2h_evt_hdr->ID = GEN_EVT_CODE(_JoinBss);
-	pc2h_evt_hdr->seq = atomic_inc_return(&pmlmeext->event_seq);
+
+	seqnum32_inc(&pmlmeext->event_seq);
+	pc2h_evt_hdr->seq = seqnum32_read(&pmlmeext->event_seq);
 
 	pjoinbss_evt = (struct joinbss_event *)(pevtcmd + sizeof(struct C2HEvent_Header));
 	memcpy((unsigned char *)(&(pjoinbss_evt->network.network)), &(pmlmeinfo->network), sizeof(struct wlan_bssid_ex));
@@ -5202,7 +5209,9 @@ void report_wmm_edca_update(struct adapter *padapter)
 	pc2h_evt_hdr = (struct C2HEvent_Header *)(pevtcmd);
 	pc2h_evt_hdr->len = sizeof(struct wmm_event);
 	pc2h_evt_hdr->ID = GEN_EVT_CODE(_WMM);
-	pc2h_evt_hdr->seq = atomic_inc_return(&pmlmeext->event_seq);
+
+	seqnum32_inc(&pmlmeext->event_seq);
+	pc2h_evt_hdr->seq = seqnum32_read(&pmlmeext->event_seq);
 
 	pwmm_event = (struct wmm_event *)(pevtcmd + sizeof(struct C2HEvent_Header));
 	pwmm_event->wmm = 0;
@@ -5249,7 +5258,9 @@ void report_del_sta_event(struct adapter *padapter, unsigned char *MacAddr, unsi
 	pc2h_evt_hdr = (struct C2HEvent_Header *)(pevtcmd);
 	pc2h_evt_hdr->len = sizeof(struct stadel_event);
 	pc2h_evt_hdr->ID = GEN_EVT_CODE(_DelSTA);
-	pc2h_evt_hdr->seq = atomic_inc_return(&pmlmeext->event_seq);
+
+	seqnum32_inc(&pmlmeext->event_seq);
+	pc2h_evt_hdr->seq = seqnum32_read(&pmlmeext->event_seq);
 
 	pdel_sta_evt = (struct stadel_event *)(pevtcmd + sizeof(struct C2HEvent_Header));
 	memcpy((unsigned char *)(&(pdel_sta_evt->macaddr)), MacAddr, ETH_ALEN);
@@ -5302,7 +5313,9 @@ void report_add_sta_event(struct adapter *padapter, unsigned char *MacAddr, int
 	pc2h_evt_hdr = (struct C2HEvent_Header *)(pevtcmd);
 	pc2h_evt_hdr->len = sizeof(struct stassoc_event);
 	pc2h_evt_hdr->ID = GEN_EVT_CODE(_AddSTA);
-	pc2h_evt_hdr->seq = atomic_inc_return(&pmlmeext->event_seq);
+
+	seqnum32_inc(&pmlmeext->event_seq);
+	pc2h_evt_hdr->seq = seqnum32_read(&pmlmeext->event_seq);
 
 	padd_sta_evt = (struct stassoc_event *)(pevtcmd + sizeof(struct C2HEvent_Header));
 	memcpy((unsigned char *)(&(padd_sta_evt->macaddr)), MacAddr, ETH_ALEN);
@@ -6620,10 +6633,10 @@ u8 mlme_evt_hdl(struct adapter *padapter, unsigned char *pbuf)
 
 	#ifdef CHECK_EVENT_SEQ
 	/*  checking event sequence... */
-	if (evt_seq != (atomic_read(&pevt_priv->event_seq) & 0x7f)) {
+	if (evt_seq != (seqnum32_read(&pevt_priv->event_seq) & 0x7f)) {
 		RT_TRACE(_module_rtl871x_cmd_c_, _drv_info_,
 			 ("Event Seq Error! %d vs %d\n", (evt_seq & 0x7f),
-			  (atomic_read(&pevt_priv->event_seq) & 0x7f)));
+			  (seqnum32_read(&pevt_priv->event_seq) & 0x7f)));
 
 		pevt_priv->event_seq = (evt_seq+1)&0x7f;
 
@@ -6647,7 +6660,7 @@ u8 mlme_evt_hdl(struct adapter *padapter, unsigned char *pbuf)
 
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
index 1567831caf91..ebb050253bcf 100644
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
+	struct seqnum32		event_seq;
 	u16 mgnt_seq;
 	u16 sa_query_seq;
 	u64 mgnt_80211w_IPN;
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D0B32AE047
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Nov 2020 20:55:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 13F8E23042;
	Tue, 10 Nov 2020 19:54:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Q7BMN1xvWUpz; Tue, 10 Nov 2020 19:54:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 26A82203C4;
	Tue, 10 Nov 2020 19:54:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DE6C71BF30A
 for <devel@linuxdriverproject.org>; Tue, 10 Nov 2020 19:54:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D21FB87281
 for <devel@linuxdriverproject.org>; Tue, 10 Nov 2020 19:54:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Owgk+c1BEmit for <devel@linuxdriverproject.org>;
 Tue, 10 Nov 2020 19:54:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f67.google.com (mail-io1-f67.google.com
 [209.85.166.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id BE30387202
 for <devel@driverdev.osuosl.org>; Tue, 10 Nov 2020 19:54:49 +0000 (UTC)
Received: by mail-io1-f67.google.com with SMTP id p7so15574235ioo.6
 for <devel@driverdev.osuosl.org>; Tue, 10 Nov 2020 11:54:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linuxfoundation.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=32QDDBy99x4tVzMXFh/xIB26US706uUEjvkcCJFWukA=;
 b=OUn248GZbW2Yw9FQ0uiDulLq/oPIjyoCPHnMNNcTk5Ng9pX4iSu8ck4tgf1o+tWRoo
 tO+P/fLxnibcqRWyPmNq1D91JTTpH2HwydJkJrrRxzjeGz/VhtSUiAj24nHaLqxn/KCv
 IZ4c9Ks772X23oqaZBGZWnkzMn732tYWBLrxQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=32QDDBy99x4tVzMXFh/xIB26US706uUEjvkcCJFWukA=;
 b=r0OZlyjhwngMh9Jl/n0PzquictBx430Si4AnXqMEr09bBX0g6GQ48FUzM0gotes00W
 9NcfKtCBZScsY9scDfctk7Rf3GnZpHj4mykilTb8+Ma6YIjT0bedvwt+cNAKioRrwjWA
 16p21HwktKgFcOKzfKvKfiVaML+gsagxzLe1yuZpIhJuPO71MixMcHg5mFt9qK6i21XQ
 lnA/gFyC8+FTpKqHEbHivmbc1kAKjo64dvaiXruJvVVZ7kPiun7I5mVFwmsv0UKasmkT
 QF5QjRpzNXhpPssq16DSK4dhO6VgxsZo2wyHhhw4UrtRpFqzTeZvA9wZDP8vWReHD+ds
 1tvg==
X-Gm-Message-State: AOAM532rcIK3VRmigtqtI81RqShmMr59ZgrLHveqxp/2B3V1J3KXywu+
 QgYYBAq99B9A3XNrtfgDVtV5cw==
X-Google-Smtp-Source: ABdhPJySYJFIOaZ5A9UtN6T0sg9BkPUv7UQuC3GXGxvW+xX8UGhmCv0fWflm9iIJvJyyxnU6Rum5QA==
X-Received: by 2002:a05:6602:242e:: with SMTP id
 g14mr15689073iob.65.1605038089016; 
 Tue, 10 Nov 2020 11:54:49 -0800 (PST)
Received: from shuah-t480s.internal (c-24-9-64-241.hsd1.co.comcast.net.
 [24.9.64.241])
 by smtp.gmail.com with ESMTPSA id o14sm123971ilg.71.2020.11.10.11.54.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Nov 2020 11:54:48 -0800 (PST)
From: Shuah Khan <skhan@linuxfoundation.org>
To: gregkh@linuxfoundation.org,
	keescook@chromium.org,
	peterz@infradead.org
Subject: [PATCH 11/13] drivers/staging/rtl8188eu: convert stats to use
 seqnum_ops
Date: Tue, 10 Nov 2020 12:53:37 -0700
Message-Id: <07ada10228dbd8d8954a30d6604fef2db762be69.1605027593.git.skhan@linuxfoundation.org>
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
 drivers/staging/rtl8188eu/core/rtw_mlme_ext.c | 23 ++++++++++++++-----
 .../staging/rtl8188eu/include/rtw_mlme_ext.h  |  3 ++-
 2 files changed, 19 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
index b3eddcb83cd0..31dd9d31dd9a 100644
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
+	seqnum32_set(&pmlmeext->event_seq, 0);
 	pmlmeext->mgnt_seq = 0;/* reset to zero when disconnect at client mode */
 
 	pmlmeext->cur_channel = padapter->registrypriv.channel;
@@ -4189,7 +4190,9 @@ void report_survey_event(struct adapter *padapter,
 	pc2h_evt_hdr = (struct C2HEvent_Header *)(pevtcmd);
 	pc2h_evt_hdr->len = sizeof(struct survey_event);
 	pc2h_evt_hdr->ID = _Survey_EVT_;
-	pc2h_evt_hdr->seq = atomic_inc_return(&pmlmeext->event_seq);
+
+	seqnum32_inc(&pmlmeext->event_seq);
+	pc2h_evt_hdr->seq = seqnum32_read(&pmlmeext->event_seq);
 
 	psurvey_evt = (struct survey_event *)(pevtcmd + sizeof(struct C2HEvent_Header));
 
@@ -4239,7 +4242,9 @@ void report_surveydone_event(struct adapter *padapter)
 	pc2h_evt_hdr = (struct C2HEvent_Header *)(pevtcmd);
 	pc2h_evt_hdr->len = sizeof(struct surveydone_event);
 	pc2h_evt_hdr->ID = _SurveyDone_EVT_;
-	pc2h_evt_hdr->seq = atomic_inc_return(&pmlmeext->event_seq);
+
+	seqnum32_inc(&pmlmeext->event_seq);
+	pc2h_evt_hdr->seq = seqnum32_read(&pmlmeext->event_seq);
 
 	psurveydone_evt = (struct surveydone_event *)(pevtcmd + sizeof(struct C2HEvent_Header));
 	psurveydone_evt->bss_cnt = pmlmeext->sitesurvey_res.bss_cnt;
@@ -4283,7 +4288,9 @@ void report_join_res(struct adapter *padapter, int res)
 	pc2h_evt_hdr = (struct C2HEvent_Header *)(pevtcmd);
 	pc2h_evt_hdr->len = sizeof(struct joinbss_event);
 	pc2h_evt_hdr->ID = _JoinBss_EVT_;
-	pc2h_evt_hdr->seq = atomic_inc_return(&pmlmeext->event_seq);
+
+	seqnum32_inc(&pmlmeext->event_seq);
+	pc2h_evt_hdr->seq = seqnum32_read(&pmlmeext->event_seq);
 
 	pjoinbss_evt = (struct joinbss_event *)(pevtcmd + sizeof(struct C2HEvent_Header));
 	memcpy((unsigned char *)(&pjoinbss_evt->network.network), &pmlmeinfo->network, sizeof(struct wlan_bssid_ex));
@@ -4333,7 +4340,9 @@ void report_del_sta_event(struct adapter *padapter, unsigned char *MacAddr,
 	pc2h_evt_hdr = (struct C2HEvent_Header *)(pevtcmd);
 	pc2h_evt_hdr->len = sizeof(struct stadel_event);
 	pc2h_evt_hdr->ID = _DelSTA_EVT_;
-	pc2h_evt_hdr->seq = atomic_inc_return(&pmlmeext->event_seq);
+
+	seqnum32_inc(&pmlmeext->event_seq);
+	pc2h_evt_hdr->seq = seqnum32_read(&pmlmeext->event_seq);
 
 	pdel_sta_evt = (struct stadel_event *)(pevtcmd + sizeof(struct C2HEvent_Header));
 	ether_addr_copy((unsigned char *)(&pdel_sta_evt->macaddr), MacAddr);
@@ -4386,7 +4395,9 @@ void report_add_sta_event(struct adapter *padapter, unsigned char *MacAddr,
 	pc2h_evt_hdr = (struct C2HEvent_Header *)(pevtcmd);
 	pc2h_evt_hdr->len = sizeof(struct stassoc_event);
 	pc2h_evt_hdr->ID = _AddSTA_EVT_;
-	pc2h_evt_hdr->seq = atomic_inc_return(&pmlmeext->event_seq);
+
+	seqnum32_inc(&pmlmeext->event_seq);
+	pc2h_evt_hdr->seq = seqnum32_read(&pmlmeext->event_seq);
 
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

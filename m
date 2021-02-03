Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 34B0030E218
	for <lists+driverdev-devel@lfdr.de>; Wed,  3 Feb 2021 19:12:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E818086153;
	Wed,  3 Feb 2021 18:12:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gzO2tJmbitCl; Wed,  3 Feb 2021 18:12:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5B8A48421E;
	Wed,  3 Feb 2021 18:12:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 169A21BF2F9
 for <devel@linuxdriverproject.org>; Wed,  3 Feb 2021 18:12:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1378A87168
 for <devel@linuxdriverproject.org>; Wed,  3 Feb 2021 18:12:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WVI+7MwMOxVB for <devel@linuxdriverproject.org>;
 Wed,  3 Feb 2021 18:12:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f177.google.com (mail-il1-f177.google.com
 [209.85.166.177])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 652CB87164
 for <devel@driverdev.osuosl.org>; Wed,  3 Feb 2021 18:12:25 +0000 (UTC)
Received: by mail-il1-f177.google.com with SMTP id y15so86670ilj.11
 for <devel@driverdev.osuosl.org>; Wed, 03 Feb 2021 10:12:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linuxfoundation.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gUxAyPrY9bzYiy2Y6nOYwDKwIFGYOoQbH3S8TsMIGGo=;
 b=LR/v+EQTUWjnJKFoLH/BjXkI1v2ATxLTA/9R548MdtOmefM0aLvLpv9/MWD9oW1GOH
 QKHPDO+ry0fgYGWTAPMeVT8xDgc/shSmWyNzLIxY3W5EHahxOmylIUosLP1esDVrOSi5
 ZEML4NYRuBEf1RSlpmX0w4jdLCcyxu2NrMaeU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gUxAyPrY9bzYiy2Y6nOYwDKwIFGYOoQbH3S8TsMIGGo=;
 b=OqWcZsVLhZLRE5594Lc+D9TNclkbNVeKBbmwNVnES3xCbLE7EHl+OhYJLwd06EQs7o
 2L/vYe6tOG1VahjbKYBVqmrDkI8rK01MkoHMyrDvy2+XuM+USYTgG3dSpRatmK8pnTFL
 sWesOjE5aAFHNnlPYPuRaTbkPpo9bgqBggXCkNRB58GtJji6JwnKKeLTEVRgpLKVN0wi
 FRqOExmVHzcTQ9UfmD/etgxTMQeKfbfhZHqaRjjAPU8BVg6OMvqIRfsCiDXQ7AP2xi7q
 DqWvOAY+kfmh094V8nsTjAK2FIYdm+qamHQBgWWf3EBaRBi1jq+MuWIWw1LWW14rQHzT
 VYNQ==
X-Gm-Message-State: AOAM5333j4iEc/HU0JJ2lMu+A7nF3tqE4dLDkkEr4JFOqej0IrFLu3cM
 zvb86L9g8ZmeKmLEjN1WywtC7A==
X-Google-Smtp-Source: ABdhPJw0eL16dUnCKGI3iOotRcsblpIUnhTWl5T5z/Kvix9OHdAsThLGIlz4f64aUNb4fUBUNPr/dw==
X-Received: by 2002:a05:6e02:1311:: with SMTP id
 g17mr3521304ilr.47.1612375944759; 
 Wed, 03 Feb 2021 10:12:24 -0800 (PST)
Received: from shuah-t480s.internal (c-24-9-64-241.hsd1.co.comcast.net.
 [24.9.64.241])
 by smtp.gmail.com with ESMTPSA id h21sm399684iob.30.2021.02.03.10.12.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 03 Feb 2021 10:12:24 -0800 (PST)
From: Shuah Khan <skhan@linuxfoundation.org>
To: corbet@lwn.net, gregkh@linuxfoundation.org, peterz@infradead.org,
 keescook@chromium.org, rafael@kernel.org, lenb@kernel.org,
 james.morse@arm.com, tony.luck@intel.com, bp@alien8.de
Subject: [PATCH v3 6/7] drivers/staging/rtl8188eu: convert event_seq to use
 seqnum_ops
Date: Wed,  3 Feb 2021 11:12:02 -0700
Message-Id: <5bee25950b546b28e03a7c71cb494ff1b2ded083.1612314468.git.skhan@linuxfoundation.org>
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
 drivers/staging/rtl8188eu/core/rtw_mlme_ext.c | 23 ++++++++++++++-----
 .../staging/rtl8188eu/include/rtw_mlme_ext.h  |  3 ++-
 2 files changed, 19 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
index 8794907a39f4..2fa5a8c44d28 100644
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
+	seqnum32_init(&pmlmeext->event_seq, 0);
 	pmlmeext->mgnt_seq = 0;/* reset to zero when disconnect at client mode */
 
 	pmlmeext->cur_channel = padapter->registrypriv.channel;
@@ -4189,7 +4190,9 @@ void report_survey_event(struct adapter *padapter,
 	pc2h_evt_hdr = (struct C2HEvent_Header *)(pevtcmd);
 	pc2h_evt_hdr->len = sizeof(struct survey_event);
 	pc2h_evt_hdr->ID = _Survey_EVT_;
-	pc2h_evt_hdr->seq = atomic_inc_return(&pmlmeext->event_seq);
+
+	/* seq is unsigned int seq:8 */
+	pc2h_evt_hdr->seq = seqnum32_inc(&pmlmeext->event_seq);
 
 	psurvey_evt = (struct survey_event *)(pevtcmd + sizeof(struct C2HEvent_Header));
 
@@ -4239,7 +4242,9 @@ void report_surveydone_event(struct adapter *padapter)
 	pc2h_evt_hdr = (struct C2HEvent_Header *)(pevtcmd);
 	pc2h_evt_hdr->len = sizeof(struct surveydone_event);
 	pc2h_evt_hdr->ID = _SurveyDone_EVT_;
-	pc2h_evt_hdr->seq = atomic_inc_return(&pmlmeext->event_seq);
+
+	/* seq is unsigned int seq:8 */
+	pc2h_evt_hdr->seq = seqnum32_inc(&pmlmeext->event_seq);
 
 	psurveydone_evt = (struct surveydone_event *)(pevtcmd + sizeof(struct C2HEvent_Header));
 	psurveydone_evt->bss_cnt = pmlmeext->sitesurvey_res.bss_cnt;
@@ -4283,7 +4288,9 @@ void report_join_res(struct adapter *padapter, int res)
 	pc2h_evt_hdr = (struct C2HEvent_Header *)(pevtcmd);
 	pc2h_evt_hdr->len = sizeof(struct joinbss_event);
 	pc2h_evt_hdr->ID = _JoinBss_EVT_;
-	pc2h_evt_hdr->seq = atomic_inc_return(&pmlmeext->event_seq);
+
+	/* seq is unsigned int seq:8 */
+	pc2h_evt_hdr->seq = seqnum32_inc(&pmlmeext->event_seq);
 
 	pjoinbss_evt = (struct joinbss_event *)(pevtcmd + sizeof(struct C2HEvent_Header));
 	memcpy((unsigned char *)(&pjoinbss_evt->network.network), &pmlmeinfo->network, sizeof(struct wlan_bssid_ex));
@@ -4333,7 +4340,9 @@ void report_del_sta_event(struct adapter *padapter, unsigned char *MacAddr,
 	pc2h_evt_hdr = (struct C2HEvent_Header *)(pevtcmd);
 	pc2h_evt_hdr->len = sizeof(struct stadel_event);
 	pc2h_evt_hdr->ID = _DelSTA_EVT_;
-	pc2h_evt_hdr->seq = atomic_inc_return(&pmlmeext->event_seq);
+
+	/* seq is unsigned int seq:8 */
+	pc2h_evt_hdr->seq = seqnum32_inc(&pmlmeext->event_seq);
 
 	pdel_sta_evt = (struct stadel_event *)(pevtcmd + sizeof(struct C2HEvent_Header));
 	ether_addr_copy((unsigned char *)(&pdel_sta_evt->macaddr), MacAddr);
@@ -4386,7 +4395,9 @@ void report_add_sta_event(struct adapter *padapter, unsigned char *MacAddr,
 	pc2h_evt_hdr = (struct C2HEvent_Header *)(pevtcmd);
 	pc2h_evt_hdr->len = sizeof(struct stassoc_event);
 	pc2h_evt_hdr->ID = _AddSTA_EVT_;
-	pc2h_evt_hdr->seq = atomic_inc_return(&pmlmeext->event_seq);
+
+	/* seq is unsigned int seq:8 */
+	pc2h_evt_hdr->seq = seqnum32_inc(&pmlmeext->event_seq);
 
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

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A72E2A7637
	for <lists+driverdev-devel@lfdr.de>; Thu,  5 Nov 2020 04:48:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F198785566;
	Thu,  5 Nov 2020 03:48:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OgJdaMZU2eaQ; Thu,  5 Nov 2020 03:48:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E562E85579;
	Thu,  5 Nov 2020 03:48:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 90F911BF31C
 for <devel@linuxdriverproject.org>; Thu,  5 Nov 2020 03:48:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8D8EC20377
 for <devel@linuxdriverproject.org>; Thu,  5 Nov 2020 03:48:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wjH52tN+mi3x for <devel@linuxdriverproject.org>;
 Thu,  5 Nov 2020 03:48:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f52.google.com (mail-io1-f52.google.com
 [209.85.166.52])
 by silver.osuosl.org (Postfix) with ESMTPS id 6833F204B7
 for <devel@driverdev.osuosl.org>; Thu,  5 Nov 2020 03:48:17 +0000 (UTC)
Received: by mail-io1-f52.google.com with SMTP id n129so393380iod.5
 for <devel@driverdev.osuosl.org>; Wed, 04 Nov 2020 19:48:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=McHbX4RcOnMEynY3PA31njE5KEJf144e26V5mcHQkZg=;
 b=jevlTiGVv0DxIG7Gw9fKlSWD52+Q3Y1vS8ymuZ0z7D0QBRSbeRjSw5AjZkrU5XPCC2
 JSx5ZsCYw/QWxm8hia6I2oInul4K/vRUD19kKjiOv8SI1zY38W/0RGEd7gw3faUGV5Eo
 VS1GFXzbnddW1O10tQ7trhv8WmGmC0EHyc5eRdk9KlDGoUVWAZKw6drWKH4KtMbffUab
 cVnBkiRG1fIuu+ps6AhGOZSrU1zUVyvs3EF2iOGKu74bhW2xIxyPFg2F2AATNcNSTX/A
 Tsk3I3EBBv/oZDNasWmqYAN0497Igp7uLfqGL4lh17JUXYwM1DY6VDHi+0prWnG0knYK
 lh2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=McHbX4RcOnMEynY3PA31njE5KEJf144e26V5mcHQkZg=;
 b=tIJznUmxRNU00YBqYKa48pCg4gk0DcYkwU5NT0QR4iEYMLuKVvLLwT/UR0/xsKReNq
 bila3ku2Efc8ITn6ygficYb4Vb5JVTpurp3Lo0ZXHdL0j0eFGrUfLhvWbjmBUd4DTbG8
 1rJcMozocxEIHYPvx8h2R7od1ReGDhCx/6evYaI8U6jD3mF783nNpKNQKiskEFsD4Hy4
 Ok6QoamfDmmDU8ckrWxPN/p1EPks3S3/27H7YDCz0VsyQZQsxbKRvPgwkVK4BP1uYjap
 g5E2xqUiamg6VYxtlJa9xd5+RWFhcsF+ynd7UOc1MF4MH7QaywnhYTDQVgAWH756b163
 CCkA==
X-Gm-Message-State: AOAM531CjH2E6dEfU05kMySUv8Np1ddPbwuf/SoDSC/6nnClv41Pbhzq
 qsZ4HEh1aORYaGqgyxgJ17k=
X-Google-Smtp-Source: ABdhPJxiyDdaF2qEjx5X36rxU/pxoU1lzfCk9UZ7YbnbQ1Y9bCQ0u6KJ5pnlh26pyXX06P7vLRO36A==
X-Received: by 2002:a05:6638:d52:: with SMTP id
 d18mr561966jak.127.1604548096856; 
 Wed, 04 Nov 2020 19:48:16 -0800 (PST)
Received: from localhost.localdomain (c-73-242-81-227.hsd1.mn.comcast.net.
 [73.242.81.227])
 by smtp.gmail.com with ESMTPSA id p6sm172877ilc.26.2020.11.04.19.48.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Nov 2020 19:48:16 -0800 (PST)
From: Ross Schmidt <ross.schm.dev@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 9/9] staging: rtl8723bs: replace ieee80211_back_actioncode
Date: Wed,  4 Nov 2020 21:47:54 -0600
Message-Id: <20201105034754.12383-9-ross.schm.dev@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201105034754.12383-1-ross.schm.dev@gmail.com>
References: <20201105034754.12383-1-ross.schm.dev@gmail.com>
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
 Ross Schmidt <ross.schm.dev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Replace the unique rtw_ieee80211_back_actioncode with the standard
provided ieee80211_back_actioncode.

Signed-off-by: Ross Schmidt <ross.schm.dev@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 16 ++++++++--------
 drivers/staging/rtl8723bs/include/ieee80211.h |  7 -------
 2 files changed, 8 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index c113902877bd..1a6cae5f9895 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
@@ -1944,21 +1944,21 @@ unsigned int OnAction_back(struct adapter *padapter, union recv_frame *precv_fra
 		action = frame_body[1];
 		DBG_871X("%s, action =%d\n", __func__, action);
 		switch (action) {
-		case RTW_WLAN_ACTION_ADDBA_REQ: /* ADDBA request */
+		case WLAN_ACTION_ADDBA_REQ: /* ADDBA request */
 
 			memcpy(&(pmlmeinfo->ADDBA_req), &(frame_body[2]), sizeof(struct ADDBA_request));
 			/* process_addba_req(padapter, (u8 *)&(pmlmeinfo->ADDBA_req), GetAddr3Ptr(pframe)); */
 			process_addba_req(padapter, (u8 *)&(pmlmeinfo->ADDBA_req), addr);
 
 			if (pmlmeinfo->accept_addba_req) {
-				issue_action_BA(padapter, addr, RTW_WLAN_ACTION_ADDBA_RESP, 0);
+				issue_action_BA(padapter, addr, WLAN_ACTION_ADDBA_RESP, 0);
 			} else {
-				issue_action_BA(padapter, addr, RTW_WLAN_ACTION_ADDBA_RESP, 37);/* reject ADDBA Req */
+				issue_action_BA(padapter, addr, WLAN_ACTION_ADDBA_RESP, 37);/* reject ADDBA Req */
 			}
 
 			break;
 
-		case RTW_WLAN_ACTION_ADDBA_RESP: /* ADDBA response */
+		case WLAN_ACTION_ADDBA_RESP: /* ADDBA response */
 			status = get_unaligned_le16(&frame_body[3]);
 			tid = ((frame_body[5] >> 2) & 0x7);
 
@@ -1981,7 +1981,7 @@ unsigned int OnAction_back(struct adapter *padapter, union recv_frame *precv_fra
 			/* DBG_871X("marc: ADDBA RSP: %x\n", pmlmeinfo->agg_enable_bitmap); */
 			break;
 
-		case RTW_WLAN_ACTION_DELBA: /* DELBA */
+		case WLAN_ACTION_DELBA: /* DELBA */
 			if ((frame_body[3] & BIT(3)) == 0) {
 				psta->htpriv.agg_enable_bitmap &=
 					~BIT((frame_body[3] >> 4) & 0xf);
@@ -4199,7 +4199,7 @@ unsigned int send_delba(struct adapter *padapter, u8 initiator, u8 *addr)
 		for (tid = 0; tid < MAXTID; tid++) {
 			if (psta->recvreorder_ctrl[tid].enable) {
 				DBG_871X("rx agg disable tid(%d)\n", tid);
-				issue_action_BA(padapter, addr, RTW_WLAN_ACTION_DELBA, (((tid << 1) | initiator)&0x1F));
+				issue_action_BA(padapter, addr, WLAN_ACTION_DELBA, (((tid << 1) | initiator)&0x1F));
 				psta->recvreorder_ctrl[tid].enable = false;
 				psta->recvreorder_ctrl[tid].indicate_seq = 0xffff;
 				#ifdef DBG_RX_SEQ
@@ -4213,7 +4213,7 @@ unsigned int send_delba(struct adapter *padapter, u8 initiator, u8 *addr)
 		for (tid = 0; tid < MAXTID; tid++) {
 			if (psta->htpriv.agg_enable_bitmap & BIT(tid)) {
 				DBG_871X("tx agg disable tid(%d)\n", tid);
-				issue_action_BA(padapter, addr, RTW_WLAN_ACTION_DELBA, (((tid << 1) | initiator)&0x1F));
+				issue_action_BA(padapter, addr, WLAN_ACTION_DELBA, (((tid << 1) | initiator)&0x1F));
 				psta->htpriv.agg_enable_bitmap &= ~BIT(tid);
 				psta->htpriv.candidate_tid_bitmap &= ~BIT(tid);
 
@@ -6529,7 +6529,7 @@ u8 add_ba_hdl(struct adapter *padapter, unsigned char *pbuf)
 		/* pmlmeinfo->ADDBA_retry_count = 0; */
 		/* pmlmeinfo->candidate_tid_bitmap |= (0x1 << pparm->tid); */
 		/* psta->htpriv.candidate_tid_bitmap |= BIT(pparm->tid); */
-		issue_action_BA(padapter, pparm->addr, RTW_WLAN_ACTION_ADDBA_REQ, (u16)pparm->tid);
+		issue_action_BA(padapter, pparm->addr, WLAN_ACTION_ADDBA_REQ, (u16)pparm->tid);
 		/* _set_timer(&pmlmeext->ADDBA_timer, ADDBA_TO); */
 		_set_timer(&psta->addba_retry_timer, ADDBA_TO);
 	} else {
diff --git a/drivers/staging/rtl8723bs/include/ieee80211.h b/drivers/staging/rtl8723bs/include/ieee80211.h
index cd8f6d006a38..bf53d850c370 100644
--- a/drivers/staging/rtl8723bs/include/ieee80211.h
+++ b/drivers/staging/rtl8723bs/include/ieee80211.h
@@ -913,13 +913,6 @@ enum _PUBLIC_ACTION {
 	ACT_PUBLIC_MAX
 };
 
-/* BACK action code */
-enum rtw_ieee80211_back_actioncode {
-	RTW_WLAN_ACTION_ADDBA_REQ = 0,
-	RTW_WLAN_ACTION_ADDBA_RESP = 1,
-	RTW_WLAN_ACTION_DELBA = 2,
-};
-
 /* BACK (block-ack) parties */
 enum rtw_ieee80211_back_parties {
 	RTW_WLAN_BACK_RECIPIENT = 0,
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

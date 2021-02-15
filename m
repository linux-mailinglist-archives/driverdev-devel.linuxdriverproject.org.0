Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A2ABD31C468
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Feb 2021 00:35:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5441484D2E;
	Mon, 15 Feb 2021 23:35:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LqDamVpJj9TR; Mon, 15 Feb 2021 23:35:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3071484AC5;
	Mon, 15 Feb 2021 23:35:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AE7BC1BF362
 for <devel@linuxdriverproject.org>; Mon, 15 Feb 2021 23:34:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id ABF4985EA5
 for <devel@linuxdriverproject.org>; Mon, 15 Feb 2021 23:34:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Htt-0z7JPYV8 for <devel@linuxdriverproject.org>;
 Mon, 15 Feb 2021 23:34:49 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
 [209.85.221.47])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1F1FF84C19
 for <devel@driverdev.osuosl.org>; Mon, 15 Feb 2021 23:34:49 +0000 (UTC)
Received: by mail-wr1-f47.google.com with SMTP id b3so11030203wrj.5
 for <devel@driverdev.osuosl.org>; Mon, 15 Feb 2021 15:34:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=philpotter-co-uk.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=b8KUdY/ZnIyiQBur3FBDnWD4fwaw0zMzf9dAARZwipU=;
 b=Y/k103D7E3p0MiDVMk4VvKOvAw7QgEfJfIsnNBHIBKkxDlOQaBqPUwMjwniAF8VhQr
 LQ3lMnxW9UCHED1x8VKWzWt4TnhBBf3CgqaanN63vVmpy71RpfayfMDR7CGE53ofPdsh
 mUC1DGjaoO4RqoxISWxfj/LWnz8/+rY33rDA4Yy3J/zYx/SQGOJwgQNINPnRmooXvd+r
 wDjfjrfwk/taCbpGjg7NR2NGdJi9ntLMEjzA8bORysTxtD/qGMCRH4BvX4yjPca75YbW
 Z1yjP6KxCxcIa4dl4+QaOR8MmHnBDL4D7LmVS7lR9MdmDZyYDlkxP5KjYrik3cRVmmm4
 fYjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=b8KUdY/ZnIyiQBur3FBDnWD4fwaw0zMzf9dAARZwipU=;
 b=tUveDPEjoCp3OlMxLn4Meky8KayuUVfOuoXIogf5BbdaPfxoiklkJCmq/ScjWqFLZu
 SX1HTM8Q+Slu4tcH9WGWnEfvR7EvbENxXpoPD+zSA2jMBKfCptsW0eo3eFqffM2vxuUm
 95NMyYLx8FkFieLGs22wcxh2MSMYSKd/PFmEyuzYthcG4uvoqiPqqBIV/lQnHpFpl2vz
 K2yyeh11rtYxpNl39V1aBPuJ9SclxLGql79EoIPEYAl+YiLeF53aHDchKFFBCJYJCuHu
 5Bug33NPDewvmdr89vQsfgj4Vg/Fos42y0P3ck+6D11AIBGDGewidJf9gdycinYXZBtN
 C9cQ==
X-Gm-Message-State: AOAM530cBeOJIZc/rAj0ZtRA8mVqSnlh/jVZDqsqTnOGjxEZL9dUQztE
 oPNxnuTWS1/0F9V8CWalgs1cqA==
X-Google-Smtp-Source: ABdhPJxFnLXj/3cI5b01dpWoUMfhnkSL1IsDWEW96TLtJ67Z8TzLUfUZVK2/kFc/0qP+ZYx2yrYVxg==
X-Received: by 2002:adf:e80d:: with SMTP id o13mr21463271wrm.113.1613432087505; 
 Mon, 15 Feb 2021 15:34:47 -0800 (PST)
Received: from localhost.localdomain
 (2.0.5.1.1.6.3.8.5.c.c.3.f.b.d.3.0.0.0.0.6.1.f.d.0.b.8.0.1.0.0.2.ip6.arpa.
 [2001:8b0:df16:0:3dbf:3cc5:8361:1502])
 by smtp.gmail.com with ESMTPSA id y16sm21691445wrw.46.2021.02.15.15.34.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Feb 2021 15:34:47 -0800 (PST)
From: Phillip Potter <phil@philpotter.co.uk>
To: gregkh@linuxfoundation.org
Subject: [PATCH 6/6] staging: rtl8723bs: remove rx_logs/tx_logs/int_logs from
 drv_types.h
Date: Mon, 15 Feb 2021 23:34:40 +0000
Message-Id: <20210215233440.80617-7-phil@philpotter.co.uk>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210215233440.80617-6-phil@philpotter.co.uk>
References: <20210215233440.80617-1-phil@philpotter.co.uk>
 <20210215233440.80617-2-phil@philpotter.co.uk>
 <20210215233440.80617-3-phil@philpotter.co.uk>
 <20210215233440.80617-4-phil@philpotter.co.uk>
 <20210215233440.80617-5-phil@philpotter.co.uk>
 <20210215233440.80617-6-phil@philpotter.co.uk>
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
Cc: devel@driverdev.osuosl.org, vkor@vkten.in, insafonov@gmail.com,
 foxhlchen@gmail.com, linux-kernel@vger.kernel.org, yujian.wu1@gmail.com,
 matthew.v.deangelis@gmail.com, amarjargal16@gmail.com, pterjan@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove the rx_logs/tx_logs/int_logs struct definitions and their
inclusion within struct adapter as fields, from include/drv_types.h.
They were conditionally compiled based on CONFIG_DBG_COUNTER which
now has no other users in the driver, and were only ever accessed
in a write only fashion via the DBG_COUNTER macro, which has also
been removed.

Signed-off-by: Phillip Potter <phil@philpotter.co.uk>
---
 drivers/staging/rtl8723bs/include/drv_types.h | 131 ------------------
 1 file changed, 131 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/drv_types.h b/drivers/staging/rtl8723bs/include/drv_types.h
index c73f581aea06..cfde6e3ba400 100644
--- a/drivers/staging/rtl8723bs/include/drv_types.h
+++ b/drivers/staging/rtl8723bs/include/drv_types.h
@@ -219,131 +219,6 @@ struct registry_priv {
 #define GET_IFACE_NUMS(padapter) (((struct adapter *)padapter)->dvobj->iface_nums)
 #define GET_ADAPTER(padapter, iface_id) (((struct adapter *)padapter)->dvobj->padapters[iface_id])
 
-#ifdef CONFIG_DBG_COUNTER
-
-struct rx_logs {
-	u32 intf_rx;
-	u32 intf_rx_err_recvframe;
-	u32 intf_rx_err_skb;
-	u32 intf_rx_report;
-	u32 core_rx;
-	u32 core_rx_pre;
-	u32 core_rx_pre_ver_err;
-	u32 core_rx_pre_mgmt;
-	u32 core_rx_pre_mgmt_err_80211w;
-	u32 core_rx_pre_mgmt_err;
-	u32 core_rx_pre_ctrl;
-	u32 core_rx_pre_ctrl_err;
-	u32 core_rx_pre_data;
-	u32 core_rx_pre_data_wapi_seq_err;
-	u32 core_rx_pre_data_wapi_key_err;
-	u32 core_rx_pre_data_handled;
-	u32 core_rx_pre_data_err;
-	u32 core_rx_pre_data_unknown;
-	u32 core_rx_pre_unknown;
-	u32 core_rx_enqueue;
-	u32 core_rx_dequeue;
-	u32 core_rx_post;
-	u32 core_rx_post_decrypt;
-	u32 core_rx_post_decrypt_wep;
-	u32 core_rx_post_decrypt_tkip;
-	u32 core_rx_post_decrypt_aes;
-	u32 core_rx_post_decrypt_wapi;
-	u32 core_rx_post_decrypt_hw;
-	u32 core_rx_post_decrypt_unknown;
-	u32 core_rx_post_decrypt_err;
-	u32 core_rx_post_defrag_err;
-	u32 core_rx_post_portctrl_err;
-	u32 core_rx_post_indicate;
-	u32 core_rx_post_indicate_in_oder;
-	u32 core_rx_post_indicate_reoder;
-	u32 core_rx_post_indicate_err;
-	u32 os_indicate;
-	u32 os_indicate_ap_mcast;
-	u32 os_indicate_ap_forward;
-	u32 os_indicate_ap_self;
-	u32 os_indicate_err;
-	u32 os_netif_ok;
-	u32 os_netif_err;
-};
-
-struct tx_logs {
-	u32 os_tx;
-	u32 os_tx_err_up;
-	u32 os_tx_err_xmit;
-	u32 os_tx_m2u;
-	u32 os_tx_m2u_ignore_fw_linked;
-	u32 os_tx_m2u_ignore_self;
-	u32 os_tx_m2u_entry;
-	u32 os_tx_m2u_entry_err_xmit;
-	u32 os_tx_m2u_entry_err_skb;
-	u32 os_tx_m2u_stop;
-	u32 core_tx;
-	u32 core_tx_err_pxmitframe;
-	u32 core_tx_err_brtx;
-	u32 core_tx_upd_attrib;
-	u32 core_tx_upd_attrib_adhoc;
-	u32 core_tx_upd_attrib_sta;
-	u32 core_tx_upd_attrib_ap;
-	u32 core_tx_upd_attrib_unknown;
-	u32 core_tx_upd_attrib_dhcp;
-	u32 core_tx_upd_attrib_icmp;
-	u32 core_tx_upd_attrib_active;
-	u32 core_tx_upd_attrib_err_ucast_sta;
-	u32 core_tx_upd_attrib_err_ucast_ap_link;
-	u32 core_tx_upd_attrib_err_sta;
-	u32 core_tx_upd_attrib_err_link;
-	u32 core_tx_upd_attrib_err_sec;
-	u32 core_tx_ap_enqueue_warn_fwstate;
-	u32 core_tx_ap_enqueue_warn_sta;
-	u32 core_tx_ap_enqueue_warn_nosta;
-	u32 core_tx_ap_enqueue_warn_link;
-	u32 core_tx_ap_enqueue_warn_trigger;
-	u32 core_tx_ap_enqueue_mcast;
-	u32 core_tx_ap_enqueue_ucast;
-	u32 core_tx_ap_enqueue;
-	u32 intf_tx;
-	u32 intf_tx_pending_ac;
-	u32 intf_tx_pending_fw_under_survey;
-	u32 intf_tx_pending_fw_under_linking;
-	u32 intf_tx_pending_xmitbuf;
-	u32 intf_tx_enqueue;
-	u32 core_tx_enqueue;
-	u32 core_tx_enqueue_class;
-	u32 core_tx_enqueue_class_err_sta;
-	u32 core_tx_enqueue_class_err_nosta;
-	u32 core_tx_enqueue_class_err_fwlink;
-	u32 intf_tx_direct;
-	u32 intf_tx_direct_err_coalesce;
-	u32 intf_tx_dequeue;
-	u32 intf_tx_dequeue_err_coalesce;
-	u32 intf_tx_dump_xframe;
-	u32 intf_tx_dump_xframe_err_txdesc;
-	u32 intf_tx_dump_xframe_err_port;
-};
-
-struct int_logs {
-	u32 all;
-	u32 err;
-	u32 tbdok;
-	u32 tbder;
-	u32 bcnderr;
-	u32 bcndma;
-	u32 bcndma_e;
-	u32 rx;
-	u32 rx_rdu;
-	u32 rx_fovw;
-	u32 txfovw;
-	u32 mgntok;
-	u32 highdok;
-	u32 bkdok;
-	u32 bedok;
-	u32 vidok;
-	u32 vodok;
-};
-
-#endif /*  CONFIG_DBG_COUNTER */
-
 struct debug_priv {
 	u32 dbg_sdio_free_irq_error_cnt;
 	u32 dbg_sdio_alloc_irq_error_cnt;
@@ -608,12 +483,6 @@ struct adapter {
 	u8 driver_rx_ampdu_factor;/* 0xff: disable drv ctrl, 0:8k, 1:16k, 2:32k, 3:64k; */
 
 	unsigned char     in_cta_test;
-
-#ifdef CONFIG_DBG_COUNTER
-	struct rx_logs rx_logs;
-	struct tx_logs tx_logs;
-	struct int_logs int_logs;
-#endif
 };
 
 #define adapter_to_dvobj(adapter) (adapter->dvobj)
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

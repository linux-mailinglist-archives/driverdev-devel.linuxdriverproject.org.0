Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFB9DD5303
	for <lists+driverdev-devel@lfdr.de>; Sun, 13 Oct 2019 00:19:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B1DA5882BD;
	Sat, 12 Oct 2019 22:19:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CvYXUk3l+YOf; Sat, 12 Oct 2019 22:19:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9BA5C87C70;
	Sat, 12 Oct 2019 22:19:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9B5231BF40F
 for <devel@linuxdriverproject.org>; Sat, 12 Oct 2019 22:19:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 90C3F88263
 for <devel@linuxdriverproject.org>; Sat, 12 Oct 2019 22:19:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W7iG0O5mj8x3 for <devel@linuxdriverproject.org>;
 Sat, 12 Oct 2019 22:19:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D357287C70
 for <devel@driverdev.osuosl.org>; Sat, 12 Oct 2019 22:19:41 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id d26so7838682pgl.7
 for <devel@driverdev.osuosl.org>; Sat, 12 Oct 2019 15:19:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=PzS89TZ3VQzwgK8P2bX5KvfvcY4VtRFHY42+gxItdKw=;
 b=IE4IDH7oqoloAZw7fMo5e7uwMwSAX2CsWN+v2d4jjtnsFkjTR0MD99vCxWiW/dMN0y
 X5a6wf8g1RczC2C/2NIoeNpGbfQEPzoa3QA03j5vcrv+XyBqdr80oAz0tt5XAwta/kKF
 IcoAc1ehw+hqdCpuLfJ3LKKCKWQ6hqXrc8DVsTpw5JMcKSU0zlFzVvYnZgRsvQ58RRZr
 o3YxgtElcW1xzU0em9LI8+O9rUctzgllhTKdOUhRHQz8RfVka30/WKfxe9dy0YT9NsKM
 XGERtlG9VJzpoDr2mhNSx4fefe1MXzXkpsiHlMBZzv1ZGcPP9BfWB2owjvmtx0stG+j0
 I4kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=PzS89TZ3VQzwgK8P2bX5KvfvcY4VtRFHY42+gxItdKw=;
 b=Vaj9rlNFV8xknCtwj/z/NVFV4BOQSZw5TxizTeU5/xlx0vg/30gCMsiBJV1iVBqwhn
 rRgHV1cP2Kjs5SuOJpT+i2DqL7ZmJUf4i5YchykwLPoC2CPZqWU/M/NuDVzwVFrnXXvW
 y0y7AOAG2ngDPVLCjbL1fUAouBB7Dm/ol5sL6pPxjXFXZOn+TmtCRmNHmJiK4sv6h05U
 FXNbZQNKYawzI5w9H+z3rbCWaOq1CcN3jOzvbHvD9HzKAYoI0Qte4xtncFJbC+AyX41Q
 C5X+H5KNCZcrUDmw1wPOU9sZJ6lSYmMOFQscPs8vbJqKyyKPPyZPSdihktOmqVPJEpk/
 DiPg==
X-Gm-Message-State: APjAAAV2aYqjR/nm2UA/jOXsnTlXdrRchLSPG28LeSbwUYvNXvUMQQT0
 LYwyyCj/1Dhs3VhUUxYkr3o=
X-Google-Smtp-Source: APXvYqw0YGZ+ePLzQ8DYtYJ6wamf5q6IWdKIj+QmfD9NT7I1o0YWVkKonHP/yVuKqbwDtWCpUbQd1Q==
X-Received: by 2002:a17:90a:c405:: with SMTP id
 i5mr27349084pjt.9.1570918781357; 
 Sat, 12 Oct 2019 15:19:41 -0700 (PDT)
Received: from wambui.zuku.co.ke ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id 30sm13839562pjk.25.2019.10.12.15.19.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 12 Oct 2019 15:19:41 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/2] staging: rtl8712: remove unnecessary return variables
Date: Sun, 13 Oct 2019 01:19:15 +0300
Message-Id: <f61a0f036af24228c682c6b12c3a8e6cf6736185.1570918228.git.wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <cover.1570918228.git.wambui.karugax@gmail.com>
References: <cover.1570918228.git.wambui.karugax@gmail.com>
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 florian.c.schilhabel@googlemail.com, linux-kernel@vger.kernel.org,
 Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove variables that are only used to hold and return constants and
have the functions directly return the constants.

Issue found by coccinelle:
@@
local idexpression ret;
expression e;
@@

-ret =
+return
     e;
-return ret;

Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_mp_ioctl.c | 46 +++++++++-------------
 1 file changed, 19 insertions(+), 27 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_mp_ioctl.c b/drivers/staging/rtl8712/rtl871x_mp_ioctl.c
index aa8f8500cbb2..8af7892809ca 100644
--- a/drivers/staging/rtl8712/rtl871x_mp_ioctl.c
+++ b/drivers/staging/rtl8712/rtl871x_mp_ioctl.c
@@ -283,13 +283,12 @@ uint oid_rt_pro_stop_test_hdl(struct oid_par_priv *poid_par_priv)
 {
 	struct _adapter *Adapter = (struct _adapter *)
 				   (poid_par_priv->adapter_context);
-	uint status = RNDIS_STATUS_SUCCESS;
 
 	if (poid_par_priv->type_of_oid != SET_OID)
 		return RNDIS_STATUS_NOT_ACCEPTED;
 	if (mp_stop_test(Adapter) == _FAIL)
-		status = RNDIS_STATUS_NOT_ACCEPTED;
-	return status;
+		return RNDIS_STATUS_NOT_ACCEPTED;
+	return RNDIS_STATUS_SUCCESS;
 }
 
 uint oid_rt_pro_set_channel_direct_call_hdl(struct oid_par_priv
@@ -350,64 +349,58 @@ uint oid_rt_pro_set_tx_power_control_hdl(
 uint oid_rt_pro_query_tx_packet_sent_hdl(
 					struct oid_par_priv *poid_par_priv)
 {
-	uint status = RNDIS_STATUS_SUCCESS;
 	struct _adapter *Adapter = (struct _adapter *)
 				   (poid_par_priv->adapter_context);
 
-	if (poid_par_priv->type_of_oid != QUERY_OID) {
-		status = RNDIS_STATUS_NOT_ACCEPTED;
-		return status;
-	}
+	if (poid_par_priv->type_of_oid != QUERY_OID)
+		return RNDIS_STATUS_NOT_ACCEPTED;
+
 	if (poid_par_priv->information_buf_len == sizeof(u32)) {
 		*(u32 *)poid_par_priv->information_buf =
 					Adapter->mppriv.tx_pktcount;
 		*poid_par_priv->bytes_rw = poid_par_priv->information_buf_len;
 	} else {
-		status = RNDIS_STATUS_INVALID_LENGTH;
+		return RNDIS_STATUS_INVALID_LENGTH;
 	}
-	return status;
+	return RNDIS_STATUS_SUCCESS;
 }
 
 uint oid_rt_pro_query_rx_packet_received_hdl(
 					struct oid_par_priv *poid_par_priv)
 {
-	uint status = RNDIS_STATUS_SUCCESS;
 	struct _adapter *Adapter = (struct _adapter *)
 				   (poid_par_priv->adapter_context);
 
-	if (poid_par_priv->type_of_oid != QUERY_OID) {
-		status = RNDIS_STATUS_NOT_ACCEPTED;
-		return status;
-	}
+	if (poid_par_priv->type_of_oid != QUERY_OID)
+		return RNDIS_STATUS_NOT_ACCEPTED;
+
 	if (poid_par_priv->information_buf_len == sizeof(u32)) {
 		*(u32 *)poid_par_priv->information_buf =
 					Adapter->mppriv.rx_pktcount;
 		*poid_par_priv->bytes_rw = poid_par_priv->information_buf_len;
 	} else {
-		status = RNDIS_STATUS_INVALID_LENGTH;
+		return RNDIS_STATUS_INVALID_LENGTH;
 	}
-	return status;
+	return RNDIS_STATUS_SUCCESS;
 }
 
 uint oid_rt_pro_query_rx_packet_crc32_error_hdl(
 					struct oid_par_priv *poid_par_priv)
 {
-	uint status = RNDIS_STATUS_SUCCESS;
 	struct _adapter *Adapter = (struct _adapter *)
 				   (poid_par_priv->adapter_context);
 
-	if (poid_par_priv->type_of_oid != QUERY_OID) {
-		status = RNDIS_STATUS_NOT_ACCEPTED;
-		return status;
-	}
+	if (poid_par_priv->type_of_oid != QUERY_OID)
+		return RNDIS_STATUS_NOT_ACCEPTED;
+
 	if (poid_par_priv->information_buf_len == sizeof(u32)) {
 		*(u32 *)poid_par_priv->information_buf =
 					Adapter->mppriv.rx_crcerrpktcount;
 		*poid_par_priv->bytes_rw = poid_par_priv->information_buf_len;
 	} else {
-		status = RNDIS_STATUS_INVALID_LENGTH;
+		return RNDIS_STATUS_INVALID_LENGTH;
 	}
-	return status;
+	return RNDIS_STATUS_SUCCESS;
 }
 
 uint oid_rt_pro_reset_tx_packet_sent_hdl(struct oid_par_priv
@@ -425,7 +418,6 @@ uint oid_rt_pro_reset_tx_packet_sent_hdl(struct oid_par_priv
 uint oid_rt_pro_reset_rx_packet_received_hdl(struct oid_par_priv
 						    *poid_par_priv)
 {
-	uint status = RNDIS_STATUS_SUCCESS;
 	struct _adapter *Adapter = (struct _adapter *)
 				   (poid_par_priv->adapter_context);
 
@@ -435,9 +427,9 @@ uint oid_rt_pro_reset_rx_packet_received_hdl(struct oid_par_priv
 		Adapter->mppriv.rx_pktcount = 0;
 		Adapter->mppriv.rx_crcerrpktcount = 0;
 	} else {
-		status = RNDIS_STATUS_INVALID_LENGTH;
+		return RNDIS_STATUS_INVALID_LENGTH;
 	}
-	return status;
+	return RNDIS_STATUS_SUCCESS;
 }
 
 uint oid_rt_reset_phy_rx_packet_count_hdl(struct oid_par_priv
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

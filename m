Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4099AD5304
	for <lists+driverdev-devel@lfdr.de>; Sun, 13 Oct 2019 00:19:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E3851882B5;
	Sat, 12 Oct 2019 22:19:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v6JiYrquNLVx; Sat, 12 Oct 2019 22:19:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 97ADF88273;
	Sat, 12 Oct 2019 22:19:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C300B1BF40F
 for <devel@linuxdriverproject.org>; Sat, 12 Oct 2019 22:19:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id BFFB186D53
 for <devel@linuxdriverproject.org>; Sat, 12 Oct 2019 22:19:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VqMzrbTVSU-Y for <devel@linuxdriverproject.org>;
 Sat, 12 Oct 2019 22:19:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E130C86B67
 for <devel@driverdev.osuosl.org>; Sat, 12 Oct 2019 22:19:48 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id j11so6185838plk.3
 for <devel@driverdev.osuosl.org>; Sat, 12 Oct 2019 15:19:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=cj3J1pEroaTR/ZsfEveu1P6fPFD8w3rJ9/qudwdU1EM=;
 b=QEiTiwJMzTqhEDJXM11vucrej9zVDOr2z4w0FDZVcWjqiEY6eV7X5w+QIyjC5VwwTt
 Bl3xx260mtlD2LEf5Mtq86A/e1Ni+KHB0FXrU5tbJKOxKcNVGleD23k1iehbSFTs+iVb
 MOQrOddqFXCo/kyqJKK/fjIVIeZX0R1WaoaWYtuEHOZmDb5e30t/rLFHomWynGjwXDl0
 m04eajvFJpP3aoj5XqiP181Uln2dWb49EOTpJbBCPp0ClWF7O+NhVnvuQJ0K8rLjmBln
 JY8mINbyrG3Go8IzKJIYWaEm75ktxkqT4q6fEr7KcvacoFeyqrHPd1kCXej7aZe8ea56
 sTQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=cj3J1pEroaTR/ZsfEveu1P6fPFD8w3rJ9/qudwdU1EM=;
 b=p2uRop2P0gdN9e32/uz09MUxX2orhXlttlRY6jMn/aBgVRFzmn+ejybjab+/nVhepQ
 jOHSWQHBNbN72aMpJawuvJ1qF4oRvFnEd7UjYDT03t1Ks4o2sRJOWJCjKjwUt9yWdFT7
 uueFv/EZ53ti32kmWhvnOFLJhyymSHkd8TrInGWN0iUH4In3wkFD7ae4RMav9Alssap7
 ryRJf09jlemBZb0gtNQoD/0Wg1Hkim2MMlKKlWU/FonbhV2ogcK5sZXOM+mb7VJazzwl
 EJMqCXgrHnQQqsIp2pFYMPF0wIkveAAEdL/Yl0Ya1McWTEPOyIdf1EPqg4ecUYNYM8xn
 6KUQ==
X-Gm-Message-State: APjAAAV5Pb2gee8BIs1/Xh6ZUWiR0U3xAlpoQll0tcVQOY+lLu9C1G/w
 Dt4OGCI6nhhCEYciLg/Sfwc=
X-Google-Smtp-Source: APXvYqw6XsllW6/XCmJCJV3s870HzmIyUcZI3ccnAxuLC0z96nuQ0p8xsiZ90WLgOlSM3eXZaHwJGA==
X-Received: by 2002:a17:902:a985:: with SMTP id
 bh5mr21912231plb.184.1570918788530; 
 Sat, 12 Oct 2019 15:19:48 -0700 (PDT)
Received: from wambui.zuku.co.ke ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id 30sm13839562pjk.25.2019.10.12.15.19.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 12 Oct 2019 15:19:48 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/2] staging: rtl8712: clean up function headers
Date: Sun, 13 Oct 2019 01:19:16 +0300
Message-Id: <c14b9e60b1e9bab635bc9527cbd2a2a07436ba44.1570918228.git.wambui.karugax@gmail.com>
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

Remove unnecessary line-breaks in function headers to
improve readability of function headers.

Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_mp_ioctl.c | 57 ++++++++--------------
 1 file changed, 19 insertions(+), 38 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_mp_ioctl.c b/drivers/staging/rtl8712/rtl871x_mp_ioctl.c
index 8af7892809ca..29b85330815f 100644
--- a/drivers/staging/rtl8712/rtl871x_mp_ioctl.c
+++ b/drivers/staging/rtl8712/rtl871x_mp_ioctl.c
@@ -231,8 +231,7 @@ static int mp_stop_test(struct _adapter *padapter)
 	return _SUCCESS;
 }
 
-uint oid_rt_pro_set_data_rate_hdl(struct oid_par_priv
-					 *poid_par_priv)
+uint oid_rt_pro_set_data_rate_hdl(struct oid_par_priv *poid_par_priv)
 {
 	struct _adapter *Adapter = (struct _adapter *)
 				   (poid_par_priv->adapter_context);
@@ -291,8 +290,7 @@ uint oid_rt_pro_stop_test_hdl(struct oid_par_priv *poid_par_priv)
 	return RNDIS_STATUS_SUCCESS;
 }
 
-uint oid_rt_pro_set_channel_direct_call_hdl(struct oid_par_priv
-						   *poid_par_priv)
+uint oid_rt_pro_set_channel_direct_call_hdl(struct oid_par_priv *poid_par_priv)
 {
 	struct _adapter *Adapter = (struct _adapter *)
 				   (poid_par_priv->adapter_context);
@@ -327,8 +325,7 @@ uint oid_rt_pro_set_antenna_bb_hdl(struct oid_par_priv *poid_par_priv)
 	return RNDIS_STATUS_SUCCESS;
 }
 
-uint oid_rt_pro_set_tx_power_control_hdl(
-					struct oid_par_priv *poid_par_priv)
+uint oid_rt_pro_set_tx_power_control_hdl(struct oid_par_priv *poid_par_priv)
 {
 	struct _adapter *Adapter = (struct _adapter *)
 				   (poid_par_priv->adapter_context);
@@ -346,8 +343,7 @@ uint oid_rt_pro_set_tx_power_control_hdl(
 	return RNDIS_STATUS_SUCCESS;
 }
 
-uint oid_rt_pro_query_tx_packet_sent_hdl(
-					struct oid_par_priv *poid_par_priv)
+uint oid_rt_pro_query_tx_packet_sent_hdl(struct oid_par_priv *poid_par_priv)
 {
 	struct _adapter *Adapter = (struct _adapter *)
 				   (poid_par_priv->adapter_context);
@@ -365,8 +361,7 @@ uint oid_rt_pro_query_tx_packet_sent_hdl(
 	return RNDIS_STATUS_SUCCESS;
 }
 
-uint oid_rt_pro_query_rx_packet_received_hdl(
-					struct oid_par_priv *poid_par_priv)
+uint oid_rt_pro_query_rx_packet_received_hdl(struct oid_par_priv *poid_par_priv)
 {
 	struct _adapter *Adapter = (struct _adapter *)
 				   (poid_par_priv->adapter_context);
@@ -384,8 +379,7 @@ uint oid_rt_pro_query_rx_packet_received_hdl(
 	return RNDIS_STATUS_SUCCESS;
 }
 
-uint oid_rt_pro_query_rx_packet_crc32_error_hdl(
-					struct oid_par_priv *poid_par_priv)
+uint oid_rt_pro_query_rx_packet_crc32_error_hdl(struct oid_par_priv *poid_par_priv)
 {
 	struct _adapter *Adapter = (struct _adapter *)
 				   (poid_par_priv->adapter_context);
@@ -403,8 +397,7 @@ uint oid_rt_pro_query_rx_packet_crc32_error_hdl(
 	return RNDIS_STATUS_SUCCESS;
 }
 
-uint oid_rt_pro_reset_tx_packet_sent_hdl(struct oid_par_priv
-						*poid_par_priv)
+uint oid_rt_pro_reset_tx_packet_sent_hdl(struct oid_par_priv *poid_par_priv)
 {
 	struct _adapter *Adapter = (struct _adapter *)
 				   (poid_par_priv->adapter_context);
@@ -415,8 +408,7 @@ uint oid_rt_pro_reset_tx_packet_sent_hdl(struct oid_par_priv
 	return RNDIS_STATUS_SUCCESS;
 }
 
-uint oid_rt_pro_reset_rx_packet_received_hdl(struct oid_par_priv
-						    *poid_par_priv)
+uint oid_rt_pro_reset_rx_packet_received_hdl(struct oid_par_priv *poid_par_priv)
 {
 	struct _adapter *Adapter = (struct _adapter *)
 				   (poid_par_priv->adapter_context);
@@ -432,8 +424,7 @@ uint oid_rt_pro_reset_rx_packet_received_hdl(struct oid_par_priv
 	return RNDIS_STATUS_SUCCESS;
 }
 
-uint oid_rt_reset_phy_rx_packet_count_hdl(struct oid_par_priv
-						 *poid_par_priv)
+uint oid_rt_reset_phy_rx_packet_count_hdl(struct oid_par_priv *poid_par_priv)
 {
 	struct _adapter *Adapter = (struct _adapter *)
 				   (poid_par_priv->adapter_context);
@@ -444,8 +435,7 @@ uint oid_rt_reset_phy_rx_packet_count_hdl(struct oid_par_priv
 	return RNDIS_STATUS_SUCCESS;
 }
 
-uint oid_rt_get_phy_rx_packet_received_hdl(struct oid_par_priv
-						  *poid_par_priv)
+uint oid_rt_get_phy_rx_packet_received_hdl(struct oid_par_priv *poid_par_priv)
 {
 	struct _adapter *Adapter = (struct _adapter *)
 				   (poid_par_priv->adapter_context);
@@ -460,8 +450,7 @@ uint oid_rt_get_phy_rx_packet_received_hdl(struct oid_par_priv
 	return RNDIS_STATUS_SUCCESS;
 }
 
-uint oid_rt_get_phy_rx_packet_crc32_error_hdl(struct oid_par_priv
-						     *poid_par_priv)
+uint oid_rt_get_phy_rx_packet_crc32_error_hdl(struct oid_par_priv *poid_par_priv)
 {
 	struct _adapter *Adapter = (struct _adapter *)
 				   (poid_par_priv->adapter_context);
@@ -476,8 +465,7 @@ uint oid_rt_get_phy_rx_packet_crc32_error_hdl(struct oid_par_priv
 	return RNDIS_STATUS_SUCCESS;
 }
 
-uint oid_rt_pro_set_modulation_hdl(struct oid_par_priv
-					  *poid_par_priv)
+uint oid_rt_pro_set_modulation_hdl(struct oid_par_priv *poid_par_priv)
 {
 	struct _adapter *Adapter = (struct _adapter *)
 				   (poid_par_priv->adapter_context);
@@ -489,8 +477,7 @@ uint oid_rt_pro_set_modulation_hdl(struct oid_par_priv
 	return RNDIS_STATUS_SUCCESS;
 }
 
-uint oid_rt_pro_set_continuous_tx_hdl(struct oid_par_priv
-					     *poid_par_priv)
+uint oid_rt_pro_set_continuous_tx_hdl(struct oid_par_priv *poid_par_priv)
 {
 	struct _adapter *Adapter = (struct _adapter *)
 				   (poid_par_priv->adapter_context);
@@ -503,8 +490,7 @@ uint oid_rt_pro_set_continuous_tx_hdl(struct oid_par_priv
 	return RNDIS_STATUS_SUCCESS;
 }
 
-uint oid_rt_pro_set_single_carrier_tx_hdl(struct oid_par_priv
-						 *poid_par_priv)
+uint oid_rt_pro_set_single_carrier_tx_hdl(struct oid_par_priv *poid_par_priv)
 {
 	struct _adapter *Adapter = (struct _adapter *)
 				   (poid_par_priv->adapter_context);
@@ -517,8 +503,7 @@ uint oid_rt_pro_set_single_carrier_tx_hdl(struct oid_par_priv
 	return RNDIS_STATUS_SUCCESS;
 }
 
-uint oid_rt_pro_set_carrier_suppression_tx_hdl(struct oid_par_priv
-						      *poid_par_priv)
+uint oid_rt_pro_set_carrier_suppression_tx_hdl(struct oid_par_priv *poid_par_priv)
 {
 	struct _adapter *Adapter = (struct _adapter *)
 				   (poid_par_priv->adapter_context);
@@ -531,8 +516,7 @@ uint oid_rt_pro_set_carrier_suppression_tx_hdl(struct oid_par_priv
 	return RNDIS_STATUS_SUCCESS;
 }
 
-uint oid_rt_pro_set_single_tone_tx_hdl(struct oid_par_priv
-					      *poid_par_priv)
+uint oid_rt_pro_set_single_tone_tx_hdl(struct oid_par_priv *poid_par_priv)
 {
 	struct _adapter *Adapter = (struct _adapter *)
 				   (poid_par_priv->adapter_context);
@@ -545,8 +529,7 @@ uint oid_rt_pro_set_single_tone_tx_hdl(struct oid_par_priv
 	return RNDIS_STATUS_SUCCESS;
 }
 
-uint oid_rt_pro_read_register_hdl(struct oid_par_priv
-					 *poid_par_priv)
+uint oid_rt_pro_read_register_hdl(struct oid_par_priv *poid_par_priv)
 {
 	struct _adapter *Adapter = (struct _adapter *)
 				   (poid_par_priv->adapter_context);
@@ -727,8 +710,7 @@ uint oid_rt_pro_write_efuse_hdl(struct oid_par_priv *poid_par_priv)
 }
 /*----------------------------------------------------------------------*/
 
-uint oid_rt_get_efuse_current_size_hdl(struct oid_par_priv
-					      *poid_par_priv)
+uint oid_rt_get_efuse_current_size_hdl(struct oid_par_priv *poid_par_priv)
 {
 	struct _adapter *Adapter = (struct _adapter *)
 				   (poid_par_priv->adapter_context);
@@ -821,8 +803,7 @@ uint oid_rt_set_bandwidth_hdl(struct oid_par_priv *poid_par_priv)
 	return RNDIS_STATUS_SUCCESS;
 }
 
-uint oid_rt_set_rx_packet_type_hdl(struct oid_par_priv
-					   *poid_par_priv)
+uint oid_rt_set_rx_packet_type_hdl(struct oid_par_priv *poid_par_priv)
 {
 	struct _adapter *Adapter = (struct _adapter *)
 				   (poid_par_priv->adapter_context);
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

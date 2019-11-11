Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FD9EF74F2
	for <lists+driverdev-devel@lfdr.de>; Mon, 11 Nov 2019 14:31:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E523586470;
	Mon, 11 Nov 2019 13:31:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SatkCEmD0CAm; Mon, 11 Nov 2019 13:31:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 241FD863D9;
	Mon, 11 Nov 2019 13:31:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DE6841BF3DE
 for <devel@linuxdriverproject.org>; Mon, 11 Nov 2019 13:31:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id DBEB320479
 for <devel@linuxdriverproject.org>; Mon, 11 Nov 2019 13:31:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3DYwJKWRUZzS for <devel@linuxdriverproject.org>;
 Mon, 11 Nov 2019 13:31:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by silver.osuosl.org (Postfix) with ESMTPS id E21772043D
 for <devel@driverdev.osuosl.org>; Mon, 11 Nov 2019 13:31:20 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id q70so13343949wme.1
 for <devel@driverdev.osuosl.org>; Mon, 11 Nov 2019 05:31:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=SBThM90ubuVDseSTLIwGRN+Zh5K8pDyfCSWgh066qac=;
 b=UFLFeXWjZpe238nQATmrZSX6QzTo7ltvTj5ThV5ANLfsbDa4iQIt8AaTSGLMJrMnEP
 qxULJX2W3orbIAtdRVN0zW00c6ZBXd2oxXVV1GVDekOOhYFzYWHftwYBqSuGATZBqGhJ
 dmSIJIuDTCJ0LnpR74pvCBYKf41K4TlC42KPIA1Ihq6/6YfyuLyqfu9JlfBIMQtwN2Am
 wtPi+c2FbFmAxObpAKUsonXeBxlIcRDhMTKuTff/UuM/AEohIzqnMJteKC7FQcTKMdP4
 0V357WBwtwfnJX1udTnULxRilUVRR9T+a2fvoZWgLi20nRRHfyOPNwfhNnWNSYVmDiDW
 kuEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=SBThM90ubuVDseSTLIwGRN+Zh5K8pDyfCSWgh066qac=;
 b=CoKbULIwvgeJJrV2nTMr5xvjnGmkzjdngKbs3ZID+TZwkZ35NMEMYLMyYx1nJ61EBI
 yyxEN2eHazoNCZpv2WTB1ViPVjqbdFIKvhz6TImzm178WAfGtngInYBkeCXeZdxagG2n
 2NHJJElxXDav5ibjQCWQyVZrgXuVN0u3t4IMm72S64HOf8LwJ28TpoUipN6JbDcpnnIV
 l4uiOPB9mgCrbmbtCW4VAqYzHznt8+YcBHm2eLCa4qV0F2Julcjind2xRs0KQXrKLbyj
 QOthKqV0FGz43pmsRB0/OHpn4yTpFqJlH4qGsb+XXZpKTGzKNH2YYmypVAPE/ZgUWGBD
 bQ1w==
X-Gm-Message-State: APjAAAXwNKk0DOJ4ZIgP90bMYc+LR8fjwOY7b4eQZ7s/5MKYj5trs1lh
 o1/QDj3KZKDwKqhW6ymYqA==
X-Google-Smtp-Source: APXvYqx0odl6vPnAhPz8C9KDrav40rpT5veoN0MIuwZ5rh9JGwF63rEXMH1iPkDRSvb5nvx3BUZVBQ==
X-Received: by 2002:a7b:c347:: with SMTP id l7mr17125411wmj.48.1573479079116; 
 Mon, 11 Nov 2019 05:31:19 -0800 (PST)
Received: from ninjahub.lan (79-73-36-243.dynamic.dsl.as9105.com.
 [79.73.36.243])
 by smtp.googlemail.com with ESMTPSA id w11sm8470143wra.83.2019.11.11.05.31.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 Nov 2019 05:31:18 -0800 (PST)
From: Jules Irenge <jbi.octave@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 3/3] staging: wfx: replace u32 by __le32
Date: Mon, 11 Nov 2019 13:30:55 +0000
Message-Id: <20191111133055.214410-3-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191111133055.214410-1-jbi.octave@gmail.com>
References: <20191111133055.214410-1-jbi.octave@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Jules Irenge <jbi.octave@gmail.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Replace u32 by __le32 to fix warning of cast from restricted __le32.
Issue detected by sparse tool.

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
v1 uses casting to fix the warnings
v2 replace the declaration type of the variables

 drivers/staging/wfx/hif_api_mib.h | 48 +++++++++++++++----------------
 1 file changed, 24 insertions(+), 24 deletions(-)

diff --git a/drivers/staging/wfx/hif_api_mib.h b/drivers/staging/wfx/hif_api_mib.h
index 94b789ceb4ff..e0a67410add2 100644
--- a/drivers/staging/wfx/hif_api_mib.h
+++ b/drivers/staging/wfx/hif_api_mib.h
@@ -295,31 +295,31 @@ struct hif_mib_stats_table {
 } __packed;
 
 struct hif_mib_extended_count_table {
-	u32   count_plcp_errors;
-	u32   count_fcs_errors;
-	u32   count_tx_packets;
-	u32   count_rx_packets;
-	u32   count_rx_packet_errors;
-	u32   count_rx_decryption_failures;
-	u32   count_rx_mic_failures;
-	u32   count_rx_no_key_failures;
-	u32   count_tx_multicast_frames;
-	u32   count_tx_frames_success;
-	u32   count_tx_frame_failures;
-	u32   count_tx_frames_retried;
-	u32   count_tx_frames_multi_retried;
-	u32   count_rx_frame_duplicates;
-	u32   count_rts_success;
-	u32   count_rts_failures;
-	u32   count_ack_failures;
-	u32   count_rx_multicast_frames;
-	u32   count_rx_frames_success;
-	u32   count_rx_cmacicv_errors;
-	u32   count_rx_cmac_replays;
-	u32   count_rx_mgmt_ccmp_replays;
+	__le32   count_plcp_errors;
+	__le32   count_fcs_errors;
+	__le32   count_tx_packets;
+	__le32   count_rx_packets;
+	__le32   count_rx_packet_errors;
+	__le32   count_rx_decryption_failures;
+	__le32   count_rx_mic_failures;
+	__le32   count_rx_no_key_failures;
+	__le32   count_tx_multicast_frames;
+	__le32   count_tx_frames_success;
+	__le32   count_tx_frame_failures;
+	__le32   count_tx_frames_retried;
+	__le32   count_tx_frames_multi_retried;
+	__le32   count_rx_frame_duplicates;
+	__le32   count_rts_success;
+	__le32   count_rts_failures;
+	__le32   count_rx_multicast_frames;
+	__le32   count_rx_cmacicv_errors;
+	__le32   count_rx_cmac_replays;
+	__le32   count_rx_mgmt_ccmp_replays;
+	__le32   count_rx_beacon;
+	__le32   count_miss_beacon;
+	__le32   count_ack_failures;
+	__le32   count_rx_frames_success;
 	u32   count_rx_bipmic_errors;
-	u32   count_rx_beacon;
-	u32   count_miss_beacon;
 	u32   reserved[15];
 } __packed;
 
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

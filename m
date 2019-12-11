Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3769911BB54
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Dec 2019 19:15:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id BF88B23335;
	Wed, 11 Dec 2019 18:15:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Vp2LE6LVH4PQ; Wed, 11 Dec 2019 18:15:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5D2F9232FA;
	Wed, 11 Dec 2019 18:15:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8D7F41BF473
 for <devel@linuxdriverproject.org>; Wed, 11 Dec 2019 18:15:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6F879885A3
 for <devel@linuxdriverproject.org>; Wed, 11 Dec 2019 18:15:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id s21XXCQsfDtF for <devel@linuxdriverproject.org>;
 Wed, 11 Dec 2019 18:15:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-yw1-f52.google.com (mail-yw1-f52.google.com
 [209.85.161.52])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 96F2D8861E
 for <devel@driverdev.osuosl.org>; Wed, 11 Dec 2019 18:15:23 +0000 (UTC)
Received: by mail-yw1-f52.google.com with SMTP id v84so2956462ywa.4
 for <devel@driverdev.osuosl.org>; Wed, 11 Dec 2019 10:15:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=u0Uagrgs6mVpulGeA6eJiVL8yArUOnTFSWyALd4g4YI=;
 b=ujnadWGq0oPO4Of9IgCS6nRRjtnRxlgyhTiuXznJvRjdGLIrxjGN+ZT6YSaJ/zzjF9
 gys/f3FNf1guI/EXs76WKwwYGC63+7vrBH1MNwRZ88xWKb6wtqWl7COkEKkv8FW3FXOX
 tWJ3VGYfxF17jJOgC4YnSeXBj8pCc3ac5LdI/SeqA9GR2WhRe/tyzADhh4xxKwqIX+iT
 +jCu0ebQ1nTYc5lq44r4F2MeazAcD2TfV9y52U4vKn0XDxoUOIgdemT6RYHq/wFZp/zJ
 xK3k+ujCpJ3nMoGdEPnN6+cg7Ot5AT13wBzbIDiXLuHBs8S2JsUMnK4I5qK2h0uNdTMg
 MIlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=u0Uagrgs6mVpulGeA6eJiVL8yArUOnTFSWyALd4g4YI=;
 b=AL+nZemFt2W1X1kYC8rdQobUyoCIH4UcznVerYIq5E0uoqdwtQrjjgVZKty97JJnou
 gzFlef733u9sRdAu5Fg0E/VCj9xrOXKwLFaMZb+ruFGavWN+FaWp27U2pQ7hMglpENcC
 XXoUNTr8GljR/6jWb1Xlwbwvj+8q73S3zRhfa6squiJm5r/ONmp5fm3UpiWyG5gzs3bf
 lGea2P24H+m0N013+4nelFQykEp3PnLZtumWvqfXMu29k3an8A1lP9Fm9jaYPW2BMDpT
 fIH2RVriW6+zzLpJc2QiK0uN3NusX38VA1sGLxzh/UIhEL6fCbv709cXTPbmDFipUWkl
 4NDQ==
X-Gm-Message-State: APjAAAWrSi9jwrKpSd7JoKIBzz8d6RMxczrysQAgPi8t4p7zUmkCI0NP
 efotP6MYCBz/pJcytn7a8aI=
X-Google-Smtp-Source: APXvYqxaALhyOvpU2ztGTYuOkeBXT/aFJSRD+TPM9gWmXKO27dD4VNr3Uybg0sFaUhMuVEhzABEEyg==
X-Received: by 2002:a81:85c4:: with SMTP id v187mr820499ywf.445.1576088122451; 
 Wed, 11 Dec 2019 10:15:22 -0800 (PST)
Received: from karen ([2604:2d80:d68a:cf00:a4bc:8e08:1748:387f])
 by smtp.gmail.com with ESMTPSA id k30sm1328927ywh.94.2019.12.11.10.15.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Dec 2019 10:15:22 -0800 (PST)
From: Scott Schafer <schaferjscott@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 12/23] staging: qlge: Fix WARNING: please,
 no space before tabs in qlge.h
Date: Wed, 11 Dec 2019 12:12:41 -0600
Message-Id: <13546a2ebc6686da094b23ab576c4388fa61268b.1576086080.git.schaferjscott@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1576086080.git.schaferjscott@gmail.com>
References: <cover.1576086080.git.schaferjscott@gmail.com>
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
Cc: devel@driverdev.osuosl.org, GR-Linux-NIC-Dev@marvell.com,
 Manish Chopra <manishc@marvell.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Scott Schafer <schaferjscott@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix WARNING: please, no space before tabs in qlge.h

Signed-off-by: Scott Schafer <schaferjscott@gmail.com>
---
 drivers/staging/qlge/qlge.h | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/qlge/qlge.h b/drivers/staging/qlge/qlge.h
index ede767a70b10..63642cb9e624 100644
--- a/drivers/staging/qlge/qlge.h
+++ b/drivers/staging/qlge/qlge.h
@@ -16,8 +16,8 @@
 /*
  * General definitions...
  */
-#define DRV_NAME  	"qlge"
-#define DRV_STRING 	"QLogic 10 Gigabit PCI-E Ethernet Driver "
+#define DRV_NAME	"qlge"
+#define DRV_STRING	"QLogic 10 Gigabit PCI-E Ethernet Driver "
 #define DRV_VERSION	"1.00.00.35"
 
 #define WQ_ADDR_ALIGN	0x3	/* 4 byte alignment */
@@ -1076,8 +1076,8 @@ struct tx_buf_desc {
  * IOCB Definitions...
  */
 
-#define OPCODE_OB_MAC_IOCB 			0x01
-#define OPCODE_OB_MAC_TSO_IOCB		0x02
+#define OPCODE_OB_MAC_IOCB			0x01
+#define OPCODE_OB_MAC_TSO_IOCB			0x02
 #define OPCODE_IB_MAC_IOCB			0x20
 #define OPCODE_IB_MPI_IOCB			0x21
 #define OPCODE_IB_AE_IOCB			0x3f
@@ -1179,8 +1179,8 @@ struct ib_mac_iocb_rsp {
 #define IB_MAC_IOCB_RSP_M_MASK	0x60	/* Multicast info */
 #define IB_MAC_IOCB_RSP_M_NONE	0x00	/* Not mcast frame */
 #define IB_MAC_IOCB_RSP_M_HASH	0x20	/* HASH mcast frame */
-#define IB_MAC_IOCB_RSP_M_REG 	0x40	/* Registered mcast frame */
-#define IB_MAC_IOCB_RSP_M_PROM 	0x60	/* Promiscuous mcast frame */
+#define IB_MAC_IOCB_RSP_M_REG	0x40	/* Registered mcast frame */
+#define IB_MAC_IOCB_RSP_M_PROM	0x60	/* Promiscuous mcast frame */
 #define IB_MAC_IOCB_RSP_B	0x80	/* Broadcast frame */
 	u8 flags2;
 #define IB_MAC_IOCB_RSP_P	0x01	/* Promiscuous frame */
@@ -1200,8 +1200,8 @@ struct ib_mac_iocb_rsp {
 #define IB_MAC_IOCB_RSP_M_NONE	0x00	/* No RSS match */
 #define IB_MAC_IOCB_RSP_M_IPV4	0x04	/* IPv4 RSS match */
 #define IB_MAC_IOCB_RSP_M_IPV6	0x02	/* IPv6 RSS match */
-#define IB_MAC_IOCB_RSP_M_TCP_V4 	0x05	/* TCP with IPv4 */
-#define IB_MAC_IOCB_RSP_M_TCP_V6 	0x03	/* TCP with IPv6 */
+#define IB_MAC_IOCB_RSP_M_TCP_V4	0x05	/* TCP with IPv4 */
+#define IB_MAC_IOCB_RSP_M_TCP_V6	0x03	/* TCP with IPv6 */
 #define IB_MAC_IOCB_RSP_V4	0x08	/* IPV4 */
 #define IB_MAC_IOCB_RSP_V6	0x10	/* IPV6 */
 #define IB_MAC_IOCB_RSP_IH	0x20	/* Split after IP header */
@@ -1238,10 +1238,10 @@ struct ib_ae_iocb_rsp {
 #define SOFT_ECC_ERROR_EVENT       0x07
 #define MGMT_ERR_EVENT             0x08
 #define TEN_GIG_MAC_EVENT          0x09
-#define GPI0_H2L_EVENT       	0x10
-#define GPI0_L2H_EVENT       	0x20
-#define GPI1_H2L_EVENT       	0x11
-#define GPI1_L2H_EVENT       	0x21
+#define GPI0_H2L_EVENT		0x10
+#define GPI0_L2H_EVENT		0x20
+#define GPI1_H2L_EVENT		0x11
+#define GPI1_L2H_EVENT		0x21
 #define PCI_ERR_ANON_BUF_RD        0x40
 	u8 q_id;
 	__le32 reserved[15];
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

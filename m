Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F6192827C3
	for <lists+driverdev-devel@lfdr.de>; Sun,  4 Oct 2020 03:18:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id AAA2F20349;
	Sun,  4 Oct 2020 01:18:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ezE3kZKNe+Jk; Sun,  4 Oct 2020 01:18:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1A20420002;
	Sun,  4 Oct 2020 01:18:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E24761BF954
 for <devel@linuxdriverproject.org>; Sun,  4 Oct 2020 01:18:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DF8828630A
 for <devel@linuxdriverproject.org>; Sun,  4 Oct 2020 01:18:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y2k37dX-90qP for <devel@linuxdriverproject.org>;
 Sun,  4 Oct 2020 01:18:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f67.google.com (mail-io1-f67.google.com
 [209.85.166.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 043FC86130
 for <devel@driverdev.osuosl.org>; Sun,  4 Oct 2020 01:18:02 +0000 (UTC)
Received: by mail-io1-f67.google.com with SMTP id k6so5668171ior.2
 for <devel@driverdev.osuosl.org>; Sat, 03 Oct 2020 18:18:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9vWv7cPa16PRp5GbfQ30XwWuZ9bZoQepsEfFV+tBy7A=;
 b=rrttXhXqJcwVCIafWohQ9XbVxf7PlVCHiwgH3hvThDqBR6bAhWcAvHb8YMDf8ia5zf
 1o8Cn9g0yqr7xgDKb46G41fxmWD/IhkXmKUPWUdTZL4Y9D9B3htRUYXLj68N+AYohmQq
 MVxLRhsdmsAv2LB8PHEG80O7FM40rWTWn6GUyviYSwPnDOXQcBJgFsHAfisOW6fG6ZC+
 UV8GaOU8TmMDW0821cv+DrTCiULMKgbJayqyYprCtkchfbcuP7RHPksqSg96vWyik5Fs
 31/1+RA47dX4Ab/woOLUivMQlHbEvXjZYupAv0dtXuEfclzySU1y8MjqMpdMFuTsrPDo
 N7vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9vWv7cPa16PRp5GbfQ30XwWuZ9bZoQepsEfFV+tBy7A=;
 b=bp+rPRkYNSmfawEPiS4J3w35fkIVqsc+LpexN/uklwCR+Z2P3dA7zRP9YeQibALxAb
 V0gthgqTsZ152OQmXsxf6/fRaHbHVv8TyWg4hfqyvg+8jv82bzqFreEBjic4AFVlF/+y
 V4qlFqWDE9pE1uADU2IFrgfAfgTLehuF/ya5wjOtmlQVYVRSVqWfSd0vt/obWq93Rj31
 bQ2XpEdKlEuvDuRKGACl4TgbRe+TOcATc6UU/YsMWBVUtkDgtgBb1JgVoRv5k0tEQ/Vq
 tZdtYXX/Vr7ts8Eexlkov3c3sI7F9ZhTBYlaKTEiWi/2hAvPf+lQl9WbRff9r58Zm48d
 FJ/Q==
X-Gm-Message-State: AOAM530V9BXiZDiU75xyuS3fPFJmKCN4GpFYlZPFBmfmVx5tfg7ew7T0
 Z2f6cxf48ryzC/gibi+RDXy5XvovcUA=
X-Google-Smtp-Source: ABdhPJwRrwJ2IZ1GuU0zkARWhVP2JQrDsKfNDnrlRRyF/ifkdc7cEZ+lPJoiCn9m6X+yMLrcpDo+QA==
X-Received: by 2002:a6b:6118:: with SMTP id v24mr5344603iob.61.1601774281383; 
 Sat, 03 Oct 2020 18:18:01 -0700 (PDT)
Received: from localhost.localdomain (c-73-242-81-227.hsd1.mn.comcast.net.
 [73.242.81.227])
 by smtp.gmail.com with ESMTPSA id t64sm3575194ild.10.2020.10.03.18.18.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 03 Oct 2020 18:18:01 -0700 (PDT)
From: Ross Schmidt <ross.schm.dev@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 7/8] staging: rtl8723bs: replace RTW_GET_BE16 with
 get_unaligned_be16
Date: Sat,  3 Oct 2020 20:17:42 -0500
Message-Id: <20201004011743.10750-7-ross.schm.dev@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201004011743.10750-1-ross.schm.dev@gmail.com>
References: <20201004011743.10750-1-ross.schm.dev@gmail.com>
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

Replace RTW_GET_BE16 macro with get_unlaligned_be16.

Signed-off-by: Ross Schmidt <ross.schm.dev@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_ieee80211.c    | 4 ++--
 drivers/staging/rtl8723bs/core/rtw_recv.c         | 3 ++-
 drivers/staging/rtl8723bs/include/osdep_service.h | 2 --
 drivers/staging/rtl8723bs/os_dep/recv_linux.c     | 3 ++-
 4 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_ieee80211.c b/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
index 3b7a3c220032..c43cca4a3828 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
@@ -801,8 +801,8 @@ u8 *rtw_get_wps_attr(u8 *wps_ie, uint wps_ielen, u16 target_attr_id, u8 *buf_att
 
 	while (attr_ptr - wps_ie < wps_ielen) {
 		/*  4 = 2(Attribute ID) + 2(Length) */
-		u16 attr_id = RTW_GET_BE16(attr_ptr);
-		u16 attr_data_len = RTW_GET_BE16(attr_ptr + 2);
+		u16 attr_id = get_unaligned_be16(attr_ptr);
+		u16 attr_data_len = get_unaligned_be16(attr_ptr + 2);
 		u16 attr_len = attr_data_len + 4;
 
 		/* DBG_871X("%s attr_ptr:%p, id:%u, length:%u\n", __func__, attr_ptr, attr_id, attr_data_len); */
diff --git a/drivers/staging/rtl8723bs/core/rtw_recv.c b/drivers/staging/rtl8723bs/core/rtw_recv.c
index 7e1da0e35812..6979f8dbccb8 100644
--- a/drivers/staging/rtl8723bs/core/rtw_recv.c
+++ b/drivers/staging/rtl8723bs/core/rtw_recv.c
@@ -11,6 +11,7 @@
 #include <linux/jiffies.h>
 #include <rtw_recv.h>
 #include <net/cfg80211.h>
+#include <asm/unaligned.h>
 
 static u8 SNAP_ETH_TYPE_IPX[2] = {0x81, 0x37};
 static u8 SNAP_ETH_TYPE_APPLETALK_AARP[2] = {0x80, 0xf3};
@@ -1906,7 +1907,7 @@ static int amsdu_to_msdu(struct adapter *padapter, union recv_frame *prframe)
 	while (a_len > ETH_HLEN) {
 
 		/* Offset 12 denote 2 mac address */
-		nSubframe_Length = RTW_GET_BE16(pdata + 12);
+		nSubframe_Length = get_unaligned_be16(pdata + 12);
 
 		if (a_len < (ETHERNET_HEADER_SIZE + nSubframe_Length)) {
 			DBG_871X("nRemain_Length is %d and nSubframe_Length is : %d\n", a_len, nSubframe_Length);
diff --git a/drivers/staging/rtl8723bs/include/osdep_service.h b/drivers/staging/rtl8723bs/include/osdep_service.h
index 2f7e1665b6b1..a94b72397ce7 100644
--- a/drivers/staging/rtl8723bs/include/osdep_service.h
+++ b/drivers/staging/rtl8723bs/include/osdep_service.h
@@ -150,8 +150,6 @@ extern void rtw_free_netdev(struct net_device * netdev);
 
 /* Macros for handling unaligned memory accesses */
 
-#define RTW_GET_BE16(a) ((u16) (((a)[0] << 8) | (a)[1]))
-
 void rtw_buf_free(u8 **buf, u32 *buf_len);
 void rtw_buf_update(u8 **buf, u32 *buf_len, u8 *src, u32 src_len);
 
diff --git a/drivers/staging/rtl8723bs/os_dep/recv_linux.c b/drivers/staging/rtl8723bs/os_dep/recv_linux.c
index b2a1bbb30df6..900ff3a3b014 100644
--- a/drivers/staging/rtl8723bs/os_dep/recv_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/recv_linux.c
@@ -10,6 +10,7 @@
 #include <rtw_debug.h>
 #include <linux/jiffies.h>
 #include <net/cfg80211.h>
+#include <asm/unaligned.h>
 
 void rtw_os_free_recvframe(union recv_frame *precvframe)
 {
@@ -69,7 +70,7 @@ _pkt *rtw_os_alloc_msdu_pkt(union recv_frame *prframe, u16 nSubframe_Length, u8
 	skb_reserve(sub_skb, 12);
 	skb_put_data(sub_skb, (pdata + ETH_HLEN), nSubframe_Length);
 
-	eth_type = RTW_GET_BE16(&sub_skb->data[6]);
+	eth_type = get_unaligned_be16(&sub_skb->data[6]);
 
 	if (sub_skb->len >= 8 &&
 		((!memcmp(sub_skb->data, rfc1042_header, SNAP_SIZE) &&
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

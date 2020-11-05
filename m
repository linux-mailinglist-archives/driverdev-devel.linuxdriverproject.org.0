Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 657B52A762C
	for <lists+driverdev-devel@lfdr.de>; Thu,  5 Nov 2020 04:48:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DAB9D203DD;
	Thu,  5 Nov 2020 03:48:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eHuEC6XZgXHM; Thu,  5 Nov 2020 03:48:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5572B2048E;
	Thu,  5 Nov 2020 03:48:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 261CF1BF9B6
 for <devel@linuxdriverproject.org>; Thu,  5 Nov 2020 03:48:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B709E87043
 for <devel@linuxdriverproject.org>; Thu,  5 Nov 2020 03:48:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9z0JGGliFwQw for <devel@linuxdriverproject.org>;
 Thu,  5 Nov 2020 03:48:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f68.google.com (mail-io1-f68.google.com
 [209.85.166.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id EB31387042
 for <devel@driverdev.osuosl.org>; Thu,  5 Nov 2020 03:48:10 +0000 (UTC)
Received: by mail-io1-f68.google.com with SMTP id u62so384170iod.8
 for <devel@driverdev.osuosl.org>; Wed, 04 Nov 2020 19:48:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=MDM15LnnSX3Z+Y7SqJ0tweYp8PHcS6rg13I3l1FWRSM=;
 b=Dnjrj5QCsMNXCkVds3V26fcOQyps/DlT2ddrrHn4eczQsChoQdwxz6LzA0ky/O8XdR
 Zkaf4QJrO4++LQNa9tiArCb9yfk6jz1aNtjQE8qQnPEGSXjWNaFBWEfrtGIbgUcp9AQh
 V9MIX0aQsSxIGfH0HbFNP4/Ry1dAI+4tXxAhrWghWU5OMOHMitBo2Ao2tR/VgY+z9YGj
 tra1XAY3b43zXBBlznYNyMJ6UgNChOiBZ5A2FXO31E0pCDqlrVa4Ov8gahTqyLjy1gMC
 qIbZ7EIeYcBYcg1hJKSB5cRnGewkpyI8ffTi6g+x2ovEgVeP0fMmPbel/a8MHsYs50X6
 F4MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=MDM15LnnSX3Z+Y7SqJ0tweYp8PHcS6rg13I3l1FWRSM=;
 b=c0ArtPukQR2L/UHpK3bI7o7P4/PMpkLVI7zRGQA54HqNh1di4d6XGu5X5JycEMCF8N
 T6YIzaHKCAX2SdNDH1ioNVLEQey5HFlbuEXBrN9B1U08DHe/a3ASPEXW9epl7C8c9r23
 H1Q+jSAydDaScSDQk51YiLu4dwhXKvu00tYeL7VH1xF9Y9n+inh86UZFfPdtllh4t2+Z
 +3ye+YJ0bIeX+evOB9F/AWEuRNoyY/EABNJNJbZ0wEZDEbabVVl36QOF/mhZn0PMXsHg
 jMZAJyNVadTja6+4JddDGUcIMP3/QWZqF5DBP53Q80qr3h3X0PqEum7fzfZF8C1JZbbj
 v6pA==
X-Gm-Message-State: AOAM531Gk9WQWRC74xPkO1Qo/WLrN+K/yOo9S0cZWfi5KpRMYxPSqRRZ
 UOm8VlPn7v2lDKXRK8SwmOjGIPGhHCs=
X-Google-Smtp-Source: ABdhPJwJjLtDxztFb31Snf1hMBwfhLGl47wF1KsAayqf9LfKnKdN0PhnBD72XvP+Of7zGABoAd/9cw==
X-Received: by 2002:a02:6a25:: with SMTP id l37mr590563jac.70.1604548090247;
 Wed, 04 Nov 2020 19:48:10 -0800 (PST)
Received: from localhost.localdomain (c-73-242-81-227.hsd1.mn.comcast.net.
 [73.242.81.227])
 by smtp.gmail.com with ESMTPSA id p6sm172877ilc.26.2020.11.04.19.48.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Nov 2020 19:48:09 -0800 (PST)
From: Ross Schmidt <ross.schm.dev@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 3/9] staging: rtl8723bs: remove IP_FMT macro
Date: Wed,  4 Nov 2020 21:47:48 -0600
Message-Id: <20201105034754.12383-3-ross.schm.dev@gmail.com>
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

Remove unnecessary macro for %pI4 and call it directly.

Signed-off-by: Ross Schmidt <ross.schm.dev@gmail.com>
---
 drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c  | 4 ++--
 drivers/staging/rtl8723bs/include/ieee80211.h | 1 -
 2 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c b/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
index a6d870d663a4..93c93cdaadaf 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
@@ -416,7 +416,7 @@ static void ConstructARPResponse(
 		SET_ARP_PKT_TARGET_MAC_ADDR(pARPRspPkt, get_my_bssid(&(pmlmeinfo->network)));
 		SET_ARP_PKT_TARGET_IP_ADDR(pARPRspPkt, pIPAddress);
 		DBG_871X("%s Target Mac Addr:%pM\n", __func__, MAC_ARG(get_my_bssid(&(pmlmeinfo->network))));
-		DBG_871X("%s Target IP Addr" IP_FMT "\n", __func__, IP_ARG(pIPAddress));
+		DBG_871X("%s Target IP Addr:%pI4\n", __func__, IP_ARG(pIPAddress));
 	}
 
 	*pLength += 28;
@@ -738,7 +738,7 @@ static void ConstructProbeRsp(struct adapter *padapter, u8 *pframe, u32 *pLength
 	memcpy(pwlanhdr->addr3, bssid, ETH_ALEN);
 
 	DBG_871X("%s FW Mac Addr:%pM\n", __func__, MAC_ARG(mac));
-	DBG_871X("%s FW IP Addr" IP_FMT "\n", __func__, IP_ARG(StaAddr));
+	DBG_871X("%s FW IP Addr:%pI4\n", __func__, IP_ARG(StaAddr));
 
 	SetSeqNum(pwlanhdr, 0);
 	SetFrameSubType(fctrl, WIFI_PROBERSP);
diff --git a/drivers/staging/rtl8723bs/include/ieee80211.h b/drivers/staging/rtl8723bs/include/ieee80211.h
index 902c710c1155..5cd307cb48a5 100644
--- a/drivers/staging/rtl8723bs/include/ieee80211.h
+++ b/drivers/staging/rtl8723bs/include/ieee80211.h
@@ -845,7 +845,6 @@ enum ieee80211_state {
 #define DEFAULT_MAX_SCAN_AGE (15 * HZ)
 #define DEFAULT_FTS 2346
 #define MAC_ARG(x) (x)
-#define IP_FMT "%pI4"
 #define IP_ARG(x) (x)
 
 static inline int is_multicast_mac_addr(const u8 *addr)
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

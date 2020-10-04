Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D9E92827BF
	for <lists+driverdev-devel@lfdr.de>; Sun,  4 Oct 2020 03:18:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A97AC86FF2;
	Sun,  4 Oct 2020 01:18:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0R7I1XpGhB-U; Sun,  4 Oct 2020 01:18:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id EC20487018;
	Sun,  4 Oct 2020 01:18:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 534091BF5A9
 for <devel@linuxdriverproject.org>; Sun,  4 Oct 2020 01:18:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3E8748700E
 for <devel@linuxdriverproject.org>; Sun,  4 Oct 2020 01:18:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6lPdenc8L+IO for <devel@linuxdriverproject.org>;
 Sun,  4 Oct 2020 01:18:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f65.google.com (mail-io1-f65.google.com
 [209.85.166.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C0F3A87008
 for <devel@driverdev.osuosl.org>; Sun,  4 Oct 2020 01:18:00 +0000 (UTC)
Received: by mail-io1-f65.google.com with SMTP id d197so5668881iof.0
 for <devel@driverdev.osuosl.org>; Sat, 03 Oct 2020 18:18:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=JnEGoA5xXMzr4zubHgCyguDO16qzGvYww5beEHnGANM=;
 b=uEUrmjYvOJSQRxtSF14MzvXuH7uBedssv1EudSFx2sx/xCuaOVNS29b39U+AOv28Od
 0JVahnbGscfCceKh8KFO7bAXDK7nHN8Ws+Iz3etIQSJ7PXNUtt3SVtEtlclUpOFV4rzc
 SWqzor48/hZozfsljJOVUwDSKdP+ZDcorOUAN5fejfKcEh2x6WZE5ZWvSHqqtg7p5b1L
 P7+yNHTPl4jeX3mfoz45ave8WN3dPEy1Rc/kbNgv91OHCd8AY08pCEpXX9UKYEBD9ixY
 M9K2H7WKYFkdQ85Y7pdvVYrZoWJHRuv52wSLo3bkJ8z3wQ1PGhRpm+M/S+KzKQviOCzr
 Nlgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JnEGoA5xXMzr4zubHgCyguDO16qzGvYww5beEHnGANM=;
 b=HIUIsdxDJBvUMhIEMVHABFHXzUGttvXNUhMfehQSAKM4S74fteJm2Z5Sr1O8Of9ZWu
 YQm5rpoMoc/v3nwsbPPpwLcbjtQaPLjYemYDzIpHAhWypwK8UCuqHoEDKXYo3mJFtukc
 v/cvHhRweoBTHiPbXN6IsBO3GFu+9hUQ69jTAsgDjdbTohOdNFnyq65fBefjR0B+oWFZ
 AM9MRlB3oXyx0YnONOsdp+h+3V+iO+KYOUTVcuG/KK7ZPV2BJN2FODGUZOyEaatWsmmf
 9pmBj0Wb+yxqbMsRs1Jc49CYEd1Ska+awPO86hBBrgmHXqpxqzOUNz7zJihR7AOW14Lv
 gWkw==
X-Gm-Message-State: AOAM532VlhsW5Qh6f/P8XiyUd7Sj95ZzbV8v7SWszVqeyBcAknpIDH34
 zLgLLXbjaVoURhsYRhcrkuhT/Oj812w=
X-Google-Smtp-Source: ABdhPJz/NeyUj+w1aC3oS1j10pQyw+ApuT8okYFcq8daF2YIxhUXvw2+rVGh2yY1BXFOXLgRANWhcg==
X-Received: by 2002:a5d:9717:: with SMTP id h23mr1447066iol.7.1601774280120;
 Sat, 03 Oct 2020 18:18:00 -0700 (PDT)
Received: from localhost.localdomain (c-73-242-81-227.hsd1.mn.comcast.net.
 [73.242.81.227])
 by smtp.gmail.com with ESMTPSA id t64sm3575194ild.10.2020.10.03.18.17.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 03 Oct 2020 18:17:59 -0700 (PDT)
From: Ross Schmidt <ross.schm.dev@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 5/8] staging: rtl8723bs: replace RTW_GET_BE24 with
 get_unaligned_be24
Date: Sat,  3 Oct 2020 20:17:40 -0500
Message-Id: <20201004011743.10750-5-ross.schm.dev@gmail.com>
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

Replace RTW_GET_BE24 macro with get_unaligned_be24.

Signed-off-by: Ross Schmidt <ross.schm.dev@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_ieee80211.c    | 3 ++-
 drivers/staging/rtl8723bs/include/osdep_service.h | 3 ---
 2 files changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_ieee80211.c b/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
index ca98274ae390..977f0ed53ad7 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
@@ -9,6 +9,7 @@
 #include <drv_types.h>
 #include <rtw_debug.h>
 #include <linux/of.h>
+#include <asm/unaligned.h>
 
 u8 RTW_WPA_OUI_TYPE[] = { 0x00, 0x50, 0xf2, 1 };
 u16 RTW_WPA_VERSION = 1;
@@ -874,7 +875,7 @@ static int rtw_ieee802_11_parse_vendor_specific(u8 *pos, uint elen,
 		return -1;
 	}
 
-	oui = RTW_GET_BE24(pos);
+	oui = get_unaligned_be24(pos);
 	switch (oui) {
 	case OUI_MICROSOFT:
 		/* Microsoft/Wi-Fi information elements are further typed and
diff --git a/drivers/staging/rtl8723bs/include/osdep_service.h b/drivers/staging/rtl8723bs/include/osdep_service.h
index da4aa3e71a4b..a26c8db302e0 100644
--- a/drivers/staging/rtl8723bs/include/osdep_service.h
+++ b/drivers/staging/rtl8723bs/include/osdep_service.h
@@ -154,9 +154,6 @@ extern void rtw_free_netdev(struct net_device * netdev);
 
 #define RTW_GET_LE16(a) ((u16) (((a)[1] << 8) | (a)[0]))
 
-#define RTW_GET_BE24(a) ((((u32) (a)[0]) << 16) | (((u32) (a)[1]) << 8) | \
-			 ((u32) (a)[2]))
-
 void rtw_buf_free(u8 **buf, u32 *buf_len);
 void rtw_buf_update(u8 **buf, u32 *buf_len, u8 *src, u32 src_len);
 
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

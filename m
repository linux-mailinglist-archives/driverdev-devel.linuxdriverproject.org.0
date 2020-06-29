Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 82DFF20D05B
	for <lists+driverdev-devel@lfdr.de>; Mon, 29 Jun 2020 19:17:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6278D8880D;
	Mon, 29 Jun 2020 17:16:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PTg2kl+uuZqi; Mon, 29 Jun 2020 17:16:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 339F58876B;
	Mon, 29 Jun 2020 17:16:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A74F11BF34C
 for <devel@linuxdriverproject.org>; Mon, 29 Jun 2020 17:16:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A2CFD20523
 for <devel@linuxdriverproject.org>; Mon, 29 Jun 2020 17:16:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id a+xtZ+XVlnE1 for <devel@linuxdriverproject.org>;
 Mon, 29 Jun 2020 17:16:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by silver.osuosl.org (Postfix) with ESMTPS id D994D2010B
 for <devel@driverdev.osuosl.org>; Mon, 29 Jun 2020 17:16:52 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id q5so17302518wru.6
 for <devel@driverdev.osuosl.org>; Mon, 29 Jun 2020 10:16:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=58F1k7MrrA18PHt4ShpVauKdd7W9Jl9sr1t9KkeMq+c=;
 b=MnG4WngDq/kPxIpHMQd2gytgkwlS4KclFS+YUiaFm97BDEufADDKaF62Xb1Eo9jQWK
 FHuCGjoDZ4yPEoFLc+PzT19zJikxKd01woAFUE9liu5zRCVCcdLXSge/w1rT7fmuKygB
 V3JaprlTrLMf1t35eL1X2Xn5b4C4ibDM83o0ZfRdd192EcpUSb0ciB9dSHkjQ6VoPfjS
 sJVdsCHDwdYv5fKDvPas6fbC44xThBbtFMmjxm08D8B1V+arp310dozdpp17Ncl+4EWb
 aZUxV1lZmoEQIG65XR8QGgYYkq+yqoGMuE0OX2LFZOLcw9aYcSo66zkhxEnMjgiwC0um
 Vthg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=58F1k7MrrA18PHt4ShpVauKdd7W9Jl9sr1t9KkeMq+c=;
 b=BzYZ55jf3ID+n/mDCMKcTSYxXKqCB3kvCthmihnxDowzz3qt4O+hcaCBtOCAf9FGIu
 X4Ik0kWQrjEbPPXvEUUZCTIA3TO+xj4seeXYNcXNwqzUQVa2qCpqVeIi99WRNHAdZ53i
 3Ca6+756rhK93zZgVtpQZ0tsglAVfQU++dRYZaUBT9v1CN4wE9x6TAruOZJKD3n5dPCJ
 Wiil3TNAs8kuw/yGvqeM8ue11uQ7ENyG03t0ey3aVh0GmPkMVKi9PErXrLfI76if9I6l
 Dc/S+u6YxfYUMJWi85djjiG+a8hIbKHFmo6TTQR6+Zh+7TJlH9iDZp0cJjm0BON4hFZH
 R4SQ==
X-Gm-Message-State: AOAM531j53bABLMkcrW+yAjYM8iT9V60xtXaV23r4TLvVdYSy9VEPXyO
 ebjO24qewkXwTgB/HzWCSLA=
X-Google-Smtp-Source: ABdhPJydWWJdG3LfLZ7/i2qfqcBv41OMVwGGy7Y+ls3W8Je2UKVCAd4E5xgMyAr3duDTShaXi6mc7w==
X-Received: by 2002:a05:6000:1283:: with SMTP id
 f3mr18108462wrx.106.1593451011421; 
 Mon, 29 Jun 2020 10:16:51 -0700 (PDT)
Received: from localhost.localdomain
 (dslb-178-011-230-176.178.011.pools.vodafone-ip.de. [178.11.230.176])
 by smtp.gmail.com with ESMTPSA id n14sm432728wro.81.2020.06.29.10.16.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 29 Jun 2020 10:16:50 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 3/3] staging: rtl8712: remove some ieee80211 constants from
 wifi.h
Date: Mon, 29 Jun 2020 19:14:05 +0200
Message-Id: <20200629171405.7711-3-straube.linux@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200629171405.7711-1-straube.linux@gmail.com>
References: <20200629171405.7711-1-straube.linux@gmail.com>
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
Cc: devel@driverdev.osuosl.org, florian.c.schilhabel@googlemail.com,
 linux-kernel@vger.kernel.org, hdegoede@redhat.com, Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The constants IEEE80211_BAR_CTRL_ACK_POLICY_NORMAL and
IEEE80211_BAR_CTRL_CBMTID_COMPRESSED_BA are not used in the driver
code and, if ever needed, available from 'include/linux/ieee80211.h'.
Remove them from wifi.h.

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8712/wifi.h | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/staging/rtl8712/wifi.h b/drivers/staging/rtl8712/wifi.h
index befb2f9b40ad..66e0634f07ba 100644
--- a/drivers/staging/rtl8712/wifi.h
+++ b/drivers/staging/rtl8712/wifi.h
@@ -451,10 +451,6 @@ static inline unsigned char *get_hdr_bssid(unsigned char *pframe)
 #define GetOrderBit(pbuf)	(((*(__le16 *)(pbuf)) & \
 				le16_to_cpu(_ORDER_)) != 0)
 
-/* 802.11 BAR control masks */
-#define IEEE80211_BAR_CTRL_ACK_POLICY_NORMAL     0x0000
-#define IEEE80211_BAR_CTRL_CBMTID_COMPRESSED_BA  0x0004
-
 /*
  * struct rtl_ieee80211_ht_cap - HT capabilities
  *
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

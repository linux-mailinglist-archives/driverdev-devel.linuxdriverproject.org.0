Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D17C338754
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Mar 2021 09:29:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A0AFB43264;
	Fri, 12 Mar 2021 08:29:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6PjUyEiw3exh; Fri, 12 Mar 2021 08:29:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id EF14540025;
	Fri, 12 Mar 2021 08:29:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3C25A1BF59B
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 08:26:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1CD2E8451C
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 08:26:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JFTGXFsbCHFS for <devel@linuxdriverproject.org>;
 Fri, 12 Mar 2021 08:26:58 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com
 [IPv6:2a00:1450:4864:20::431])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5896A844F8
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 08:26:58 +0000 (UTC)
Received: by mail-wr1-x431.google.com with SMTP id l12so4307065wry.2
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 00:26:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=KPDOTIBr7iS/00j7nRv/hdl1m3POKtiWtesNG5vEa1Q=;
 b=b2woxmm3THEAWzZQhmfZUVtTTtl0eLMr74OBA0hy51DurA+KEJA2isE8X84CoXmqWJ
 o/2hfRikGOdidt+QigfcoTPNhqXBZlGwnzG27jpgA3oFdViSDQ/bQ+NFW8YmH8MVNsw7
 29BxEf645Qa1kPavs5V038NE5Jw/AHkUBhYBBcvhO7CAi/rKmNUkQ+fJi3H0g1t2DjW3
 Nlw6x2o3HiEfCBqSESrQCEfeh4Sa1WqAo8exiyX/tXsRLgUMjgO7ZO/CWyPJ1nU8xbgS
 m/vcGv13dZ4aKSHeXN6FoEvL1CM9Vg+42w9Lm+xqQCwi8WRZBwWEHVjOKnmcPmz+hH9B
 GRig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KPDOTIBr7iS/00j7nRv/hdl1m3POKtiWtesNG5vEa1Q=;
 b=XRQUfL6H2E1MGekdkZEzu4dyOjF3pVqreHXzQhMcWr3I64HntLd7PPR4YDfSgG8RLC
 Yx6DK6fkVYy/1I7x4M0w7ysUfrtE5Tv9C6cOK80kpDuMkMN9BkIJyEok4oQcYJOp3rG8
 +5dL+2YLIW1vYPGEsmtffnPvQmjm+6QwuruXQk2wAkxpc8bp1lU52a6tuejmXsDzwNcL
 8dY11k7lPJ9TwYoLQZp12st6Uo0u/olHrbQgeEt1LHwSA2YASWy6zs4lDMicOQ0hkiX9
 J9nb7qHtgEk70j+XVwI28LKZL9rgjndc1Y7OCxscDf0iWlJq89jOACdae9Bt+Y3KsmGp
 Vqjw==
X-Gm-Message-State: AOAM532jH1Fw5mjeZ7YlElUt9iut9ottUkIcUcfYZC8af3y28CtpMj3x
 CC5+a0JlKlgflSNqVVmW/vzzSB5sRJ0=
X-Google-Smtp-Source: ABdhPJyk5GdbX1aJrJNQsODDRzP1P21MQKFUsCqTX3d5gUS5mabFjXy0wGwIOUrOaU7NEScwkLf52g==
X-Received: by 2002:a05:6000:1788:: with SMTP id
 e8mr12911963wrg.171.1615537616629; 
 Fri, 12 Mar 2021 00:26:56 -0800 (PST)
Received: from gimli.cesven (93-48-145-141.ip257.fastwebnet.it.
 [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id i8sm7743979wry.90.2021.03.12.00.26.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Mar 2021 00:26:56 -0800 (PST)
From: Marco Cesati <marcocesati@gmail.com>
X-Google-Original-From: Marco Cesati <marco.cesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 14/33] staging: rtl8723bs: remove typedefs in rtw_ioctl_set.h
Date: Fri, 12 Mar 2021 09:26:19 +0100
Message-Id: <20210312082638.25512-15-marco.cesati@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210312082638.25512-1-marco.cesati@gmail.com>
References: <20210312082638.25512-1-marco.cesati@gmail.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This commit fixes the following checkpatch.pl warning:

    WARNING: do not add new typedefs
    #13: FILE: include/rtw_ioctl_set.h:13:
    +typedef struct _BSSIDInfo {

Signed-off-by: Marco Cesati <marco.cesati@gmail.com>
---
 drivers/staging/rtl8723bs/include/rtw_ioctl_set.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/rtw_ioctl_set.h b/drivers/staging/rtl8723bs/include/rtw_ioctl_set.h
index f0457e91d00f..b0cdee2df638 100644
--- a/drivers/staging/rtl8723bs/include/rtw_ioctl_set.h
+++ b/drivers/staging/rtl8723bs/include/rtw_ioctl_set.h
@@ -10,10 +10,10 @@
 
 typedef u8 NDIS_802_11_PMKID_VALUE[16];
 
-typedef struct _BSSIDInfo {
+struct BSSIDInfo {
 	NDIS_802_11_MAC_ADDRESS  BSSID;
 	NDIS_802_11_PMKID_VALUE  PMKID;
-} BSSIDInfo, *PBSSIDInfo;
+};
 
 
 u8 rtw_set_802_11_authentication_mode(struct adapter *pdapter, enum NDIS_802_11_AUTHENTICATION_MODE authmode);
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

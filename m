Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B272433C3DB
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 18:14:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 29A52834DB;
	Mon, 15 Mar 2021 17:14:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id X2eaQONmkmyc; Mon, 15 Mar 2021 17:14:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 79AC1834D3;
	Mon, 15 Mar 2021 17:14:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 807F01BF33C
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6FE7E47CA5
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kO-eP67RcyXg for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 17:06:49 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com
 [IPv6:2a00:1450:4864:20::62a])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 97EAA47489
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 17:06:49 +0000 (UTC)
Received: by mail-ej1-x62a.google.com with SMTP id e19so67607179ejt.3
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 10:06:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=nXYDT839O37d82QAJyrWSOtopDweUKhjm/f5Qfu9d7w=;
 b=MqaXvE04rn9Wuvsw3p8fWApUw+939h56Yu2Dld8tY0bKbwP2qxOKmQqW/Lo6wIpE2B
 4em3xFyHZRwT9QVFZaLuRDi3VhjEDlPoq390Ahs/NW4FoStsxLtwFHkWHbP3ZCmq+smr
 PD2eM7o3suxbl/fwYozHjCD4iij0xgccOu4AUhW8nSV6P9gHFqGv0wd1+b0gTYHRHuD6
 OkpNq7c+62D1vV24sSCoqvJWO1fd25xU30pV6OsqFOZv2PkpuHVE0T6yUzSk02yWGXVT
 Cl59izc6ClERkEVG6I022TEuwG7ZMFDfcnW7oan93VH2ee0v8i6AiIVqIWWutCEiC+n/
 z8fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nXYDT839O37d82QAJyrWSOtopDweUKhjm/f5Qfu9d7w=;
 b=dp5KiwMrSWi+bwhI4VB37i3KJw9+m+8oSbIk8ZHZV+mfQub9VdkwnVxulLxVKtgh7M
 RZXDqj0vpOXCCLRXkkyUsBvxeOdSQ0DXvkxMRVGWSrqBS65LC/H0txJGDD9rPlkuCLvW
 uksYIgM7Kkvwi2Q/v78KlTHNfwYIHIPm71v04ydMwDg92oWLh5cZ+UYMB3NvkFWjaZ4H
 F3ZqS31wVOa3sPSPoK10jF+XoLCEPHilC3KIQ5Ocnkoaunak9zQHlINxUY2NkeCd7vkN
 GDGHfvtNTEUiTMGwrd8+tCdqcWEoDhYFpl/ja8syBdhIiMCn9zJZ8Xc4+cMjHrxoNQS6
 63lg==
X-Gm-Message-State: AOAM530+R0GMN/viI6K8J1y5YHDBPBtM9YjcpoxmSJWmgxYLAaZNY9tw
 NgAsYf7YvS+vkeazZG1fql4YJJAuR98=
X-Google-Smtp-Source: ABdhPJwfmQT+WFXXeNZzh4NRWk14ZXQss133kOr6HBkq0xVkbxLaVu1slUJ1f2NlMRyXQeqcTp3zCg==
X-Received: by 2002:a17:907:94c3:: with SMTP id
 dn3mr24961601ejc.280.1615828007907; 
 Mon, 15 Mar 2021 10:06:47 -0700 (PDT)
Received: from gimli.cesven (93-48-145-141.ip257.fastwebnet.it.
 [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id gq25sm7879608ejb.85.2021.03.15.10.06.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Mar 2021 10:06:47 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 47/57] Staging: rtl8723bs: fix spaces in osdep_service.h
Date: Mon, 15 Mar 2021 18:06:08 +0100
Message-Id: <20210315170618.2566-48-marcocesati@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210315170618.2566-1-marcocesati@gmail.com>
References: <20210315170618.2566-1-marcocesati@gmail.com>
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

This commit fixes the following checkpatch.pl errors:

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #97: FILE: ./include/osdep_service.h:97:
    +int _rtw_netif_rx(struct net_device * ndev, struct sk_buff *skb);

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #145: FILE: ./include/osdep_service.h:145:
    +extern void rtw_free_netdev(struct net_device * netdev);

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 drivers/staging/rtl8723bs/include/osdep_service.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/osdep_service.h b/drivers/staging/rtl8723bs/include/osdep_service.h
index 63971fd691ed..07f846efa0d1 100644
--- a/drivers/staging/rtl8723bs/include/osdep_service.h
+++ b/drivers/staging/rtl8723bs/include/osdep_service.h
@@ -94,7 +94,7 @@ void _kfree(u8 *pbuf, u32 sz);
 
 struct sk_buff *_rtw_skb_alloc(u32 sz);
 struct sk_buff *_rtw_skb_copy(const struct sk_buff *skb);
-int _rtw_netif_rx(struct net_device * ndev, struct sk_buff *skb);
+int _rtw_netif_rx(struct net_device *ndev, struct sk_buff *skb);
 
 #define rtw_malloc(sz)			_rtw_malloc((sz))
 #define rtw_zmalloc(sz)			_rtw_zmalloc((sz))
@@ -142,7 +142,7 @@ extern void rtw_softap_lock_suspend(void);
 extern void rtw_softap_unlock_suspend(void);
 #endif
 
-extern void rtw_free_netdev(struct net_device * netdev);
+extern void rtw_free_netdev(struct net_device *netdev);
 
 
 /* Macros for handling unaligned memory accesses */
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

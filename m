Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 24BD11E99D8
	for <lists+driverdev-devel@lfdr.de>; Sun, 31 May 2020 20:26:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 201FA85F60;
	Sun, 31 May 2020 18:26:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nITxlcMZ5BuW; Sun, 31 May 2020 18:26:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DA56785166;
	Sun, 31 May 2020 18:26:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 08F1A1BF57B
 for <devel@linuxdriverproject.org>; Sun, 31 May 2020 18:26:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id F10512049D
 for <devel@linuxdriverproject.org>; Sun, 31 May 2020 18:26:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iSbAJTmSmleM for <devel@linuxdriverproject.org>;
 Sun, 31 May 2020 18:26:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
 [209.85.208.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 8D95B20341
 for <devel@driverdev.osuosl.org>; Sun, 31 May 2020 18:26:26 +0000 (UTC)
Received: by mail-lj1-f194.google.com with SMTP id u10so4132889ljj.9
 for <devel@driverdev.osuosl.org>; Sun, 31 May 2020 11:26:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=LhUKdkxEft6nfXa1bSZjn8ZV2z/LvCOdEDYS/DQ0vVs=;
 b=L5wYfa5jjbO3UasXEK47PX2DzUNEb/iXxOA1wo11xyBqd+YwfEFz1YQKpmevBRqrrQ
 H+9I2EWB5kF8Q3wkorqFNuCGL6Xnn8ACBEhShq6f4LoaYhotoq38vQxyQZ6s1/4JAgce
 FahBshoFpH2ttRXvhXVPtQlRpnQz32VvJLzslGS/uASlenPlzKnyjsJfMiLoPxW2kXfJ
 nS8LQrxFgBmY28W1i44Jm/Kk4Ogc4nICy1Iz5nRFiPADUOUWfoLI7F3qD3RsLbz6d1dp
 99uHVNFhDMRnB0a/A0jpqSAo/LCIW+6ZUdpsy0SaGoELyGtG8CicbqlXpO653QWdtdyb
 SanA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=LhUKdkxEft6nfXa1bSZjn8ZV2z/LvCOdEDYS/DQ0vVs=;
 b=IqkN/H5OljTN1J8oweqEPZX7QbiRQAy0L7846t311Lz21AfgT5YnPQ6+RcfWB9zPMF
 8Sfmrp1aQu3O7aBRyxHaYgZ65yX9xqwWLtNmLQ8E1WyaUfcwXxno1Ao3WR2WrvmG/Vg6
 SDYLG1moHibw4TMfqPeT6ehvR24tluJSZiFjI66UlZKCEpO4W0nY1BI5rRziY15c3Qj1
 jjlqTKneOp0juzMpRwAB+XlDmXJb8J+eGrSVB9exYQhRB1U9JZkSpctYscbyD2S7H/Fv
 4sdBeEn3CrYcNlMvg4c/Ib/7QFZFBWEtmgtB3bS+n8GjMjyBKGwZeM0HYf0Psa1R7mYM
 RT6w==
X-Gm-Message-State: AOAM531iwAryS478ORU75o5OJk+fS1f5OB7EnBqtKAIpkV3i35rsqECd
 58O/8qH3jpUbmohTDCfb5gA=
X-Google-Smtp-Source: ABdhPJz0rUAOzlz9y9LZbKi8Su6ICT/PIqmYq6NxSCagYLO4x0cgipgUTrymIwWMLEWcKltLeRUcIw==
X-Received: by 2002:a2e:b550:: with SMTP id a16mr6854221ljn.345.1590949584594; 
 Sun, 31 May 2020 11:26:24 -0700 (PDT)
Received: from alpha (84.188.smarthome.spb.ru. [80.249.188.84])
 by smtp.gmail.com with ESMTPSA id a8sm3396969ljp.102.2020.05.31.11.26.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 31 May 2020 11:26:23 -0700 (PDT)
Received: (nullmailer pid 42072 invoked by uid 1000);
 Sun, 31 May 2020 18:31:11 -0000
From: Ivan Safonov <insafonov@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2] staging:r8723bs: remove wrappers around skb_clone() and
 remove unnecessary in_interrupt() call
Date: Sun, 31 May 2020 21:17:52 +0300
Message-Id: <20200531181751.41830-1-insafonov@gmail.com>
X-Mailer: git-send-email 2.26.2
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
Cc: devel@driverdev.osuosl.org, R Veera Kumar <vkor@vkten.in>,
 Ivan Safonov <insafonov@gmail.com>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 YueHaibing <yuehaibing@huawei.com>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>, linux-kernel@vger.kernel.org,
 Hans de Goede <hdegoede@redhat.com>, Lukasz Szczesny <luk@wybcz.pl>,
 Nishka Dasgupta <nishkadg.linux@gmail.com>,
 Shobhit Kukreti <shobhitkukreti@gmail.com>, Pascal Terjan <pterjan@google.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Wrappers around skb_clone() do not simplify the driver code.

The skb_clone() is always called from an interrupt handler,
so use GFP_ATOMIC allocation only.

Signed-off-by: Ivan Safonov <insafonov@gmail.com>
---
Changes in v2:
  - in_interrupt() removal has been described.

 drivers/staging/rtl8723bs/include/osdep_service.h | 3 ---
 drivers/staging/rtl8723bs/os_dep/osdep_service.c  | 5 -----
 drivers/staging/rtl8723bs/os_dep/recv_linux.c     | 2 +-
 3 files changed, 1 insertion(+), 9 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/osdep_service.h b/drivers/staging/rtl8723bs/include/osdep_service.h
index 5f681899bbec..be34e279670b 100644
--- a/drivers/staging/rtl8723bs/include/osdep_service.h
+++ b/drivers/staging/rtl8723bs/include/osdep_service.h
@@ -94,7 +94,6 @@ void _kfree(u8 *pbuf, u32 sz);
 
 struct sk_buff *_rtw_skb_alloc(u32 sz);
 struct sk_buff *_rtw_skb_copy(const struct sk_buff *skb);
-struct sk_buff *_rtw_skb_clone(struct sk_buff *skb);
 int _rtw_netif_rx(_nic_hdl ndev, struct sk_buff *skb);
 
 #define rtw_malloc(sz)			_rtw_malloc((sz))
@@ -103,9 +102,7 @@ int _rtw_netif_rx(_nic_hdl ndev, struct sk_buff *skb);
 #define rtw_skb_alloc(size) _rtw_skb_alloc((size))
 #define rtw_skb_alloc_f(size, mstat_f)	_rtw_skb_alloc((size))
 #define rtw_skb_copy(skb)	_rtw_skb_copy((skb))
-#define rtw_skb_clone(skb)	_rtw_skb_clone((skb))
 #define rtw_skb_copy_f(skb, mstat_f)	_rtw_skb_copy((skb))
-#define rtw_skb_clone_f(skb, mstat_f)	_rtw_skb_clone((skb))
 #define rtw_netif_rx(ndev, skb) _rtw_netif_rx(ndev, skb)
 
 extern void _rtw_init_queue(struct __queue	*pqueue);
diff --git a/drivers/staging/rtl8723bs/os_dep/osdep_service.c b/drivers/staging/rtl8723bs/os_dep/osdep_service.c
index 4238209ec175..6d443197a0cf 100644
--- a/drivers/staging/rtl8723bs/os_dep/osdep_service.c
+++ b/drivers/staging/rtl8723bs/os_dep/osdep_service.c
@@ -47,11 +47,6 @@ inline struct sk_buff *_rtw_skb_copy(const struct sk_buff *skb)
 	return skb_copy(skb, in_interrupt() ? GFP_ATOMIC : GFP_KERNEL);
 }
 
-inline struct sk_buff *_rtw_skb_clone(struct sk_buff *skb)
-{
-	return skb_clone(skb, in_interrupt() ? GFP_ATOMIC : GFP_KERNEL);
-}
-
 inline int _rtw_netif_rx(_nic_hdl ndev, struct sk_buff *skb)
 {
 	skb->dev = ndev;
diff --git a/drivers/staging/rtl8723bs/os_dep/recv_linux.c b/drivers/staging/rtl8723bs/os_dep/recv_linux.c
index eb4d1c3008fe..b2a1bbb30df6 100644
--- a/drivers/staging/rtl8723bs/os_dep/recv_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/recv_linux.c
@@ -110,7 +110,7 @@ void rtw_os_recv_indicate_pkt(struct adapter *padapter, _pkt *pkt, struct rx_pkt
 			if (memcmp(pattrib->dst, myid(&padapter->eeprompriv), ETH_ALEN)) {
 				if (bmcast) {
 					psta = rtw_get_bcmc_stainfo(padapter);
-					pskb2 = rtw_skb_clone(pkt);
+					pskb2 = skb_clone(pkt, GFP_ATOMIC);
 				} else {
 					psta = rtw_get_stainfo(pstapriv, pattrib->dst);
 				}
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

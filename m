Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BB6F91E98B7
	for <lists+driverdev-devel@lfdr.de>; Sun, 31 May 2020 18:04:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A771481431;
	Sun, 31 May 2020 16:04:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OLS8zZifOkML; Sun, 31 May 2020 16:04:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 35A6C86CB4;
	Sun, 31 May 2020 16:04:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3190E1BF342
 for <devel@linuxdriverproject.org>; Sun, 31 May 2020 16:04:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2E01E87FEA
 for <devel@linuxdriverproject.org>; Sun, 31 May 2020 16:04:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Yfhu6lBbehY8 for <devel@linuxdriverproject.org>;
 Sun, 31 May 2020 16:04:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f195.google.com (mail-lj1-f195.google.com
 [209.85.208.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3859B87FD8
 for <devel@driverdev.osuosl.org>; Sun, 31 May 2020 16:04:02 +0000 (UTC)
Received: by mail-lj1-f195.google.com with SMTP id k5so5064163lji.11
 for <devel@driverdev.osuosl.org>; Sun, 31 May 2020 09:04:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/jWa79zjp43R39+MRgzum8emlYhe6zDNSyhVpmFy1UM=;
 b=m12KnDSmpBchSpW8O7NIpxxcXDYX30r/lGOgLTRij+5Bjlywkszb/9+4yyx7SC9oOk
 q8USkg8z2klLfxe/wXbn9ST8N66ESi4x2eJ+O2DVkcuybgKqL1frhFwFRBGYtBMaObLA
 mDQMwikzSAewO6l2vRJggLfJJ34q2X+e86XobZc9EpuGuBDDfU5oTHJe3LIJ4+nkM3zq
 LZOU2/LYijae6tH20nxcy076CAif8Md7/YJaokMfaagg5NwVnv53ed/SZgHIVqo5eAsJ
 yIVsY0eJSJLWoTfLatzPWVA8bI2BVFikueanAgNjXKgVGfmgnc4dr4z6xtKPmS25l1p4
 GBuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/jWa79zjp43R39+MRgzum8emlYhe6zDNSyhVpmFy1UM=;
 b=D2WFzFDF5KmFLDgK6UKJUEa1KiGtmOOJGTUggwi8isKJpx011kAgK4Qt8KPW9UJZZB
 ZkfmBRGf82+znQIuzmieHF4xljSlc5ljpMLa/gjYoPibyLxf3/EviaF8qk/zBAH4zI/7
 cvP5Rz5UeXOMzZ53AmNQTNtb05ZrFuZysWP1Eyi5fZq7T1H1Pbjeiau3UC1VstM+SlR/
 gqgCfo3GqzfFK3yowQT9YtHuR4OkuC/FC07qxA0Z9VvQtXz46h1+C1exRgE1m+hUu0rq
 8bHtu7AgNrh3IYtHTMzm2J4BNcV7iFsE58K5kzwC+51dgRi4ksRlxOX8BSx2M5qquHt+
 NvMw==
X-Gm-Message-State: AOAM532C1ESfYzHDW9QciiKpTheIXDhVZTxl1jwOhKME1z3iV3/BsexE
 o0Nga8bTieFUayioR++0C6M=
X-Google-Smtp-Source: ABdhPJzC+JjHrT0Z33ulGBSRaEIOUqabc6uh9g7UQ6cn2amrY9fSWX6wLgtic+EvPYUAXiiRCSO3iw==
X-Received: by 2002:a05:651c:311:: with SMTP id
 a17mr3538745ljp.322.1590941040184; 
 Sun, 31 May 2020 09:04:00 -0700 (PDT)
Received: from alpha (84.188.smarthome.spb.ru. [80.249.188.84])
 by smtp.gmail.com with ESMTPSA id 6sm3329265ljq.115.2020.05.31.09.03.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 31 May 2020 09:03:59 -0700 (PDT)
Received: (nullmailer pid 39166 invoked by uid 1000);
 Sun, 31 May 2020 16:08:52 -0000
From: Ivan Safonov <insafonov@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging:r8723bs: remove wrappers around skb_clone()
Date: Sun, 31 May 2020 19:08:43 +0300
Message-Id: <20200531160843.39120-1-insafonov@gmail.com>
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

Signed-off-by: Ivan Safonov <insafonov@gmail.com>
---
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

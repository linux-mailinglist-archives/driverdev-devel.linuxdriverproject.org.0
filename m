Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C1090778BE
	for <lists+driverdev-devel@lfdr.de>; Sat, 27 Jul 2019 14:36:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5951B22902;
	Sat, 27 Jul 2019 12:36:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FJMsjs8EBuYs; Sat, 27 Jul 2019 12:36:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E680A20411;
	Sat, 27 Jul 2019 12:36:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E55101BF37C
 for <devel@linuxdriverproject.org>; Sat, 27 Jul 2019 12:36:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DD7848841E
 for <devel@linuxdriverproject.org>; Sat, 27 Jul 2019 12:36:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KcFnDVrVty3I for <devel@linuxdriverproject.org>;
 Sat, 27 Jul 2019 12:36:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2F1028841A
 for <devel@driverdev.osuosl.org>; Sat, 27 Jul 2019 12:36:42 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id c14so25691921plo.0
 for <devel@driverdev.osuosl.org>; Sat, 27 Jul 2019 05:36:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=BcNT+MFCkxdPKPzetxscvcsG7DH/SGCqmRYrqRRIav8=;
 b=t9FogJPyaEYktz+rgn930epLshe+hxaW1YbRK3b7otL2/m53rWbC7Mfrz1R/8BEemu
 PfHYVYDlNHh8X1rgH47s7tNIxECURl0fPvD746WU8S7y9NNB/EMMIlYn89sGU0G92CUv
 VKDI5M/s6SZntF3LPSEmvgg0JvrGby6PFFYq3x3B1lB6JjNPf8pFdpW3n6ZDs5sxGJZw
 d2oEPd37Hb2rgoJWJurflOIxaFOYALZg81RBt3c71LnNywXMCPwoRWMhkQshy6zMng9/
 ThQclJMiOd79DmFc4thzcYW6SSOrvHXxZi11iP6XEoC1IYE092za6Gej0lK/MWvTHtSS
 EVsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=BcNT+MFCkxdPKPzetxscvcsG7DH/SGCqmRYrqRRIav8=;
 b=RTFZgAPSJByG8OVQleV8yFdFqRPBlhvmNbd90lqnZFmgy/Y2TVj3Aw5xeVaDtcoCQ0
 m9CxKruEAHhIgjO+dnQt75NVhAIvZ0PnGVcMdaD91irxtG93VwQDgqYAXVH6lA2asBTK
 6EbSih9LnSYFHJstL6nHV0DYfEuHCXnY1ur6514U3cKckrakZSTFfRsmHwvm2X5CzN8A
 aMGUG/aZCExeQjtjT9d7KDNlrc6rROTcecakcGDkSOc+D6pSUj/K6p1LBnAcPNPNVzoA
 L2raQwdBTbyYTPUZE7aVVypNxX9wFoUuD5wsvE732EPL/bQK7nqAxAnoyXTlbKt8mXba
 df4Q==
X-Gm-Message-State: APjAAAW6ljnSGsN5pbh0pDKPAXVyfPyxAQB2Xyg21jW3aELJWlAniAUr
 M4Zc6XcidK4EBisS3e4WhCU=
X-Google-Smtp-Source: APXvYqyy2ApCW47XDeDmB6DunhoI/d98KYyUxu1caSkKE93oDf+RvAIeTJDyNX18mJKLmClqoRZ0mg==
X-Received: by 2002:a17:902:4124:: with SMTP id
 e33mr94564573pld.6.1564231001740; 
 Sat, 27 Jul 2019 05:36:41 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.86.126])
 by smtp.gmail.com with ESMTPSA id s185sm82919285pgs.67.2019.07.27.05.36.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 27 Jul 2019 05:36:40 -0700 (PDT)
Date: Sat, 27 Jul 2019 18:06:35 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Larry Finger <Larry.Finger@lwfinger.net>,
 Himadri Pandya <himadri18.07@gmail.com>,
 Josenivaldo Benito Jr <jrbenito@benito.qsl.br>,
 Nishka Dasgupta <nishkadg.linux@gmail.com>,
 Shobhit Kukreti <shobhitkukreti@gmail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 hdegoede@redhat.com
Subject: [PATCH] staging: rtl8723bs: hal: Remove function argument padapter
Message-ID: <20190727123635.GA6797@hari-Inspiron-1545>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
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

Remove function argument "padapter" in rtl8723bs_init_recv_priv function
as its not being used.

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c | 4 ++--
 drivers/staging/rtl8723bs/include/recv_osdep.h | 2 +-
 drivers/staging/rtl8723bs/os_dep/recv_linux.c  | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c b/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c
index e23b39a..022f8fd 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c
@@ -479,7 +479,7 @@ s32 rtl8723bs_init_recv_priv(struct adapter *padapter)
 		precvpriv->free_recv_buf_queue_cnt = 0;
 		for (i = 0; i < n ; i++) {
 			list_del_init(&precvbuf->list);
-			rtw_os_recvbuf_resource_free(padapter, precvbuf);
+			rtw_os_recvbuf_resource_free(precvbuf);
 			precvbuf++;
 		}
 		precvpriv->precv_buf = NULL;
@@ -519,7 +519,7 @@ void rtl8723bs_free_recv_priv(struct adapter *padapter)
 		precvpriv->free_recv_buf_queue_cnt = 0;
 		for (i = 0; i < n ; i++) {
 			list_del_init(&precvbuf->list);
-			rtw_os_recvbuf_resource_free(padapter, precvbuf);
+			rtw_os_recvbuf_resource_free(precvbuf);
 			precvbuf++;
 		}
 		precvpriv->precv_buf = NULL;
diff --git a/drivers/staging/rtl8723bs/include/recv_osdep.h b/drivers/staging/rtl8723bs/include/recv_osdep.h
index 1056f61..00b0e2b 100644
--- a/drivers/staging/rtl8723bs/include/recv_osdep.h
+++ b/drivers/staging/rtl8723bs/include/recv_osdep.h
@@ -29,7 +29,7 @@ void rtw_os_recv_resource_free(struct recv_priv *precvpriv);
 void rtw_os_free_recvframe(union recv_frame *precvframe);
 
 
-void rtw_os_recvbuf_resource_free(struct adapter *padapter, struct recv_buf *precvbuf);
+void rtw_os_recvbuf_resource_free(struct recv_buf *precvbuf);
 
 _pkt *rtw_os_alloc_msdu_pkt(union recv_frame *prframe, u16 nSubframe_Length, u8 *pdata);
 void rtw_os_recv_indicate_pkt(struct adapter *padapter, _pkt *pkt, struct rx_pkt_attrib *pattrib);
diff --git a/drivers/staging/rtl8723bs/os_dep/recv_linux.c b/drivers/staging/rtl8723bs/os_dep/recv_linux.c
index 643cacc..a5070fb 100644
--- a/drivers/staging/rtl8723bs/os_dep/recv_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/recv_linux.c
@@ -43,7 +43,7 @@ void rtw_os_recv_resource_free(struct recv_priv *precvpriv)
 }
 
 /* free os related resource in struct recv_buf */
-void rtw_os_recvbuf_resource_free(struct adapter *padapter, struct recv_buf *precvbuf)
+void rtw_os_recvbuf_resource_free(struct recv_buf *precvbuf)
 {
 	if (precvbuf->pskb) {
 		dev_kfree_skb_any(precvbuf->pskb);
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

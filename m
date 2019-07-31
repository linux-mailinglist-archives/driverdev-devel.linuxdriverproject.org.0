Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EA7697CBB5
	for <lists+driverdev-devel@lfdr.de>; Wed, 31 Jul 2019 20:16:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7A68E85BC9;
	Wed, 31 Jul 2019 18:16:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Gk6hIB7qoDjO; Wed, 31 Jul 2019 18:16:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6D6EA8589A;
	Wed, 31 Jul 2019 18:16:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 087F51BF2EA
 for <devel@linuxdriverproject.org>; Wed, 31 Jul 2019 18:16:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 04D9685958
 for <devel@linuxdriverproject.org>; Wed, 31 Jul 2019 18:16:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S-RO6ipmZhkP for <devel@linuxdriverproject.org>;
 Wed, 31 Jul 2019 18:16:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6DC51857BC
 for <devel@driverdev.osuosl.org>; Wed, 31 Jul 2019 18:16:27 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id c2so30809900plz.13
 for <devel@driverdev.osuosl.org>; Wed, 31 Jul 2019 11:16:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=1sAf77R4gzWxgPq//0aLYDWVurwEB8Tct+N6+vCkoJc=;
 b=aZ5z8q9c46G8wcw6ld8aAEI1c+wkY1etCcS/Tbmn4AXFNj33c9L8ZADUA7eMWeL3Zw
 SFHr7AwDd4SogjhF/pE+j74/n9LEUjDCx4q0d16aWsrK9qdqQ06fUwj8kS3wD7Vqh0Ph
 I5H8pGITJWZnyhdQ9spWiM0XPpdQsMJ76W4uMSWcn8nAmSBBA7P9opI/wYTIoZon9HWU
 9EECv/PwKYFP7gpP/oZJSJsldD7M8jhz+5konnUPg25dnA5fWy+4xRAF6djP9ayvUsyX
 xBpn1WdzfGv+cnuOkyHxtIfftCCtTFPBGAi2N+6Kpd86e3wPDKFpMfSeoe/P5NWJXm7x
 e4Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=1sAf77R4gzWxgPq//0aLYDWVurwEB8Tct+N6+vCkoJc=;
 b=jxnoQTw0t+g4sai4QPeF8INhk2sjjpAWlv30Hgck/U41K+WQU/3YX38lVa2Pub5yTK
 9zQkI/89yw7Q7i76XsueMnAM5L8ptOJEWycjYwie0fZnJbHZAWyvDO34gbsFUxxpBZmJ
 bvAa+TTQGfnGoG3Kt8yFdN+0b5DWcSBBPTfC/6wTz/8VBV/7lCp04bxcQxnXeff9Fsj9
 Vti/euy9cIEIwF8OeHnZIdV/CAt8cGROcarWIc9FHU40P0Xgi7xMeXWgekp5tcdcrMDy
 X/ALSrmN5dIlnlz7/R3vDPHk0e9DdrTYJNdVh7gMrZTSLFaOAOPyf85mH6G9j2NQwrwf
 MQ6w==
X-Gm-Message-State: APjAAAVhN9Ky67vT0UQLZNQU6y5OwP6vbQg32ojdl3FKLd1XQW6vyfec
 MEJUUfQGyW2KwqwOCokhkTA=
X-Google-Smtp-Source: APXvYqywWgXVVa5HAchsaX6hhd9H/38bF3HhZwHjO20BOhCrJBxjBrpY0iPQjqb34gwf22YhlpGbPA==
X-Received: by 2002:a17:902:28e9:: with SMTP id
 f96mr116875790plb.114.1564596987105; 
 Wed, 31 Jul 2019 11:16:27 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.86.126])
 by smtp.gmail.com with ESMTPSA id l1sm89746867pfl.9.2019.07.31.11.16.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 31 Jul 2019 11:16:26 -0700 (PDT)
Date: Wed, 31 Jul 2019 23:46:21 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Josenivaldo Benito Jr <jrbenito@benito.qsl.br>,
 Larry Finger <Larry.Finger@lwfinger.net>,
 Himadri Pandya <himadri18.07@gmail.com>,
 Colin Ian King <colin.king@canonical.com>,
 Nishka Dasgupta <nishkadg.linux@gmail.com>,
 Shobhit Kukreti <shobhitkukreti@gmail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 hdegoede@redhat.com
Subject: [Patch v2 04/10] staging: rtl8723bs: hal: Remove function argument
 padapter
Message-ID: <20190731181621.GA9349@hari-Inspiron-1545>
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
as its not being used

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
v4 - Add patch number

 drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c | 4 ++--
 drivers/staging/rtl8723bs/include/recv_osdep.h | 2 +-
 drivers/staging/rtl8723bs/os_dep/recv_linux.c  | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c b/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c
index 032d018..7fbe6c6 100644
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
@@ -518,7 +518,7 @@ void rtl8723bs_free_recv_priv(struct adapter *padapter)
 		precvpriv->free_recv_buf_queue_cnt = 0;
 		for (i = 0; i < n ; i++) {
 			list_del_init(&precvbuf->list);
-			rtw_os_recvbuf_resource_free(padapter, precvbuf);
+			rtw_os_recvbuf_resource_free(precvbuf);
 			precvbuf++;
 		}
 		precvpriv->precv_buf = NULL;
diff --git a/drivers/staging/rtl8723bs/include/recv_osdep.h b/drivers/staging/rtl8723bs/include/recv_osdep.h
index 1056f61..47689f6 100644
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

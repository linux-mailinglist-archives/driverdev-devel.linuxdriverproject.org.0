Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DBBE384F5
	for <lists+driverdev-devel@lfdr.de>; Fri,  7 Jun 2019 09:26:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3ED0C8588C;
	Fri,  7 Jun 2019 07:26:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vcnPxlw6s0QC; Fri,  7 Jun 2019 07:26:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 134FD83491;
	Fri,  7 Jun 2019 07:26:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C9FA31BF333
 for <devel@linuxdriverproject.org>; Fri,  7 Jun 2019 07:26:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C770383365
 for <devel@linuxdriverproject.org>; Fri,  7 Jun 2019 07:26:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nvqRxnxl7CWa for <devel@linuxdriverproject.org>;
 Fri,  7 Jun 2019 07:26:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 35F7D83491
 for <devel@driverdev.osuosl.org>; Fri,  7 Jun 2019 07:26:28 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id 81so662079pfy.13
 for <devel@driverdev.osuosl.org>; Fri, 07 Jun 2019 00:26:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ZgtTyD3UeV/hG6EXB2fOVsSRbZVCu6x5ymbmsQ+VHSs=;
 b=IGOzv0eVtPNnDuZaptEPGGT7wGVBggqcEtAkNtUhkCWIBlqyuZ5omydOZl+3A8gMfY
 dog/OBlv0+jp+PS9rBIIUeBZyx7sUUQDnPX9EoBGF53bWaNW2YeoHrD8T7lziCt3NFf9
 JmOhhOg+0A92AqiefzOpc0JrW4zNrxEeCg11aGp4GAOi60WvP8oKFgqIBQki0OVH6Jsp
 R3jBFgDhhAq8aeVsZweSGxMmRZ4gzpd5JipiBW5GZNYBeMXasMI9lCPZKjQIQIHp6+2O
 YWTO4XI+zhmNjcojHN+3fXXiYYR/MWod+NqBrTYGpeNOGVnbDO3+9OkM4wU1wPtCmPlK
 tuZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZgtTyD3UeV/hG6EXB2fOVsSRbZVCu6x5ymbmsQ+VHSs=;
 b=SGD7at5Wm2c2SXIDBdTEy6zsPBIawEeXyiOa//+cbqh9y/d5ysv2Yucqe+KAIlYHSj
 FHOVYi+8GNzjI6q4a+iplf7deqOaCn+DCbwk/h5J2QkK/QGp7EjeySOd9ZFJ2fdkr97T
 ZI9I+cSRlXVgtvT0WVljUlj1ipZ2HjAaElyBY7FN/EfMAkChvtJVycAPYg4eC48zIX9W
 vrNZfmioHbBmFT+KjjBuB4Gw5sYIGWmgmM3PWoxsvM0NAUl3B/qOhifxr1AtGU7UjsrB
 zbcJ/ZDZ4X+NsKck1ZLBT1Xxb6dg2abF2c/ExfNSjqA9ClerW5KHHMSiQLZ3gtk+XfIX
 L55g==
X-Gm-Message-State: APjAAAUKXW/bogVWMexMkdl2VTWg1MV2dqsRjuVrT4IiLAlPyy5MPW6U
 bfq5ASkcJAGSyG6WLM9ShUo=
X-Google-Smtp-Source: APXvYqwy5jOxhn+olMjPszPvnWPJZ+kbBUFhBHdwPxHHqc8A6ImBkDcZZk8fJG9+wROpQvFhMsqIwA==
X-Received: by 2002:aa7:9293:: with SMTP id j19mr14297872pfa.190.1559892387920; 
 Fri, 07 Jun 2019 00:26:27 -0700 (PDT)
Received: from localhost.localdomain ([110.227.95.145])
 by smtp.gmail.com with ESMTPSA id c9sm1955344pfn.3.2019.06.07.00.26.25
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 07 Jun 2019 00:26:27 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] staging: rtl8723bs: rtw_os_recvbuf_resource_free():
 Change type
Date: Fri,  7 Jun 2019 12:56:09 +0530
Message-Id: <20190607072609.28620-2-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190607072609.28620-1-nishkadg.linux@gmail.com>
References: <20190607072609.28620-1-nishkadg.linux@gmail.com>
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Change return type of function rtw_os_recvbuf_resource_free to void as
its return value is never stored, checked or otherwise used.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8723bs/include/recv_osdep.h | 2 +-
 drivers/staging/rtl8723bs/os_dep/recv_linux.c  | 6 +-----
 2 files changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/recv_osdep.h b/drivers/staging/rtl8723bs/include/recv_osdep.h
index 0e1baf170cfb..1056f615d0f9 100644
--- a/drivers/staging/rtl8723bs/include/recv_osdep.h
+++ b/drivers/staging/rtl8723bs/include/recv_osdep.h
@@ -29,7 +29,7 @@ void rtw_os_recv_resource_free(struct recv_priv *precvpriv);
 void rtw_os_free_recvframe(union recv_frame *precvframe);
 
 
-int rtw_os_recvbuf_resource_free(struct adapter *padapter, struct recv_buf *precvbuf);
+void rtw_os_recvbuf_resource_free(struct adapter *padapter, struct recv_buf *precvbuf);
 
 _pkt *rtw_os_alloc_msdu_pkt(union recv_frame *prframe, u16 nSubframe_Length, u8 *pdata);
 void rtw_os_recv_indicate_pkt(struct adapter *padapter, _pkt *pkt, struct rx_pkt_attrib *pattrib);
diff --git a/drivers/staging/rtl8723bs/os_dep/recv_linux.c b/drivers/staging/rtl8723bs/os_dep/recv_linux.c
index 45145efa3f68..3fe9c2255edd 100644
--- a/drivers/staging/rtl8723bs/os_dep/recv_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/recv_linux.c
@@ -46,16 +46,12 @@ void rtw_os_recv_resource_free(struct recv_priv *precvpriv)
 }
 
 /* free os related resource in struct recv_buf */
-int rtw_os_recvbuf_resource_free(struct adapter *padapter, struct recv_buf *precvbuf)
+void rtw_os_recvbuf_resource_free(struct adapter *padapter, struct recv_buf *precvbuf)
 {
-	int ret = _SUCCESS;
-
 	if (precvbuf->pskb)
 	{
 		dev_kfree_skb_any(precvbuf->pskb);
 	}
-	return ret;
-
 }
 
 _pkt *rtw_os_alloc_msdu_pkt(union recv_frame *prframe, u16 nSubframe_Length, u8 *pdata)
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

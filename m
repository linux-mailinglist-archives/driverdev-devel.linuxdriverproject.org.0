Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B3499C622
	for <lists+driverdev-devel@lfdr.de>; Sun, 25 Aug 2019 22:45:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6BC7F86088;
	Sun, 25 Aug 2019 20:45:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1cISi-3abgKz; Sun, 25 Aug 2019 20:45:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8B38985FE6;
	Sun, 25 Aug 2019 20:45:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4D9411BF57B
 for <devel@linuxdriverproject.org>; Sun, 25 Aug 2019 20:45:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4A16F203F6
 for <devel@linuxdriverproject.org>; Sun, 25 Aug 2019 20:45:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 82zIUOSsV7Vp for <devel@linuxdriverproject.org>;
 Sun, 25 Aug 2019 20:45:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f65.google.com (mail-lf1-f65.google.com
 [209.85.167.65])
 by silver.osuosl.org (Postfix) with ESMTPS id AF81D203BE
 for <devel@driverdev.osuosl.org>; Sun, 25 Aug 2019 20:45:38 +0000 (UTC)
Received: by mail-lf1-f65.google.com with SMTP id o11so1394340lfb.12
 for <devel@driverdev.osuosl.org>; Sun, 25 Aug 2019 13:45:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:cc:from:subject:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=pYr6d0TqDBZJiGDM65yUDwZgwxV9r/UgERdB1DdKGhk=;
 b=merYvVNz3XTkAguGe0KmeNCT7qATUbpbjfbNSU4cukNfVihROujObBCrwk7sn2iwVo
 k5+KIwUA4W3lNPh0jVDg21qRjZPNk9kx5ngOUawPP5gMBOOIn1mX1TEEl7cO/GElOp4c
 jogPNM/nuYsB7RKcdMX2+pFzMdfghQhfZtOsPV9y0JV/q+j42BExCfa+5ZiRfbHffvc3
 yddfJUsWggXSkwwXQA9pvEZU28HPvt4M2++IghjijaXN7Wjytg+aZYNoXHn4DmrI+dXs
 87KnBt29d58hWsxuHt1gOqvY5qM5hCCjL359z8dT5WO8bNH+cT2N53a2tEZwYdazI+/i
 zOKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=pYr6d0TqDBZJiGDM65yUDwZgwxV9r/UgERdB1DdKGhk=;
 b=XIwTAca5Qwlnvn/wAb0E2XP1BrX+W8AwO3W9fz+dRiGkT6+24Ee22ePe6X3rRb1Wzj
 RApyslDkBJ35ajJbaT6KWc9od+nMIKxmXTDYOZKrXcmCNc3WnOz4gDZl/FZxWD5FIErm
 4JGI+A73s3rYpMKB7DO+eOknITwc3AJh9TOmAMMBD/h3+Bf2ZAm9JzApQF6KDg1KDJTK
 HAubnU+pEprkslG0ITFwUpx7waAkv5tI4brEV5f5IYaFJp5B/4SveEzTFM5r2fCADeUI
 nUT0X0Hny6P5SeejBN6JYzqpOTLnMR0pOzzWlJoqBKte8odVtC27S8vLiMgIlnzWgwUr
 gXTw==
X-Gm-Message-State: APjAAAU5fRdBD6qaeN6QFa6P+NgFYJ+W/ECnjlU/mENRnOGTd2kG2kuY
 U1z+wb/AKwy1JDb1+5XWR5Y=
X-Google-Smtp-Source: APXvYqwXNMLWbQhEMkf9Yi0/ZfLM0yayORYGl8XrgkqLZrRcTG+h3OOykWCDwdjHK86g+x6372J1HQ==
X-Received: by 2002:ac2:539b:: with SMTP id g27mr4988676lfh.73.1566765936888; 
 Sun, 25 Aug 2019 13:45:36 -0700 (PDT)
Received: from [192.168.0.160] ([178.71.168.190])
 by smtp.gmail.com with ESMTPSA id u20sm1323570lfl.4.2019.08.25.13.45.36
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 25 Aug 2019 13:45:36 -0700 (PDT)
To: Larry Finger <Larry.Finger@lwfinger.net>
From: Ivan Safonov <insafonov@gmail.com>
Subject: [PATCH] r8188eu: use skb_put_data instead of skb_put/memcpy pair
Message-ID: <4c9e1e66-5ffc-c04b-9ea8-39cec5fd9b2a@gmail.com>
Date: Sun, 25 Aug 2019 23:48:58 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
Content-Language: en-US
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
Cc: devel@driverdev.osuosl.org, Ivan Safonov <insafonov@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Sanjana Sanikommu <sanjana99reddy99@gmail.com>,
 Vatsala Narang <vatsalanarang@gmail.com>,
 Colin Ian King <colin.king@canonical.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

skb_put_data is shorter and clear.

Signed-off-by: Ivan Safonov <insafonov@gmail.com>
---
  drivers/staging/rtl8188eu/core/rtw_recv.c        | 6 +-----
  drivers/staging/rtl8188eu/os_dep/usb_ops_linux.c | 3 +--
  2 files changed, 2 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_recv.c 
b/drivers/staging/rtl8188eu/core/rtw_recv.c
index 620da6c003d8..d4278361e002 100644
--- a/drivers/staging/rtl8188eu/core/rtw_recv.c
+++ b/drivers/staging/rtl8188eu/core/rtw_recv.c
@@ -1373,11 +1373,7 @@ static struct recv_frame *recvframe_defrag(struct 
adapter *adapter,
                 /* append  to first fragment frame's tail (if privacy 
frame, pull the ICV) */
                 skb_trim(prframe->pkt, prframe->pkt->len - 
prframe->attrib.icv_len);

-               /* memcpy */
-               memcpy(skb_tail_pointer(prframe->pkt), pnfhdr->pkt->data,
-                      pnfhdr->pkt->len);
-
-               skb_put(prframe->pkt, pnfhdr->pkt->len);
+               skb_put_data(prframe->pkt, pnfhdr->pkt->data, 
pnfhdr->pkt->len);

                 prframe->attrib.icv_len = pnfhdr->attrib.icv_len;
                 plist = plist->next;
diff --git a/drivers/staging/rtl8188eu/os_dep/usb_ops_linux.c 
b/drivers/staging/rtl8188eu/os_dep/usb_ops_linux.c
index eedf2cd831d1..aaab0d577453 100644
--- a/drivers/staging/rtl8188eu/os_dep/usb_ops_linux.c
+++ b/drivers/staging/rtl8188eu/os_dep/usb_ops_linux.c
@@ -122,8 +122,7 @@ static int recvbuf2recvframe(struct adapter *adapt, 
struct sk_buff *pskb)
                         precvframe->pkt = pkt_copy;
                         skb_reserve(pkt_copy, 8 - 
((size_t)(pkt_copy->data) & 7));/* force pkt_copy->data at 8-byte 
alignment address */
                         skb_reserve(pkt_copy, shift_sz);/* force ip_hdr 
at 8-byte alignment address according to shift_sz. */
-                       memcpy(pkt_copy->data, (pbuf + 
pattrib->drvinfo_sz + RXDESC_SIZE), skb_len);
-                       skb_put(precvframe->pkt, skb_len);
+                       skb_put_data(pkt_copy, (pbuf + 
pattrib->drvinfo_sz + RXDESC_SIZE), skb_len);
                 } else {
                         DBG_88E("%s: alloc_skb fail , drop frag frame\n",
                                 __func__);
-- 
2.21.0
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

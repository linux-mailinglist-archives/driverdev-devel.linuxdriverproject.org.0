Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B1D41E972C
	for <lists+driverdev-devel@lfdr.de>; Sun, 31 May 2020 13:01:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5FAC1203E3;
	Sun, 31 May 2020 11:01:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sFgpLrl+lLSy; Sun, 31 May 2020 11:01:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9511720134;
	Sun, 31 May 2020 11:01:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B35C51BF5A3
 for <devel@linuxdriverproject.org>; Sun, 31 May 2020 11:01:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id AFEB887F50
 for <devel@linuxdriverproject.org>; Sun, 31 May 2020 11:01:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gGXdeYMM8zrA for <devel@linuxdriverproject.org>;
 Sun, 31 May 2020 11:01:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
 [209.85.208.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B9150848A3
 for <devel@driverdev.osuosl.org>; Sun, 31 May 2020 11:01:51 +0000 (UTC)
Received: by mail-lj1-f194.google.com with SMTP id 9so3122324ljc.8
 for <devel@driverdev.osuosl.org>; Sun, 31 May 2020 04:01:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=4ZeH+3Xs1eLtvVZLC2Ghqmx2t9Qj5bzcPEiLkSrbQKo=;
 b=V/u7sKIVbzwoHQ9wVIOeSooJyWzb2QQiXYzSXNcQSYKkQGygOrAZ4WD8l4SMuhA0T4
 iwgXniwTuKtDnd7H/mys4Oc2Es3xUMpCC5L5yIZUz9diJzpsx+DjBpNQ/hScwgLaJNBD
 +vR8fOTzeRAOyM7BNUz9LKKeXiGnYLWxmBBwHIjuY3pSYh7C6r8EwdBcf4nngl19VVmz
 IoXxH7YaLF3t/DfJksXz2H6oHRujIn5wcM6Rpnx7Uf6vmbXzAptpfI7d1oM16lq9HwQz
 mhOfSibt2JaZeaz6DEyCLiWD3bS3WDdgbUzuaB9krSODilv42Nc+ghMFbsi3JbkjHflp
 +2Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=4ZeH+3Xs1eLtvVZLC2Ghqmx2t9Qj5bzcPEiLkSrbQKo=;
 b=EtJoWlMcYrruBJMsBbrB82m9S1Tu+9BtmSKLRXs3znUJMdVxn8msUi4MX0sBUP0crh
 3ew+2UU2j4WWkIfuWA71WpsJiiNPDBieaHxMHykoWKePstVFl0dnrkWmtcuLgnGWPbay
 wW8/OXhb2+Imq1jufpz/w2t+plNtVjmP+Ocf6cyQTHKQHDVc3syJilaLqA4WN259MuL0
 sox4aAujBL8/Xir1FkorngKBOEAXy6/amljSPTjyCN2Sk5WONK0lXHvKVi5PieA6geHs
 +QlaUGxef1A6z+f255q/9mcW1h1wjWKPH8NJ/F9yl+OmBQyz+mAcyKQIclS9U+SvWiwc
 c5kA==
X-Gm-Message-State: AOAM531+5Vl6GFYx5pTfC/7qal7B0A6d00ASEolfzIAAaw05MmFN7Q/l
 pZqmukl5Ue54rFUo38Qb4mQ=
X-Google-Smtp-Source: ABdhPJygGsmq6Jk3FZc9+rIZXhBtmE1ah0pzyVZVjtfXWDp8SR5j9Io1znGSGbdOOIvoCYKLqaRNaw==
X-Received: by 2002:a05:651c:205b:: with SMTP id
 t27mr8251413ljo.456.1590922909639; 
 Sun, 31 May 2020 04:01:49 -0700 (PDT)
Received: from alpha (84.188.smarthome.spb.ru. [80.249.188.84])
 by smtp.gmail.com with ESMTPSA id z5sm3148776ljm.64.2020.05.31.04.01.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 31 May 2020 04:01:49 -0700 (PDT)
Received: (nullmailer pid 9364 invoked by uid 1000);
 Sun, 31 May 2020 11:06:18 -0000
From: Ivan Safonov <insafonov@gmail.com>
To: Larry Finger <Larry.Finger@lwfinger.net>
Subject: [PATCH] staging:rtl8712: avoid skb_clone after skb allocation fail
Date: Sun, 31 May 2020 14:05:47 +0300
Message-Id: <20200531110548.9318-1-insafonov@gmail.com>
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
Cc: Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
 devel@driverdev.osuosl.org,
 Cristiane Naves <cristianenavescardoso09@gmail.com>,
 Kees Cook <keescook@chromium.org>, Merwin Trever Ferrao <merwintf@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Ivan Safonov <insafonov@gmail.com>, linux-kernel@vger.kernel.org,
 Nishka Dasgupta <nishkadg.linux@gmail.com>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The skb allocated when out of memory is likely to be discarded
during subsequent processing.

Signed-off-by: Ivan Safonov <insafonov@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_recv.c | 29 ++++++++++----------------
 1 file changed, 11 insertions(+), 18 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl8712_recv.c b/drivers/staging/rtl8712/rtl8712_recv.c
index 116773943a2e..570030be3077 100644
--- a/drivers/staging/rtl8712/rtl8712_recv.c
+++ b/drivers/staging/rtl8712/rtl8712_recv.c
@@ -1037,24 +1037,17 @@ static void recvbuf2recvframe(struct _adapter *padapter, struct sk_buff *pskb)
 		 */
 		alloc_sz += 6;
 		pkt_copy = netdev_alloc_skb(padapter->pnetdev, alloc_sz);
-		if (pkt_copy) {
-			precvframe->u.hdr.pkt = pkt_copy;
-			skb_reserve(pkt_copy, 4 - ((addr_t)(pkt_copy->data)
-				    % 4));
-			skb_reserve(pkt_copy, shift_sz);
-			memcpy(pkt_copy->data, pbuf, tmp_len);
-			precvframe->u.hdr.rx_head = precvframe->u.hdr.rx_data =
-				 precvframe->u.hdr.rx_tail = pkt_copy->data;
-			precvframe->u.hdr.rx_end = pkt_copy->data + alloc_sz;
-		} else {
-			precvframe->u.hdr.pkt = skb_clone(pskb, GFP_ATOMIC);
-			if (!precvframe->u.hdr.pkt)
-				return;
-			precvframe->u.hdr.rx_head = pbuf;
-			precvframe->u.hdr.rx_data = pbuf;
-			precvframe->u.hdr.rx_tail = pbuf;
-			precvframe->u.hdr.rx_end = pbuf + alloc_sz;
-		}
+		if (!pkt_copy)
+			return;
+
+		precvframe->u.hdr.pkt = pkt_copy;
+		skb_reserve(pkt_copy, 4 - ((addr_t)(pkt_copy->data) % 4));
+		skb_reserve(pkt_copy, shift_sz);
+		memcpy(pkt_copy->data, pbuf, tmp_len);
+		precvframe->u.hdr.rx_head = precvframe->u.hdr.rx_data =
+			precvframe->u.hdr.rx_tail = pkt_copy->data;
+		precvframe->u.hdr.rx_end = pkt_copy->data + alloc_sz;
+
 		recvframe_put(precvframe, tmp_len);
 		recvframe_pull(precvframe, drvinfo_sz + RXDESC_SIZE);
 		/* because the endian issue, driver avoid reference to the
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

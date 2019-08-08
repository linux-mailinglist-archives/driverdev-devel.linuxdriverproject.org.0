Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AE2C185AF5
	for <lists+driverdev-devel@lfdr.de>; Thu,  8 Aug 2019 08:41:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id EF7A5204C8;
	Thu,  8 Aug 2019 06:40:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aiKJd4Brqkij; Thu,  8 Aug 2019 06:40:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id BF183204D4;
	Thu,  8 Aug 2019 06:40:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1D6391BF83A
 for <devel@linuxdriverproject.org>; Thu,  8 Aug 2019 06:40:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0D7FA86203
 for <devel@linuxdriverproject.org>; Thu,  8 Aug 2019 06:40:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id y_s7PpBDNn1w for <devel@linuxdriverproject.org>;
 Thu,  8 Aug 2019 06:40:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7B69386141
 for <devel@driverdev.osuosl.org>; Thu,  8 Aug 2019 06:40:38 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id m30so43530693pff.8
 for <devel@driverdev.osuosl.org>; Wed, 07 Aug 2019 23:40:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vRuaRWWdjNBvDPBgzOsQop1lwAdTF0mjzH/wPSYa4Lc=;
 b=WR0r4jdE/yeReekLMXTCHIaeeTYIokHVVpkq24Ly9DY4t9e2xVJPn5N9LgahzPEQdR
 aUmTQtNMDVhPsebEZ8/ldqU5Tx6IoiR8bwBfdhRwOMd+3NXoP+Y5CMJtQOUPuLYYn1Ru
 Da2O/yt504zQscyS+SC8r47hTJZGSdlSQbUjP/+pK6lf85eqQsj4B2UoqYzZR5HWnode
 PtKhV2fbP2gI4H0BifA2utCXwZCg2z/ymDv15b8evundx8YbXY2z9Fi3xu1ya36aund+
 Tt5P3c4mTtytByCJ+5n8x+ez9D2tgoU1VqhbOcnPFVZbQDU5ab7L8CTWGnUty9i0ssWS
 2VIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vRuaRWWdjNBvDPBgzOsQop1lwAdTF0mjzH/wPSYa4Lc=;
 b=A3lEqMlEifQcHJJvozDCaC5Z+jUf9d9YzZ0bf200xaknm00p5HWf4e1KADjGe1F/Rp
 f+fdnB3G8dLgXFTu5kOJJv37x4NxhgUTV/j3GPngDcK2ybJe6U0i1ULSIXp1mQnHT1Kg
 MEbtGEpv5AXE0eqShMesteVnhMc2czWx9DHr7cMLypb8hLgAKyDPm+v7IRuPTkr+aEP5
 cuS/dEw7ZWOAi9gXXDujnQxDLPYIxfE8KD+btwuUfqjO/9A9vItlPhbqKIjBpLLAbaq/
 1FE6qPdLqeYr7osLgs9bcwK9+Q6ucyYZRb7W/iG2HFaHsHtN1o7LZZChX7CmrefVGtpK
 o7/g==
X-Gm-Message-State: APjAAAV9kxEMRADHNUuQSjKcB6FN30cZlC8msjoH6KT8Zs7yG2mCj9ER
 bmM3rKCwEtJfbvFfZVBgjEw=
X-Google-Smtp-Source: APXvYqzDqOM2nv9WRM6l/safTNLxWJxcCWeaNvzLaDmgTSX1+I6xiYOVXTOd3P3FmqN6ytGwcWJRVw==
X-Received: by 2002:a63:2b0c:: with SMTP id r12mr11273364pgr.206.1565246437825; 
 Wed, 07 Aug 2019 23:40:37 -0700 (PDT)
Received: from localhost.localdomain ([122.163.44.6])
 by smtp.gmail.com with ESMTPSA id m101sm1213950pjb.7.2019.08.07.23.40.35
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 07 Aug 2019 23:40:37 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: larry.finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
 gregkh@linuxfoundation.org, devel@driverdev.osuosl.org
Subject: [PATCH 05/10] staging: rtl8712: recvbuf2recvframe(): Change return
 type
Date: Thu,  8 Aug 2019 12:10:07 +0530
Message-Id: <20190808064012.12661-5-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190808064012.12661-1-nishkadg.linux@gmail.com>
References: <20190808064012.12661-1-nishkadg.linux@gmail.com>
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

Change return type of recvbuf2recvframe from int to void as its return
value is never used. Modify or remove return statements accordingly.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_recv.c | 12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl8712_recv.c b/drivers/staging/rtl8712/rtl8712_recv.c
index 0c5712898653..42cb2c95b40c 100644
--- a/drivers/staging/rtl8712/rtl8712_recv.c
+++ b/drivers/staging/rtl8712/rtl8712_recv.c
@@ -980,7 +980,7 @@ int recv_func(struct _adapter *padapter, void *pcontext)
 	return retval;
 }
 
-static int recvbuf2recvframe(struct _adapter *padapter, struct sk_buff *pskb)
+static void recvbuf2recvframe(struct _adapter *padapter, struct sk_buff *pskb)
 {
 	u8 *pbuf, shift_sz = 0;
 	u8	frag, mf;
@@ -1007,7 +1007,7 @@ static int recvbuf2recvframe(struct _adapter *padapter, struct sk_buff *pskb)
 		/* In this case, it means the MAX_RECVBUF_SZ is too small to
 		 * get the data from 8712u.
 		 */
-		return _FAIL;
+		return;
 	}
 	do {
 		prxstat = (struct recv_stat *)pbuf;
@@ -1020,13 +1020,13 @@ static int recvbuf2recvframe(struct _adapter *padapter, struct sk_buff *pskb)
 		drvinfo_sz = (le32_to_cpu(prxstat->rxdw0) & 0x000f0000) >> 16;
 		drvinfo_sz <<= 3;
 		if (pkt_len <= 0)
-			goto  _exit_recvbuf2recvframe;
+			return;
 		/* Qos data, wireless lan header length is 26 */
 		if ((le32_to_cpu(prxstat->rxdw0) >> 23) & 0x01)
 			shift_sz = 2;
 		precvframe = r8712_alloc_recvframe(pfree_recv_queue);
 		if (!precvframe)
-			goto  _exit_recvbuf2recvframe;
+			return;
 		INIT_LIST_HEAD(&precvframe->u.hdr.list);
 		precvframe->u.hdr.precvbuf = NULL; /*can't access the precvbuf*/
 		precvframe->u.hdr.len = 0;
@@ -1057,7 +1057,7 @@ static int recvbuf2recvframe(struct _adapter *padapter, struct sk_buff *pskb)
 		} else {
 			precvframe->u.hdr.pkt = skb_clone(pskb, GFP_ATOMIC);
 			if (!precvframe->u.hdr.pkt)
-				return _FAIL;
+				return;
 			precvframe->u.hdr.rx_head = pbuf;
 			precvframe->u.hdr.rx_data = pbuf;
 			precvframe->u.hdr.rx_tail = pbuf;
@@ -1077,8 +1077,6 @@ static int recvbuf2recvframe(struct _adapter *padapter, struct sk_buff *pskb)
 		precvframe = NULL;
 		pkt_copy = NULL;
 	} while ((transfer_len > 0) && pkt_cnt > 0);
-_exit_recvbuf2recvframe:
-	return _SUCCESS;
 }
 
 static void recv_tasklet(void *priv)
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F27DA4B7D
	for <lists+driverdev-devel@lfdr.de>; Sun,  1 Sep 2019 21:49:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id F117C87EA0;
	Sun,  1 Sep 2019 19:49:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FUnvI+c-mt-f; Sun,  1 Sep 2019 19:49:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 65C1687DFE;
	Sun,  1 Sep 2019 19:49:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DE7081BF419
 for <devel@linuxdriverproject.org>; Sun,  1 Sep 2019 19:49:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DABE78666C
 for <devel@linuxdriverproject.org>; Sun,  1 Sep 2019 19:49:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id epIqs3EiBROp for <devel@linuxdriverproject.org>;
 Sun,  1 Sep 2019 19:49:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f68.google.com (mail-lf1-f68.google.com
 [209.85.167.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6B9DD865E2
 for <devel@driverdev.osuosl.org>; Sun,  1 Sep 2019 19:49:40 +0000 (UTC)
Received: by mail-lf1-f68.google.com with SMTP id u29so8896721lfk.7
 for <devel@driverdev.osuosl.org>; Sun, 01 Sep 2019 12:49:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=LwY5pl2zHPQpHCPl2EeMGMDJCM7CTQzDe7kSoMux6Pc=;
 b=D7DAJ36EbdYDxjCfKvTRc5FxFRgj+oFbazv3GDtCNFtYxKlbTFNHIXy1C53fDuR1sM
 qNZiJUn1bx0kB1nW5HFFnHIsVO5sGJ8p6WqE3pyfB3mT4rkUFH/PDik4Kt1tPxxEHf1l
 mVHY2tYxpiYPeki/NSg9s8/9l1gUSe8azuX7C4yQ4EuHrnNuxardH5aK/nVjkg2kdgd5
 88iPETTppWvFFJF8Ik+oiXY5MX2N8AFNL/y9qytW4aJ6S4pnTflLdjDXOssY1rGGO51z
 FycJqb3i5KfgMWsXO7nCiuLYSlgAquiw+uQ+EXpJojWDhTMj/eeb5ezX1YY+6NtoOOXg
 VLGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=LwY5pl2zHPQpHCPl2EeMGMDJCM7CTQzDe7kSoMux6Pc=;
 b=AQjFLoK9f4nbb+BchVeo4V7Hk55hXKpFUrWpXvU+1p4UEtM7QgOpOlfc52TagrddKn
 /6J0eE2RRq2vv5nBNXQDaWbNURbWOg6Ns6VVYEyBA2w5kWEQ+TYVp3S7V169eF4lLxeG
 +iR7nkEhOyy1l1BSg0FAI67E6Lgzaz+ohGbhVp1xEMuZ0N5pPztCNf/qBfLXPgs07Rbw
 gSCGSbluhDYHawg1iB+NNmb7ynx7m/FX2qpTNasjVNeuDhl8PWiDvq4mUP9rTfXsDQ/P
 KAlqmqJMSdRBR1UOVh6GcWD3bSwgFHGjtYkyc+6hU3zavAOlrqsxpeplFzEl08D59zVz
 3jCQ==
X-Gm-Message-State: APjAAAXHWjbE69HSdSlNJW110pV/5HfSJm5HIodh85EwNwKsKeqSdbfC
 eoCjNEfO5iVXDDNklzNV1jM=
X-Google-Smtp-Source: APXvYqzQVFc8uN/bzBpPSo7IX2BqziQEK1EiWiUpg1HtX+tID+fZ0niyCHRn2TuTX/MtrIt2ft5Gew==
X-Received: by 2002:a19:4b4a:: with SMTP id y71mr10955740lfa.118.1567367378539; 
 Sun, 01 Sep 2019 12:49:38 -0700 (PDT)
Received: from alpha ([178.71.207.205])
 by smtp.gmail.com with ESMTPSA id t1sm704861lji.101.2019.09.01.12.49.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 01 Sep 2019 12:49:38 -0700 (PDT)
Received: (nullmailer pid 16050 invoked by uid 1000);
 Sun, 01 Sep 2019 19:53:01 -0000
Date: Sun, 1 Sep 2019 22:53:01 +0300
From: Ivan Safonov <insafonov@gmail.com>
To: Larry Finger <Larry.Finger@lwfinger.net>
Subject: [PATCH v2] staging: r8188eu: use skb_put_data instead of
 skb_put/memcpy pair
Message-ID: <20190901195301.GA16043@alpha>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, Sanjana Sanikommu <sanjana99reddy99@gmail.com>,
 Vatsala Narang <vatsalanarang@gmail.com>,
 Colin Ian King <colin.king@canonical.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

skb_put_data is shorter and clear.

Signed-off-by: Ivan Safonov <insafonov@gmail.com>
---
Changes in v2:
  - add "staging: " in message subject;
  - all code lines now have no breaks in the middle of a sentence.

drivers/staging/rtl8188eu/core/rtw_recv.c        | 6 +-----
 drivers/staging/rtl8188eu/os_dep/usb_ops_linux.c | 3 +--
 2 files changed, 2 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_recv.c b/drivers/staging/rtl8188eu/core/rtw_recv.c
index 620da6c003d8..d4278361e002 100644
--- a/drivers/staging/rtl8188eu/core/rtw_recv.c
+++ b/drivers/staging/rtl8188eu/core/rtw_recv.c
@@ -1373,11 +1373,7 @@ static struct recv_frame *recvframe_defrag(struct adapter *adapter,
 		/* append  to first fragment frame's tail (if privacy frame, pull the ICV) */
 		skb_trim(prframe->pkt, prframe->pkt->len - prframe->attrib.icv_len);
 
-		/* memcpy */
-		memcpy(skb_tail_pointer(prframe->pkt), pnfhdr->pkt->data,
-		       pnfhdr->pkt->len);
-
-		skb_put(prframe->pkt, pnfhdr->pkt->len);
+		skb_put_data(prframe->pkt, pnfhdr->pkt->data, pnfhdr->pkt->len);
 
 		prframe->attrib.icv_len = pnfhdr->attrib.icv_len;
 		plist = plist->next;
diff --git a/drivers/staging/rtl8188eu/os_dep/usb_ops_linux.c b/drivers/staging/rtl8188eu/os_dep/usb_ops_linux.c
index eedf2cd831d1..aaab0d577453 100644
--- a/drivers/staging/rtl8188eu/os_dep/usb_ops_linux.c
+++ b/drivers/staging/rtl8188eu/os_dep/usb_ops_linux.c
@@ -122,8 +122,7 @@ static int recvbuf2recvframe(struct adapter *adapt, struct sk_buff *pskb)
 			precvframe->pkt = pkt_copy;
 			skb_reserve(pkt_copy, 8 - ((size_t)(pkt_copy->data) & 7));/* force pkt_copy->data at 8-byte alignment address */
 			skb_reserve(pkt_copy, shift_sz);/* force ip_hdr at 8-byte alignment address according to shift_sz. */
-			memcpy(pkt_copy->data, (pbuf + pattrib->drvinfo_sz + RXDESC_SIZE), skb_len);
-			skb_put(precvframe->pkt, skb_len);
+			skb_put_data(pkt_copy, (pbuf + pattrib->drvinfo_sz + RXDESC_SIZE), skb_len);
 		} else {
 			DBG_88E("%s: alloc_skb fail , drop frag frame\n",
 				__func__);
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

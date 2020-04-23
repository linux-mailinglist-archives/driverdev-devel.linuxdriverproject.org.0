Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A9A41B6442
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 Apr 2020 21:09:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4A20786C7C;
	Thu, 23 Apr 2020 19:09:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yFPhSBssQO-l; Thu, 23 Apr 2020 19:09:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1CFCE86C25;
	Thu, 23 Apr 2020 19:09:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E463A1BF27F
 for <devel@linuxdriverproject.org>; Thu, 23 Apr 2020 19:09:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E0D7F88523
 for <devel@linuxdriverproject.org>; Thu, 23 Apr 2020 19:09:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JIod2MDq7DqC for <devel@linuxdriverproject.org>;
 Thu, 23 Apr 2020 19:09:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f193.google.com (mail-lj1-f193.google.com
 [209.85.208.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0BC658831B
 for <devel@driverdev.osuosl.org>; Thu, 23 Apr 2020 19:09:54 +0000 (UTC)
Received: by mail-lj1-f193.google.com with SMTP id f11so2791278ljp.1
 for <devel@driverdev.osuosl.org>; Thu, 23 Apr 2020 12:09:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=w0h2+HD12jslhQhVTfHXo4XzcR3CkQ35KAkzWejng0I=;
 b=uXmeyzjxovJLmE/4VWvDRDrzLChw9L+6DpVyKT5C+V5TxPbUhch0J89GUxxHyq8oGj
 iyRKDD+wUQ+o72YCH4qEvKrOG7fhU0vN24auW/STeS5rmBCCHcOP6EAQ4JDnsL3a2GwY
 zMpfRM/APtycZNYr7Cb20jpVIyA10ohAE+tTAcVEU7ZtBExsl1kHGI0ZrqlrSj1+9oeQ
 4J5uzfmLNJWHBKTWFl9dWZ74RS/ljfMQ5Gu84gRHTFYVC8jrqFd+KnGmxuT22sKl4i6Y
 JisXvchWTWzCMUgL4RhtsABbhrCKyV93baq1wS3DwIMfywuma003Kik17UemvTp/ajKa
 1LDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=w0h2+HD12jslhQhVTfHXo4XzcR3CkQ35KAkzWejng0I=;
 b=sTP0fN6aiLshshcNOIJjYqXIFprC+Fu5eITxsU9IbBxMZuI4rX6mSQmnS4ydSlKErl
 TEGEyTD1Gd4u7grH0chXC6lNCC/mY6RGmxxOPCoX+Mu6Yvzd3E1Yn+z1bbA+ZS3qweet
 d8zauu6zXhNTaafOeU1WzZqjix3WLCAN6UB2SmcemhzyvE58CqOOhMTvpXc8DhDconpm
 KgBuXFRNcI+nDizoBlqiX+IT10Zci1v3bjNnEHl2ludoDOFMhrqv6fChu63mTNIvwycV
 A/vYlW3CFAOtfhYpaIss0YeOoDs2fNjrrxbwtw4JaJFzY6wCQTkGaQzEVA/eqvOOM08O
 W8yw==
X-Gm-Message-State: AGi0PuZD1Cevw1KoMpXkWEeIdh+ZrxYKwjuiuwz9RKcMvBd7NK2VZ/JR
 jEFBfmPDgDCViTh4ZL0OAwo=
X-Google-Smtp-Source: APiQypLdzcvy9S6+P/aOFLb3IOw1uyzhQNiRR06kSBTuGUCEX4xAIh73NCRQme1+J/PmbEZrsvSWCw==
X-Received: by 2002:a2e:990f:: with SMTP id v15mr2083262lji.7.1587668992125;
 Thu, 23 Apr 2020 12:09:52 -0700 (PDT)
Received: from alpha (84.188.smarthome.spb.ru. [80.249.188.84])
 by smtp.gmail.com with ESMTPSA id z9sm3145981lfd.9.2020.04.23.12.09.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Apr 2020 12:09:51 -0700 (PDT)
Received: (nullmailer pid 12103 invoked by uid 1000);
 Thu, 23 Apr 2020 19:14:18 -0000
From: Ivan Safonov <insafonov@gmail.com>
To: Larry Finger <Larry.Finger@lwfinger.net>
Subject: [PATCH v2] staging:r8188eu: avoid skb_clone for amsdu to msdu
 conversion
Date: Thu, 23 Apr 2020 22:14:04 +0300
Message-Id: <20200423191404.12028-1-insafonov@gmail.com>
X-Mailer: git-send-email 2.25.3
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
Cc: devel@driverdev.osuosl.org, Ivan Safonov <insafonov@gmail.com>,
 Puranjay Mohan <puranjay12@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Saurav Girepunje <saurav.girepunje@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

skb clones use same data buffer,
so tail of one skb is corrupted by beginning of next skb.

Signed-off-by: Ivan Safonov <insafonov@gmail.com>
---
Changes in v2:
  - long line in the commit message is divided into two parts.

drivers/staging/rtl8188eu/core/rtw_recv.c | 19 ++++++-------------
 1 file changed, 6 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_recv.c b/drivers/staging/rtl8188eu/core/rtw_recv.c
index d4278361e002..a036ef104198 100644
--- a/drivers/staging/rtl8188eu/core/rtw_recv.c
+++ b/drivers/staging/rtl8188eu/core/rtw_recv.c
@@ -1525,21 +1525,14 @@ static int amsdu_to_msdu(struct adapter *padapter, struct recv_frame *prframe)
 
 		/* Allocate new skb for releasing to upper layer */
 		sub_skb = dev_alloc_skb(nSubframe_Length + 12);
-		if (sub_skb) {
-			skb_reserve(sub_skb, 12);
-			skb_put_data(sub_skb, pdata, nSubframe_Length);
-		} else {
-			sub_skb = skb_clone(prframe->pkt, GFP_ATOMIC);
-			if (sub_skb) {
-				sub_skb->data = pdata;
-				sub_skb->len = nSubframe_Length;
-				skb_set_tail_pointer(sub_skb, nSubframe_Length);
-			} else {
-				DBG_88E("skb_clone() Fail!!! , nr_subframes=%d\n", nr_subframes);
-				break;
-			}
+		if (!sub_skb) {
+			DBG_88E("dev_alloc_skb() Fail!!! , nr_subframes=%d\n", nr_subframes);
+			break;
 		}
 
+		skb_reserve(sub_skb, 12);
+		skb_put_data(sub_skb, pdata, nSubframe_Length);
+
 		subframes[nr_subframes++] = sub_skb;
 
 		if (nr_subframes >= MAX_SUBFRAME_COUNT) {
-- 
2.25.3

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

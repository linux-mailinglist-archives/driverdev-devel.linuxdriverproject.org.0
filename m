Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DA04CD92C
	for <lists+driverdev-devel@lfdr.de>; Sun,  6 Oct 2019 22:34:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2A45B204E6;
	Sun,  6 Oct 2019 20:34:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KP--Zepkw+-O; Sun,  6 Oct 2019 20:34:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 18C75203D9;
	Sun,  6 Oct 2019 20:34:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4C3C61BF47A
 for <devel@linuxdriverproject.org>; Sun,  6 Oct 2019 20:34:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4436A866BD
 for <devel@linuxdriverproject.org>; Sun,  6 Oct 2019 20:34:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dHtP+40Sip2A for <devel@linuxdriverproject.org>;
 Sun,  6 Oct 2019 20:34:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com
 [209.85.160.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id F34BB8653D
 for <devel@driverdev.osuosl.org>; Sun,  6 Oct 2019 20:34:32 +0000 (UTC)
Received: by mail-qt1-f195.google.com with SMTP id r5so16420035qtd.0
 for <devel@driverdev.osuosl.org>; Sun, 06 Oct 2019 13:34:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2c8ZK7szNdI0lwDgcSx/BNDVw8gIfjfayd7qp8p7o20=;
 b=s4tUadj3B648+EYQH1tuz/RvaBZDjoG0+kAO5HR4hlh8tSGsE+hWmx1nPDgr2D8bE6
 D1gQFKTsgg+l+nCYrMeZyw4ZmyY5eTGKX6aexG8nPEhg0fiFvb8UQHoMNOij6CnjnFwh
 4qTlMkRpSyeELHYaPoLC3k7+BeDLByBzeSm57DaO8sCsgKLv5get/gV6WqCfP1GxJ97K
 gu7M/7ttrXBPPwRkyQsHPMH1vloPrZ8nfu/R76Vq4asyz3bt+oH5cao6y4B8S0hm7GwC
 Orb8FKF2ykjp0ssRYSjh0p/rMk8r24ori7KfoDIL0PXeG8oNRMLUfZkKhllPtFAF6HWN
 1MUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2c8ZK7szNdI0lwDgcSx/BNDVw8gIfjfayd7qp8p7o20=;
 b=gimf9du0ZHns+82uWveyXTpv47QmW/ux6orh/67CnnzRoaHkqoruDEAtX55CfvSwtx
 L0xyZDXExJaU+JNGpe7BoeH0FAGuYnagDMF+BCZp6dL5DFH1bngOWVtAU/zrw133HHqW
 NaWcMvigRkmll89X6Mad9DzqP5IZvejxGbOIUXfhIU1OCA9UN9tYI7JTsjUJH6n79mkq
 hew5NqS3u8qSPcvQL5obcnF5xaQZ8YQ53bJRvnKqev5pYRgCaBPXu06BPFEWT4UjeMkw
 NoZ+dg9DugI0U2XkfQsdD8fiIuEtjAXfJVADmIwZF8Ismzxlcb/IJoIgtMKNA5vfunmx
 t6tg==
X-Gm-Message-State: APjAAAX0yQaN4nL/f6NzWnyJQtNOzkjO5bXaSeRWipbwBFizndPdaZ5k
 uWj2uLYVfvQK0zUAhT82VLc=
X-Google-Smtp-Source: APXvYqynzUAAjBGQc81jeNQJq/G9gH18HPFL1aO5LqR1PPvEgM967i2OpTzvS7vzSFO7Z7U01h6EAg==
X-Received: by 2002:ac8:1289:: with SMTP id y9mr26464313qti.201.1570394071917; 
 Sun, 06 Oct 2019 13:34:31 -0700 (PDT)
Received: from GBdebian.terracota.local ([177.103.155.130])
 by smtp.gmail.com with ESMTPSA id n125sm6690999qkn.129.2019.10.06.13.34.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 06 Oct 2019 13:34:31 -0700 (PDT)
From: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
To: outreachy-kernel@googlegroups.com, Larry.Finger@lwfinger.net,
 florian.c.schilhabel@googlemail.com, gregkh@linuxfoundation.org,
 nishkadg.linux@gmail.com, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, lkcamp@lists.libreplanetbr.org,
 trivial@kernel.org
Subject: [PATCH] staging: rtl8712: align block comments
Date: Sun,  6 Oct 2019 17:34:20 -0300
Message-Id: <20191006203420.11202-1-gabrielabittencourt00@gmail.com>
X-Mailer: git-send-email 2.20.1
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
Cc: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Cleans up warnings of "Block comments should align the * on each line"

Signed-off-by: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
---
 drivers/staging/rtl8712/recv_linux.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8712/recv_linux.c b/drivers/staging/rtl8712/recv_linux.c
index 84c4c8580f9a..70a4dcd4a1e5 100644
--- a/drivers/staging/rtl8712/recv_linux.c
+++ b/drivers/staging/rtl8712/recv_linux.c
@@ -115,8 +115,8 @@ void r8712_recv_indicatepkt(struct _adapter *adapter,
 	skb->protocol = eth_type_trans(skb, adapter->pnetdev);
 	netif_rx(skb);
 	recvframe->u.hdr.pkt = NULL; /* pointers to NULL before
-					* r8712_free_recvframe()
-					*/
+				      * r8712_free_recvframe()
+				      */
 	r8712_free_recvframe(recvframe, free_recv_queue);
 	return;
 _recv_indicatepkt_drop:
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

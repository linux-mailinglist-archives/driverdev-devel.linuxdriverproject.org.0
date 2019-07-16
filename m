Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CB99D6AF90
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Jul 2019 21:09:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id F0B93869F8;
	Tue, 16 Jul 2019 19:09:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mJAWGA0bkel7; Tue, 16 Jul 2019 19:09:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7A4F785A5B;
	Tue, 16 Jul 2019 19:09:30 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 098F11BF360
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 16 Jul 2019 19:09:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 05E6F87DA6
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 16 Jul 2019 19:09:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EuQMYbAznNpN
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 16 Jul 2019 19:09:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com
 [209.85.160.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E206C870F6
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 16 Jul 2019 19:09:25 +0000 (UTC)
Received: by mail-qt1-f193.google.com with SMTP id w17so20744144qto.10
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 16 Jul 2019 12:09:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Tlf1/4gCVlrmqko9xJwc864URooaAg4ZnUz6s+YkL60=;
 b=NzO+kJsMmKKJYPHhuV1zh3zR0GKlCPXGQqjxoI71EZQ5kYGQXCHWG1gPCpWqN7i/Eg
 VLo25P3RndsLxviiBs1K7bPogNC4I4JpXYoU8ZeO04bi4m8lCm4QxdGrkD7STZdXsvSr
 bHf2Ptzad63Lib30oKvQvXldDDTaTVcjjGjonU980JyoJTY9YDxcPSgGd2TJXQ3foeDL
 0sBp6AsJgIT88FMmS1u6U4qhqg2c1Y6v/4Ee++KDlAFxeRWizDR4bOt3W3qer7jar2WJ
 rXkP7sZRMn99OadzvnutqqjHSHJzADYiK3F69zRsgY4ZZBiI2VSnA741sdINi0MKlsoJ
 XXIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Tlf1/4gCVlrmqko9xJwc864URooaAg4ZnUz6s+YkL60=;
 b=mr4vB9clYQUcikSIAMNT8DLLZ91FOePpF1CfMqeJbbPTZ+a1FLC7a9n9Sh1MX+ay6V
 cix+D3fanP+Y0YWuLckbRUan9iy4xfz2yJx4CpCumpxU2vKnBTDwR1F1ddr4Vpvgtsec
 qMz08db27w2wKb8SKjixvaIYl6BV9r+miWaPH0YZk8uhp9aLtxZYjmJfK5z7pgQm4frZ
 YG4SJusiFA+uIPrE2wQYy7IyaOoSJf0x0UUQ0Rys+sHCRp+kecp5oVT8WqabA4S3W+Pe
 bMAiLH6KJK7k5e0R8iVtWxuRJLiF1KbWP7WVXMGC+rRmkpHVIBhraL6xJhZs//4NQ5Dj
 aOTg==
X-Gm-Message-State: APjAAAWX/MAOoVE7003MOYdNI+jtSduzIE4SaaXAsDuJMBxUWatVL79/
 QQ3W+kf+kQarr0CKNYVeLkc=
X-Google-Smtp-Source: APXvYqwXqdNPdoroKpqz6MyI++ObkUce20J2PtnRtwjL5SUOBzsiXSXRXhNS6RjTEBR5JpsE2f+mmQ==
X-Received: by 2002:aed:3461:: with SMTP id w88mr24320014qtd.13.1563304164870; 
 Tue, 16 Jul 2019 12:09:24 -0700 (PDT)
Received: from localhost.localdomain ([181.31.106.136])
 by smtp.gmail.com with ESMTPSA id f22sm9004691qkk.45.2019.07.16.12.09.22
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 16 Jul 2019 12:09:24 -0700 (PDT)
From: christianluciano.m@gmail.com
To: gregkh@linuxfoundation.org, Larry.Finger@lwfinger.net,
 florian.c.schilhabel@googlemail.com,
 driverdev-devel@linuxdriverproject.org, christianluciano.m@gmail.com
Subject: [PATCH] staging: rtl8712: recv_linux.c: Align * on block comment
Date: Tue, 16 Jul 2019 16:09:15 -0300
Message-Id: <20190716190915.30869-1-christianluciano.m@gmail.com>
X-Mailer: git-send-email 2.22.0
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Christian L Moreno <christianluciano.m@gmail.com>

Block comments should align the * on each line.
This warning was reported by checkpatch.pl

Signed-off-by: Christian L Moreno <christianluciano.m@gmail.com>
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
2.22.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

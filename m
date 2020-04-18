Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 824151AEAF3
	for <lists+driverdev-devel@lfdr.de>; Sat, 18 Apr 2020 10:36:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 93C59227D1;
	Sat, 18 Apr 2020 08:36:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7SwP3PB6wAya; Sat, 18 Apr 2020 08:36:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 505EF20462;
	Sat, 18 Apr 2020 08:36:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9AF061BF426
 for <devel@linuxdriverproject.org>; Sat, 18 Apr 2020 08:36:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 97864850D6
 for <devel@linuxdriverproject.org>; Sat, 18 Apr 2020 08:36:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3KNE2ixy5bqi for <devel@linuxdriverproject.org>;
 Sat, 18 Apr 2020 08:36:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f195.google.com (mail-lj1-f195.google.com
 [209.85.208.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D8A758502B
 for <devel@driverdev.osuosl.org>; Sat, 18 Apr 2020 08:36:37 +0000 (UTC)
Received: by mail-lj1-f195.google.com with SMTP id k21so4478684ljh.2
 for <devel@driverdev.osuosl.org>; Sat, 18 Apr 2020 01:36:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7/6//M0ZzMZYaNauz99M15j4KPCmpQuIwWItAHuzh60=;
 b=NxfPyiq4iJXOVjnaTadZFBInGPBNrnbwZ79ocfZASYenBByQJX7OwzgXw/uWkRFsuF
 YVlkYkSzm0Aq1f/HP+qpg0pWKrV7fpCWwjrruh0jDKc1wom8NtWA139shgTnJIdPrr02
 Z4c77VP9R6gGMx/rVVzVTw1Y7XJTHk69h39PG2HsiuDiQj6Mvt5UYdDsRUwCB1y8ruQC
 F4ltdwb0/b9dIzlIoR/RpK5mjt60xe8Ss/KIOOb9nZjmyZifgVpzVNmVLU6tSj+7LPF0
 hNlooU8F7cYFvLCpmSBlOyFbriJABQsUB6dGdSGw+UFc+y7DKIbcYckY+gXwEXbQc/em
 2KrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7/6//M0ZzMZYaNauz99M15j4KPCmpQuIwWItAHuzh60=;
 b=NR5UsnzmUuhLX3A+4zsxejPhTxvIdSmySg30iRADJKxj/L2lGLUpEHIAEhCpQTDN8x
 duf569R8QA3ShD7OzCAAzaDhiIvvr/8H/Z9mpK+tT1yVq4og5VvNxK9by4KuZnRXZnvF
 x3cj7nLTgDnQ9wbGG62ZM/+bM0+nIciiqJLHm7Tf5vFNR0gQwbqlX2hHQjxR1KPQm8V5
 Ap4TT9tvVboyiaA2Srgj8wKIIv1spo6ESkdxmZfFP2om0h3VCxKvMoFTIqe0Bz7JOEjQ
 69pNIfJDiWs8BquomZoY3j6iRMdVxI2T5FkDjd0mmLhQoSxtoJc070ErTxVqwnsaXJS5
 68Tw==
X-Gm-Message-State: AGi0PuZqDzXqkQyT5QxjHy+ggWLgZM+8bfpO9HgGHNLOAgnYjYLzMYCU
 7xdP4GKzlGGxM7tU5qcGJ5Q=
X-Google-Smtp-Source: APiQypIthhBFvflX4gjyM6Gsi3RoSgfX3rp14yMBdfeREtXfa2h5ZEY36SPuub64uRymEDGdJ8qx5Q==
X-Received: by 2002:a2e:330e:: with SMTP id d14mr4338860ljc.153.1587198996062; 
 Sat, 18 Apr 2020 01:36:36 -0700 (PDT)
Received: from alpha (84.188.smarthome.spb.ru. [80.249.188.84])
 by smtp.gmail.com with ESMTPSA id j14sm19484204lfm.73.2020.04.18.01.36.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 18 Apr 2020 01:36:35 -0700 (PDT)
Received: (nullmailer pid 3769 invoked by uid 1000);
 Sat, 18 Apr 2020 08:41:14 -0000
From: Ivan Safonov <insafonov@gmail.com>
To: Larry Finger <Larry.Finger@lwfinger.net>
Subject: [PATCH] staging:r8188eu: avoid skb_clone for amsdu to msdu conversion
Date: Sat, 18 Apr 2020 11:41:12 +0300
Message-Id: <20200418084112.3723-1-insafonov@gmail.com>
X-Mailer: git-send-email 2.24.1
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

skb clones use same data buffer, so tail of one skb is corrupted by beginning of next skb.

Signed-off-by: Ivan Safonov <insafonov@gmail.com>
---
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
2.24.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

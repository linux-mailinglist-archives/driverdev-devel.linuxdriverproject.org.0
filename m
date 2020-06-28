Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E85220C99F
	for <lists+driverdev-devel@lfdr.de>; Sun, 28 Jun 2020 20:32:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 63B57204F4;
	Sun, 28 Jun 2020 18:32:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id abpjlqdqHnMF; Sun, 28 Jun 2020 18:32:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 635C2203EC;
	Sun, 28 Jun 2020 18:32:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 876CF1BF228
 for <devel@linuxdriverproject.org>; Sun, 28 Jun 2020 18:32:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8128A86DFC
 for <devel@linuxdriverproject.org>; Sun, 28 Jun 2020 18:32:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RDfj0rDuyjhY for <devel@linuxdriverproject.org>;
 Sun, 28 Jun 2020 18:32:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f65.google.com (mail-ej1-f65.google.com
 [209.85.218.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A201B86DDE
 for <devel@driverdev.osuosl.org>; Sun, 28 Jun 2020 18:32:42 +0000 (UTC)
Received: by mail-ej1-f65.google.com with SMTP id w16so14422172ejj.5
 for <devel@driverdev.osuosl.org>; Sun, 28 Jun 2020 11:32:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=C/AWghi0ggAWezCdD0yzAwGjS2bjfVCfdqGQLJ4bXU8=;
 b=nx+0kA+ECOlB14AL7pgiSQnrsiMxEe8HCxwIzpw2ZGRZowJfqoNOtpp4pqy2G/GB6j
 deCGnBoDWpT4ikeuzV7fKfcpkUEp8TkaA2Y3TXvFf67w5CVhsD5dEZhkWCsjjLBxDXRL
 z6+l3hUPdMtICfRpl+DLSCiKu4qCwytIdgzaU9mz1RMzLYFGh7acjLXtsqG0S4gSh9wp
 EwXV8YyDfU6vbcvK+YxLVvx/UmGy0VeY8kwKXVrLDHzTUMNpzEVKmoge2UrFuTTQmJMv
 b6oKji/Su81LhtZgzkiY3ax25ipANws3bsyOPolbymdqYSHBdM67i4mSsRKxju0eqTtx
 4m1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=C/AWghi0ggAWezCdD0yzAwGjS2bjfVCfdqGQLJ4bXU8=;
 b=Sg7+Rje3BCNrNzI73OWhTX0CWawUqcp8nG99x/6NS3GmBFxUFR1x3KFm5BDKna9kIn
 mC45kcI0K+vcfkSCQs3rpMmpVvqWJRIIyGQ3VfIgbsutdgz0gQLyvP7rWYb3bbWCkhFi
 kQxdUJW9jnKMWbUXQ4Qj4yZXgInoEqKQY1zWf68dTGjFdgHuPEtpeJU//iNGVL06u2az
 e69ABYMLUqF/5QnsEJaH7GMjp8a3uca8vtGirNIzLwWlKG+n9JWRTpztmbpnqG1GWPJ9
 0ZZYFAEYZkpW3rbiOTLNWsyBMYExtb5klSrNYLW2McZ000J5wt0umQc5RaXkJKqHm5XU
 xQUw==
X-Gm-Message-State: AOAM531PMLdTWZrIzh6RasdR9S2tKL5fUMmq+fFNnUHjw8GHCT4GK6pf
 gnPOv/zUk4KwxM6nuh2MbNc=
X-Google-Smtp-Source: ABdhPJyvwPcq95vvTuR+o/TTUFOP15mBB7xzZmq1WM82o9xgVvgxv4b43wqxyszfzIqe0nboQmjAdw==
X-Received: by 2002:a17:906:2b0e:: with SMTP id
 a14mr10659475ejg.459.1593369160913; 
 Sun, 28 Jun 2020 11:32:40 -0700 (PDT)
Received: from localhost.localdomain
 ([2a02:a03f:b7f9:7600:f145:9a83:6418:5a5c])
 by smtp.gmail.com with ESMTPSA id v5sm7349888ejj.61.2020.06.28.11.32.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 28 Jun 2020 11:32:40 -0700 (PDT)
From: Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
To: Adham Abozaeid <adham.abozaeid@microchip.com>,
 Ajay Singh <ajay.kathat@microchip.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging/wilc1000: let wilc_mac_xmit() to NETDEV_TX_OK
Date: Sun, 28 Jun 2020 20:32:37 +0200
Message-Id: <20200628183237.74749-1-luc.vanoostenryck@gmail.com>
X-Mailer: git-send-email 2.27.0
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
Cc: devel@driverdev.osuosl.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The method ndo_start_xmit() is defined as returning an 'netdev_tx_t',
which is a typedef for an enum type defining 'NETDEV_TX_OK' but this
driver returns '0' instead of 'NETDEV_TX_OK'.

Fix this by returning ''NETDEV_TX_OK' instead of 0.

Signed-off-by: Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
---
 drivers/staging/wilc1000/netdev.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/wilc1000/netdev.c b/drivers/staging/wilc1000/netdev.c
index fda0ab97b02c..be3ae5486f44 100644
--- a/drivers/staging/wilc1000/netdev.c
+++ b/drivers/staging/wilc1000/netdev.c
@@ -678,14 +678,14 @@ netdev_tx_t wilc_mac_xmit(struct sk_buff *skb, struct net_device *ndev)
 
 	if (skb->dev != ndev) {
 		netdev_err(ndev, "Packet not destined to this device\n");
-		return 0;
+		return NETDEV_TX_OK;
 	}
 
 	tx_data = kmalloc(sizeof(*tx_data), GFP_ATOMIC);
 	if (!tx_data) {
 		dev_kfree_skb(skb);
 		netif_wake_queue(ndev);
-		return 0;
+		return NETDEV_TX_OK;
 	}
 
 	tx_data->buff = skb->data;
@@ -710,7 +710,7 @@ netdev_tx_t wilc_mac_xmit(struct sk_buff *skb, struct net_device *ndev)
 		srcu_read_unlock(&wilc->srcu, srcu_idx);
 	}
 
-	return 0;
+	return NETDEV_TX_OK;
 }
 
 static int wilc_mac_close(struct net_device *ndev)
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

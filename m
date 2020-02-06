Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D5771540CB
	for <lists+driverdev-devel@lfdr.de>; Thu,  6 Feb 2020 10:00:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5211B84900;
	Thu,  6 Feb 2020 09:00:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PmNecGkTusNQ; Thu,  6 Feb 2020 09:00:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6F6E181D83;
	Thu,  6 Feb 2020 09:00:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5F6A51BF381
 for <devel@linuxdriverproject.org>; Thu,  6 Feb 2020 09:00:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5B6A12045A
 for <devel@linuxdriverproject.org>; Thu,  6 Feb 2020 09:00:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HO9Zi+sQe9UH for <devel@linuxdriverproject.org>;
 Thu,  6 Feb 2020 09:00:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 0AEB920436
 for <devel@driverdev.osuosl.org>; Thu,  6 Feb 2020 09:00:22 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id y11so6129319wrt.6
 for <devel@driverdev.osuosl.org>; Thu, 06 Feb 2020 01:00:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5sjD6GtO1nvqtNeYaVu2dXjJztVUp4Fza3UUVcyBdz8=;
 b=KEgvmMY0VVAzsbcYvvd8l/IJyE67uBYksdurk5Z+hLfI7yKBMxt8ZcjhQgwfmagTU7
 6Bl7/TISBXJCyg4ACPHz0hQKNYBkl6pA9aoDSru0VSU6TKdrcDuBpf+Ub4M2l/22QxNX
 sGoH+UXoIf1zC8atlmWJfcZ12zAZhxp+hQh5EFfOlI4qYz+z8XkjEoZjnhGz/2g8r+aF
 Rj4H5jwM+qkWQxLItakxsOzCHv5uAcviM0TzGSgWly9tj+SO2QlcEoTVpNy8OAe5cnDp
 5iKabE3REKNFAbpC4oSM0//1nAO302/8lm4IZPX4E6BeEbkDDDBwW57S+RyS1EMIzio2
 z7pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5sjD6GtO1nvqtNeYaVu2dXjJztVUp4Fza3UUVcyBdz8=;
 b=Q21X01UU7EttpYgoQOE0uN9WW7UOcssVFJ8JxRHJCrlD3Tna2zR/Ucv84wQzuJB52N
 14PQyD5Hb5XVvcBLiyNhJgz3w9aenk0/WeNZoPuhrMH0/5tyN4pJ2eEAP5GVWM6OkoUw
 BqcZ0veXhr8zT4mV1V6IOyx9Sl9rvwAl/mNTcO9KwuMBqYN3HVsgJdtOzMck1svQV3ST
 8hJ+gh2lnc/w57t+hnNx7WpdXd7xx1rFeSFaSj9qIOUwMcIwG6BW0wG+pipql6pV9TXd
 VKu3baQ45IK31kdujUv0Hh0aipMjPEjP9Vn1sOM9dsHFG3tl3nfppbmkQbmSbmJO+Sox
 m18g==
X-Gm-Message-State: APjAAAXlI71iIsTdx7ZAxHqr8mPDEap64b/fx1Qm8nAg7tQmb6WJuyHb
 38sa1mescVIxNgtm22dxqF4=
X-Google-Smtp-Source: APXvYqx52RcTP7S2d83VL5HqhwxlPbWiXJuL6simw07NUcqrVTjxHyZm0Gjh39mbBaQSGy0ZRFTGDQ==
X-Received: by 2002:adf:f103:: with SMTP id r3mr2622273wro.295.1580979620535; 
 Thu, 06 Feb 2020 01:00:20 -0800 (PST)
Received: from localhost.localdomain
 (dslb-002-204-143-014.002.204.pools.vodafone-ip.de. [2.204.143.14])
 by smtp.gmail.com with ESMTPSA id u8sm2816393wmm.15.2020.02.06.01.00.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 Feb 2020 01:00:20 -0800 (PST)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8188eu: remove unnecessary RETURN label
Date: Thu,  6 Feb 2020 09:59:24 +0100
Message-Id: <20200206085924.21531-1-straube.linux@gmail.com>
X-Mailer: git-send-email 2.25.0
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove unnecessary RETURN label and use return directly instead. Since
the return type of rtw_free_netdev() is void, remove the return at the
end of the function.

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8188eu/os_dep/osdep_service.c | 10 +++-------
 1 file changed, 3 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8188eu/os_dep/osdep_service.c b/drivers/staging/rtl8188eu/os_dep/osdep_service.c
index 69d4b1d66b6f..4ba2378a1bb8 100644
--- a/drivers/staging/rtl8188eu/os_dep/osdep_service.c
+++ b/drivers/staging/rtl8188eu/os_dep/osdep_service.c
@@ -31,12 +31,11 @@ struct net_device *rtw_alloc_etherdev_with_old_priv(void *old_priv)
 
 	pnetdev = alloc_etherdev_mq(sizeof(struct rtw_netdev_priv_indicator), 4);
 	if (!pnetdev)
-		goto RETURN;
+		return NULL;
 
 	pnpi = netdev_priv(pnetdev);
 	pnpi->priv = old_priv;
 
-RETURN:
 	return pnetdev;
 }
 
@@ -45,18 +44,15 @@ void rtw_free_netdev(struct net_device *netdev)
 	struct rtw_netdev_priv_indicator *pnpi;
 
 	if (!netdev)
-		goto RETURN;
+		return;
 
 	pnpi = netdev_priv(netdev);
 
 	if (!pnpi->priv)
-		goto RETURN;
+		return;
 
 	vfree(pnpi->priv);
 	free_netdev(netdev);
-
-RETURN:
-	return;
 }
 
 void rtw_buf_free(u8 **buf, u32 *buf_len)
-- 
2.25.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

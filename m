Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B7B71A6926
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 Apr 2020 17:50:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CAF08834ED;
	Mon, 13 Apr 2020 15:50:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YcJQl8b-1WPt; Mon, 13 Apr 2020 15:50:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E93D983310;
	Mon, 13 Apr 2020 15:50:30 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 41CCF1BF318
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 13 Apr 2020 15:50:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 389B6853FC
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 13 Apr 2020 15:50:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id b34EIgjA41BY
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 13 Apr 2020 15:50:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1CED785149
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 13 Apr 2020 15:50:24 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id j2so10626614wrs.9
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 13 Apr 2020 08:50:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=6i8UFwCGA39tmY70vKClkSnnBKCR47RGNxWj0hDmYsE=;
 b=jSzOatFWbxF6x2USfp5c1eAqVHFTsUr/Dvucl4zZpEwrfSIJ7nkvdE3jyAUmd/98Sh
 USNfF4b6UKOru7oQiOLsYsIEZJq2gRTwB93pzHddy2dc2wVmYxbu2ovLUa+d75hkC/rw
 TxQxR0T/bsD5eb3DWpsEiuyMFP9suSMmMBQwOFJdLn2OOlCFuP1VxfRVucQy3O/1PS2A
 vFxVsZU+qxeTE2X0NFKY2Ke5Hd3v4pnqeBSCX2lrijCp8o2iDKoVKaUX8naM7URFJ5Wk
 fLkd/0jiq13QxPikCLsX75BPt612bs7i4POE/EW/GLvSY6t67N+4x8J/aMkuX6sqZDMX
 1Raw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6i8UFwCGA39tmY70vKClkSnnBKCR47RGNxWj0hDmYsE=;
 b=rYXXmqxn6joc88/35dZkPozhor4pJwpn3Ddt+KckPTjM+q0/AK657enVMvKh52jO8p
 rFmP2P7ObEGV9RuOdzEaRm/gfAwRHzT/2hh9WmUM84ctAQZgLh3STUKJ4cJWrmgXmm/q
 214hcU7MktDux7j7DlcG+UUMD5ifsDHRarNlviIYThvz+rmYb4V96KzGjNUivZ7hZP0H
 3SwFkZH15XxbXvXwmCAHckpEZZhap0SsKjdYJT0qWflvySZnKxilrMlQkQELBa4AZx6H
 EYxFHk9ycXbe8AGOeu3UpjASpWKfwaVhgzwIwpEvqTrBXuVY5e5ywbkzm3b74b8PuPov
 54ow==
X-Gm-Message-State: AGi0PuayFZBJOJEGiLMIqXFNE6NqpoA4eBoeuRTaRbXbrV0NVRNvJAjh
 vOaWPpU633hdiwwdi1GATaZjGKnx
X-Google-Smtp-Source: APiQypKrIkDe+vRKzv8ltEpI+j0FuEOVFpJ8elFr6p8WTNpaOYUJT0TnJV6m+WJPFC+f9dWRj6Mckw==
X-Received: by 2002:a5d:6086:: with SMTP id w6mr20527962wrt.175.1586793022549; 
 Mon, 13 Apr 2020 08:50:22 -0700 (PDT)
Received: from localhost.localdomain
 (134.red-83-46-193.dynamicip.rima-tde.net. [83.46.193.134])
 by smtp.gmail.com with ESMTPSA id q9sm15158828wrp.61.2020.04.13.08.50.21
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 13 Apr 2020 08:50:22 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 3/3] staging: mt7621-pci: initialize 'n' variable when it is
 declared
Date: Mon, 13 Apr 2020 17:50:18 +0200
Message-Id: <20200413155018.31921-3-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200413155018.31921-1-sergio.paracuellos@gmail.com>
References: <20200413155018.31921-1-sergio.paracuellos@gmail.com>
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
Cc: neil@brown.name, driverdev-devel@linuxdriverproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Variable 'n' in 'mt7621_pcie_init_virtual_bridges' function
can be directly initialized when it is declared instead of
doing it before using it first.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 drivers/staging/mt7621-pci/pci-mt7621.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/mt7621-pci/pci-mt7621.c b/drivers/staging/mt7621-pci/pci-mt7621.c
index eede8d9268ac..f961b353c22e 100644
--- a/drivers/staging/mt7621-pci/pci-mt7621.c
+++ b/drivers/staging/mt7621-pci/pci-mt7621.c
@@ -605,7 +605,7 @@ static void mt7621_pcie_enable_ports(struct mt7621_pcie *pcie)
 static int mt7621_pcie_init_virtual_bridges(struct mt7621_pcie *pcie)
 {
 	u32 pcie_link_status = 0;
-	u32 n;
+	u32 n = 0;
 	int i = 0;
 	u32 p2p_br_devnum[PCIE_P2P_CNT];
 	int irqs[PCIE_P2P_CNT];
@@ -627,7 +627,6 @@ static int mt7621_pcie_init_virtual_bridges(struct mt7621_pcie *pcie)
 	 * then assigning remaining device numbers to any disabled
 	 * ports.
 	 */
-	n = 0;
 	for (i = 0; i < PCIE_P2P_CNT; i++)
 		if (pcie_link_status & BIT(i))
 			p2p_br_devnum[i] = n++;
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

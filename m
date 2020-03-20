Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C4EB18CC18
	for <lists+driverdev-devel@lfdr.de>; Fri, 20 Mar 2020 12:01:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C220388B83;
	Fri, 20 Mar 2020 11:01:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CYjkBPgyzXpX; Fri, 20 Mar 2020 11:01:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 364B388B03;
	Fri, 20 Mar 2020 11:01:42 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B27121BF9BD
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 20 Mar 2020 11:01:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id AAD1F227A0
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 20 Mar 2020 11:01:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PoMPI1tr9DPP
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 20 Mar 2020 11:01:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by silver.osuosl.org (Postfix) with ESMTPS id 5102020516
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 20 Mar 2020 11:01:34 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id 11so6013634wmo.2
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 20 Mar 2020 04:01:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zRLUIeJd/h4XyvcJvsqLVzIuHlIHo8jG9vdW5qdaZoI=;
 b=YQFLarcvUJKXFbzfS9OD7fIvKsd0RLWXOEk8fbM0zaNltL2l6QCOjRrO6P6i3q34gz
 E1nth6U1QdvD43zfH6uV3CID7edo0TOXT7jyjIdvLwGmkYPfbNKgUU/396ZjbPY1H95F
 8KxzU+9nTzepIyR2P9AIG1edjjEvEOkwlBZeTO/4yCx4dPtC7gl+/4JTNtve6w2m5fqh
 33+S4LusATi5fHh17iTmNr6qgbxR3Ys5wpRwmd0iX3cFiged4GOlowuREFHQ02L4qjC9
 qTpFgrO7j3QK9XLoQj8WZ7XgafyI2OBw3/Bw4bZ++aL6r8/IeK2cjfCo9ToTLZ/VWC6G
 oZew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zRLUIeJd/h4XyvcJvsqLVzIuHlIHo8jG9vdW5qdaZoI=;
 b=L/v9od0Y02FvNUOqockcA37iuQb9qfY2blXAs93zFzsOd37DZsotYGnniANz0/JjnA
 jXxAMkG3S8hEGGRoUf/IBu35HWmDYortYKZwoRhk4DFhjR22N3jZxE3l2or88HVyfgJc
 88LgvPZQCl5ekimuU3al6+Hedic9KPZGKiopKjFoQFnjehDppmATqYmtenwHD9Ph0PVH
 ndos14T82BCDoZaqodJQLFkQfw/TXpLVdq1HkVfnuUOISjuEftgbQ5TJR4sK5HNYvD5u
 6AZZHZYeGcQOBzNJq+kfXm4KAwZwuZDZ3wBXfI/ahQPAdxC+en+N+nXNi5zP/ggAhhFC
 5xbA==
X-Gm-Message-State: ANhLgQ11O/anufl3J3Nke3wgBMiA31PVKPAnm1tatddQeAXozJUW36Lu
 GhneU4nmmeeE5lE6b5gntktv9e6O
X-Google-Smtp-Source: ADFU+vvZWE8MyJ/8Tz4CFArLCQfn29tTJNUyQdqUEMP2yZoB3/HR2SrCd+WSYijmoQbN8yf//4O2eA==
X-Received: by 2002:a1c:41d4:: with SMTP id o203mr9184362wma.1.1584702092488; 
 Fri, 20 Mar 2020 04:01:32 -0700 (PDT)
Received: from localhost.localdomain
 (134.red-83-46-193.dynamicip.rima-tde.net. [83.46.193.134])
 by smtp.gmail.com with ESMTPSA id e6sm7488584wrn.29.2020.03.20.04.01.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 20 Mar 2020 04:01:31 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 5/5] staging: mt7621-pci: be sure gpio descriptor is null on
 fails
Date: Fri, 20 Mar 2020 12:01:23 +0100
Message-Id: <20200320110123.9907-6-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200320110123.9907-1-sergio.paracuellos@gmail.com>
References: <20200320110123.9907-1-sergio.paracuellos@gmail.com>
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
Cc: neil@brown.name, driverdev-devel@linuxdriverproject.org, gerg@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Function 'devm_gpiod_get_index_optional' returns NULL if the
descriptor is invalid and the error associated for the error
pointer is ENOENT. Sometimes if the pin is just assigned the
error associated for the pointer might not be ENOENT but other.
In order to avoid weirds behaviours if this happen set descriptor
to NULL in the driver port structure.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 drivers/staging/mt7621-pci/pci-mt7621.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/mt7621-pci/pci-mt7621.c b/drivers/staging/mt7621-pci/pci-mt7621.c
index bc410c3d9afc..739504f7e4fc 100644
--- a/drivers/staging/mt7621-pci/pci-mt7621.c
+++ b/drivers/staging/mt7621-pci/pci-mt7621.c
@@ -363,8 +363,10 @@ static int mt7621_pcie_parse_port(struct mt7621_pcie *pcie,
 
 	port->gpio_rst = devm_gpiod_get_index_optional(dev, "reset", slot,
 						       GPIOD_OUT_LOW);
-	if (IS_ERR(port->gpio_rst))
+	if (IS_ERR(port->gpio_rst)) {
 		dev_notice(dev, "Failed to get GPIO for PCIe%d\n", slot);
+		port->gpio_rst = NULL;
+	}
 
 	port->slot = slot;
 	port->pcie = pcie;
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

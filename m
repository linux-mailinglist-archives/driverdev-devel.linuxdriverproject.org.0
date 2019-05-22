Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A8792638D
	for <lists+driverdev-devel@lfdr.de>; Wed, 22 May 2019 14:14:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D09303067D;
	Wed, 22 May 2019 12:14:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id klmwH-ouyl2U; Wed, 22 May 2019 12:14:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CD1CA3019D;
	Wed, 22 May 2019 12:14:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A2D211BF2BB
 for <devel@linuxdriverproject.org>; Wed, 22 May 2019 12:14:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9C66D22DD3
 for <devel@linuxdriverproject.org>; Wed, 22 May 2019 12:14:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UyZZXAYEIp68 for <devel@linuxdriverproject.org>;
 Wed, 22 May 2019 12:14:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com
 [209.85.160.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 2C2082F989
 for <devel@driverdev.osuosl.org>; Wed, 22 May 2019 12:14:50 +0000 (UTC)
Received: by mail-qt1-f194.google.com with SMTP id i26so1958249qtr.10
 for <devel@driverdev.osuosl.org>; Wed, 22 May 2019 05:14:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=kapFPIcOEF24dNwPZMRD32BN65ja8Nv+o9pXXeC0thg=;
 b=FgZgRcw8izmLbfiybQzq+HK/Z227M9wgN71W5+YqXXRSLLZW1QuQjkOZeFOHczpTU3
 AYShJBMVh8Xv7xs73kM4sk+p/si5sx0cqarf9HJLVsU2wCw2kKYVWjkLkfQORW7iS/k/
 dzU0z7RbG55a+7tPsK7b/qff2INyyxKVgU/cXiGhdYW+f3WdUearhozaLZISnK87bjpO
 XE734IgSA50QBAeHsHxQHnVy6pkmaRMZ9Buqki3AcrPei83lnmGqt8G8/JzfttBK9WmG
 GrIQtmStLUSgVjIMgh3He+sBIhVbxRpkzJ9bCeujlor66gkGthttYxBmAJR3tAJ+VDPH
 tYUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kapFPIcOEF24dNwPZMRD32BN65ja8Nv+o9pXXeC0thg=;
 b=SFqGTK17hCghT3RgKtWz4HPQH+4gx9pQJZhfAdk2d7eHjkt5eRxhARztv02o/zAzJS
 1VqTdmLsw+ai/a8J1YuN/8VcvhugYKxBakiWuB9ejJ6kkyS8AsBydekaiKpiZbJCHYIT
 za6atG4/TYcDNG+uoSF+7f2XEUA+xouVUh++4pVr9VYMu+GIqetSMLWAwodc0oSF+JLt
 sr0vuX/M2elEsEC9Hm/VVlzPNoikvQko+l9ysd0H20yArNMFWHygC6wE7QujehVHZXSJ
 xPC/J9RGCt04GWrfn7bUyAXWIVY5yld0alkZ2DKve7qEtmjIUPFOOgAGhcTaAfNbuKr8
 wN/g==
X-Gm-Message-State: APjAAAWFg30uaWqvyKxDYBY0nFyWPlYAqmBj5I7x/jZ7QOT1KujelTgy
 buIP6/T6PCFBLCiByNPrXRw=
X-Google-Smtp-Source: APXvYqwW3YrS72YzzZpUemYfHXVMnB4yR97jqcGbniBUsRuagkRnkpKhGJGSca3ozzOJrLcrGC/mXw==
X-Received: by 2002:ac8:2da1:: with SMTP id p30mr74524090qta.369.1558527289395; 
 Wed, 22 May 2019 05:14:49 -0700 (PDT)
Received: from arch-01.home (c-73-132-202-198.hsd1.dc.comcast.net.
 [73.132.202.198])
 by smtp.gmail.com with ESMTPSA id w2sm8742070qto.19.2019.05.22.05.14.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 22 May 2019 05:14:48 -0700 (PDT)
From: Geordan Neukum <gneukum1@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/6] staging: kpc2000: make kconfig symbol 'KPC2000' select
 dependencies
Date: Wed, 22 May 2019 12:13:57 +0000
Message-Id: <932843299b814f3a22dd176771b46be14ceefeea.1558526487.git.gneukum1@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <cover.1558526487.git.gneukum1@gmail.com>
References: <cover.1558526487.git.gneukum1@gmail.com>
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
Cc: Geordan Neukum <gneukum1@gmail.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The kpc2000 core makes calls against functions which are conditionally
exported upon the kconfig symbols 'MFD_CORE' and 'UIO' being selected
Therefore, in order to guarantee correct compilation, the 'KPC2000'
kconfig symbol (which brings in that code) must explicitly select its
hard dependencies.

Signed-off-by: Geordan Neukum <gneukum1@gmail.com>
---
 drivers/staging/kpc2000/Kconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/staging/kpc2000/Kconfig b/drivers/staging/kpc2000/Kconfig
index fb5922928f47..8992dc67ff37 100644
--- a/drivers/staging/kpc2000/Kconfig
+++ b/drivers/staging/kpc2000/Kconfig
@@ -3,6 +3,8 @@
 config KPC2000
 	bool "Daktronics KPC Device support"
 	depends on PCI
+	select MFD_CORE
+	select UIO
 	help
 	  Select this if you wish to use the Daktronics KPC PCI devices
 
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E75118215A
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Mar 2020 19:58:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6DEF586920;
	Wed, 11 Mar 2020 18:58:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sK00vX_svUbx; Wed, 11 Mar 2020 18:58:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7156E86268;
	Wed, 11 Mar 2020 18:58:20 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3C76C1BF400
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 18:58:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 39AE5862AC
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 18:58:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7eT5oUPL7E6c
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 18:58:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9A0F586268
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 18:58:15 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id a5so3300897wmb.0
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 11:58:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=76bKXsIf3TrZ+o3hO8Hj+kCL1JRraqgG911jZu/bj0U=;
 b=Ztru+Y+ar/6N4ujp1cy2nJSrotJ2mpSNUPDgOnmdghapJGH4V0G1n3dPb0R6Uc1qJS
 Uv/LobkbCDSu2iN++gd/5zJWOIUiK3jMIfzhpnODkF8O6xVg1E1kIYxHF8nx91q0C769
 21tZzQmlw3/MWndw4oT+O7VT6ZDTdmCQBAIj40JIZDP+7DUoWApKvjSn9TpMMrNdyfx5
 s3Z0Gi0rdezp17Dh4dPiOb9cV08gM00NT50EEKUNf9OLkL6IOcih83djGTezDoKjscR9
 cs+lKkrKnAPS8qUt1zHBXYZD3PkQEX4Kg7yrxakZGHz4xDdnMR6qZ9b0IJjD3jnpOys5
 6l8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=76bKXsIf3TrZ+o3hO8Hj+kCL1JRraqgG911jZu/bj0U=;
 b=e0TqFY2UfcqXgDIYjfuxAdJhG9z5reETEQJLgmi/RIgJUyDhEjwLlABpWCIGcDIh3S
 WQWJN4f7cfXlP03iN5RfdRcZKlhEdp3rP0wBuCmfSl4wgV+ZGUdj+zdzib40ukaq1RTU
 PQcu6UrkC+3xG50U3tULTjIRYVTE1fddWoHJ3+k2tOHPwxBZyAxuZDlDOP6EWwNAcVqa
 V5CEhm/dw1oF6tFRmjJp1pCDiRKmaDqp4V+PnLoZBQJ1cz7gB1FpKJulUqhsZvTI1RCZ
 Zl7dwb6GMkR1CFA9gkrCN+U6EoiEsdSPYNaxYHqtSEzCywVdyDOG3bFikY2NmO1WyRsB
 Q+qg==
X-Gm-Message-State: ANhLgQ0Pk6xT2hhON6DSu1erUCdnaPEjQLi9J3CX/+zVC3hPBbpgTf5Q
 hF64iupOuWZwwq+gjZfktRkfG1F+
X-Google-Smtp-Source: ADFU+vvYNY/SZcsit74wFFD/5FThO32oI4XZZt9BCkbPaSu2lQc5kiXoRz6r1FdpLGR/1xL6KLoqRA==
X-Received: by 2002:a1c:791a:: with SMTP id l26mr140279wme.103.1583953094153; 
 Wed, 11 Mar 2020 11:58:14 -0700 (PDT)
Received: from localhost.localdomain
 (134.red-83-46-193.dynamicip.rima-tde.net. [83.46.193.134])
 by smtp.gmail.com with ESMTPSA id n11sm38457120wrw.11.2020.03.11.11.58.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 11 Mar 2020 11:58:13 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 2/5] staging: mt7621-pci: change value for 'PERST_DELAY_US'
Date: Wed, 11 Mar 2020 19:58:05 +0100
Message-Id: <20200311185808.29166-3-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200311185808.29166-1-sergio.paracuellos@gmail.com>
References: <20200311185808.29166-1-sergio.paracuellos@gmail.com>
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
Cc: ryder.lee@mediatek.com, driverdev-devel@linuxdriverproject.org,
 weijie.gao@mediatek.com, gerg@kernel.org, neil@brown.name
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Value of 'PERST_DELAY_US' is too high and it is ok just
to set up to 100 us.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 drivers/staging/mt7621-pci/pci-mt7621.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/mt7621-pci/pci-mt7621.c b/drivers/staging/mt7621-pci/pci-mt7621.c
index 45ebd880ef6c..0880a21f2620 100644
--- a/drivers/staging/mt7621-pci/pci-mt7621.c
+++ b/drivers/staging/mt7621-pci/pci-mt7621.c
@@ -86,7 +86,7 @@
 #define MEMORY_BASE			0x0
 #define PERST_MODE_MASK			GENMASK(11, 10)
 #define PERST_MODE_GPIO			BIT(10)
-#define PERST_DELAY_US			1000
+#define PERST_DELAY_US			100
 
 /**
  * struct mt7621_pcie_port - PCIe port information
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

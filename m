Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B52DC184FF3
	for <lists+driverdev-devel@lfdr.de>; Fri, 13 Mar 2020 21:10:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5E89D86746;
	Fri, 13 Mar 2020 20:10:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JT4b+MAph7KS; Fri, 13 Mar 2020 20:10:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D963B86418;
	Fri, 13 Mar 2020 20:10:18 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 01D601BF2C2
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 13 Mar 2020 20:10:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id F3B7787A11
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 13 Mar 2020 20:10:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0qmjfAjPs2uK
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 13 Mar 2020 20:10:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 98F6F86E1F
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 13 Mar 2020 20:09:20 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id f3so6681332wrw.7
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 13 Mar 2020 13:09:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=6lR+L+vXebJl5TeieT5xct5SYU9u1oMZ6/YYSDNqW5I=;
 b=uo2It82swu47+ki7ki0jkpmk09oH1xKiNdpvlqbIVPO/Jyyqz5iIh/+b1E0/jY7Od3
 WUNxHaqHMyMjwj7TkBofgQGl83EyyCJ+nE8iWprZTlAL2DGgpFULv5BNzi1yxkNiG+w5
 KD5QpL3K0JdGK7paZjV8ea7k5kmq5f0LdraffeMbnLV21Jl+FfHDSfQ8zzKpBwwv+G8A
 MI7uiUsiKhmWY57jmVWlh02JRNSJ7zxVPyBIlyLPlc1vtjRpBwjV1kdiT3GliVlgRile
 NR8O2zf57Jppa18+3wgvUcBpRj8p8yS0VAulAN/4POpjaZGfsa+NfBhnKpwuZ4kyXggk
 rGyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6lR+L+vXebJl5TeieT5xct5SYU9u1oMZ6/YYSDNqW5I=;
 b=dJOFoa7lUVb9g2+Ij8ivBd+jOYu1HDj3qHGqTlmO2Iri2FKg7kwAS4IvsHypCsASVJ
 xGCi4CWoDHOVAS3QG+ovpuflelkWc0n6n/tgNdyWFJ4djgH7umX7SZntNgaLgQqPQV8b
 O+2qkMT9RxXBydZtzdYH5PkYFXJWwREh16KK7DTRmTQdPalUp6WgmNu3pwj87nJUCnJp
 GH9qAdMWpCk3rIKIKELOhDCkdbGO6LlgyR29/R43GXfALC6RG9MDVfeWWdWblwgrct3o
 dhmj4RgynSmOV/i6vyTun8Q1imFZotw6uF+j8DlhxfsFGgxK6fSmh7M8PP7N2JA8/1iJ
 +Vhg==
X-Gm-Message-State: ANhLgQ0T67xdPiAmwPCrvGl7k7pIomx1sQOVicw6ym2aA3QcxH6O/Y59
 bnWlkbrg0/1fER2fXg5rKrI=
X-Google-Smtp-Source: ADFU+vtNtZvx8nXfe3mL5gCQy3ybsl5W9g7LnSMQnICzQGTYviLZs4aZxi7C6Q92O3Ki0am3jee3Og==
X-Received: by 2002:a5d:5089:: with SMTP id a9mr19886279wrt.187.1584130159075; 
 Fri, 13 Mar 2020 13:09:19 -0700 (PDT)
Received: from localhost.localdomain
 (134.red-83-46-193.dynamicip.rima-tde.net. [83.46.193.134])
 by smtp.gmail.com with ESMTPSA id b187sm2249422wmc.14.2020.03.13.13.09.17
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 13 Mar 2020 13:09:18 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v4 2/6] staging: mt7621-pci: change value for 'PERST_DELAY_MS'
Date: Fri, 13 Mar 2020 21:09:09 +0100
Message-Id: <20200313200913.24321-3-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200313200913.24321-1-sergio.paracuellos@gmail.com>
References: <20200313200913.24321-1-sergio.paracuellos@gmail.com>
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

Value of 'PERST_DELAY_MS' is too high and it is ok just
to set up to 100 ms. Update also define name from
'PERST_DELAY_US' into 'PERST_DELAY_MS'

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 drivers/staging/mt7621-pci/pci-mt7621.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/mt7621-pci/pci-mt7621.c b/drivers/staging/mt7621-pci/pci-mt7621.c
index 9b4fe8d31101..3d85ce788f9f 100644
--- a/drivers/staging/mt7621-pci/pci-mt7621.c
+++ b/drivers/staging/mt7621-pci/pci-mt7621.c
@@ -86,7 +86,7 @@
 #define MEMORY_BASE			0x0
 #define PERST_MODE_MASK			GENMASK(11, 10)
 #define PERST_MODE_GPIO			BIT(10)
-#define PERST_DELAY_US			1000
+#define PERST_DELAY_MS			100
 
 /**
  * struct mt7621_pcie_port - PCIe port information
@@ -463,7 +463,7 @@ static void mt7621_pcie_reset_assert(struct mt7621_pcie *pcie)
 		mt7621_rst_gpio_pcie_assert(port);
 	}
 
-	mdelay(PERST_DELAY_US);
+	mdelay(PERST_DELAY_MS);
 }
 
 static void mt7621_pcie_reset_rc_deassert(struct mt7621_pcie *pcie)
@@ -481,7 +481,7 @@ static void mt7621_pcie_reset_ep_deassert(struct mt7621_pcie *pcie)
 	list_for_each_entry(port, &pcie->ports, list)
 		mt7621_rst_gpio_pcie_deassert(port);
 
-	mdelay(PERST_DELAY_US);
+	mdelay(PERST_DELAY_MS);
 }
 
 static void mt7621_pcie_init_ports(struct mt7621_pcie *pcie)
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

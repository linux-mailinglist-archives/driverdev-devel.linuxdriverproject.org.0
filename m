Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D617F182BB9
	for <lists+driverdev-devel@lfdr.de>; Thu, 12 Mar 2020 10:01:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7D98B89370;
	Thu, 12 Mar 2020 09:00:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OvwOowuHT9R9; Thu, 12 Mar 2020 09:00:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A4DF18929E;
	Thu, 12 Mar 2020 09:00:58 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3E59C1BF332
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 12 Mar 2020 09:00:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3B97285F81
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 12 Mar 2020 09:00:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IJDJFZ_PdTwz
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 12 Mar 2020 09:00:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f67.google.com (mail-ed1-f67.google.com
 [209.85.208.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8A8A985F59
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 12 Mar 2020 09:00:54 +0000 (UTC)
Received: by mail-ed1-f67.google.com with SMTP id h62so6402493edd.12
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 12 Mar 2020 02:00:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5FGR/LX8xQWU5KrigxQVzWwgOax57fz85ENR22uN5l0=;
 b=fdH+GekWontLJHH5TL6RmnKAMurdvM4vjpQ/acPq42sa8OHIjjG1DlArqUrA0PG2OQ
 txy73DHV0R74StpzeVhLDFf5bcg0KHlBV/Rekxb08VoymV1Evd4f4ZM4woTydEmiawmT
 Zc5hQss6O5Ojxqi7T48kumFxRqt86p6mpMbgeQtRQo/Sgkb6j5z62YGkDJZtuPCKB5wm
 BONieHb/0b7iaN4zZmPjddjz7Z7QbmouZGCNkqXJ48vL86e8Z0jfr3RznwO5ragZARYp
 aRaAGnpumPsiiLFzEDfbqnR5W36k2sUkCin5tLFv0wA/8i9DMHnYr5x47XiUbW9qO21t
 s/SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5FGR/LX8xQWU5KrigxQVzWwgOax57fz85ENR22uN5l0=;
 b=UGkAwk6pwxXG0lpW+5WjBq/uDv8sGMVA2hAGr1KFTyQzdEsPl/qhFvv3nuW1aJykqB
 h7CvzuNsD1/w2mO5c85BPbH94SgyIirAPTcXo/tdrggPGgAjpRtCn8aEMzmjSE+M25eF
 SKbzwb+xZV5Oiqn1OA9PVVbV8ZusYJNUL0rAusbzmzk+P722yv/8MkniKbueQPU6zuvd
 Sqk+e6td4R7I72hzGzvTp/39qVK/Q0IbBfyZgRs1FPVqoNCVk13zxRmonNQMk3U9CtrK
 XZ1Y6px5xHE8OsQbEj0gJmpYbFeYewU8fnnD7K41Tv0nhCi2GQtDMmk0WD1gKUdaC+X/
 2Kaw==
X-Gm-Message-State: ANhLgQ1jlBXFMSLspA/PQMj8LhDDyGkmSRgEZgPrrkeh9l89+q3GQU8n
 EdSKYgakRJU0Qt0M5Sc5OpA=
X-Google-Smtp-Source: ADFU+vtP6VexawTgseNqZkJlgQlmOyWtEDsyln0uE+H1wYgjub8TNfNQdGywnMguhHfIENvCVO73YA==
X-Received: by 2002:aa7:d4d2:: with SMTP id t18mr6451366edr.223.1584003653034; 
 Thu, 12 Mar 2020 02:00:53 -0700 (PDT)
Received: from localhost.localdomain
 (134.red-83-46-193.dynamicip.rima-tde.net. [83.46.193.134])
 by smtp.gmail.com with ESMTPSA id p24sm1132711edx.34.2020.03.12.02.00.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 12 Mar 2020 02:00:52 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v3 2/5] staging: mt7621-pci: change value for 'PERST_DELAY_US'
Date: Thu, 12 Mar 2020 10:00:43 +0100
Message-Id: <20200312090046.26869-3-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200312090046.26869-1-sergio.paracuellos@gmail.com>
References: <20200312090046.26869-1-sergio.paracuellos@gmail.com>
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
index 34f6bcd53fbf..5306a0dd769f 100644
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

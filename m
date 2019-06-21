Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 242CE4E074
	for <lists+driverdev-devel@lfdr.de>; Fri, 21 Jun 2019 08:15:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A814786E6A;
	Fri, 21 Jun 2019 06:15:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bNAgz1FAlzYX; Fri, 21 Jun 2019 06:15:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 65DB286E1D;
	Fri, 21 Jun 2019 06:15:30 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E3EEC1BF2C8
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 21 Jun 2019 06:15:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D841086AF2
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 21 Jun 2019 06:15:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Xom4EhEwQ32F
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 21 Jun 2019 06:15:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1680E86AEE
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 21 Jun 2019 06:15:24 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id f9so5260442wre.12
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 20 Jun 2019 23:15:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=z+eY5p9L5tUj4jRdzdFDQHiO0einnielpUtjdBlYhPw=;
 b=AALtBL6HuwXYG43TFqAKs7L4+oONZ3cXKUysxWEUXN4coajBK02XVxU2XIzh/08pVq
 wBmqfXdJB+/BYNKJ7g7+hmWl1xPVUScDLebb7OY2PNEZuuWksKskJJqtVNhIjokrNiuk
 DRX5RU7utjzQveR2msANZtvf1qDM/FhqOEozXzqwXbIYZ5bEs/V1uE3o2Da0YKYapybh
 YIkcTlaYafNKOPBn22CxAp9FsTjSin+pZHu+83ePUAconIRqn315BxTWDUseaIzfI203
 6Qr1ko82RLqDmEU5ZVKd3wONFfZ+Wabi+B+y2QuQ3vnQPiwUJBjsU9asY7VxlNfMOdxP
 6sTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=z+eY5p9L5tUj4jRdzdFDQHiO0einnielpUtjdBlYhPw=;
 b=ft5nLyFMPW9kM2kwiCP1Rfya7NoWN2FFMAfGF3P4JqHHnOzcOPnNAhp7sHti8YmIIQ
 aIKpSulIGUEOiPmzd8obaOy2wZQVEysNne/qgwU9ApZzRT355VN+FmxUx0cxnQ+Agchh
 iTLNwTwMFhSCoL5N/2qCbCIFA4+EcFUDhlnShCsOEycQ7ojCHC+WLFLx+i38YofNUwpp
 18sJ8JLlFu0zXMcQuPfJ/CxgRteV8pNC7suqI3QbEO0wfzS8rKE8tGq+lkJCEQEgO1xy
 VPza/FgYVVs4dorqnSJOdo4tKn641BHMtavw6BjONkCFIbqtwUscdmqjPSHOCLzICnnn
 boXA==
X-Gm-Message-State: APjAAAXb4HoEfHW8SW66gdJtuod5YYIv87UDAiYwLbyynS31Xfvw6hIS
 XzE4ZbBNYAVSB8eHDcXDeSE=
X-Google-Smtp-Source: APXvYqylwLq8b+1Yy8ItySa+mqD6/PNhL9/uobPWodXBfGF2yLe9ljN3jezmcgI1H/tLwB28OnuOjQ==
X-Received: by 2002:adf:c541:: with SMTP id s1mr79624144wrf.44.1561097722786; 
 Thu, 20 Jun 2019 23:15:22 -0700 (PDT)
Received: from localhost.localdomain (34.red-88-0-78.dynamicip.rima-tde.net.
 [88.0.78.34])
 by smtp.gmail.com with ESMTPSA id a2sm2155519wmj.9.2019.06.20.23.15.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 20 Jun 2019 23:15:22 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 4/4] staging: mt7621-pci: use 'module_init' instead of
 'arch_initcall'
Date: Fri, 21 Jun 2019 08:15:17 +0200
Message-Id: <20190621061517.24089-5-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190621061517.24089-1-sergio.paracuellos@gmail.com>
References: <20190621061517.24089-1-sergio.paracuellos@gmail.com>
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

This driver has dependencies on mt7621-gpio and mt7621-pci-phy which
are init in later stages. Hence, when this driver is probed it is always
returning 'EPROBE_DEFER' and being initialized afterwards. Use function
'module_init' to just initialize later.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 drivers/staging/mt7621-pci/pci-mt7621.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/mt7621-pci/pci-mt7621.c b/drivers/staging/mt7621-pci/pci-mt7621.c
index da2e180f8d19..a981f4f0ed03 100644
--- a/drivers/staging/mt7621-pci/pci-mt7621.c
+++ b/drivers/staging/mt7621-pci/pci-mt7621.c
@@ -727,4 +727,4 @@ static int __init mt7621_pci_init(void)
 	return platform_driver_register(&mt7621_pci_driver);
 }
 
-arch_initcall(mt7621_pci_init);
+module_init(mt7621_pci_init);
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

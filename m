Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46F971814C3
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Mar 2020 10:27:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id CEF938810B;
	Wed, 11 Mar 2020 09:27:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cx-ri0fA2hcg; Wed, 11 Mar 2020 09:27:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 10D838809E;
	Wed, 11 Mar 2020 09:27:19 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E8DEB1BF5DB
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 09:27:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E291287F48
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 09:27:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id l3J2b0U7RPAH
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 09:27:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0A3BB880C2
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 09:27:15 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id p2so1600643wrw.7
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 02:27:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zif0e79LewxC1SYmT66X+HFzokSPU9dcCp4xjpccsRc=;
 b=e2h6FLdLdOVw6M8hWO5u072/2Z7cePXA+7OcZ5GfZ8frzqCKzU6vWLUSmf09TImB1L
 uag8rUdv13VAgkapTLCUCkTX0cR6OCUGwQUUJcKFuamd2ka0jls84fmU2VTCkjUruPgH
 GwX5bX7oeL+WCdt4fBNbv+0Xf9W8g+9RxUAhk0F2J8Ob8FGfvhCijeayOPtbJFQktkgt
 Vj5NWwuiTRTE2Zbw+xECV9IQVjp0/9UjWKM7jhkWDB1qdXCYMj5kdrpB8XHAJSIIuO9/
 P7uPmFK8ob8XRWaAaVBdGOYqqZRWCITaQLeokta81GMyBSyMxoZvnZHAnvZ4y92JidPs
 ehyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zif0e79LewxC1SYmT66X+HFzokSPU9dcCp4xjpccsRc=;
 b=QtrHSmxMJMIu/R0AP8P6vBRXBXs4wG76LUCvTdRDd8BKgZNREckaZnQ38FboQihfzq
 BYNL0KFDUjuMO7bZbZW3/s9+gpk5ja/krpO+ODO3B3ignzyYnjb6cib9aA4sStRJa+53
 dp56v0xKcffUYu7vfqyy7VySPsgDOd/4s5Zb6XCtBq+Whxun+86zyzusaij98+vvIyW/
 eK9IVBrIZjJKkRaJGA8wNQA4c+wBo4yxTpGmjHGkJbbYyDeVKFyZVtOTjn21NqdBajZg
 MdR1AucsuBPidQtpZJwR8eUL6Kf1Xul4VLXyw1GKBOv9A3Th+T6Rw2ZXeJaNhy+xTNiz
 qzGg==
X-Gm-Message-State: ANhLgQ1ArQHXyPDLI3Ipf6f9cCfBEMOUbv0mAkUb5/krl2dmVc6Up6Vc
 8NMaFuZSeXbmNcJx6z1bhYM=
X-Google-Smtp-Source: ADFU+vuTv10Aa3xNB3wh7lRgV53OHnxrl9577iUVC33Nl9UC6Ay2qGyXc2a4mY7CwIMstvumbMcMuA==
X-Received: by 2002:a5d:5012:: with SMTP id e18mr3463352wrt.228.1583918833525; 
 Wed, 11 Mar 2020 02:27:13 -0700 (PDT)
Received: from localhost.localdomain
 (134.red-83-46-193.dynamicip.rima-tde.net. [83.46.193.134])
 by smtp.gmail.com with ESMTPSA id v14sm33075156wrr.34.2020.03.11.02.27.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 11 Mar 2020 02:27:13 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 3/5] staging: mt7621-pci: remove not used definitions
Date: Wed, 11 Mar 2020 10:27:05 +0100
Message-Id: <20200311092707.23454-4-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200311092707.23454-1-sergio.paracuellos@gmail.com>
References: <20200311092707.23454-1-sergio.paracuellos@gmail.com>
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

GPIO mode is not needed to be set up anymore. Hence
remove useless related definitions.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 drivers/staging/mt7621-pci/pci-mt7621.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/mt7621-pci/pci-mt7621.c b/drivers/staging/mt7621-pci/pci-mt7621.c
index d58c880d3818..fb6e65f7624b 100644
--- a/drivers/staging/mt7621-pci/pci-mt7621.c
+++ b/drivers/staging/mt7621-pci/pci-mt7621.c
@@ -81,8 +81,6 @@
 #define PCIE_PORT_LINKUP		BIT(0)
 
 #define MEMORY_BASE			0x0
-#define PERST_MODE_MASK			GENMASK(11, 10)
-#define PERST_MODE_GPIO			BIT(10)
 #define PERST_DELAY_US			100
 
 /**
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

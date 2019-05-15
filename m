Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94EF61EDCF
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 May 2019 13:14:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 862DA87CB5;
	Wed, 15 May 2019 11:14:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5YRI9asCvOSx; Wed, 15 May 2019 11:14:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 039BF87BFF;
	Wed, 15 May 2019 11:14:45 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CF35E1BF3D9
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 15 May 2019 11:14:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id CC59322D10
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 15 May 2019 11:14:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id b1C0Ed90Pujq
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 15 May 2019 11:14:40 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from kadath.azazel.net (kadath.azazel.net [81.187.231.250])
 by silver.osuosl.org (Postfix) with ESMTPS id 874A322219
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 15 May 2019 11:14:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=azazel.net; 
 s=20190108;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=T43PTW0mKb1U7lZJZXxvs8Kyvq4o+Sf7IFOT02PD9XM=; b=eVjOXtpOD6jC/5XvgsMrw/N/yp
 M+138PRGoTbDyOIdgVpUnhKIUo+yWmaTrSe6Q72rKaK3ojMm+HrzH8WqOAEux0YwY6PUhovOhvbM8
 ceqM5nd3irpYwtWMgx9fy5Enn2yIrTlEeN4aMKkYfeIAJyHCEQkMQZwfFz0P/pYDjrNrM+w4tNqRy
 t06g0KO9WmyCsRp4YTdY89bN607CzLf68/UdCqX55QWxBqKZup96Ee60zM9+xrseXoNE5ykMiB3RJ
 uNbLmqlKa7jeKOGQaEaax4zb4ShE/t56PPespNeaOCQb/E/Uar4erajtzdLjC5zgvSZ4ZjbW0buLN
 43UB6c+g==;
Received: from ulthar.dreamlands ([192.168.96.2])
 by kadath.azazel.net with esmtp (Exim 4.89)
 (envelope-from <jeremy@azazel.net>) id 1hQrrq-0003Fc-Ez
 for driverdev-devel@linuxdriverproject.org; Wed, 15 May 2019 12:14:38 +0100
From: Jeremy Sowden <jeremy@azazel.net>
To: Linux Driver Project Developer List
 <driverdev-devel@linuxdriverproject.org>
Subject: [PATCH v2 2/5] staging: kpc2000: declare two functions as static.
Date: Wed, 15 May 2019 12:14:34 +0100
Message-Id: <20190515111437.18828-3-jeremy@azazel.net>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190515111437.18828-1-jeremy@azazel.net>
References: <20190515103454.18456-1-jeremy@azazel.net>
 <20190515111437.18828-1-jeremy@azazel.net>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 192.168.96.2
X-SA-Exim-Mail-From: jeremy@azazel.net
X-SA-Exim-Scanned: No (on kadath.azazel.net); SAEximRunCond expanded to false
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Two functions were not used outside the translation-unit in which they
were defined.  Declared them static.

Fixes two sparse warnings:

  drivers/staging/kpc2000/kpc2000/cell_probe.c:98:5: warning: symbol 'probe_core_basic' was not declared. Should it be static?
  drivers/staging/kpc2000/kpc2000/cell_probe.c:288:5: warning: symbol 'probe_core_uio' was not declared. Should it be static?

Signed-off-by: Jeremy Sowden <jeremy@azazel.net>
---
 drivers/staging/kpc2000/kpc2000/cell_probe.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc2000/cell_probe.c b/drivers/staging/kpc2000/kpc2000/cell_probe.c
index fc7038152bb4..30e6f176ddfa 100644
--- a/drivers/staging/kpc2000/kpc2000/cell_probe.c
+++ b/drivers/staging/kpc2000/kpc2000/cell_probe.c
@@ -91,7 +91,8 @@ void parse_core_table_entry(struct core_table_entry *cte, const u64 read_val, co
 }
 
 
-int  probe_core_basic(unsigned int core_num, struct kp2000_device *pcard, char *name, const struct core_table_entry cte)
+static int probe_core_basic(unsigned int core_num, struct kp2000_device *pcard,
+			    char *name, const struct core_table_entry cte)
 {
     struct mfd_cell  cell = {0};
     struct resource  resources[2];
@@ -257,7 +258,8 @@ int kuio_irqcontrol(struct uio_info *uioinfo, s32 irq_on)
     return 0;
 }
 
-int  probe_core_uio(unsigned int core_num, struct kp2000_device *pcard, char *name, const struct core_table_entry cte)
+static int probe_core_uio(unsigned int core_num, struct kp2000_device *pcard,
+			  char *name, const struct core_table_entry cte)
 {
     struct kpc_uio_device  *kudev;
     int rv;
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

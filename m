Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 414491EC2B
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 May 2019 12:35:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C14FE87C70;
	Wed, 15 May 2019 10:35:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cQvi9V2kSzM0; Wed, 15 May 2019 10:35:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 957D587BB1;
	Wed, 15 May 2019 10:35:04 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 108D01BF41B
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 15 May 2019 10:34:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0D71D826E6
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 15 May 2019 10:34:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dCUtVrciJtSN
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 15 May 2019 10:34:57 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from kadath.azazel.net (kadath.azazel.net [81.187.231.250])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3E66285D4B
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 15 May 2019 10:34:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=azazel.net; 
 s=20190108;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=T43PTW0mKb1U7lZJZXxvs8Kyvq4o+Sf7IFOT02PD9XM=; b=pY70JKwAyNOdNWPDJLG3L3ugI8
 buUb34rxibgxINUoFSs/EN8c3a3voyuGDZVkvJHIwLi91mXVIqGOwWfHTxALju5Z+AGAC+vjjqEdS
 y4ewH1wv4QtvetCmXNFRqePqmW3ltOHBmAymYm4NP0y5sKGAN56Ptocr6DoGTpsJfoCeXT+W8SXAs
 gRUHMFFgRnoHEwaKpPW0ZP0B9qsGXz69guZ0t7RXG5wAwIgLwktwCCyNd3ZCnSzNFB66eAquZrWIr
 fuN+I9Dg1u9Ev2ZnCCIzDBpntTYFhM1OjmwsLbEDKgtwPIXL4wUHQcLdvwqNnAtMQMyvQTlZl/m91
 AnYvqmrg==;
Received: from ulthar.dreamlands ([192.168.96.2])
 by kadath.azazel.net with esmtp (Exim 4.89)
 (envelope-from <jeremy@azazel.net>) id 1hQrFO-0002JH-Py
 for driverdev-devel@linuxdriverproject.org; Wed, 15 May 2019 11:34:54 +0100
From: Jeremy Sowden <jeremy@azazel.net>
To: Linux Driver Project Developer List
 <driverdev-devel@linuxdriverproject.org>
Subject: [PATCH 2/5] staging: kpc2000: declare two functions as static.
Date: Wed, 15 May 2019 11:34:51 +0100
Message-Id: <20190515103454.18456-3-jeremy@azazel.net>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190515103454.18456-1-jeremy@azazel.net>
References: <20190515103454.18456-1-jeremy@azazel.net>
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

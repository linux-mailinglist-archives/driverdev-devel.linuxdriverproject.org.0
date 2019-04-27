Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CA0E4B466
	for <lists+driverdev-devel@lfdr.de>; Sat, 27 Apr 2019 21:54:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6C0FA22F22;
	Sat, 27 Apr 2019 19:54:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RcllGIxVe0JZ; Sat, 27 Apr 2019 19:54:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6CA9021549;
	Sat, 27 Apr 2019 19:54:08 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0D9821BF28A
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 27 Apr 2019 19:54:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0A88B227FF
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 27 Apr 2019 19:54:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dDPtNoAefEjJ
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 27 Apr 2019 19:54:05 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from kadath.azazel.net (kadath.azazel.net [81.187.231.250])
 by silver.osuosl.org (Postfix) with ESMTPS id 9DDE922264
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 27 Apr 2019 19:54:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=azazel.net; 
 s=20190108;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject
 :To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Npyd+n/D35oze7NCXDKIdQ9dFKstGt5c/kunQlSZSBw=; b=aGgqG3OWcHM2yxEI+bTGH5cxNp
 3VDlmdBSSDeH5pA8F0GnMndWOGm55dfiOMnffduWw1Gvcop2FuV6ZppztGZZGIGNs/P2P2U+UJfZM
 bbaKX6dasF3OsbQJnJrsny9siOyRr7X3W3W4cffBLd5TrcL/dK4BjFAokDj/B7ZBRfvuFiAOxisX5
 zl9efoneb5Uvo3TEg2U1Ui/lswMV1s3Q0cRaoOue2UzJGmE3sXWw8tEE/5jVNvPyXBXsQUAUcSufX
 3N9Mm8Z4IYi7HvUaXxaWPqW4/y6EeYCKWu6hxJm3JkZRt6ZHaWI5hSqkE0OlJYAl3qVFrKysOEHwW
 jVt2aCDQ==;
Received: from ulthar.dreamlands ([192.168.96.2])
 by kadath.azazel.net with esmtp (Exim 4.89)
 (envelope-from <jeremy@azazel.net>) id 1hKTOb-0002Tf-71
 for driverdev-devel@linuxdriverproject.org; Sat, 27 Apr 2019 20:54:01 +0100
From: Jeremy Sowden <jeremy@azazel.net>
To: Linux Driver Project Developer List
 <driverdev-devel@linuxdriverproject.org>
Subject: [PATCH 0/2] staging: kpc2000_spi: eliminated duplicate initialization
 of two local variables.
Date: Sat, 27 Apr 2019 20:53:59 +0100
Message-Id: <20190427195401.12650-1-jeremy@azazel.net>
X-Mailer: git-send-email 2.20.1
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

A couple of the local variables in kp_spi_probe had initializers which were
being overwritten by immediate assignment of the same values.  One of them was
dynamically allocated and so would leak memory.

Checkpatch whinges about the formatting, but fixing that would be rather a large
job.

Jeremy Sowden (2):
  staging: kpc2000_spi: eliminated duplicate initialization of drvdata local
    variable.
  staging: kpc2000_spi: eliminated duplicate initialization of master local
    variable.

 drivers/staging/kpc2000/kpc_spi/spi_driver.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

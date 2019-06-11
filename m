Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AE593D72C
	for <lists+driverdev-devel@lfdr.de>; Tue, 11 Jun 2019 21:51:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CFF0F86E15;
	Tue, 11 Jun 2019 19:51:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YZljt+Du-AfY; Tue, 11 Jun 2019 19:51:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A9BF286DEB;
	Tue, 11 Jun 2019 19:51:13 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E1CE41BF3BB
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 11 Jun 2019 19:51:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D9AD02033B
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 11 Jun 2019 19:51:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id s6nyt0P5YYp9
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 11 Jun 2019 19:51:10 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from kadath.azazel.net (kadath.azazel.net [81.187.231.250])
 by silver.osuosl.org (Postfix) with ESMTPS id 6F77D20004
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 11 Jun 2019 19:51:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=azazel.net; 
 s=20190108;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gBjUrYQIC8/34R3psPxgIa0ThDGw9Hgfn2uJAUy3Wmw=; b=TXm79Opy5s+KmaEyT0UyDBh7H0
 ZclmyE1j0AlKnlO+08R3CfHsOPXbbVfT823X+pSiBLiDdhcch7BlSc0EAtgA0CTa0KYLkujcfIc3G
 fpw+bERDPNBG0byXfdXxBInnHatPaayuJGPOZy+sWViDLNUkDLl3lpU6+fzLNRyNknTLXp2HKZnXr
 nWKx8yxofGoYmC1OW5BTvDCzYRyjt62eXnv03KSrEMQ8EwId6YD7FswAzQiB99SG1uyACiB/J9wiW
 S1qXGCimy71uvNzOtC1/FiSTfj8J9NmehELOEz4agVEAfCtDMLklIBw8KZgMbRZxSnupqks2JWtyl
 TqMdH+fw==;
Received: from ulthar.dreamlands ([192.168.96.2])
 by kadath.azazel.net with esmtp (Exim 4.89)
 (envelope-from <jeremy@azazel.net>)
 id 1hamnR-0002Uq-Ex; Tue, 11 Jun 2019 20:51:05 +0100
From: Jeremy Sowden <jeremy@azazel.net>
To: Linux Driver Project Developer List
 <driverdev-devel@linuxdriverproject.org>
Subject: [PATCH 6/6] staging: kpc2000: updated TODO in light of DMA AIO fixes.
Date: Tue, 11 Jun 2019 20:51:04 +0100
Message-Id: <20190611195104.4828-7-jeremy@azazel.net>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190611195104.4828-1-jeremy@azazel.net>
References: <20190611195104.4828-1-jeremy@azazel.net>
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
Cc: Greg KH <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The DMA AIO file-ops now work, so remove that item from the to-do list.

Cc: Matt Sickler <matt.sickler@daktronics.com>
Signed-off-by: Jeremy Sowden <jeremy@azazel.net>
---
 drivers/staging/kpc2000/TODO | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/kpc2000/TODO b/drivers/staging/kpc2000/TODO
index 47530e23e940..414870debd85 100644
--- a/drivers/staging/kpc2000/TODO
+++ b/drivers/staging/kpc2000/TODO
@@ -1,5 +1,3 @@
 - the kpc_spi driver doesn't seem to let multiple transactions (to different instances of the core) happen in parallel...
 - The kpc_i2c driver is a hot mess, it should probably be cleaned up a ton.  It functions against current hardware though.
-- would be nice if the AIO fileops in kpc_dma could be made to work
-    - probably want to add a CONFIG_ option to control compilation of the AIO functions
-- if the AIO fileops in kpc_dma start working, next would be making iov_count > 1 work too
+- Now that the AIO fileops in kpc_dma work, we want to make iov_count > 1 work too
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

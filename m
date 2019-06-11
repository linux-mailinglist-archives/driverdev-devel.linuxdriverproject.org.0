Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DEF43D730
	for <lists+driverdev-devel@lfdr.de>; Tue, 11 Jun 2019 21:51:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9AA4085F94;
	Tue, 11 Jun 2019 19:51:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3tOx3hfevWPd; Tue, 11 Jun 2019 19:51:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DB7A785EE9;
	Tue, 11 Jun 2019 19:51:17 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D5F381BF3BB
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 11 Jun 2019 19:51:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D3C6587D75
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 11 Jun 2019 19:51:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aLkzrDeRUoBl
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 11 Jun 2019 19:51:11 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from kadath.azazel.net (kadath.azazel.net [81.187.231.250])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 99EF487D56
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 11 Jun 2019 19:51:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=azazel.net; 
 s=20190108;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject
 :Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=plmYrU5mmYqafFxDBKWfH84v+Y/CTxBDHpLi45NILMs=; b=muUbFvI4eEWJeyJkNDUv/9UY/L
 5DYL1ZwngEVCoTHjTMbUFPLGHyLykBbuwO3Y2eMCZhSHVbKj9/XOcBwI7SA7LvrN+1x4JpVEMiZDK
 ydeV2dEEnPb2IYbjtdh0U5QrUzFXad+i5xywfOzszTDX1VhB225W5BnTyc1KZQAIMHc+qj1/W4VYp
 b9EAAqnqLDNKqGXJh3/UYFdDm74vcKZedw5bGg4okOE11jlmuQd8U3iTQmPmt1savBQJDylwoLenY
 yxCeDLBKbbqUhBwy2QqzyWk5ITVTUfp46vmooTRH14zJ4p8wy7tIsoYjun7nj6TrtIY2RF5FuSHiQ
 urTDrgmg==;
Received: from ulthar.dreamlands ([192.168.96.2])
 by kadath.azazel.net with esmtp (Exim 4.89)
 (envelope-from <jeremy@azazel.net>)
 id 1hamnQ-0002Uq-I9; Tue, 11 Jun 2019 20:51:04 +0100
From: Jeremy Sowden <jeremy@azazel.net>
To: Linux Driver Project Developer List
 <driverdev-devel@linuxdriverproject.org>
Subject: [PATCH 0/6] staging: kpc2000_dma: fixes for AIO file-ops.
Date: Tue, 11 Jun 2019 20:50:58 +0100
Message-Id: <20190611195104.4828-1-jeremy@azazel.net>
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
Cc: Greg KH <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

I've had a go at getting the DMA AIO working.  It compiles, but I don't
have access to the hardware, so I have done no more testing than that.

The fifth patch removes the cancel call-back because it is empty and so
doesn't serve any purpose (AFAICS).  However, it doesn't appear to be
too tricky to implement something that would abort the transfer in the
same manner that kpc_dma_close() if this would be useful.

Jeremy Sowden (6):
  staging: kpc2000_dma: added Kconfig to enable asynchronous I/O.
  staging: kpc2000_dma: removed casts of void pointers.
  staging: kpc2000_dma: formatting fixes for AIO functions.
  staging: kpc2000_dma: replaced aio_(read|write) file-ops with
    (read|write)_iter ones.
  staging: kpc2000_dma: removed aio cancel call-back.
  staging: kpc2000: updated TODO in light of DMA AIO fixes.

 drivers/staging/kpc2000/Kconfig           |  8 +++
 drivers/staging/kpc2000/TODO              |  4 +-
 drivers/staging/kpc2000/kpc_dma/fileops.c | 69 ++++++++++++-----------
 3 files changed, 44 insertions(+), 37 deletions(-)

-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

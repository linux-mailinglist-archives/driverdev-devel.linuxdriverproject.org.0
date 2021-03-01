Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CC4B32858F
	for <lists+driverdev-devel@lfdr.de>; Mon,  1 Mar 2021 17:58:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A43CF6F6DD;
	Mon,  1 Mar 2021 16:58:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id e_hNgD9Qaj_l; Mon,  1 Mar 2021 16:58:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D98C86F5F3;
	Mon,  1 Mar 2021 16:58:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 25D171BF29A
 for <devel@linuxdriverproject.org>; Mon,  1 Mar 2021 16:58:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 14F654F299
 for <devel@linuxdriverproject.org>; Mon,  1 Mar 2021 16:58:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=mev.co.uk
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jwHiugRyuFny for <devel@linuxdriverproject.org>;
 Mon,  1 Mar 2021 16:58:07 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from smtp64.iad3a.emailsrvr.com (smtp64.iad3a.emailsrvr.com
 [173.203.187.64])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 407274F290
 for <devel@driverdev.osuosl.org>; Mon,  1 Mar 2021 16:58:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
 s=20190130-41we5z8j; t=1614617886;
 bh=q9ngyQaFAjcRd+DlPIH1ICnEDb5Xb57CfEkQErdnwbQ=;
 h=From:To:Subject:Date:From;
 b=eXTRhLi9bOKK/CDOPaovSofy31Q74LROFW8qcWmbB2gQXv2YZDO22Crgu5uVrvYb8
 5b0EnVp1V6pWFip0C08sn7t8EjXNHBgZsP3yAwdZfIHGthBFczmsm22QC+FtMrmZG7
 JnJbb3hEMgiyH/TuDDwOO7VkI4UeU0qY2YsEJ91g=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp33.relay.iad3a.emailsrvr.com (Authenticated sender:
 abbotti-AT-mev.co.uk) with ESMTPSA id 7D27554E2; 
 Mon,  1 Mar 2021 11:58:05 -0500 (EST)
From: Ian Abbott <abbotti@mev.co.uk>
To: devel@driverdev.osuosl.org
Subject: [PATCH 0/6] staging: comedi: dt2814: Fix broken AI command support
Date: Mon,  1 Mar 2021 16:57:51 +0000
Message-Id: <20210301165757.243065-1-abbotti@mev.co.uk>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
X-Classification-ID: 373a6dd9-c77b-428d-ab7d-8dacbfd07151-1-1
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Ian Abbott <abbotti@mev.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The DT2814 board is an old analog-to-digital ISA card supported by the
Comedi "dt2814" driver.  The board has a timed acquisition mode, and an
end-of-conversion interrupt.  The interrupt can be disabled by removing
the jumper that sets the IRQ level.  In Comedi, the board is a manually
configured "legacy" device with an optional IRQ setting.

The Comedi driver has some broken support for asynchronous streaming
commands when the optional IRQ setting has been configured.  The main
problems are:

* It doesn't write any samples to the Comedi buffer to be read by the
  user application.
* The IRQ handler gets called at the end of any conversion, including
  during non-streaming, software-triggered acquisitions, but will
  interfere with these acquisitions because it reads the A/D Data
  register.

This series of patches attempts to support the asynchronous commands
properly so that it only reads the A/D Data register if the asynchronous
command has been set up, and actually writes it to the Comedi buffer.

Stopping the asynchronous command triggers an unwanted conversion.  The
interrupt handler used to wait for that to finish, but this series of
patches changes that so that other places in the code outside the
interrupt handler wait for a stale conversion to finish and/or read the
stale data before starting a new conversion.

1) staging: comedi: dt2814: Clear stale AI data before operation
2) staging: comedi: dt2814: Don't wait for conversion in interrupt handler
3) staging: comedi: dt2814: Call dt2814_ai_clear() during initialization
4) staging: comedi: dt2814: Fix asynchronous command interrupt handling
5) staging: comedi: dt2814: Remove struct dt2814_private
6) staging: comedi: dt2814: Clear stale AI data on detach

 drivers/staging/comedi/drivers/dt2814.c | 153 +++++++++++++++++++++++++-------
 1 file changed, 120 insertions(+), 33 deletions(-)

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

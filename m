Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4BFB322C49
	for <lists+driverdev-devel@lfdr.de>; Tue, 23 Feb 2021 15:31:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id BE4E287249;
	Tue, 23 Feb 2021 14:31:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CxH4bZx6ysHU; Tue, 23 Feb 2021 14:31:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 00D058723B;
	Tue, 23 Feb 2021 14:31:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5ED871BF36B
 for <devel@linuxdriverproject.org>; Tue, 23 Feb 2021 14:31:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5B80185F3D
 for <devel@linuxdriverproject.org>; Tue, 23 Feb 2021 14:31:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rVrIV12GqWmY for <devel@linuxdriverproject.org>;
 Tue, 23 Feb 2021 14:31:18 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtp70.ord1c.emailsrvr.com (smtp70.ord1c.emailsrvr.com
 [108.166.43.70])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8EC4285DFD
 for <devel@driverdev.osuosl.org>; Tue, 23 Feb 2021 14:31:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
 s=20190130-41we5z8j; t=1614090677;
 bh=5O8AqWycx5/wTyplXA32j1bAll6XzQYCRMuqEJg1PPU=;
 h=From:To:Subject:Date:From;
 b=PmnZz6fwG6OMLEPScoep9k3JWngsX3mivw0Rm5287LS7xnclWNmSY2BwEJwSH7kaU
 TJSJTwc3OY7Qyfe00SnDa6xzS4P317i5Y7KY8+abxWQ7LNsTBwuCJGouAZtf4Wk3Qb
 B37ms1lgRsZ3G1CKjHpIxnNS47q7ikpBtvvGYaMc=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp1.relay.ord1c.emailsrvr.com (Authenticated sender:
 abbotti-AT-mev.co.uk) with ESMTPSA id E5DF620184; 
 Tue, 23 Feb 2021 09:31:16 -0500 (EST)
From: Ian Abbott <abbotti@mev.co.uk>
To: devel@driverdev.osuosl.org
Subject: [PATCH 00/14] staging: comedi: Fix some command data endian problems
Date: Tue, 23 Feb 2021 14:30:41 +0000
Message-Id: <20210223143055.257402-1-abbotti@mev.co.uk>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
X-Classification-ID: a7362777-437e-4132-9c26-de9af4db62d3-1-1
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

The `comedi_buf_read_samples()` and `comedi_buf_write_samples()`
functions can read/write either 16-bit or 32-bit values from/to the
Comedi buffer used for Comedi asynchonous command data.  The width of
the value depends on whether the subdevice sets the `SDF_LSAMPL` flag
(indicating 32-bit samples, if set).

Various Comedi drivers are calling `comedi_buf_write_samples()` with the
address of an object of type `unsigned int` when the subdevice is set to
use 16-bit wide samples (`SDF_LSAMPL` flag clear).  That will not work
properly on bigendian machines because it will be transferring a 2-byte
value from the wrong end of the 32-bit integer.  This patch series fixes
those problems.

For some of the drivers, the value being transferred is always 0 anyway,
so it doesn't matter much, but fix them anyway in patches 10 thru 14.

01) staging: comedi: addi_apci_1032: Fix endian problem for COS sample
02) staging: comedi: addi_apci_1500: Fix endian problem for command sample
03) staging: comedi: adv_pci1710: Fix endian problem for AI command data
04) staging: comedi: das6402: Fix endian problem for AI command data
05) staging: comedi: das800: Fix endian problem for AI command data
06) staging: comedi: dmm32at: Fix endian problem for AI command data
07) staging: comedi: me4000: Fix endian problem for AI command data
08) staging: comedi: pcl711: Fix endian problem for AI command data
09) staging: comedi: pcl818: Fix endian problem for AI command data
10) staging: comedi: amplc_pc236_common: Use 16-bit 0 for interrupt data
11) staging: comedi: comedi_parport: Use 16-bit 0 for interrupt data
12) staging: comedi: ni_6527: Use 16-bit 0 for interrupt data
13) staging: comedi: ni_65xx: Use 16-bit 0 for interrupt data
14) staging: comedi: pcl726: Use 16-bit 0 for interrupt data

 drivers/staging/comedi/drivers/addi_apci_1032.c     |  4 +++-
 drivers/staging/comedi/drivers/addi_apci_1500.c     | 18 +++++++++---------
 drivers/staging/comedi/drivers/adv_pci1710.c        | 10 +++++-----
 drivers/staging/comedi/drivers/amplc_pc236_common.c |  4 +++-
 drivers/staging/comedi/drivers/comedi_parport.c     |  3 ++-
 drivers/staging/comedi/drivers/das6402.c            |  2 +-
 drivers/staging/comedi/drivers/das800.c             |  2 +-
 drivers/staging/comedi/drivers/dmm32at.c            |  2 +-
 drivers/staging/comedi/drivers/me4000.c             |  2 +-
 drivers/staging/comedi/drivers/ni_6527.c            |  4 +++-
 drivers/staging/comedi/drivers/ni_65xx.c            |  3 ++-
 drivers/staging/comedi/drivers/pcl711.c             |  2 +-
 drivers/staging/comedi/drivers/pcl726.c             |  4 +++-
 drivers/staging/comedi/drivers/pcl818.c             |  2 +-
 14 files changed, 36 insertions(+), 26 deletions(-)

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

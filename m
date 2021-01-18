Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C67422FA360
	for <lists+driverdev-devel@lfdr.de>; Mon, 18 Jan 2021 15:44:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 57ACF851D6;
	Mon, 18 Jan 2021 14:44:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YcWtY9KzLcfG; Mon, 18 Jan 2021 14:44:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7667D8464B;
	Mon, 18 Jan 2021 14:44:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 453501BF3C2
 for <devel@linuxdriverproject.org>; Mon, 18 Jan 2021 14:44:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 41C6F80CED
 for <devel@linuxdriverproject.org>; Mon, 18 Jan 2021 14:44:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qrta5YeU35Gh for <devel@linuxdriverproject.org>;
 Mon, 18 Jan 2021 14:44:15 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtp104.iad3b.emailsrvr.com (smtp104.iad3b.emailsrvr.com
 [146.20.161.104])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3F5BD8453D
 for <devel@driverdev.osuosl.org>; Mon, 18 Jan 2021 14:44:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
 s=20190130-41we5z8j; t=1610981054;
 bh=qZPU1wT2RswCdx0/pHsXRcFtUV1aZojZigE1h5lWx6E=;
 h=From:To:Subject:Date:From;
 b=TY6wZNjHQabN+HwXbzrrXWBm7mC1afHsfDTvQmLh7oYyu/F+1o8PQI8PK0Scbquov
 NdCwYN9zMswuzwJZoorvyGw7W1HRPD9vKNYIJcOSnOAdqnOSxKdwwwSkbyj2efZduy
 ioscbLsdAV6Z9v6EyjMkfamJWW8dX2em4JjY2MJY=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp22.relay.iad3b.emailsrvr.com (Authenticated sender:
 abbotti-AT-mev.co.uk) with ESMTPSA id 8EAFA60218; 
 Mon, 18 Jan 2021 09:44:13 -0500 (EST)
From: Ian Abbott <abbotti@mev.co.uk>
To: devel@driverdev.osuosl.org
Subject: [PATCH 0/2] staging: comedi: adv_pci_dio: Interrupt handling for
 PCI-1730
Date: Mon, 18 Jan 2021 14:43:57 +0000
Message-Id: <20210118144359.378730-1-abbotti@mev.co.uk>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-Classification-ID: 8c5cf951-5880-4237-8386-e602c086236d-1-1
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
 Ian Abbott <abbotti@mev.co.uk>, Bernd Harries <bha@gmx.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

These patches add interrupt support handling to Advantech PCI-1730,
using comedi's asynchronous command support to allow values to be read
from subdevices in response to interrupts triggered by signals on
external digital inputs.

The first patch is mostly by Bernd Harries with a bit of input from
myself (Ian Abbott).  My changes have bene tested by Bernd.

The second patch allows the comedi asynchronous command to choose either
the rising edge or the falling edge of the external digital input as the
trigger source.

1) staging: comedi: adv_pci_dio: Add interrupt handling for PCI-1730
2) staging: comedi: adv_pci_dio: Support falling edge triggers

 drivers/staging/comedi/drivers/adv_pci_dio.c | 289 +++++++++++++++++++++++++--
 1 file changed, 277 insertions(+), 12 deletions(-)

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

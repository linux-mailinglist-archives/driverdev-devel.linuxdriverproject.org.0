Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A834B21F2E1
	for <lists+driverdev-devel@lfdr.de>; Tue, 14 Jul 2020 15:44:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8E2C88A685;
	Tue, 14 Jul 2020 13:44:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GflelpxYrHZD; Tue, 14 Jul 2020 13:44:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0C3308A653;
	Tue, 14 Jul 2020 13:44:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7EF3B1BF976
 for <devel@linuxdriverproject.org>; Tue, 14 Jul 2020 13:44:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7BD978916F
 for <devel@linuxdriverproject.org>; Tue, 14 Jul 2020 13:44:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Z07haB_qoQ7j for <devel@linuxdriverproject.org>;
 Tue, 14 Jul 2020 13:44:44 +0000 (UTC)
X-Greylist: delayed 00:09:27 by SQLgrey-1.7.6
Received: from inva021.nxp.com (inva021.nxp.com [92.121.34.21])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C866589159
 for <devel@driverdev.osuosl.org>; Tue, 14 Jul 2020 13:44:44 +0000 (UTC)
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 23B4B2001C4;
 Tue, 14 Jul 2020 15:35:15 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 17D902001B2;
 Tue, 14 Jul 2020 15:35:15 +0200 (CEST)
Received: from fsr-ub1864-126.ea.freescale.net
 (fsr-ub1864-126.ea.freescale.net [10.171.82.212])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id CD9C8205A4;
 Tue, 14 Jul 2020 15:35:14 +0200 (CEST)
From: Ioana Ciornei <ioana.ciornei@nxp.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 0/6] staging: dpaa2-ethsw: cleanup of link state and MAC
 addresses
Date: Tue, 14 Jul 2020 16:34:25 +0300
Message-Id: <20200714133431.17532-1-ioana.ciornei@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Ioana Ciornei <ioana.ciornei@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch set is cleaning up the link state handling of the switch
ports in patches 1-4. The last two patches are setting up the MAC
addresses of the switch ports automatically so that the user is not
forced to manually add them before adding them to a bridge.

Ioana Ciornei (6):
  staging: dpaa2-ethsw: fix reported link state
  staging: dpaa2-ethsw: ignore state interrupts when the interface is
    not running
  staging: dpaa2-ethsw: use netif_running when checking for port up
  staging: dpaa2-ethsw: disable switch ports are probe time
  staging: dpaa2-ethsw: store version information of the DPSW object
  staging: dpaa2-ethsw: setup MAC address of switch netdevices

 drivers/staging/fsl-dpaa2/ethsw/dpsw-cmd.h |  14 +++
 drivers/staging/fsl-dpaa2/ethsw/dpsw.c     | 106 +++++++++++++++++++++
 drivers/staging/fsl-dpaa2/ethsw/dpsw.h     |   9 ++
 drivers/staging/fsl-dpaa2/ethsw/ethsw.c    | 102 +++++++++++++++++---
 drivers/staging/fsl-dpaa2/ethsw/ethsw.h    |   4 +
 5 files changed, 221 insertions(+), 14 deletions(-)

-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

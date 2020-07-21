Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2489E227B8B
	for <lists+driverdev-devel@lfdr.de>; Tue, 21 Jul 2020 11:19:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1E76D895E3;
	Tue, 21 Jul 2020 09:19:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Fs0+Th4dzVTT; Tue, 21 Jul 2020 09:19:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 41907895B6;
	Tue, 21 Jul 2020 09:19:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 51B0C1BF2B7
 for <devel@linuxdriverproject.org>; Tue, 21 Jul 2020 09:19:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4EE1187849
 for <devel@linuxdriverproject.org>; Tue, 21 Jul 2020 09:19:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QnpAK78fdslj for <devel@linuxdriverproject.org>;
 Tue, 21 Jul 2020 09:19:36 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from inva021.nxp.com (inva021.nxp.com [92.121.34.21])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 57929840A3
 for <devel@driverdev.osuosl.org>; Tue, 21 Jul 2020 09:19:33 +0000 (UTC)
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 4F5E720090C;
 Tue, 21 Jul 2020 11:19:31 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 4349220044D;
 Tue, 21 Jul 2020 11:19:31 +0200 (CEST)
Received: from fsr-ub1864-126.ea.freescale.net
 (fsr-ub1864-126.ea.freescale.net [10.171.82.212])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 04B4D202A9;
 Tue, 21 Jul 2020 11:19:30 +0200 (CEST)
From: Ioana Ciornei <ioana.ciornei@nxp.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 0/6] staging: dpaa2-ethsw: various fixes
Date: Tue, 21 Jul 2020 12:19:13 +0300
Message-Id: <20200721091919.20394-1-ioana.ciornei@nxp.com>
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

This patch set adds various fixes to the dpaa2-ethsw driver: checking
the received notifier block before acting on a switchdev notification,
destroying a workqueue after deregistering the notifiers, making sure
that new VLANs added have a place before actually adding them and other
problems like this.

I know this driver should be moved along from staging but we still have
the Rx/Tx functionality on switch ports and some general cleanup that we
are working towards. This is tackling the second part, no new feature
added here.

Ioana Ciornei (6):
  staging: dpaa2-ethsw: verify the nofifier block
  staging: dpaa2-ethsw: don't allow interfaces from different DPSWs to
    be bridged
  staging: dpaa2-ethsw: setup the STP state for all installed VLANs
  staging: dpaa2-ethsw: destroy workqueue after deregistering the
    notifiers
  staging: dpaa2-ethsw: read the port state from firmware
  staging: dpaa2-ethsw: check if there is space for a new VLAN

 drivers/staging/fsl-dpaa2/ethsw/ethsw.c | 114 +++++++++++++++++++-----
 1 file changed, 90 insertions(+), 24 deletions(-)

-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

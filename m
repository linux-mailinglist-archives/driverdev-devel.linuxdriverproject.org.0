Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F312D10AFA4
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 Nov 2019 13:40:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2364422767;
	Wed, 27 Nov 2019 12:40:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fvb1MCdvMnJ5; Wed, 27 Nov 2019 12:40:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id DC3D420519;
	Wed, 27 Nov 2019 12:40:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E76431BF3A0
 for <devel@linuxdriverproject.org>; Wed, 27 Nov 2019 12:40:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E0C5386F9E
 for <devel@linuxdriverproject.org>; Wed, 27 Nov 2019 12:40:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TI3MwhmeITgk for <devel@linuxdriverproject.org>;
 Wed, 27 Nov 2019 12:40:04 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from faui03.informatik.uni-erlangen.de
 (faui03.informatik.uni-erlangen.de [131.188.30.103])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8915886EAC
 for <devel@driverdev.osuosl.org>; Wed, 27 Nov 2019 12:40:04 +0000 (UTC)
Received: from faui04s.informatik.uni-erlangen.de
 (faui04s.informatik.uni-erlangen.de [IPv6:2001:638:a000:4130:131:188:30:149])
 by faui03.informatik.uni-erlangen.de (Postfix) with ESMTP id 89A2C24163F;
 Wed, 27 Nov 2019 13:31:02 +0100 (CET)
Received: by faui04s.informatik.uni-erlangen.de (Postfix, from userid 66121)
 id 7016815E0581; Wed, 27 Nov 2019 13:31:02 +0100 (CET)
From: Dorothea Ehrl <dorothea.ehrl@fau.de>
To: manishc@marvell.com, GR-Linux-NIC-Dev@marvell.com,
 gregkh@linuxfoundation.org, netdev@vger.kernel.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/5] staging/qlge: add blank lines after declarations
Date: Wed, 27 Nov 2019 13:30:49 +0100
Message-Id: <20191127123052.16424-2-dorothea.ehrl@fau.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191127123052.16424-1-dorothea.ehrl@fau.de>
References: <20191127123052.16424-1-dorothea.ehrl@fau.de>
MIME-Version: 1.0
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
Cc: Vanessa Hack <vanessa.hack@fau.de>, Dorothea Ehrl <dorothea.ehrl@fau.de>,
 linux-kernel@i4.cs.fau.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch fixes "WARNING: Missing a blank line after declarations" by
checkpatch.pl.

Signed-off-by: Dorothea Ehrl <dorothea.ehrl@fau.de>
Co-developed-by: Vanessa Hack <vanessa.hack@fau.de>
Signed-off-by: Vanessa Hack <vanessa.hack@fau.de>
---
 drivers/staging/qlge/qlge_ethtool.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/staging/qlge/qlge_ethtool.c b/drivers/staging/qlge/qlge_ethtool.c
index 0c3f8eb34094..c03153b95844 100644
--- a/drivers/staging/qlge/qlge_ethtool.c
+++ b/drivers/staging/qlge/qlge_ethtool.c
@@ -332,6 +332,7 @@ static void ql_update_stats(struct ql_adapter *qdev)
 static void ql_get_strings(struct net_device *dev, u32 stringset, u8 *buf)
 {
 	int index;
+
 	switch (stringset) {
 	case ETH_SS_TEST:
 		memcpy(buf, *ql_gstrings_test, QLGE_TEST_LEN * ETH_GSTRING_LEN);
@@ -412,6 +413,7 @@ static void ql_get_drvinfo(struct net_device *ndev,
 			   struct ethtool_drvinfo *drvinfo)
 {
 	struct ql_adapter *qdev = netdev_priv(ndev);
+
 	strlcpy(drvinfo->driver, qlge_driver_name, sizeof(drvinfo->driver));
 	strlcpy(drvinfo->version, qlge_driver_version,
 		sizeof(drvinfo->version));
@@ -703,12 +705,14 @@ static int ql_set_pauseparam(struct net_device *netdev,
 static u32 ql_get_msglevel(struct net_device *ndev)
 {
 	struct ql_adapter *qdev = netdev_priv(ndev);
+
 	return qdev->msg_enable;
 }

 static void ql_set_msglevel(struct net_device *ndev, u32 value)
 {
 	struct ql_adapter *qdev = netdev_priv(ndev);
+
 	qdev->msg_enable = value;
 }

--
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

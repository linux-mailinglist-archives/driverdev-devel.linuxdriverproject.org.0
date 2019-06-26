Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BD3056371
	for <lists+driverdev-devel@lfdr.de>; Wed, 26 Jun 2019 09:35:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 402F52154E;
	Wed, 26 Jun 2019 07:35:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xqz9n7qdTVnR; Wed, 26 Jun 2019 07:35:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E557E2153B;
	Wed, 26 Jun 2019 07:35:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B6A821BF33A
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 07:35:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B20C687568
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 07:35:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id l812O+bKmtPs for <devel@linuxdriverproject.org>;
 Wed, 26 Jun 2019 07:35:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx-rz-3.rrze.uni-erlangen.de (mx-rz-3.rrze.uni-erlangen.de
 [131.188.11.22])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E29E287463
 for <devel@driverdev.osuosl.org>; Wed, 26 Jun 2019 07:35:46 +0000 (UTC)
Received: from mx-exchlnx-3.rrze.uni-erlangen.de
 (mx-exchlnx-3.rrze.uni-erlangen.de [IPv6:2001:638:a000:1025::39])
 by mx-rz-3.rrze.uni-erlangen.de (Postfix) with ESMTP id 45YZZQ6r9Vz1yxy;
 Wed, 26 Jun 2019 09:35:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fau.de; s=fau-2013;
 t=1561534542; bh=gp6Tguj4g2VW5LhH/dMc4rjnnkBx6aSvu3nTG+WqRsU=;
 h=From:To:CC:Subject:Date:In-Reply-To:References:From:To:CC:
 Subject;
 b=kg3DYwAwifl4yXQA74DEw0vh448m38TK1+tmAg5FuLoQh3gHtidYD59WMBR1fWFvh
 mcgmSPREMcQXaiYKa7FU5vuhT7CHUAd5UEEZd7d5Ky7QVU/v7/knKtZwHMchnmjlUG
 GOxBw07iqqXnSFUsbA2Yosjh+09le53ixh1lHQpR2R05Zq6qCmdLvDE3xBNhVa5PyO
 GAzLcZjlh5wAa3/FrdAy9dJjCIFo1Dg72FG2dzMxoudvMd542jb8chIqHMprGN0wpd
 JBQ7bktbtocUdZY6mdksZX1b3qamiVErAqfVODKgrP3FL2JB8vOvpLx8JAes16BhR8
 uSCxx0zaqmgIg==
X-Virus-Scanned: amavisd-new at boeck2.rrze.uni-erlangen.de (RRZE)
X-RRZE-Flag: Not-Spam
Received: from hbt1.exch.fau.de (hbt1.exch.fau.de [10.15.8.13])
 by mx-exchlnx-3.rrze.uni-erlangen.de (Postfix) with ESMTP id 45YZZN51vcz1yyQ; 
 Wed, 26 Jun 2019 09:35:40 +0200 (CEST)
Received: from MBX3.exch.uni-erlangen.de (10.15.8.45) by hbt1.exch.fau.de
 (10.15.8.13) with Microsoft SMTP Server (TLS) id 14.3.439.0; Wed, 26 Jun 2019
 09:35:26 +0200
Received: from TroubleWorld.fritz.box (95.90.221.207) by
 MBX3.exch.uni-erlangen.de (10.15.8.45) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1591.10; Wed, 26 Jun 2019 09:35:25 +0200
From: Fabian Krueger <fabian.krueger@fau.de>
To: 
Subject: [PATCH 3/8] staging: kpc2000: introduce usage of __packed
Date: Wed, 26 Jun 2019 09:35:21 +0200
Message-ID: <20190626073531.8946-4-fabian.krueger@fau.de>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190626073531.8946-1-fabian.krueger@fau.de>
References: <20190625115251.GA28859@kadam>
 <20190626073531.8946-1-fabian.krueger@fau.de>
MIME-Version: 1.0
X-Originating-IP: [95.90.221.207]
X-ClientProxiedBy: MBX3.exch.uni-erlangen.de (10.15.8.45) To
 MBX3.exch.uni-erlangen.de (10.15.8.45)
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
Cc: devel@driverdev.osuosl.org, linux-kernel@i4.cs.fau.de,
 fabian.krueger@fau.de, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Michael Scheiderer <michael.scheiderer@fau.de>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Replaced __attribute__((packed)) with __packed. Both ways of attributing
are equivalent, but being shorter, __packed should be preferred.
This refactoring makes the core more readable.

Signed-off-by: Fabian Krueger <fabian.krueger@fau.de>
Signed-off-by: Michael Scheiderer <michael.scheiderer@fau.de>
Cc: <linux-kernel@i4.cs.fau.de>
---
 drivers/staging/kpc2000/kpc2000_spi.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc2000_spi.c b/drivers/staging/kpc2000/kpc2000_spi.c
index c8fdb7e868f8..42d32de2230e 100644
--- a/drivers/staging/kpc2000/kpc2000_spi.c
+++ b/drivers/staging/kpc2000/kpc2000_spi.c
@@ -114,7 +114,7 @@ struct kp_spi_controller_state {
 
 union kp_spi_config {
 	/* use this to access individual elements */
-	struct __attribute__((packed)) spi_config_bitfield {
+	struct __packed spi_config_bitfield {
 		unsigned int pha       : 1; /* spim_clk Phase      */
 		unsigned int pol       : 1; /* spim_clk Polarity   */
 		unsigned int epol      : 1; /* spim_csx Polarity   */
@@ -133,7 +133,7 @@ union kp_spi_config {
 };
 
 union kp_spi_status {
-	struct __attribute__((packed)) spi_status_bitfield {
+	struct __packed spi_status_bitfield {
 		unsigned int rx    :  1; /* Rx Status       */
 		unsigned int tx    :  1; /* Tx Status       */
 		unsigned int eo    :  1; /* End of Transfer */
@@ -148,7 +148,7 @@ union kp_spi_status {
 };
 
 union kp_spi_ffctrl {
-	struct __attribute__((packed)) spi_ffctrl_bitfield {
+	struct __packed spi_ffctrl_bitfield {
 		unsigned int ffstart :  1; /* FIFO Start */
 		unsigned int         : 31;
 	} bitfield;
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EA3A654DD2
	for <lists+driverdev-devel@lfdr.de>; Tue, 25 Jun 2019 13:36:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 995F385EF1;
	Tue, 25 Jun 2019 11:36:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id He6TaxSdqhVQ; Tue, 25 Jun 2019 11:36:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4AE0885E99;
	Tue, 25 Jun 2019 11:36:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0EBB01BF20B
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2019 11:36:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0C130878CE
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2019 11:36:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r3FWsJ1yC9Tn for <devel@linuxdriverproject.org>;
 Tue, 25 Jun 2019 11:36:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx-rz-3.rrze.uni-erlangen.de (mx-rz-3.rrze.uni-erlangen.de
 [131.188.11.22])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 343058788B
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2019 11:36:48 +0000 (UTC)
Received: from mx-exchlnx-3.rrze.uni-erlangen.de
 (mx-exchlnx-3.rrze.uni-erlangen.de [IPv6:2001:638:a000:1025::39])
 by mx-rz-3.rrze.uni-erlangen.de (Postfix) with ESMTP id 45Y3mp4HHbz2095;
 Tue, 25 Jun 2019 13:27:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fau.de; s=fau-2013;
 t=1561462074; bh=sKhs0CkAhJnHxLD1lwQ+u94XLPegG9a5maTR0WjXfGQ=;
 h=From:To:CC:Subject:Date:In-Reply-To:References:From:To:CC:
 Subject;
 b=W7HIqLrA+FlWjhX2WSCDm8TPE1VePiLPLqsrtE5yzg2ZS6uebufrhJ55Tj5yOsOW0
 eTfxy7i1BdYMmeC/y5thQ12CjOw0ip9D0c2PLWMcWTlnA6frSvEUK7OfdtXInsTtMd
 nsj8MD1dEYPcxazAtuLSXh/sNEAOrG6yumEyQORRYf3tGHL1n002OItOzYdtcxM7WZ
 uRop+b2+FCHl+19KXLWPvRYJH2SUhLb+lxGbm4Y58g8dGn4OhzwGoCecshxJWdQ0nt
 2L93sCxk7/tm+bpL5nEqJbWV/fZXh0gUbemKaad7L8wKeTQ95RkD6KlHolb2s7DXDT
 bE+a1Jum5efWQ==
X-Virus-Scanned: amavisd-new at boeck4.rrze.uni-erlangen.de (RRZE)
X-RRZE-Flag: Not-Spam
Received: from hbt1.exch.fau.de (hbt1.exch.fau.de [10.15.8.13])
 by mx-exchlnx-3.rrze.uni-erlangen.de (Postfix) with ESMTP id 45Y3mm2vMKz1yKc; 
 Tue, 25 Jun 2019 13:27:52 +0200 (CEST)
Received: from MBX3.exch.uni-erlangen.de (10.15.8.45) by hbt1.exch.fau.de
 (10.15.8.13) with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 25 Jun 2019
 13:27:21 +0200
Received: from TroubleWorld.pool.uni-erlangen.de (10.21.22.37) by
 MBX3.exch.uni-erlangen.de (10.15.8.45) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1591.10; Tue, 25 Jun 2019 13:27:19 +0200
From: Fabian Krueger <fabian.krueger@fau.de>
To: 
Subject: [PATCH 3/8] staging: kpc2000: introduce usage of __packed
Date: Tue, 25 Jun 2019 13:27:14 +0200
Message-ID: <20190625112725.10154-4-fabian.krueger@fau.de>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190625112725.10154-1-fabian.krueger@fau.de>
References: <20190625112725.10154-1-fabian.krueger@fau.de>
MIME-Version: 1.0
X-Originating-IP: [10.21.22.37]
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
Cc: fabian.krueger@fau.de, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Michael Scheiderer <michael.scheiderer@fau.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Replaced __attribute__((packed)) with __packed. Both ways of attributing
are equivalent, but being shorter, __packed should be preferred.
This refactoring makes the core more readable.

Signed-off-by: Fabian Krueger <fabian.krueger@fau.de>
Signed-off-by: Michael Scheiderer <michael.scheiderer@fau.de>
---
 drivers/staging/kpc2000/kpc2000_spi.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc2000_spi.c b/drivers/staging/kpc2000/kpc2000_spi.c
index e0e7703c6e53..253a9c150d33 100644
--- a/drivers/staging/kpc2000/kpc2000_spi.c
+++ b/drivers/staging/kpc2000/kpc2000_spi.c
@@ -141,7 +141,7 @@ struct kp_spi_controller_state {
 
 union kp_spi_config {
 	/* use this to access individual elements */
-	struct __attribute__((packed)) spi_config_bitfield {
+	struct __packed spi_config_bitfield {
 		unsigned int pha       : 1; /* spim_clk Phase      */
 		unsigned int pol       : 1; /* spim_clk Polarity   */
 		unsigned int epol      : 1; /* spim_csx Polarity   */
@@ -160,7 +160,7 @@ union kp_spi_config {
 };
 
 union kp_spi_status {
-	struct __attribute__((packed)) spi_status_bitfield {
+	struct __packed spi_status_bitfield {
 		unsigned int rx    :  1; /* Rx Status       */
 		unsigned int tx    :  1; /* Tx Status       */
 		unsigned int eo    :  1; /* End of Transfer */
@@ -175,7 +175,7 @@ union kp_spi_status {
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

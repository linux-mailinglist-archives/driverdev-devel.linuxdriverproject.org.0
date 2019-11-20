Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AC51103BE6
	for <lists+driverdev-devel@lfdr.de>; Wed, 20 Nov 2019 14:39:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5E85187C2E;
	Wed, 20 Nov 2019 13:39:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ch5w8KtGPmZX; Wed, 20 Nov 2019 13:39:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id DA68987C25;
	Wed, 20 Nov 2019 13:38:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 427FF1BF379
 for <devel@linuxdriverproject.org>; Wed, 20 Nov 2019 13:38:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3F85E86C20
 for <devel@linuxdriverproject.org>; Wed, 20 Nov 2019 13:38:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jHIVQI2Gi8uI for <devel@linuxdriverproject.org>;
 Wed, 20 Nov 2019 13:38:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A676E86C08
 for <devel@driverdev.osuosl.org>; Wed, 20 Nov 2019 13:38:57 +0000 (UTC)
Received: from localhost.localdomain (unknown [118.189.143.39])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6FB93224FA;
 Wed, 20 Nov 2019 13:38:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574257137;
 bh=/9NJm8FBtb+c8mCuOKpMv1HbYFsrFzhxLk/5+F4za0Q=;
 h=From:To:Cc:Subject:Date:From;
 b=het8AsdSOJYIoPR+Z1Dscdm1oyCu3expVdjZvTiAsvRhm/skPdqXWGM9V+QMfnzUy
 mQ1JJfbVUmwa1sfsE9Supw2Pc3DG6JyYN7vOtXJ/VtqNnmCBrPqKyytOaj9ILqwdPr
 CsnSMXPEbe7F1r2KI7qFQBlpUbmARWXj4gY5ghuw=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] staging: pi433: Fix Kconfig indentation
Date: Wed, 20 Nov 2019 21:38:53 +0800
Message-Id: <20191120133853.13308-1-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Krzysztof Kozlowski <krzk@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Adjust indentation from spaces to tab (+optional two spaces) as in
coding style with command like:
	$ sed -e 's/^        /\t/' -i */Kconfig

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 drivers/staging/pi433/Kconfig | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/pi433/Kconfig b/drivers/staging/pi433/Kconfig
index 8acde0814206..dd9e4709d1a8 100644
--- a/drivers/staging/pi433/Kconfig
+++ b/drivers/staging/pi433/Kconfig
@@ -1,17 +1,17 @@
 # SPDX-License-Identifier: GPL-2.0
 config PI433
-        tristate "Pi433 - a 433MHz radio module for Raspberry Pi"
-        depends on SPI
-        help
-          This option allows you to enable support for the radio module Pi433.
+	tristate "Pi433 - a 433MHz radio module for Raspberry Pi"
+	depends on SPI
+	help
+	  This option allows you to enable support for the radio module Pi433.
 
-          Pi433 is a shield that fits onto the GPIO header of a Raspberry Pi
-          or compatible. It extends the Raspberry Pi with the option, to
-          send and receive data in the 433MHz ISM band - for example to
-          communicate between two systems without using ethernet or bluetooth
-          or for control or read sockets, actors, sensors, widely available
-          for low price.
+	  Pi433 is a shield that fits onto the GPIO header of a Raspberry Pi
+	  or compatible. It extends the Raspberry Pi with the option, to
+	  send and receive data in the 433MHz ISM band - for example to
+	  communicate between two systems without using ethernet or bluetooth
+	  or for control or read sockets, actors, sensors, widely available
+	  for low price.
 
-          For details or the option to buy, please visit https://pi433.de/en.html
+	  For details or the option to buy, please visit https://pi433.de/en.html
 
-          If in doubt, say N here, but saying yes most probably won't hurt
+	  If in doubt, say N here, but saying yes most probably won't hurt
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

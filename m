Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9320F26D94E
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Sep 2020 12:42:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id ED0CA2E184;
	Thu, 17 Sep 2020 10:42:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UFSfTbbo82Ns; Thu, 17 Sep 2020 10:42:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 85E8C20010;
	Thu, 17 Sep 2020 10:42:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EA1231BF387
 for <devel@linuxdriverproject.org>; Thu, 17 Sep 2020 10:42:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id DE4232E169
 for <devel@linuxdriverproject.org>; Thu, 17 Sep 2020 10:42:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id q3x--h5GcK-x for <devel@linuxdriverproject.org>;
 Thu, 17 Sep 2020 10:42:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 9A92320406
 for <devel@driverdev.osuosl.org>; Thu, 17 Sep 2020 10:42:22 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5d2.dynamic.kabel-deutschland.de
 [95.90.213.210])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F0E3A21655;
 Thu, 17 Sep 2020 10:42:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1600339342;
 bh=gy8U2QyK7FA3oszU5eMf1AkLkHOVCWR0cFC/jkI+EWI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=yb56uqW5yXz27xtwSTlfMPWQ1mVCPPSRzfWV4cJLJFtdqLC7IuJIsPRCDHL9Ca7/+
 GLy7yKKoYr48K5qUoXEzvqKDr4nsW+G1L6MigshWaZ40Y24fOsHetFK/4Uukd7/BKW
 Gg/0eKsUDFx7Rs1UdBW7gdu2sIpJ3qq54Cov0pPs=
Received: from mchehab by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1kIrMp-005WZb-P0; Thu, 17 Sep 2020 12:42:19 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: [PATCH v4 5/8] staging: hikey9xx: phy-hi3670-usb3.txt: use a
 consistent namespace
Date: Thu, 17 Sep 2020 12:42:09 +0200
Message-Id: <49c2f648516e62d75d339edf42a029bac138e6c0.1600338981.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1600338981.git.mchehab+huawei@kernel.org>
References: <cover.1600338981.git.mchehab+huawei@kernel.org>
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
Cc: devel@driverdev.osuosl.org, Manivannan Sadhasivam <mani@kernel.org>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, linuxarm@huawei.com,
 linux-kernel@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
 John Stultz <john.stultz@linaro.org>, mauro.chehab@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

While this driver is not used yet, use a more consistent namespace,
similar to the PHY layer for Kirin 960 (hi3660).

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/hikey9xx/phy-hi3670-usb3.txt | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/hikey9xx/phy-hi3670-usb3.txt b/drivers/staging/hikey9xx/phy-hi3670-usb3.txt
index 4cb02612ff23..2fb27cb8beaf 100644
--- a/drivers/staging/hikey9xx/phy-hi3670-usb3.txt
+++ b/drivers/staging/hikey9xx/phy-hi3670-usb3.txt
@@ -2,7 +2,7 @@ Hisilicon Kirin970 usb PHY
 -----------------------
 
 Required properties:
-- compatible: should be "hisilicon,kirin970-usb-phy"
+- compatible: should be "hisilicon,hi3670-usb-phy"
 - #phy-cells: must be 0
 - hisilicon,pericrg-syscon: phandle of syscon used to control phy.
 - hisilicon,pctrl-syscon: phandle of syscon used to control phy.
@@ -14,7 +14,7 @@ Refer to phy/phy-bindings.txt for the generic PHY binding properties
 
 Example:
 	usb_phy: usbphy {
-		compatible = "hisilicon,kirin970-usb-phy";
+		compatible = "hisilicon,hi3670-usb-phy";
 		#phy-cells = <0>;
 		hisilicon,pericrg-syscon = <&crg_ctrl>;
 		hisilicon,pctrl-syscon = <&pctrl>;
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

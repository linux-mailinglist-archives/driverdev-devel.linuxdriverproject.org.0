Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 322DB1EEC4B
	for <lists+driverdev-devel@lfdr.de>; Thu,  4 Jun 2020 22:47:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 37327250D0;
	Thu,  4 Jun 2020 20:47:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0LFaifG4ziXX; Thu,  4 Jun 2020 20:47:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 41C43250F6;
	Thu,  4 Jun 2020 20:47:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9A9E21BF2C6
 for <devel@linuxdriverproject.org>; Thu,  4 Jun 2020 20:47:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 938C4883B1
 for <devel@linuxdriverproject.org>; Thu,  4 Jun 2020 20:47:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DShXmM4O91Bp for <devel@linuxdriverproject.org>;
 Thu,  4 Jun 2020 20:47:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1FF6C883AD
 for <devel@driverdev.osuosl.org>; Thu,  4 Jun 2020 20:47:09 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BA709207DA;
 Thu,  4 Jun 2020 20:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591303628;
 bh=hiaAwzVJpy/i3MeljSqcM9obMWOSjJ3c+lKfTDL8uyE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=HhV7RxA8GX9MoTK4ZG6J9tIq7e2p7UqyXeS26Cq7GRNHqnA+k1OIinwApPFMmoiD5
 KR6789jyQJGyD+quNG06HUc0dDUP7j/0/PLQ+F9x/6ZHIgzrIhnv40np+2gPagzPzb
 eKHlc429B83MFWMkI/c6H8qtid4d9fmyaceo05n0=
Received: from mchehab by mail.kernel.org with local (Exim 4.93)
 (envelope-from <mchehab@kernel.org>)
 id 1jgwlW-0004Ah-Qv; Thu, 04 Jun 2020 22:47:06 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Subject: [PATCH 3/5] Revert "media: atomisp: add Asus Transform T101HA ACPI
 vars"
Date: Thu,  4 Jun 2020 22:47:03 +0200
Message-Id: <c44ba22c548fece250d147edf748daf5c2589b12.1591303518.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1591303518.git.mchehab+huawei@kernel.org>
References: <cover.1591303518.git.mchehab+huawei@kernel.org>
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
Cc: devel@driverdev.osuosl.org,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Sakari Ailus <sakari.ailus@linux.intel.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Now that the EFI _DSM table is parsed by the driver, we don't
need a DMI match anymore for Asus Transform T101HA.

This reverts commit 0a76fd8e8d202dcaabc714850205d5d75c9b8271.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 .../media/atomisp/pci/atomisp_gmin_platform.c    | 16 ----------------
 1 file changed, 16 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp_gmin_platform.c b/drivers/staging/media/atomisp/pci/atomisp_gmin_platform.c
index 5f34b2be5153..cb02806274d1 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_gmin_platform.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_gmin_platform.c
@@ -328,15 +328,6 @@ static struct gmin_cfg_var i8880_vars[] = {
 	{},
 };
 
-static struct gmin_cfg_var asus_vars[] = {
-	{"OVTI2680:00_CsiPort", "1"},
-	{"OVTI2680:00_CsiLanes", "1"},
-	{"OVTI2680:00_CsiFmt", "15"},
-	{"OVTI2680:00_CsiBayer", "0"},
-	{"OVTI2680:00_CamClk", "1"},
-	{},
-};
-
 static const struct dmi_system_id gmin_vars[] = {
 	{
 		.ident = "BYT-T FFD8",
@@ -374,13 +365,6 @@ static const struct dmi_system_id gmin_vars[] = {
 		},
 		.driver_data = i8880_vars,
 	},
-	{
-		.ident = "T101HA",
-		.matches = {
-			DMI_MATCH(DMI_BOARD_NAME, "T101HA"),
-		},
-		.driver_data = asus_vars,
-	},
 	{}
 };
 
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

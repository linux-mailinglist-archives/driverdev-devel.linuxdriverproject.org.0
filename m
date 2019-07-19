Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EEEE6D9BE
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Jul 2019 05:58:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E24A4868CB;
	Fri, 19 Jul 2019 03:58:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Fs9se7mCXQgl; Fri, 19 Jul 2019 03:58:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 99D7D86519;
	Fri, 19 Jul 2019 03:58:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 48A521BF96A
 for <devel@linuxdriverproject.org>; Fri, 19 Jul 2019 03:58:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 41AAB203D8
 for <devel@linuxdriverproject.org>; Fri, 19 Jul 2019 03:58:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AWq9cSasmI5e for <devel@linuxdriverproject.org>;
 Fri, 19 Jul 2019 03:58:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 769192034B
 for <devel@driverdev.osuosl.org>; Fri, 19 Jul 2019 03:58:05 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9E69A2184E;
 Fri, 19 Jul 2019 03:58:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563508685;
 bh=Ne7t7tCO1fPo06Q6Oa5jA1SUrTDIgzPaSuO3g+9Qtlk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=qbl/3kOykawDVhQZFaWax3PLoO4Tfl1MUPFEBM/Ub/EWlCrSZfwy63CNYd16RmRyo
 e75zLi9J7Z8FyIRM0/BuonflBfIwUpKiSSWzOiZwFR2dp8HMA3gwOAE2BulirUcRD6
 PKa+ILwPh0YGuGMug4avahOn3f6re1gGsqDgb+gc=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.2 032/171] staging: kpc2000: report error status to
 spi core
Date: Thu, 18 Jul 2019 23:54:23 -0400
Message-Id: <20190719035643.14300-32-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190719035643.14300-1-sashal@kernel.org>
References: <20190719035643.14300-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
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
Cc: Sasha Levin <sashal@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org,
 Mao Wenan <maowenan@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Mao Wenan <maowenan@huawei.com>

[ Upstream commit 9164f336311863d3e9f80840f4a1cce2aee293bd ]

There is an error condition that's not reported to
the spi core in kp_spi_transfer_one_message().
It should restore status value to m->status, and
return it in error path.

Signed-off-by: Mao Wenan <maowenan@huawei.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/staging/kpc2000/kpc_spi/spi_driver.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc_spi/spi_driver.c b/drivers/staging/kpc2000/kpc_spi/spi_driver.c
index 86df16547a92..2f535022dc03 100644
--- a/drivers/staging/kpc2000/kpc_spi/spi_driver.c
+++ b/drivers/staging/kpc2000/kpc_spi/spi_driver.c
@@ -333,7 +333,7 @@ kp_spi_transfer_one_message(struct spi_master *master, struct spi_message *m)
     list_for_each_entry(transfer, &m->transfers, transfer_list) {
         if (transfer->tx_buf == NULL && transfer->rx_buf == NULL && transfer->len) {
             status = -EINVAL;
-            break;
+            goto error;
         }
         
         /* transfer */
@@ -371,7 +371,7 @@ kp_spi_transfer_one_message(struct spi_master *master, struct spi_message *m)
             
             if (count != transfer->len) {
                 status = -EIO;
-                break;
+                goto error;
             }
         }
         
@@ -389,6 +389,10 @@ kp_spi_transfer_one_message(struct spi_master *master, struct spi_message *m)
     /* done work */
     spi_finalize_current_message(master);
     return 0;
+
+ error:
+    m->status = status;
+    return status;
 }
 
 static void
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

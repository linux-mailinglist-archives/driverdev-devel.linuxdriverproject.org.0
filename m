Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B37EB119356
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Dec 2019 22:10:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6235322816;
	Tue, 10 Dec 2019 21:10:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oWTdcMZZ-ieZ; Tue, 10 Dec 2019 21:10:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8B27F22786;
	Tue, 10 Dec 2019 21:10:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D3DB01BF580
 for <devel@linuxdriverproject.org>; Tue, 10 Dec 2019 21:10:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D09A087113
 for <devel@linuxdriverproject.org>; Tue, 10 Dec 2019 21:10:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y6nfWUcPtNhA for <devel@linuxdriverproject.org>;
 Tue, 10 Dec 2019 21:10:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 636C8870C7
 for <devel@driverdev.osuosl.org>; Tue, 10 Dec 2019 21:10:02 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 72327246A4;
 Tue, 10 Dec 2019 21:10:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576012202;
 bh=jTpiUlKsyB/ccCAr0py+oekD/sHAUrfYfWldZKhQytQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=S5S6Vkbrfe3foMZUaOFNqxo9GIRqiEZ5yUoqdjT7hADF4BXuQtRzo5xohxd7+PQR9
 K4bALqV3/3ERnXl8+g4jbZuFjGq6YgWMGTih+Vp+8Z606ey0sRV4+ahkmBdqx7lMQy
 +jnCDpqEovf/grBGJ8Osl3hquoA+Njx+tNjBdoC8=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 155/350] staging: wilc1000: potential corruption
 in wilc_parse_join_bss_param()
Date: Tue, 10 Dec 2019 16:04:20 -0500
Message-Id: <20191210210735.9077-116-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191210210735.9077-1-sashal@kernel.org>
References: <20191210210735.9077-1-sashal@kernel.org>
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
Cc: Sasha Levin <sashal@kernel.org>, devel@driverdev.osuosl.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-wireless@vger.kernel.org, Adham Abozaeid <adham.abozaeid@microchip.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Dan Carpenter <dan.carpenter@oracle.com>

[ Upstream commit d59dc92f1bccd5acde793aebdbb4f7121cf3f9af ]

The "rates_len" value needs to be capped so that the memcpy() doesn't
copy beyond the end of the array.

Fixes: c5c77ba18ea6 ("staging: wilc1000: Add SDIO/SPI 802.11 driver")
Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
Reviewed-by: Adham Abozaeid <adham.abozaeid@microchip.com>
Link: https://lore.kernel.org/r/20191017091832.GB31278@mwanda
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/staging/wilc1000/wilc_hif.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/staging/wilc1000/wilc_hif.c b/drivers/staging/wilc1000/wilc_hif.c
index d3d9ea284816a..77d0732f451be 100644
--- a/drivers/staging/wilc1000/wilc_hif.c
+++ b/drivers/staging/wilc1000/wilc_hif.c
@@ -473,6 +473,8 @@ void *wilc_parse_join_bss_param(struct cfg80211_bss *bss,
 	rates_ie = cfg80211_find_ie(WLAN_EID_SUPP_RATES, ies->data, ies->len);
 	if (rates_ie) {
 		rates_len = rates_ie[1];
+		if (rates_len > WILC_MAX_RATES_SUPPORTED)
+			rates_len = WILC_MAX_RATES_SUPPORTED;
 		param->supp_rates[0] = rates_len;
 		memcpy(&param->supp_rates[1], rates_ie + 2, rates_len);
 	}
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

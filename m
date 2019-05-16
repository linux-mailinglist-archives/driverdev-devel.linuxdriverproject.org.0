Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B49C721017
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 May 2019 23:38:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 82A2684FC9;
	Thu, 16 May 2019 21:38:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id W-RtYkIfml8T; Thu, 16 May 2019 21:38:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C3C6F840BF;
	Thu, 16 May 2019 21:38:22 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B794B1C162A
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 16 May 2019 21:38:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0FBAC87346
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 16 May 2019 21:38:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id D7RSM6bFZIOv
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 16 May 2019 21:38:17 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from kadath.azazel.net (kadath.azazel.net [81.187.231.250])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 754318733E
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 16 May 2019 21:38:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=azazel.net; 
 s=20190108;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=p0mEzeiXLmbwHV627gd9wNn0Itf8yfwLqXhDdHo2FfE=; b=fz1UcxEBGYaK/PFJrhatsFfH7z
 rJy5/fV2dfOG8OM8LP0Zr4K+Cjj+sA3tKj05gkthnPp+8VGi/tgw+b1WmGZehvAVs6VhTb/xV+kT1
 4eIk/rKtPszsJQ9Lpr5Vxq9APZ19gXmc6l5AnfIVkSCSaGymUBRoS+60+U1NY19rh7hgSO0rw8xfJ
 nECieuwkqB5DXfk/65GNy6ZYgCYXHy6dxb1mtjZEsAu+4YpjHIJviNs708wxpEkIWHW8RBuIumFxk
 veWhMO7z2eAA05MwqrYTUM3S9sbfLSXj/PipuQX93AEowZwhlmkKMWUC0BosyVfodaB9VPX68Wnbq
 c4MTc5tw==;
Received: from ulthar.dreamlands ([192.168.96.2])
 by kadath.azazel.net with esmtp (Exim 4.89)
 (envelope-from <jeremy@azazel.net>)
 id 1hRO4t-0000d7-Nb; Thu, 16 May 2019 22:38:15 +0100
From: Jeremy Sowden <jeremy@azazel.net>
To: Linux Driver Project Developer List
 <driverdev-devel@linuxdriverproject.org>
Subject: [PATCH v2 9/9] staging: kpc2000: declare all kp device attributes as
 static.
Date: Thu, 16 May 2019 22:38:14 +0100
Message-Id: <20190516213814.22232-10-jeremy@azazel.net>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190516213814.22232-1-jeremy@azazel.net>
References: <20190516200411.17715-1-jeremy@azazel.net>
 <20190516213814.22232-1-jeremy@azazel.net>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 192.168.96.2
X-SA-Exim-Mail-From: jeremy@azazel.net
X-SA-Exim-Scanned: No (on kadath.azazel.net); SAEximRunCond expanded to false
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
Cc: Greg KH <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The definitions are only used to populate the kp_attr_list attribute
array, so declare them as static.

Fixes the following sparse warnings:

  drivers/staging/kpc2000/kpc2000/core.c:152:1: warning: symbol 'dev_attr_ssid' was not declared. Should it be static?
  drivers/staging/kpc2000/kpc2000/core.c:153:1: warning: symbol 'dev_attr_ddna' was not declared. Should it be static?
  drivers/staging/kpc2000/kpc2000/core.c:154:1: warning: symbol 'dev_attr_card_id' was not declared. Should it be static?
  drivers/staging/kpc2000/kpc2000/core.c:155:1: warning: symbol 'dev_attr_hw_rev' was not declared. Should it be static?
  drivers/staging/kpc2000/kpc2000/core.c:156:1: warning: symbol 'dev_attr_build' was not declared. Should it be static?
  drivers/staging/kpc2000/kpc2000/core.c:157:1: warning: symbol 'dev_attr_build_date' was not declared. Should it be static?
  drivers/staging/kpc2000/kpc2000/core.c:158:1: warning: symbol 'dev_attr_build_time' was not declared. Should it be static?
  drivers/staging/kpc2000/kpc2000/core.c:159:1: warning: symbol 'dev_attr_cpld_reg' was not declared. Should it be static?
  drivers/staging/kpc2000/kpc2000/core.c:161:1: warning: symbol 'dev_attr_cpld_reconfigure' was not declared. Should it be static?

Signed-off-by: Jeremy Sowden <jeremy@azazel.net>
---
 drivers/staging/kpc2000/kpc2000/core.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc2000/core.c b/drivers/staging/kpc2000/kpc2000/core.c
index 6fa3dd6531ef..6a06153a20ec 100644
--- a/drivers/staging/kpc2000/kpc2000/core.c
+++ b/drivers/staging/kpc2000/kpc2000/core.c
@@ -111,15 +111,15 @@ static ssize_t cpld_reconfigure(struct device *dev,
 	return count;
 }
 
-DEVICE_ATTR_RO(ssid);
-DEVICE_ATTR_RO(ddna);
-DEVICE_ATTR_RO(card_id);
-DEVICE_ATTR_RO(hw_rev);
-DEVICE_ATTR_RO(build);
-DEVICE_ATTR_RO(build_date);
-DEVICE_ATTR_RO(build_time);
-DEVICE_ATTR_RO(cpld_reg);
-DEVICE_ATTR(cpld_reconfigure, 0220, NULL, cpld_reconfigure);
+static DEVICE_ATTR_RO(ssid);
+static DEVICE_ATTR_RO(ddna);
+static DEVICE_ATTR_RO(card_id);
+static DEVICE_ATTR_RO(hw_rev);
+static DEVICE_ATTR_RO(build);
+static DEVICE_ATTR_RO(build_date);
+static DEVICE_ATTR_RO(build_time);
+static DEVICE_ATTR_RO(cpld_reg);
+static DEVICE_ATTR(cpld_reconfigure, 0220, NULL, cpld_reconfigure);
 
 static const struct attribute *kp_attr_list[] = {
 	&dev_attr_ssid.attr,
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

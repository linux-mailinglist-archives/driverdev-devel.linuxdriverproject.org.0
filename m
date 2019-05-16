Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0485D20F7F
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 May 2019 22:10:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8AD7D8668E;
	Thu, 16 May 2019 20:10:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uzESfelK7qKT; Thu, 16 May 2019 20:10:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8A44B86741;
	Thu, 16 May 2019 20:10:34 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9C31E1BF371
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 16 May 2019 20:10:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9742A87430
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 16 May 2019 20:10:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4yv4nL5RbVyu
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 16 May 2019 20:10:32 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from kadath.azazel.net (kadath.azazel.net [81.187.231.250])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 07E408742D
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 16 May 2019 20:10:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=azazel.net; 
 s=20190108;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3EMrCv2+/p4Pl4psZexEJ64VjD9yUuhC/na5u6yWipM=; b=jwyG8/yFLcwl8R83xQQcHoFud1
 P2MHaD5K73MJnwP2JsqIy3aas5ztUQCToAFUe8hcVnGjo+0wzxyL1zB2LJUSJ4bPNtFTK00vPH8BN
 azyXP6tQEzzxt3y3n/5y+CZuQWW9FB+XT7XLfJK6/3mOKTAwRng1R6K2HY7WcSyW0WIM0uNjiomDA
 E5yLVp//AEPmjnUvVgIsvx+9iK6XJAoYN4y/zZoWnFYHImhQ3ydncBwio4VtDbidOnqX/0LEkyJgT
 1JHVm6ADGEnlpxLgSZoivCF+ofmalczVkMIcL4FmZV3FL129B+tycx/lVU5kDT52nBPAZFikBYX6V
 xRofoxgg==;
Received: from ulthar.dreamlands ([192.168.96.2])
 by kadath.azazel.net with esmtp (Exim 4.89)
 (envelope-from <jeremy@azazel.net>)
 id 1hRMbt-0007Ec-5t; Thu, 16 May 2019 21:04:13 +0100
From: Jeremy Sowden <jeremy@azazel.net>
To: Linux Driver Project Developer List
 <driverdev-devel@linuxdriverproject.org>
Subject: [PATCH 10/11] staging: kpc2000: define read-only kp device attributes
 as read-only.
Date: Thu, 16 May 2019 21:04:10 +0100
Message-Id: <20190516200411.17715-11-jeremy@azazel.net>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190516200411.17715-1-jeremy@azazel.net>
References: <20190516200411.17715-1-jeremy@azazel.net>
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

Most of the device attributes are read-only, so use DEVICE_ATTR_RO
to define them.

Signed-off-by: Jeremy Sowden <jeremy@azazel.net>
---
 drivers/staging/kpc2000/kpc2000/core.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc2000/core.c b/drivers/staging/kpc2000/kpc2000/core.c
index 7a5dd5f2300b..55e9038117a4 100644
--- a/drivers/staging/kpc2000/kpc2000/core.c
+++ b/drivers/staging/kpc2000/kpc2000/core.c
@@ -111,15 +111,15 @@ static ssize_t cpld_reconfigure(struct device *dev,
 	return count;
 }
 
-DEVICE_ATTR(ssid,             0444, ssid_show,       NULL);
-DEVICE_ATTR(ddna,             0444, ddna_show,       NULL);
-DEVICE_ATTR(card_id,          0444, card_id_show,    NULL);
-DEVICE_ATTR(hw_rev,           0444, hw_rev_show,     NULL);
-DEVICE_ATTR(build,            0444, build_show,      NULL);
-DEVICE_ATTR(build_date,       0444, build_date_show, NULL);
-DEVICE_ATTR(build_time,       0444, build_time_show, NULL);
-DEVICE_ATTR(cpld_reg,         0444, cpld_reg_show,   NULL);
-DEVICE_ATTR(cpld_reconfigure, 0220, NULL,            cpld_reconfigure);
+DEVICE_ATTR_RO(ssid);
+DEVICE_ATTR_RO(ddna);
+DEVICE_ATTR_RO(card_id);
+DEVICE_ATTR_RO(hw_rev);
+DEVICE_ATTR_RO(build);
+DEVICE_ATTR_RO(build_date);
+DEVICE_ATTR_RO(build_time);
+DEVICE_ATTR_RO(cpld_reg);
+DEVICE_ATTR(cpld_reconfigure, 0220, NULL, cpld_reconfigure);
 
 static const struct attribute *kp_attr_list[] = {
 	&dev_attr_ssid.attr,
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

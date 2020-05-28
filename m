Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E90E1E6124
	for <lists+driverdev-devel@lfdr.de>; Thu, 28 May 2020 14:41:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6DD8725A0F;
	Thu, 28 May 2020 12:41:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eImbLMdO7OqN; Thu, 28 May 2020 12:41:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8D6EE2078C;
	Thu, 28 May 2020 12:41:51 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C293D1BF2F8
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 28 May 2020 12:41:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id BA41A882FC
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 28 May 2020 12:41:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HbkxoZ4Aozi1
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 28 May 2020 12:41:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa6.microchip.iphmx.com (esa6.microchip.iphmx.com
 [216.71.154.253])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 61AD788307
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 28 May 2020 12:41:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1590669707; x=1622205707;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=XNVYxOXijcfDaVkxWFEMx1vIj2xuYX4rEfvliHK4rFA=;
 b=sBh+ddEG/JF/UuFC7WDI3KbhuP6GAsv8jhr7Wf6J25z4v6hsJTBowsxZ
 gsCuCYHoveWjGVZTQ3a2Cq9gNkHg6YH/J03XfDe8xzVBU6pus7LGQ/tn/
 p/UQ0/JWBZ0lnMdUK2GoaRdighJK/SE6y4kH0AJjK9z/gHlN5hEGL5tb9
 p/oZjjtzDWtmQa0g3ZTKoaXXj1DSZOEabEaAR6jhv7jIRlHTKMHCqP4g+
 18K501EK/C3AZnj4NhvaOubVDqmD7b1EMeyww9qM5g8LWnRVFqdCnoYDF
 d0dIrdKeBo5fvaUjUMWTxoZL5bwmCLpJUdmUa2Aen55XOsLHPA4T5QYfu w==;
IronPort-SDR: uI2h0FcwQkTRcsuI6dEqE7CHSXOcqgY3LoESAKQp1ZVtdS0XzrwoNGWZoWZVeomSQI5wKMSkeV
 B9+Y+AZ6p2nJWnKPFqo7aB5DA4/JT6tvABlCj9G7oWhsS8pWszl7XCgM54vkd8yK3T2Et44fMs
 OKkmtyPjyc22GmyFeL00HGcHbmRWuc5IF9/UuI0OPwdxX2FCvNbl46mOE+kGRS2SO/6DrvQvnq
 tjn7TfQHqYrCofgfFqk1mtGFNKTS8vEqNYKJbSvj6OjaRU32D6rQ3DMJFYaoBiGC6w3H3LwJZ8
 zlI=
X-IronPort-AV: E=Sophos;i="5.73,444,1583218800"; d="scan'208";a="13787893"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 28 May 2020 05:41:46 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 28 May 2020 05:41:46 -0700
Received: from localhost.localdomain (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Thu, 28 May 2020 05:41:45 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: most: usb: init return value in default path of
 switch/case expression
Date: Thu, 28 May 2020 14:41:43 +0200
Message-ID: <1590669703-20004-1-git-send-email-christian.gromm@microchip.com>
X-Mailer: git-send-email 2.7.4
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
Cc: Christian Gromm <christian.gromm@microchip.com>,
 driverdev-devel@linuxdriverproject.org, linux-usb@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch avoids returning an uninitialized value in the default
path of the switch expression.

Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
---
 drivers/staging/most/usb/usb.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/most/usb/usb.c b/drivers/staging/most/usb/usb.c
index df5876c..2640c5b 100644
--- a/drivers/staging/most/usb/usb.c
+++ b/drivers/staging/most/usb/usb.c
@@ -215,6 +215,7 @@ static unsigned int get_stream_frame_size(struct device *dev,
 		break;
 	default:
 		dev_warn(dev, "Query frame size of non-streaming channel\n");
+		frame_size = 0;
 		break;
 	}
 	return frame_size;
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

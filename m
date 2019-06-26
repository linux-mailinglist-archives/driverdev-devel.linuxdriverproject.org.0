Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9881D5637B
	for <lists+driverdev-devel@lfdr.de>; Wed, 26 Jun 2019 09:37:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C3F8586090;
	Wed, 26 Jun 2019 07:37:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1lLX2PqQfmJZ; Wed, 26 Jun 2019 07:37:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5DD5186027;
	Wed, 26 Jun 2019 07:37:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9D5341BF33A
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 07:37:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 986CA86767
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 07:37:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bD7zoO6Geiw1 for <devel@linuxdriverproject.org>;
 Wed, 26 Jun 2019 07:37:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx-rz-2.rrze.uni-erlangen.de (mx-rz-2.rrze.uni-erlangen.de
 [131.188.11.21])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A0D3386717
 for <devel@driverdev.osuosl.org>; Wed, 26 Jun 2019 07:37:47 +0000 (UTC)
Received: from mx-exchlnx-2.rrze.uni-erlangen.de
 (mx-exchlnx-2.rrze.uni-erlangen.de [IPv6:2001:638:a000:1025::38])
 by mx-rz-2.rrze.uni-erlangen.de (Postfix) with ESMTP id 45YZcp2XXhzPkxq;
 Wed, 26 Jun 2019 09:37:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fau.de; s=fau-2013;
 t=1561534666; bh=bH4X2CuaDjpodRmVzF7XktQDkJsgyq/GdwVju7mHXLI=;
 h=From:To:CC:Subject:Date:In-Reply-To:References:From:To:CC:
 Subject;
 b=kVphtJm3q0TfRV8j/Cj90JKL3ZT4A+4ZQClujLq2ajz++cNJesb6deeDwSyjT/6Da
 AlU2Phd3tSyQekTY3GOAF/Q7PBSAV6Tz3DGWDkZlfrX8AI9lmsezeZfcCaLeKSYakq
 QcsM43P8BjA6/6Dv1DU3wi22z1jNGNiE+WCmJ12eJhyPyR7YCZOcab22G16eXAkdeD
 1rJMYnAY5MAKNqiudwL1pL57buyFXjQdoX5pW8ufqx7c2dLTHV4gNSo12By54caBNH
 35bMa83M8Il9bvjKg4KDpHAkWpvEHC7fKhvB6au/WiEz+NKB7kzbz86ANgaryuy3vk
 VBIIeE/SOsMyA==
X-Virus-Scanned: amavisd-new at boeck1.rrze.uni-erlangen.de (RRZE)
X-RRZE-Flag: Not-Spam
Received: from hbt1.exch.fau.de (hbt1.exch.fau.de [10.15.8.13])
 by mx-exchlnx-2.rrze.uni-erlangen.de (Postfix) with ESMTP id 45YZcm1LdCzPkDJ; 
 Wed, 26 Jun 2019 09:37:44 +0200 (CEST)
Received: from MBX3.exch.uni-erlangen.de (10.15.8.45) by hbt1.exch.fau.de
 (10.15.8.13) with Microsoft SMTP Server (TLS) id 14.3.439.0; Wed, 26 Jun 2019
 09:36:56 +0200
Received: from TroubleWorld.fritz.box (95.90.221.207) by
 MBX3.exch.uni-erlangen.de (10.15.8.45) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1591.10; Wed, 26 Jun 2019 09:36:56 +0200
From: Fabian Krueger <fabian.krueger@fau.de>
To: 
Subject: [PATCH 8/8] staging: kpc2000: remove needless 'break'
Date: Wed, 26 Jun 2019 09:35:26 +0200
Message-ID: <20190626073531.8946-9-fabian.krueger@fau.de>
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

The unconditioned jump will prohibit to ever reach the break-statement.
Deleting this needless statement, the code becomes more understandable.

Signed-off-by: Fabian Krueger <fabian.krueger@fau.de>
Signed-off-by: Michael Scheiderer <michael.scheiderer@fau.de>
Cc: <linux-kernel@i4.cs.fau.de>
---
 drivers/staging/kpc2000/kpc2000_spi.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/kpc2000/kpc2000_spi.c b/drivers/staging/kpc2000/kpc2000_spi.c
index 55bed617b0d8..1e1e747a0f6c 100644
--- a/drivers/staging/kpc2000/kpc2000_spi.c
+++ b/drivers/staging/kpc2000/kpc2000_spi.c
@@ -486,7 +486,6 @@ kp_spi_probe(struct platform_device *pldev)
 	default:
 		dev_err(&pldev->dev, "Unknown hardware, cant know what partition table to use!\n");
 		goto free_master;
-		break;
 	}
 
 	return status;
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

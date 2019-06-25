Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0806B54DBC
	for <lists+driverdev-devel@lfdr.de>; Tue, 25 Jun 2019 13:35:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 66C4681D3C;
	Tue, 25 Jun 2019 11:35:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s5XR36BtJQfn; Tue, 25 Jun 2019 11:35:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 69A0382383;
	Tue, 25 Jun 2019 11:35:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 39C2A1BF20B
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2019 11:35:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3743785E99
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2019 11:35:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id umq7bI-zhanM for <devel@linuxdriverproject.org>;
 Tue, 25 Jun 2019 11:34:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx-rz-1.rrze.uni-erlangen.de (mx-rz-1.rrze.uni-erlangen.de
 [131.188.11.20])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1F34285540
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2019 11:34:59 +0000 (UTC)
Received: from mx-exchlnx-1.rrze.uni-erlangen.de
 (mx-exchlnx-1.rrze.uni-erlangen.de [IPv6:2001:638:a000:1025::37])
 by mx-rz-1.rrze.uni-erlangen.de (Postfix) with ESMTP id 45Y3pD0YVSz8vFq;
 Tue, 25 Jun 2019 13:29:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fau.de; s=fau-2013;
 t=1561462148; bh=vFj2pVZ/HOC1MKUbfynpfE4dgH7Iemsw5b/nvKkMoDo=;
 h=From:To:CC:Subject:Date:In-Reply-To:References:From:To:CC:
 Subject;
 b=Wbkoi/6os6nyxFc/7Al5oU8p7uVfwk2HoT1b3GKrwREv6j3HCZXvwNCxyIa0m1Xqu
 OgUIhObhTzDwAs5jm34lnRPCE0q+Em4k+BgAAUkBKS9JgLkG5Vumqxx1HPB/7AqgNu
 ayn9BoLStR11ZS0EIbVw1/4dGELstT/z8GZV+yaPPuarvdXPkhSpTLhvepRP7mUzpE
 Cw3zBd9xJW0jJzNe0i8VvuaUKwTYULF5aDc/+tUJuS8seFOHTeAL5XIiWJBLWEuAt5
 mY0WKgELSDRWr66E+6Dt6NbnvTe8hYcIOtUm9BXP4yJBIspBnjgZeHaI+Hwnw2FBoC
 UdGrWn4H08v9g==
X-Virus-Scanned: amavisd-new at boeck5.rrze.uni-erlangen.de (RRZE)
X-RRZE-Flag: Not-Spam
Received: from hbt1.exch.fau.de (hbt1.exch.fau.de [10.15.8.13])
 by mx-exchlnx-1.rrze.uni-erlangen.de (Postfix) with ESMTP id 45Y3p96QJFz8vVF; 
 Tue, 25 Jun 2019 13:29:05 +0200 (CEST)
Received: from MBX3.exch.uni-erlangen.de (10.15.8.45) by hbt1.exch.fau.de
 (10.15.8.13) with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 25 Jun 2019
 13:28:36 +0200
Received: from TroubleWorld.pool.uni-erlangen.de (10.21.22.37) by
 MBX3.exch.uni-erlangen.de (10.15.8.45) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1591.10; Tue, 25 Jun 2019 13:28:34 +0200
From: Fabian Krueger <fabian.krueger@fau.de>
To: 
Subject: [PATCH 8/8] staging: kpc2000: remove needless 'break'
Date: Tue, 25 Jun 2019 13:27:19 +0200
Message-ID: <20190625112725.10154-9-fabian.krueger@fau.de>
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

The unconditioned jump will prohibit to ever reach the break-statement.
Deleting this needless statement, the code becomes more understandable.

Signed-off-by: Fabian Krueger <fabian.krueger@fau.de>
Signed-off-by: Michael Scheiderer <michael.scheiderer@fau.de>
---
 drivers/staging/kpc2000/kpc2000_spi.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/kpc2000/kpc2000_spi.c b/drivers/staging/kpc2000/kpc2000_spi.c
index f258f369e065..e65f0c34db50 100644
--- a/drivers/staging/kpc2000/kpc2000_spi.c
+++ b/drivers/staging/kpc2000/kpc2000_spi.c
@@ -515,7 +515,6 @@ kp_spi_probe(struct platform_device *pldev)
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

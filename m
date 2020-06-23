Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99A6520557F
	for <lists+driverdev-devel@lfdr.de>; Tue, 23 Jun 2020 17:07:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4CA09896F0;
	Tue, 23 Jun 2020 15:07:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8fTQuZSs5DRU; Tue, 23 Jun 2020 15:07:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C3AC3896B5;
	Tue, 23 Jun 2020 15:07:41 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 310231BF3ED
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 23 Jun 2020 15:07:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2C2EA86234
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 23 Jun 2020 15:07:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mk0IPVgISrTX
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 23 Jun 2020 15:07:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa5.microchip.iphmx.com (esa5.microchip.iphmx.com
 [216.71.150.166])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id AB03A8621D
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 23 Jun 2020 15:07:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1592924859; x=1624460859;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=lTNZCKOvh2R9Hqd1bcn1gElZjhIrSYwML3AZMekYtZs=;
 b=vl/KmO33i+Yhly5MxV3Oh5IVmwinbMwoOyvrWrAYlQ02/ovFUKmKOFjL
 Cs+aZYUJXHT7Frx3jt2f8a3LuHPESplfXBxw3EKlmXPc4vgQ3A6lV9hDm
 EHEJG5r8nU8gmdS6c1FuQY8l3DqgVYU/IU170wXzAKeUJTroAw9aWUsFB
 dVq91j81v7jk8PXEQ6n/UgwBdA+IqMHeiFjFH/k4cxshv/mYtP3kyucDx
 RSQygAb5gTEQORAeylGpf99ZgdSp2oSTWYy79zxlibk5ZPKsL3SwJqiY1
 PfiJ5yOiIwngbi/L1H258ALtcsj/odr4kfAD9zH+ywJUrQUqLmMck5QyW Q==;
IronPort-SDR: Vf4RNCRbzbzAu7yNmeyyTTzcTFiCiefFT0Fd75/34jIZNLX6X8gvqGrJOlPoJ89BQ8qaqb+RWC
 wd7vbaIhLJiSki1DupXia1r+RwWzxnrTZJoG7lQEsunnnWk8mA2ZXyUEDq+KNFTxKv7jMTM9Le
 8x0DSM3G+JUu4XyFB0/0LbTGa3DKIgdLqu3ChgIkWwS1VC5ZIlQd2IfOtJIgOAHLzlF2fxomxE
 nuZmkytVLdl/EiqNYR2OlE0G+yJbBoRr8O9eSP9OxBlgpx4RMO26D7efqMXlccPsCu8Vq6vRuG
 QKk=
X-IronPort-AV: E=Sophos;i="5.75,271,1589266800"; d="scan'208";a="80573382"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 23 Jun 2020 08:07:38 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Tue, 23 Jun 2020 08:07:38 -0700
Received: from kar-sv-agl01.mchp-main.com (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Tue, 23 Jun 2020 08:07:37 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH 0/5] staging: most: sound: clean up
Date: Tue, 23 Jun 2020 17:07:30 +0200
Message-ID: <1592924855-25569-1-git-send-email-christian.gromm@microchip.com>
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
 driverdev-devel@linuxdriverproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Patch set to clean up code and fix issues.

Christian Gromm (5):
  staging: most: sound: remove noisy log messages
  staging: most: sound: fix error path
  staging: most: sound: fix return values
  staging: most: sound: fix white spaces
  staging: most: sound: remove overcautious argument checking

 drivers/staging/most/sound/sound.c | 58 +++++++++-----------------------------
 1 file changed, 14 insertions(+), 44 deletions(-)

-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

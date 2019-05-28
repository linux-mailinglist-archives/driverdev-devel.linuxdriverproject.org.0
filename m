Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 684AF2C0A4
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 May 2019 09:54:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1341E86B1C;
	Tue, 28 May 2019 07:54:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id va-czfjL2izx; Tue, 28 May 2019 07:54:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0588C86AE3;
	Tue, 28 May 2019 07:54:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D49961BF387
 for <devel@linuxdriverproject.org>; Tue, 28 May 2019 07:54:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D14C086AE5
 for <devel@linuxdriverproject.org>; Tue, 28 May 2019 07:54:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dUh5krVPnyha for <devel@linuxdriverproject.org>;
 Tue, 28 May 2019 07:54:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga04-in.huawei.com [45.249.212.190])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 140B386A4D
 for <devel@driverdev.osuosl.org>; Tue, 28 May 2019 07:54:04 +0000 (UTC)
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 18DB99DC278E877CA54E;
 Tue, 28 May 2019 15:54:01 +0800 (CST)
Received: from localhost.localdomain.localdomain (10.175.113.25) by
 DGGEMS407-HUB.china.huawei.com (10.3.19.207) with Microsoft SMTP Server id
 14.3.439.0; Tue, 28 May 2019 15:53:51 +0800
From: Mao Wenan <maowenan@huawei.com>
To: <gregkh@linuxfoundation.org>, <jeremy@azazel.net>
Subject: [PATCH -next v3 0/2] cleanup for kpc2000_spi.c
Date: Tue, 28 May 2019 16:02:12 +0800
Message-ID: <20190528080214.18382-1-maowenan@huawei.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190525081321.121294-1-maowenan@huawei.com>
References: <20190525081321.121294-1-maowenan@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.175.113.25]
X-CFilter-Loop: Reflected
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
Cc: devel@driverdev.osuosl.org, thesven73@gmail.com,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 Mao Wenan <maowenan@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The error status should resotre to m->status in kp_spi_transfer_one_message(),
and many white spaces in kpc2000_spi.c. patch 1 is to fix the error path, and
patch 2 is to cleanup kpc2000_spi.c.

v1: remove set but not used variable 'status'.

v2: fix the subject tile.

v3: add another patch to fix the error condition path and do some clean work for kpc2000_spi.c.

Mao Wenan (2):
  staging: kpc2000: report error status to spi core
  staging: kpc2000: replace white spaces with tabs for kpc2000_spi.c

 drivers/staging/kpc2000/kpc2000_spi.c | 718 +++++++++++++-------------
 1 file changed, 361 insertions(+), 357 deletions(-)

-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

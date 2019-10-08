Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E235CF3F8
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Oct 2019 09:35:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6FCEE87E9C;
	Tue,  8 Oct 2019 07:35:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tddcAUuNKkUJ; Tue,  8 Oct 2019 07:35:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 29B298753D;
	Tue,  8 Oct 2019 07:35:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 21F691BF9B3
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 07:35:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0502A86166
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 07:35:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GSuAGuYUFNRO for <devel@linuxdriverproject.org>;
 Tue,  8 Oct 2019 07:34:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga04-in.huawei.com [45.249.212.190])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B67DB8615E
 for <devel@driverdev.osuosl.org>; Tue,  8 Oct 2019 07:34:58 +0000 (UTC)
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 8A9518941735C183347C;
 Tue,  8 Oct 2019 15:34:55 +0800 (CST)
Received: from huawei.com (10.90.53.225) by DGGEMS401-HUB.china.huawei.com
 (10.3.19.201) with Microsoft SMTP Server id 14.3.439.0; Tue, 8 Oct 2019
 15:34:46 +0800
From: zhengbin <zhengbin13@huawei.com>
To: <gregkh@linuxfoundation.org>, <eric@anholt.net>, <wahrenst@gmx.net>,
 <abbotti@mev.co.uk>, <hsweeten@visionengravers.com>,
 <dan.carpenter@oracle.com>, <devel@driverdev.osuosl.org>
Subject: [PATCH v2 5/6] staging: comedi: Remove set but not used variable 'hi'
Date: Tue, 8 Oct 2019 15:41:54 +0800
Message-ID: <1570520515-2186-6-git-send-email-zhengbin13@huawei.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1570520515-2186-1-git-send-email-zhengbin13@huawei.com>
References: <1570520515-2186-1-git-send-email-zhengbin13@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.90.53.225]
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
Cc: zhengbin13@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixes gcc '-Wunused-but-set-variable' warning:

drivers/staging/comedi/drivers/dt2815.c: In function dt2815_ao_insn:
drivers/staging/comedi/drivers/dt2815.c:91:19: warning: variable hi set but not used [-Wunused-but-set-variable]

It is not used since commit d6a929b7608a ("Staging:
comedi: add dt2815 driver")

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: zhengbin <zhengbin13@huawei.com>
---
 drivers/staging/comedi/drivers/dt2815.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/comedi/drivers/dt2815.c b/drivers/staging/comedi/drivers/dt2815.c
index 83026ba..bcf85ec 100644
--- a/drivers/staging/comedi/drivers/dt2815.c
+++ b/drivers/staging/comedi/drivers/dt2815.c
@@ -88,12 +88,11 @@ static int dt2815_ao_insn(struct comedi_device *dev, struct comedi_subdevice *s,
 	struct dt2815_private *devpriv = dev->private;
 	int i;
 	int chan = CR_CHAN(insn->chanspec);
-	unsigned int lo, hi;
+	unsigned int lo;
 	int ret;

 	for (i = 0; i < insn->n; i++) {
 		lo = ((data[i] & 0x0f) << 4) | (chan << 1) | 0x01;
-		hi = (data[i] & 0xff0) >> 4;

 		ret = comedi_timeout(dev, s, insn, dt2815_ao_status, 0x00);
 		if (ret)
--
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

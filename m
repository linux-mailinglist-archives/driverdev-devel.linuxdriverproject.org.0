Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 31A9ECF3FA
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Oct 2019 09:35:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 33F968557B;
	Tue,  8 Oct 2019 07:35:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id X1dDwgCoNZ8C; Tue,  8 Oct 2019 07:35:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 137C984D8E;
	Tue,  8 Oct 2019 07:35:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 21BD41BF287
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 07:35:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 189862261A
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 07:35:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RdOhJzkzm5Iq for <devel@linuxdriverproject.org>;
 Tue,  8 Oct 2019 07:35:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga04-in.huawei.com [45.249.212.190])
 by silver.osuosl.org (Postfix) with ESMTPS id A47FA20027
 for <devel@driverdev.osuosl.org>; Tue,  8 Oct 2019 07:35:01 +0000 (UTC)
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 951ED41247379D01853C;
 Tue,  8 Oct 2019 15:34:55 +0800 (CST)
Received: from huawei.com (10.90.53.225) by DGGEMS401-HUB.china.huawei.com
 (10.3.19.201) with Microsoft SMTP Server id 14.3.439.0; Tue, 8 Oct 2019
 15:34:47 +0800
From: zhengbin <zhengbin13@huawei.com>
To: <gregkh@linuxfoundation.org>, <eric@anholt.net>, <wahrenst@gmx.net>,
 <abbotti@mev.co.uk>, <hsweeten@visionengravers.com>,
 <dan.carpenter@oracle.com>, <devel@driverdev.osuosl.org>
Subject: [PATCH v2 6/6] staging: comedi: Remove set but not used variable
 'aref'
Date: Tue, 8 Oct 2019 15:41:55 +0800
Message-ID: <1570520515-2186-7-git-send-email-zhengbin13@huawei.com>
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

drivers/staging/comedi/drivers/dt3000.c: In function dt3k_ai_insn_read:
drivers/staging/comedi/drivers/dt3000.c:511:27: warning: variable aref set but not used [-Wunused-but-set-variable]

It is not used since commit 2e310235ca8f ("staging:
comedi: dt3000: rename dt3k_ai_insn()")

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: zhengbin <zhengbin13@huawei.com>
---
 drivers/staging/comedi/drivers/dt3000.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/comedi/drivers/dt3000.c b/drivers/staging/comedi/drivers/dt3000.c
index caf4d4d..f7c365b 100644
--- a/drivers/staging/comedi/drivers/dt3000.c
+++ b/drivers/staging/comedi/drivers/dt3000.c
@@ -508,12 +508,11 @@ static int dt3k_ai_insn_read(struct comedi_device *dev,
 			     unsigned int *data)
 {
 	int i;
-	unsigned int chan, gain, aref;
+	unsigned int chan, gain;

 	chan = CR_CHAN(insn->chanspec);
 	gain = CR_RANGE(insn->chanspec);
 	/* XXX docs don't explain how to select aref */
-	aref = CR_AREF(insn->chanspec);

 	for (i = 0; i < insn->n; i++)
 		data[i] = dt3k_readsingle(dev, DPR_SUBSYS_AI, chan, gain);
--
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

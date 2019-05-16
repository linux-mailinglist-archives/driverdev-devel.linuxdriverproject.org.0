Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAFCF20F73
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 May 2019 22:04:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8FF13882B4;
	Thu, 16 May 2019 20:04:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zW5EY8Y11rEM; Thu, 16 May 2019 20:04:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2605E880B7;
	Thu, 16 May 2019 20:04:24 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AD3C61BF395
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 16 May 2019 20:04:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id AA328839C1
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 16 May 2019 20:04:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pZLQQvqUAbvw
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 16 May 2019 20:04:14 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from kadath.azazel.net (kadath.azazel.net [81.187.231.250])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6832883775
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 16 May 2019 20:04:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=azazel.net; 
 s=20190108;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=sopzgsOIPCp+JbxGIbZbxuNtLjUxDFihXEAn6dKLUQo=; b=U2YHnWOQaY8RefU4BatEJ3g2A1
 Tmaox9o92wHY6VnhV+/C3fgyzVMjn09rZzfU6k6b+8AajJ0bIB/IDuYePaGkbDkNRfndRXkECmPFY
 BAT+305gbeQUiTdmIVyGhNblkwdoJre4eGnaevEGRKiQWpY0l5T3qj+3ncc1iIaEY6X3S9oY8lC03
 FsS1pb0j71CFikN0cYQ4coEpHsI/fBaUe4XsLGHcEterOT8/J14cWG9I360Q6dXAMt1Uw2o0oEBAi
 CiMi8pl+Qxk4JskzbqAQlGoGG5/SNB96qL6lfOEAX58YBGh7NL83v3faJCX0q30As2umVeNpcB2L/
 ZszBDc2w==;
Received: from ulthar.dreamlands ([192.168.96.2])
 by kadath.azazel.net with esmtp (Exim 4.89)
 (envelope-from <jeremy@azazel.net>)
 id 1hRMbs-0007Ec-92; Thu, 16 May 2019 21:04:12 +0100
From: Jeremy Sowden <jeremy@azazel.net>
To: Linux Driver Project Developer List
 <driverdev-devel@linuxdriverproject.org>
Subject: [PATCH 04/11] staging: kpc2000: removed two kpc_uio_class device
 attributes.
Date: Thu, 16 May 2019 21:04:04 +0100
Message-Id: <20190516200411.17715-5-jeremy@azazel.net>
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

The show functions of two attributes output nothing.  Removed them.

Signed-off-by: Jeremy Sowden <jeremy@azazel.net>
---
 drivers/staging/kpc2000/kpc2000/cell_probe.c | 16 ----------------
 1 file changed, 16 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc2000/cell_probe.c b/drivers/staging/kpc2000/kpc2000/cell_probe.c
index da15ae5b5a3d..38c3738209a7 100644
--- a/drivers/staging/kpc2000/kpc2000/cell_probe.c
+++ b/drivers/staging/kpc2000/kpc2000/cell_probe.c
@@ -169,18 +169,6 @@ static ssize_t type_show(struct device *dev, struct device_attribute *attr,
 	return scnprintf(buf, PAGE_SIZE, "%u\n", kudev->cte.type);
 }
 
-static ssize_t s2c_dma_ch_show(struct device *dev,
-			       struct device_attribute *attr, char *buf)
-{
-	return 0;
-}
-
-static ssize_t c2s_dma_ch_show(struct device *dev,
-			       struct device_attribute *attr, char *buf)
-{
-	return 0;
-}
-
 static ssize_t s2c_dma_show(struct device *dev, struct device_attribute *attr,
 			    char *buf)
 {
@@ -232,8 +220,6 @@ static ssize_t core_num_show(struct device *dev, struct device_attribute *attr,
 DEVICE_ATTR_RO(offset);
 DEVICE_ATTR_RO(size);
 DEVICE_ATTR_RO(type);
-DEVICE_ATTR_RO(s2c_dma_ch);
-DEVICE_ATTR_RO(c2s_dma_ch);
 DEVICE_ATTR_RO(s2c_dma);
 DEVICE_ATTR_RO(c2s_dma);
 DEVICE_ATTR_RO(irq_count);
@@ -244,8 +230,6 @@ struct attribute *kpc_uio_class_attrs[] = {
 	&dev_attr_offset.attr,
 	&dev_attr_size.attr,
 	&dev_attr_type.attr,
-	&dev_attr_s2c_dma_ch.attr,
-	&dev_attr_c2s_dma_ch.attr,
 	&dev_attr_s2c_dma.attr,
 	&dev_attr_c2s_dma.attr,
 	&dev_attr_irq_count.attr,
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CF252101B
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 May 2019 23:38:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C7D4185CD0;
	Thu, 16 May 2019 21:38:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SWoFFBxrf0Ix; Thu, 16 May 2019 21:38:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1C5F3861F2;
	Thu, 16 May 2019 21:38:29 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B69CB1BF29A
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 16 May 2019 21:38:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A882A87370
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 16 May 2019 21:38:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Yrrz-Dib3JXn
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 16 May 2019 21:38:17 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from kadath.azazel.net (kadath.azazel.net [81.187.231.250])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E938487346
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 16 May 2019 21:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=azazel.net; 
 s=20190108;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=F7Jy9Ggda5sx1uX9uqAGErM8pqxZQbqy/SJ5HTx7yys=; b=vEGzeKy8W7gaoBottNOj+F1Z7f
 OEUsRsqNCSdTT0AiwWaKgWOFbrKIoqhNK5ggeI9S6MPHharm1WLnv0u3cVBXpYt7aNNCeHvswhghb
 GnyG282aAJVmocx19+tcCau1NWWIR2HS65zRyM9+faoa4VKZBxTdl9H6WvJuKeq08HntFrqv2+NaJ
 mvJFAHL1bQ6uv7gqJ4Vzt+mSBtIvw7r213Fp8ssPNv1btd34L6ynPZxI/8+PEjLHelIxBwktIFfvV
 Uj2g+vdUCLSuSEnWDAe+wUmu4ZRFiY1F+IKhydATgkIZZMpiHxmpBreIubQsGaDfNLDHiH3kBVe/V
 KRBALu1g==;
Received: from ulthar.dreamlands ([192.168.96.2])
 by kadath.azazel.net with esmtp (Exim 4.89)
 (envelope-from <jeremy@azazel.net>)
 id 1hRO4t-0000d7-6O; Thu, 16 May 2019 22:38:15 +0100
From: Jeremy Sowden <jeremy@azazel.net>
To: Linux Driver Project Developer List
 <driverdev-devel@linuxdriverproject.org>
Subject: [PATCH v2 6/9] staging: kpc2000: simplified kp2000_device retrieval
 in device attributes call-backs.
Date: Thu, 16 May 2019 22:38:11 +0100
Message-Id: <20190516213814.22232-7-jeremy@azazel.net>
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

The call-backs used the same recipe to get the pcard from dev:

  struct pci_dev *pdev = to_pci_dev(dev);
  struct kp2000_device *pcard;

  if (!pdev) return -ENXIO;
  pcard = pci_get_drvdata(pdev);
  if (!pcard) return -ENXIO;

where to_pci_dev is a wrapper for container_of.

However, pci_set_drvdata is called before the sysfs files are created:

  int  kp2000_pcie_probe(struct pci_dev *pdev, const struct pci_device_id *id)
  {
    // ...

    pcard = kzalloc(sizeof(struct kp2000_device), GFP_KERNEL);

    // ...

    pcard->pdev = pdev;
    pci_set_drvdata(pdev, pcard);

    // ...

    err = sysfs_create_files(&(pdev->dev.kobj), kp_attr_list);

Therefore, to_pci_dev and pci_get_drvdata cannot return NULL, and pcard
can be initialized directly from dev:

  struct kp2000_device *pcard = dev_get_drvdata(dev);

Signed-off-by: Jeremy Sowden <jeremy@azazel.net>
---
 drivers/staging/kpc2000/kpc2000/core.c | 24 +++---------------------
 1 file changed, 3 insertions(+), 21 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc2000/core.c b/drivers/staging/kpc2000/kpc2000/core.c
index 72130a50afd6..c05864cf33ce 100644
--- a/drivers/staging/kpc2000/kpc2000/core.c
+++ b/drivers/staging/kpc2000/kpc2000/core.c
@@ -27,12 +27,7 @@ static atomic_t next_card_num = ATOMIC_INIT(1);
   ******************************************************/
 static ssize_t  show_attr(struct device *dev, struct device_attribute *attr, char *buf)
 {
-    struct pci_dev *pdev = to_pci_dev(dev);
-    struct kp2000_device *pcard;
-
-    if (!pdev)  return -ENXIO;
-    pcard = pci_get_drvdata(pdev);
-    if (!pcard)  return -ENXIO;
+    struct kp2000_device *pcard = dev_get_drvdata(dev);
 
     if (strcmp("ssid", attr->attr.name) == 0){         return scnprintf(buf, PAGE_SIZE, "%016llx\n", pcard->ssid);  } else
     if (strcmp("ddna", attr->attr.name) == 0){         return scnprintf(buf, PAGE_SIZE, "%016llx\n", pcard->ddna);  } else
@@ -46,31 +41,18 @@ static ssize_t  show_attr(struct device *dev, struct device_attribute *attr, cha
 
 static ssize_t  show_cpld_config_reg(struct device *dev, struct device_attribute *attr, char *buf)
 {
-	struct pci_dev *pdev = to_pci_dev(dev);
-	struct kp2000_device *pcard;
+	struct kp2000_device *pcard = dev_get_drvdata(dev);
 	u64 val;
 
-	if (!pdev)
-		return -ENXIO;
-
-	pcard = pci_get_drvdata(pdev);
-	if (!pcard)
-		return -ENXIO;
-
 	val = readq(pcard->sysinfo_regs_base + REG_CPLD_CONFIG);
 	return scnprintf(buf, PAGE_SIZE, "%016llx\n", val);
 }
 static ssize_t cpld_reconfigure(struct device *dev, struct device_attribute *attr, const char *buf, size_t count)
 {
-    struct pci_dev *pdev = to_pci_dev(dev);
+    struct kp2000_device *pcard = dev_get_drvdata(dev);
     long wr_val;
-    struct kp2000_device *pcard;
     int rv;
 
-    if (!pdev)  return -ENXIO;
-    pcard = pci_get_drvdata(pdev);
-    if (!pcard)  return -ENXIO;
-
     rv = kstrtol(buf, 0, &wr_val);
     if (rv < 0)  return rv;
     if (wr_val > 7)  return -EINVAL;
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

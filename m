Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 38E9D2176C
	for <lists+driverdev-devel@lfdr.de>; Fri, 17 May 2019 13:03:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6FDAC85039;
	Fri, 17 May 2019 11:03:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uY14xfD6f8iJ; Fri, 17 May 2019 11:03:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B3B93858DD;
	Fri, 17 May 2019 11:03:22 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id ED2811C1639
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 17 May 2019 11:03:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id EA4428835F
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 17 May 2019 11:03:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2Q7V9HY1x5zw
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 17 May 2019 11:03:18 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from kadath.azazel.net (kadath.azazel.net [81.187.231.250])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1750F8788B
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 17 May 2019 11:03:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=azazel.net; 
 s=20190108;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lcxfVfdSrn7vJkiCGK87zgyvYXNi+HTqoLEBzfE8/sg=; b=BV+g7shYEIcnGD7yZLhDUi5d8a
 f2SdWJiMpXh4LWWkqaQc7EEae5FAI24TjnJ0HzHRxHKnPphNschh8dG2uQOk6v2y/Eqkci4eXBVZ1
 Gpqb/BX0nK9B0HKOcS6t1SFkw83GOcnPgn4MmXa5p8IOR34GpgpxupuNMzQamEygeAUTcRLe24YxW
 AISus4PZRu+EfblF805IOt98KWRXXeTQMbqKx4ivyikPExkxmzKrSP89UfiFFCs1J7ObDznNWu1d1
 dqRqWw3ZwTlBJpfhn7ml5zhh/t5LC0qzsZX5GbSpPLn2b69zJfjXD7bhGItWAC58hdrqrvkofB0iT
 3pRNS0ig==;
Received: from ulthar.dreamlands ([192.168.96.2])
 by kadath.azazel.net with esmtp (Exim 4.89)
 (envelope-from <jeremy@azazel.net>)
 id 1hRadv-00045l-So; Fri, 17 May 2019 12:03:15 +0100
From: Jeremy Sowden <jeremy@azazel.net>
To: Linux Driver Project Developer List
 <driverdev-devel@linuxdriverproject.org>
Subject: [PATCH v3 3/6] staging: kpc2000: simplified kp2000_device retrieval
 in device attributes call-backs.
Date: Fri, 17 May 2019 12:03:12 +0100
Message-Id: <20190517110315.10646-4-jeremy@azazel.net>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190517110315.10646-1-jeremy@azazel.net>
References: <20190517073057.GA2631@kroah.com>
 <20190517110315.10646-1-jeremy@azazel.net>
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
index eb8bac62d33d..9425c4dbc2f2 100644
--- a/drivers/staging/kpc2000/kpc2000/core.c
+++ b/drivers/staging/kpc2000/kpc2000/core.c
@@ -24,12 +24,7 @@
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
@@ -43,31 +38,18 @@ static ssize_t  show_attr(struct device *dev, struct device_attribute *attr, cha
 
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

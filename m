Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D976424CCF
	for <lists+driverdev-devel@lfdr.de>; Tue, 21 May 2019 12:35:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 06C8C879C3;
	Tue, 21 May 2019 10:35:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id o72PgBW39YMS; Tue, 21 May 2019 10:35:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C086386DC6;
	Tue, 21 May 2019 10:35:38 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D1FAC1BF299
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 21 May 2019 10:35:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id CB3A82379C
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 21 May 2019 10:35:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2CPz-7T+LmZC
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 21 May 2019 10:35:29 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from kadath.azazel.net (kadath.azazel.net [81.187.231.250])
 by silver.osuosl.org (Postfix) with ESMTPS id D18E623449
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 21 May 2019 10:35:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=azazel.net; 
 s=20190108;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nHbQi5ir0UP3HRLpTiV8+/9ZVMjN1aeny2by9/2xY/o=; b=jNyfbjgE9XY7Cgp6o+XLOKBI9C
 URxIu1pSicj1S2ckLBPDlS4zsHGH29MuzVIEGAYE+asgxJcMEt9Hr0oo+d89OA8ZsAeWrhUGAm8FW
 VvXthdai6Wmujwm4WxrPzwmSKAsNi0bhL7MIv93Dm+we5ury8fm8aY/xtZAtc2Mj4YKsqhEXgJ1lO
 OQ8w8qnECa2qOzVnlLdWTrTLGM2yK8tBib55d34OehRY7RZJK6h50kJX05IRJaa6WkaB6nzSHlXqz
 Cnh6kJSDeNiT26W0SIGAYgd8ZY73awYxf+pvfU5y6tJyV6fvAzwBizwNWWEf1fDTTlDqodG/7BYYn
 f2XXs6vw==;
Received: from ulthar.dreamlands ([192.168.96.2])
 by kadath.azazel.net with esmtp (Exim 4.89)
 (envelope-from <jeremy@azazel.net>)
 id 1hT27B-00073p-AL; Tue, 21 May 2019 11:35:25 +0100
From: Jeremy Sowden <jeremy@azazel.net>
To: Linux Driver Project Developer List
 <driverdev-devel@linuxdriverproject.org>
Subject: [PATCH v6 5/6] staging: kpc2000: simplified kp2000_device retrieval
 in device attribute call-backs.
Date: Tue, 21 May 2019 11:35:23 +0100
Message-Id: <20190521103524.2176-6-jeremy@azazel.net>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190521103524.2176-1-jeremy@azazel.net>
References: <20190521103524.2176-1-jeremy@azazel.net>
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

All the call-backs used the same formula to retrieve the pcard from dev:

  struct pci_dev *pdev = to_pci_dev(dev);
  struct kp2000_device *pcard;

  if (!pdev)
    return NULL;

  pcard = pci_get_drvdata(pdev);

Since to_pci_dev is a wrapper for container_of, it will not return NULL,
and since pci_get_drvdata just calls dev_get_drvdata on the dev member
of pdev, this is equivalent to:

  struct kp2000_device *pcard = dev_get_drvdata(&(container_of(dev, struct pci_dev, dev)->dev));

and we can simplify it to:

  struct kp2000_device *pcard = dev_get_drvdata(dev);

Signed-off-by: Jeremy Sowden <jeremy@azazel.net>
---
 drivers/staging/kpc2000/kpc2000/core.c | 28 +++++++++-----------------
 1 file changed, 9 insertions(+), 19 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc2000/core.c b/drivers/staging/kpc2000/kpc2000/core.c
index 7d6b99fcd2bd..2af4170a0d68 100644
--- a/drivers/staging/kpc2000/kpc2000/core.c
+++ b/drivers/staging/kpc2000/kpc2000/core.c
@@ -32,20 +32,10 @@ static DEFINE_IDA(card_num_ida);
  * SysFS Attributes
  ******************************************************/
 
-static struct kp2000_device *get_pcard(struct device *dev)
-{
-	struct pci_dev *pdev = to_pci_dev(dev);
-
-	if (!pdev)
-		return NULL;
-
-	return pci_get_drvdata(pdev);
-}
-
 static ssize_t ssid_show(struct device *dev, struct device_attribute *attr,
 			 char *buf)
 {
-	struct kp2000_device *pcard = get_pcard(dev);
+	struct kp2000_device *pcard = dev_get_drvdata(dev);
 
 	if (!pcard)
 		return -ENXIO;
@@ -57,7 +47,7 @@ static DEVICE_ATTR_RO(ssid);
 static ssize_t ddna_show(struct device *dev, struct device_attribute *attr,
 			 char *buf)
 {
-	struct kp2000_device *pcard = get_pcard(dev);
+	struct kp2000_device *pcard = dev_get_drvdata(dev);
 
 	if (!pcard)
 		return -ENXIO;
@@ -69,7 +59,7 @@ static DEVICE_ATTR_RO(ddna);
 static ssize_t card_id_show(struct device *dev, struct device_attribute *attr,
 			    char *buf)
 {
-	struct kp2000_device *pcard = get_pcard(dev);
+	struct kp2000_device *pcard = dev_get_drvdata(dev);
 
 	if (!pcard)
 		return -ENXIO;
@@ -81,7 +71,7 @@ static DEVICE_ATTR_RO(card_id);
 static ssize_t hw_rev_show(struct device *dev, struct device_attribute *attr,
 			   char *buf)
 {
-	struct kp2000_device *pcard = get_pcard(dev);
+	struct kp2000_device *pcard = dev_get_drvdata(dev);
 
 	if (!pcard)
 		return -ENXIO;
@@ -93,7 +83,7 @@ static DEVICE_ATTR_RO(hw_rev);
 static ssize_t build_show(struct device *dev, struct device_attribute *attr,
 			  char *buf)
 {
-	struct kp2000_device *pcard = get_pcard(dev);
+	struct kp2000_device *pcard = dev_get_drvdata(dev);
 
 	if (!pcard)
 		return -ENXIO;
@@ -105,7 +95,7 @@ static DEVICE_ATTR_RO(build);
 static ssize_t build_date_show(struct device *dev,
 			       struct device_attribute *attr, char *buf)
 {
-	struct kp2000_device *pcard = get_pcard(dev);
+	struct kp2000_device *pcard = dev_get_drvdata(dev);
 
 	if (!pcard)
 		return -ENXIO;
@@ -117,7 +107,7 @@ static DEVICE_ATTR_RO(build_date);
 static ssize_t build_time_show(struct device *dev,
 			       struct device_attribute *attr, char *buf)
 {
-	struct kp2000_device *pcard = get_pcard(dev);
+	struct kp2000_device *pcard = dev_get_drvdata(dev);
 
 	if (!pcard)
 		return -ENXIO;
@@ -129,7 +119,7 @@ static DEVICE_ATTR_RO(build_time);
 static ssize_t cpld_reg_show(struct device *dev, struct device_attribute *attr,
 			     char *buf)
 {
-	struct kp2000_device *pcard = get_pcard(dev);
+	struct kp2000_device *pcard = dev_get_drvdata(dev);
 	u64 val;
 
 	if (!pcard)
@@ -144,7 +134,7 @@ static ssize_t cpld_reconfigure(struct device *dev,
 				struct device_attribute *attr,
 				const char *buf, size_t count)
 {
-	struct kp2000_device *pcard = get_pcard(dev);
+	struct kp2000_device *pcard = dev_get_drvdata(dev);
 	long wr_val;
 	int rv;
 
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

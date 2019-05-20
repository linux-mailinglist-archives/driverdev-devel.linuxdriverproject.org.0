Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 810A724186
	for <lists+driverdev-devel@lfdr.de>; Mon, 20 May 2019 21:53:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 116C885D55;
	Mon, 20 May 2019 19:53:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7HTKNLI5bEAr; Mon, 20 May 2019 19:53:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DE99D85B2F;
	Mon, 20 May 2019 19:53:04 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 883F91BF2FD
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 20 May 2019 19:52:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8568D865C8
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 20 May 2019 19:52:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QIDxW7Ewm6KU
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 20 May 2019 19:52:48 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from kadath.azazel.net (kadath.azazel.net [81.187.231.250])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0DAF885722
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 20 May 2019 19:52:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=azazel.net; 
 s=20190108;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+2chzZelLi9us6Akvm8nRP9dCW1IwlAVlm13iyc8xYg=; b=keaWKleyyM1XvI5mDPJhQyGfBp
 VYWhfyzFhWpCEfpgftgV5y15xyz6lnJOt++0watRYYh1oTyqF/DXPi69JW7fikqBwfgiI+2N1PTXT
 O0buFyKjngfSsLYxU6tjiN1cqXl3LIsYPS4PN2eI7JNpb+Vxk4BTNtlPdnpZ8ei9iclaQBIEH528k
 kIQcuMoH6RHbdP1+wWc/YAXik/DiZqJB1vXAgjKpjh1o0dGfrWCw+ikRAKPKh0NU/ypB4pQshzzGw
 lhQdyw1O2UvIJB58yE3QRSu5+AuH8lMlRR/ZcEIUgY3ZgcYxApMfF3pNXzpDg3YqTgyzxBH8zcrzg
 e1gaRYCA==;
Received: from ulthar.dreamlands ([192.168.96.2])
 by kadath.azazel.net with esmtp (Exim 4.89)
 (envelope-from <jeremy@azazel.net>)
 id 1hSoKz-0004Ol-DO; Mon, 20 May 2019 20:52:45 +0100
From: Jeremy Sowden <jeremy@azazel.net>
To: Linux Driver Project Developer List
 <driverdev-devel@linuxdriverproject.org>
Subject: [PATCH 7/8] staging: kpc2000: simplified kp2000_device retrieval in
 device attribute call-backs.
Date: Mon, 20 May 2019 20:52:33 +0100
Message-Id: <20190520195243.917-7-jeremy@azazel.net>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190520195243.917-1-jeremy@azazel.net>
References: <20190517110315.10646-1-jeremy@azazel.net>
 <20190520195243.917-1-jeremy@azazel.net>
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
index a8383e8159eb..f6043ef7b55b 100644
--- a/drivers/staging/kpc2000/kpc2000/core.c
+++ b/drivers/staging/kpc2000/kpc2000/core.c
@@ -25,20 +25,10 @@ static DEFINE_IDA(card_num_ida);
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
@@ -50,7 +40,7 @@ static DEVICE_ATTR_RO(ssid);
 static ssize_t ddna_show(struct device *dev, struct device_attribute *attr,
 			 char *buf)
 {
-	struct kp2000_device *pcard = get_pcard(dev);
+	struct kp2000_device *pcard = dev_get_drvdata(dev);
 
 	if (!pcard)
 		return -ENXIO;
@@ -62,7 +52,7 @@ static DEVICE_ATTR_RO(ddna);
 static ssize_t card_id_show(struct device *dev, struct device_attribute *attr,
 			    char *buf)
 {
-	struct kp2000_device *pcard = get_pcard(dev);
+	struct kp2000_device *pcard = dev_get_drvdata(dev);
 
 	if (!pcard)
 		return -ENXIO;
@@ -74,7 +64,7 @@ static DEVICE_ATTR_RO(card_id);
 static ssize_t hw_rev_show(struct device *dev, struct device_attribute *attr,
 			   char *buf)
 {
-	struct kp2000_device *pcard = get_pcard(dev);
+	struct kp2000_device *pcard = dev_get_drvdata(dev);
 
 	if (!pcard)
 		return -ENXIO;
@@ -86,7 +76,7 @@ static DEVICE_ATTR_RO(hw_rev);
 static ssize_t build_show(struct device *dev, struct device_attribute *attr,
 			  char *buf)
 {
-	struct kp2000_device *pcard = get_pcard(dev);
+	struct kp2000_device *pcard = dev_get_drvdata(dev);
 
 	if (!pcard)
 		return -ENXIO;
@@ -98,7 +88,7 @@ static DEVICE_ATTR_RO(build);
 static ssize_t build_date_show(struct device *dev,
 			       struct device_attribute *attr, char *buf)
 {
-	struct kp2000_device *pcard = get_pcard(dev);
+	struct kp2000_device *pcard = dev_get_drvdata(dev);
 
 	if (!pcard)
 		return -ENXIO;
@@ -110,7 +100,7 @@ static DEVICE_ATTR_RO(build_date);
 static ssize_t build_time_show(struct device *dev,
 			       struct device_attribute *attr, char *buf)
 {
-	struct kp2000_device *pcard = get_pcard(dev);
+	struct kp2000_device *pcard = dev_get_drvdata(dev);
 
 	if (!pcard)
 		return -ENXIO;
@@ -122,7 +112,7 @@ static DEVICE_ATTR_RO(build_time);
 static ssize_t cpld_reg_show(struct device *dev, struct device_attribute *attr,
 			     char *buf)
 {
-	struct kp2000_device *pcard = get_pcard(dev);
+	struct kp2000_device *pcard = dev_get_drvdata(dev);
 	u64 val;
 
 	if (!pcard)
@@ -137,7 +127,7 @@ static ssize_t cpld_reconfigure(struct device *dev,
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

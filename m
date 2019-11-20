Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E6F20103CF1
	for <lists+driverdev-devel@lfdr.de>; Wed, 20 Nov 2019 15:06:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 67AD586D2D;
	Wed, 20 Nov 2019 14:05:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6bxayBY1bimV; Wed, 20 Nov 2019 14:05:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 49B2486C8E;
	Wed, 20 Nov 2019 14:05:57 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5B8C71BF82F
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 20 Nov 2019 14:05:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5842086C8E
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 20 Nov 2019 14:05:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uf9e3Aw4yhyZ
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 20 Nov 2019 14:05:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa3.microchip.iphmx.com (esa3.microchip.iphmx.com
 [68.232.153.233])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 003C086C8D
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 20 Nov 2019 14:05:53 +0000 (UTC)
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Christian.Gromm@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Christian.Gromm@microchip.com";
 x-sender="Christian.Gromm@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Christian.Gromm@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Christian.Gromm@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: j2yNQZS6d5gk9afbROELSwKiNlznWAtc679Ge4wmWEadtz+ABa5/heVyguOlgESZk28um8gsYN
 a1zCseLzVwPAVlOJJhyTwWVIpuscQGGU+x134yFL1w2M1t56XDYfi3DDIvJ5qa1oqa+rKwsihk
 F3brdMHKJllEHwz93qzEMivjyQxTR9EwaJQvCg5cQGjOAFlRFlXVCppA/f/rQDlBmFoimSvvzA
 sK192WmHLq6T7sFunnM6YW6x+xXPdfmBPGqBAKS+b+hlVncl9YJtSlLt+D4qyC2iQM11kQqWRV
 T88=
X-IronPort-AV: E=Sophos;i="5.69,222,1571727600"; d="scan'208";a="57756362"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 20 Nov 2019 07:05:52 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 20 Nov 2019 07:05:42 -0700
Received: from kar-sv-agl01.mchp-main.com (10.10.85.251) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Wed, 20 Nov 2019 07:05:41 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: most: core: remove sysfs attr remove_link
Date: Wed, 20 Nov 2019 15:05:38 +0100
Message-ID: <1574258738-12863-1-git-send-email-christian.gromm@microchip.com>
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

This patch removes the sysfs attribute remove_link, as it is not needed
anymore since the introduction of the configfs configuration interface.

Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
---
 drivers/staging/most/core.c | 86 ---------------------------------------------
 1 file changed, 86 deletions(-)

diff --git a/drivers/staging/most/core.c b/drivers/staging/most/core.c
index 79e66eb..51a6b41 100644
--- a/drivers/staging/most/core.c
+++ b/drivers/staging/most/core.c
@@ -521,48 +521,6 @@ static ssize_t components_show(struct device_driver *drv, char *buf)
 }
 
 /**
- * split_string - parses buf and extracts ':' separated substrings.
- *
- * @buf: complete string from attribute 'add_channel'
- * @a: storage for 1st substring (=interface name)
- * @b: storage for 2nd substring (=channel name)
- * @c: storage for 3rd substring (=component name)
- * @d: storage optional 4th substring (=user defined name)
- *
- * Examples:
- *
- * Input: "mdev0:ch6:cdev:my_channel\n" or
- *        "mdev0:ch6:cdev:my_channel"
- *
- * Output: *a -> "mdev0", *b -> "ch6", *c -> "cdev" *d -> "my_channel"
- *
- * Input: "mdev1:ep81:cdev\n"
- * Output: *a -> "mdev1", *b -> "ep81", *c -> "cdev" *d -> ""
- *
- * Input: "mdev1:ep81"
- * Output: *a -> "mdev1", *b -> "ep81", *c -> "cdev" *d == NULL
- */
-static int split_string(char *buf, char **a, char **b, char **c, char **d)
-{
-	*a = strsep(&buf, ":");
-	if (!*a)
-		return -EIO;
-
-	*b = strsep(&buf, ":\n");
-	if (!*b)
-		return -EIO;
-
-	*c = strsep(&buf, ":\n");
-	if (!*c)
-		return -EIO;
-
-	if (d)
-		*d = strsep(&buf, ":\n");
-
-	return 0;
-}
-
-/**
  * get_channel - get pointer to channel
  * @mdev: name of the device interface
  * @mdev_ch: name of channel
@@ -723,48 +681,6 @@ int most_add_link(char *mdev, char *mdev_ch, char *comp_name, char *link_name,
 	return link_channel_to_component(c, comp, link_name, comp_param);
 }
 
-/**
- * remove_link_store - store function for remove_link attribute
- * @drv: device driver
- * @buf: buffer
- * @len: buffer length
- *
- * Example:
- * echo "mdev0:ep81" >remove_link
- */
-static ssize_t remove_link_store(struct device_driver *drv,
-				 const char *buf,
-				 size_t len)
-{
-	struct most_channel *c;
-	struct core_component *comp;
-	char buffer[STRING_SIZE];
-	char *mdev;
-	char *mdev_ch;
-	char *comp_name;
-	int ret;
-	size_t max_len = min_t(size_t, len + 1, STRING_SIZE);
-
-	strlcpy(buffer, buf, max_len);
-	ret = split_string(buffer, &mdev, &mdev_ch, &comp_name, NULL);
-	if (ret)
-		return ret;
-	comp = match_component(comp_name);
-	if (!comp)
-		return -ENODEV;
-	c = get_channel(mdev, mdev_ch);
-	if (!c)
-		return -ENODEV;
-
-	if (comp->disconnect_channel(c->iface, c->channel_id))
-		return -EIO;
-	if (c->pipe0.comp == comp)
-		c->pipe0.comp = NULL;
-	if (c->pipe1.comp == comp)
-		c->pipe1.comp = NULL;
-	return len;
-}
-
 int most_remove_link(char *mdev, char *mdev_ch, char *comp_name)
 {
 	struct most_channel *c;
@@ -790,12 +706,10 @@ int most_remove_link(char *mdev, char *mdev_ch, char *comp_name)
 
 static DRIVER_ATTR_RO(links);
 static DRIVER_ATTR_RO(components);
-static DRIVER_ATTR_WO(remove_link);
 
 static struct attribute *mc_attrs[] = {
 	DRV_ATTR(links),
 	DRV_ATTR(components),
-	DRV_ATTR(remove_link),
 	NULL,
 };
 
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 858191DE2D7
	for <lists+driverdev-devel@lfdr.de>; Fri, 22 May 2020 11:22:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A153C88828;
	Fri, 22 May 2020 09:22:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Jj3oBu1RNFek; Fri, 22 May 2020 09:22:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A721B88801;
	Fri, 22 May 2020 09:22:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4CE901BF370
 for <devel@linuxdriverproject.org>; Fri, 22 May 2020 09:22:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4898C87806
 for <devel@linuxdriverproject.org>; Fri, 22 May 2020 09:22:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W9dyZhJ5UbPi for <devel@linuxdriverproject.org>;
 Fri, 22 May 2020 09:22:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx0a-00128a01.pphosted.com (mx0a-00128a01.pphosted.com
 [148.163.135.77])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B4A84877F3
 for <devel@driverdev.osuosl.org>; Fri, 22 May 2020 09:22:15 +0000 (UTC)
Received: from pps.filterd (m0167089.ppops.net [127.0.0.1])
 by mx0a-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 04M8XRHS016327; Fri, 22 May 2020 04:36:00 -0400
Received: from nwd2mta3.analog.com ([137.71.173.56])
 by mx0a-00128a01.pphosted.com with ESMTP id 312d3655mx-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 22 May 2020 04:36:00 -0400
Received: from SCSQMBX11.ad.analog.com (scsqmbx11.ad.analog.com [10.77.17.10])
 by nwd2mta3.analog.com (8.14.7/8.14.7) with ESMTP id 04M8ZvJQ040182
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
 verify=FAIL); Fri, 22 May 2020 04:35:57 -0400
Received: from SCSQMBX10.ad.analog.com (10.77.17.5) by SCSQMBX11.ad.analog.com
 (10.77.17.10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1779.2; Fri, 22 May
 2020 01:35:55 -0700
Received: from zeus.spd.analog.com (10.64.82.11) by SCSQMBX10.ad.analog.com
 (10.77.17.5) with Microsoft SMTP Server id 15.1.1779.2 via Frontend
 Transport; Fri, 22 May 2020 01:35:55 -0700
Received: from saturn.ad.analog.com ([10.48.65.112])
 by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 04M8ZhUO005306;
 Fri, 22 May 2020 04:35:43 -0400
From: Alexandru Ardelean <alexandru.ardelean@analog.com>
To: <bcm-kernel-feedback-list@broadcom.com>, <linux-iio@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-arm-kernel@lists.infradead.org>, <linux-input@vger.kernel.org>,
 <linux-aspeed@lists.ozlabs.org>, <linux-samsung-soc@vger.kernel.org>,
 <linux-amlogic@lists.infradead.org>,
 <linux-mediatek@lists.infradead.org>, <linux-arm-msm@vger.kernel.org>,
 <linux-rockchip@lists.infradead.org>, <linux-pm@vger.kernel.org>,
 <platform-driver-x86@vger.kernel.org>, <devel@driverdev.osuosl.org>
Subject: [PATCH 1/5] iio: core: pass parent device as parameter during
 allocation
Date: Fri, 22 May 2020 11:22:04 +0300
Message-ID: <20200522082208.383631-1-alexandru.ardelean@analog.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-ADIRoutedOnPrem: True
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.676
 definitions=2020-05-22_05:2020-05-21,
 2020-05-22 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=999
 suspectscore=2 bulkscore=0 mlxscore=0 phishscore=0 cotscore=-2147483648
 impostorscore=0 priorityscore=1501 lowpriorityscore=0 spamscore=0
 clxscore=1011 adultscore=0 malwarescore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2005220070
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
Cc: milo.kim@ti.com, tomislav.denis@avl.com, dan@dlrobertson.com,
 heiko@sntech.de, linus.walleij@linaro.org, eajames@linux.ibm.com,
 bjorn.andersson@linaro.org, paul@crapouillou.net, lorenzo.bianconi83@gmail.com,
 srinivas.pandruvada@linux.intel.com, khilman@baylibre.com, krzk@kernel.org,
 wens@csie.org, kgene@kernel.org, slemieux.tyco@gmail.com, orsonzhai@gmail.com,
 Alexandru Ardelean <alexandru.ardelean@analog.com>, alexandre.torgue@st.com,
 tduszyns@gmail.com, rjui@broadcom.com, s.hauer@pengutronix.de,
 jikos@kernel.org, vilhelm.gray@gmail.com, mripard@kernel.org, vz@mleia.com,
 hdegoede@redhat.com, ak@it-klinger.de, matthias.bgg@gmail.com,
 fabrice.gasnier@st.com, sbranden@broadcom.com, syednwaris@gmail.com,
 dmitry.torokhov@gmail.com, coproscefalo@gmail.com, agross@kernel.org,
 songqiang1304521@gmail.com, mcoquelin.stm32@gmail.com, zhang.lyra@gmail.com,
 baolin.wang7@gmail.com, ktsai@capellamicro.com, shawnguo@kernel.org,
 peda@axentia.se, jic23@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The change passes the parent device to the iio_device_alloc() call. This
also updates the devm_iio_device_alloc() call to consider the device object
as the parent device by default.

Having it passed like this, should ensure that any IIO device object
already has a device object as parent, allowing for neater control, like
passing the 'indio_dev' object for other stuff [like buffers/triggers/etc],
and potentially creating iiom_xxx(indio_dev) functions.

With this patch, only the 'drivers/platform/x86/toshiba_acpi.c' needs an
update to pass the parent object as a parameter.

In the next patch all devm_iio_device_alloc() calls will be handled.

Signed-off-by: Alexandru Ardelean <alexandru.ardelean@analog.com>
---
 drivers/iio/dummy/iio_simple_dummy.c         | 14 ++++++++------
 drivers/iio/industrialio-core.c              | 11 ++++++-----
 drivers/platform/x86/toshiba_acpi.c          |  3 +--
 drivers/staging/iio/Documentation/device.txt |  4 +---
 include/linux/iio/iio.h                      |  4 ++--
 5 files changed, 18 insertions(+), 18 deletions(-)

diff --git a/drivers/iio/dummy/iio_simple_dummy.c b/drivers/iio/dummy/iio_simple_dummy.c
index 6cb02299a215..b35ae7c039f7 100644
--- a/drivers/iio/dummy/iio_simple_dummy.c
+++ b/drivers/iio/dummy/iio_simple_dummy.c
@@ -566,6 +566,13 @@ static struct iio_sw_device *iio_dummy_probe(const char *name)
 	struct iio_dev *indio_dev;
 	struct iio_dummy_state *st;
 	struct iio_sw_device *swd;
+	struct device *parent = NULL;
+
+	/*
+	 * With hardware: Set the parent device.
+	 * parent = &spi->dev;
+	 * parent = &client->dev;
+	 */
 
 	swd = kzalloc(sizeof(*swd), GFP_KERNEL);
 	if (!swd) {
@@ -580,7 +587,7 @@ static struct iio_sw_device *iio_dummy_probe(const char *name)
 	 * It also has a region (accessed by iio_priv()
 	 * for chip specific state information.
 	 */
-	indio_dev = iio_device_alloc(sizeof(*st));
+	indio_dev = iio_device_alloc(parent, sizeof(*st));
 	if (!indio_dev) {
 		ret = -ENOMEM;
 		goto error_ret;
@@ -590,11 +597,6 @@ static struct iio_sw_device *iio_dummy_probe(const char *name)
 	mutex_init(&st->lock);
 
 	iio_dummy_init_device(indio_dev);
-	/*
-	 * With hardware: Set the parent device.
-	 * indio_dev->dev.parent = &spi->dev;
-	 * indio_dev->dev.parent = &client->dev;
-	 */
 
 	 /*
 	 * Make the iio_dev struct available to remove function.
diff --git a/drivers/iio/industrialio-core.c b/drivers/iio/industrialio-core.c
index 1527f01a44f1..75661661aaba 100644
--- a/drivers/iio/industrialio-core.c
+++ b/drivers/iio/industrialio-core.c
@@ -1493,7 +1493,7 @@ struct device_type iio_device_type = {
  * iio_device_alloc() - allocate an iio_dev from a driver
  * @sizeof_priv:	Space to allocate for private structure.
  **/
-struct iio_dev *iio_device_alloc(int sizeof_priv)
+struct iio_dev *iio_device_alloc(struct device *parent, int sizeof_priv)
 {
 	struct iio_dev *dev;
 	size_t alloc_size;
@@ -1510,6 +1510,7 @@ struct iio_dev *iio_device_alloc(int sizeof_priv)
 	if (!dev)
 		return NULL;
 
+	dev->dev.parent = parent;
 	dev->dev.groups = dev->groups;
 	dev->dev.type = &iio_device_type;
 	dev->dev.bus = &iio_bus_type;
@@ -1551,7 +1552,7 @@ static void devm_iio_device_release(struct device *dev, void *res)
 
 /**
  * devm_iio_device_alloc - Resource-managed iio_device_alloc()
- * @dev:		Device to allocate iio_dev for
+ * @parent:		Device to allocate iio_dev for, and parent for this IIO device
  * @sizeof_priv:	Space to allocate for private structure.
  *
  * Managed iio_device_alloc. iio_dev allocated with this function is
@@ -1560,7 +1561,7 @@ static void devm_iio_device_release(struct device *dev, void *res)
  * RETURNS:
  * Pointer to allocated iio_dev on success, NULL on failure.
  */
-struct iio_dev *devm_iio_device_alloc(struct device *dev, int sizeof_priv)
+struct iio_dev *devm_iio_device_alloc(struct device *parent, int sizeof_priv)
 {
 	struct iio_dev **ptr, *iio_dev;
 
@@ -1569,10 +1570,10 @@ struct iio_dev *devm_iio_device_alloc(struct device *dev, int sizeof_priv)
 	if (!ptr)
 		return NULL;
 
-	iio_dev = iio_device_alloc(sizeof_priv);
+	iio_dev = iio_device_alloc(parent, sizeof_priv);
 	if (iio_dev) {
 		*ptr = iio_dev;
-		devres_add(dev, ptr);
+		devres_add(parent, ptr);
 	} else {
 		devres_free(ptr);
 	}
diff --git a/drivers/platform/x86/toshiba_acpi.c b/drivers/platform/x86/toshiba_acpi.c
index 808944546739..4a4d09c352dd 100644
--- a/drivers/platform/x86/toshiba_acpi.c
+++ b/drivers/platform/x86/toshiba_acpi.c
@@ -3128,7 +3128,7 @@ static int toshiba_acpi_add(struct acpi_device *acpi_dev)
 
 	toshiba_accelerometer_available(dev);
 	if (dev->accelerometer_supported) {
-		dev->indio_dev = iio_device_alloc(sizeof(*dev));
+		dev->indio_dev = iio_device_alloc(&acpi_dev->dev, sizeof(*dev));
 		if (!dev->indio_dev) {
 			pr_err("Unable to allocate iio device\n");
 			goto iio_error;
@@ -3138,7 +3138,6 @@ static int toshiba_acpi_add(struct acpi_device *acpi_dev)
 
 		dev->indio_dev->info = &toshiba_iio_accel_info;
 		dev->indio_dev->name = "Toshiba accelerometer";
-		dev->indio_dev->dev.parent = &acpi_dev->dev;
 		dev->indio_dev->modes = INDIO_DIRECT_MODE;
 		dev->indio_dev->channels = toshiba_iio_accel_channels;
 		dev->indio_dev->num_channels =
diff --git a/drivers/staging/iio/Documentation/device.txt b/drivers/staging/iio/Documentation/device.txt
index ec42544a46aa..0d1275b1eb3f 100644
--- a/drivers/staging/iio/Documentation/device.txt
+++ b/drivers/staging/iio/Documentation/device.txt
@@ -8,7 +8,7 @@ The crucial structure for device drivers in iio is iio_dev.
 
 First allocate one using:
 
-struct iio_dev *indio_dev = iio_device_alloc(sizeof(struct chip_state));
+struct iio_dev *indio_dev = iio_device_alloc(parent, sizeof(struct chip_state));
 where chip_state is a structure of local state data for this instance of
 the chip.
 
@@ -16,8 +16,6 @@ That data can be accessed using iio_priv(struct iio_dev *).
 
 Then fill in the following:
 
-- indio_dev->dev.parent
-	Struct device associated with the underlying hardware.
 - indio_dev->name
 	Name of the device being driven - made available as the name
 	attribute in sysfs.
diff --git a/include/linux/iio/iio.h b/include/linux/iio/iio.h
index a1be82e74c93..91a69f4751aa 100644
--- a/include/linux/iio/iio.h
+++ b/include/linux/iio/iio.h
@@ -676,7 +676,7 @@ static inline void *iio_device_get_drvdata(struct iio_dev *indio_dev)
 
 /* Can we make this smaller? */
 #define IIO_ALIGN L1_CACHE_BYTES
-struct iio_dev *iio_device_alloc(int sizeof_priv);
+struct iio_dev *iio_device_alloc(struct device *parent, int sizeof_priv);
 
 static inline void *iio_priv(const struct iio_dev *indio_dev)
 {
@@ -690,7 +690,7 @@ static inline struct iio_dev *iio_priv_to_dev(void *priv)
 }
 
 void iio_device_free(struct iio_dev *indio_dev);
-struct iio_dev *devm_iio_device_alloc(struct device *dev, int sizeof_priv);
+struct iio_dev *devm_iio_device_alloc(struct device *parent, int sizeof_priv);
 struct iio_trigger *devm_iio_trigger_alloc(struct device *dev,
 						const char *fmt, ...);
 /**
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

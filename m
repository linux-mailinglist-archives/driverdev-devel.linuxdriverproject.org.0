Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A153A1BB9E1
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 Apr 2020 11:31:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 859F587EA0;
	Tue, 28 Apr 2020 09:31:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id h-Tg0SA9+A7Y; Tue, 28 Apr 2020 09:31:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id F1DE6875DA;
	Tue, 28 Apr 2020 09:31:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9FE291BF27C
 for <devel@linuxdriverproject.org>; Tue, 28 Apr 2020 09:31:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 93EC622668
 for <devel@linuxdriverproject.org>; Tue, 28 Apr 2020 09:31:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EbRmfHtu9m3K for <devel@linuxdriverproject.org>;
 Tue, 28 Apr 2020 09:31:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx0a-00128a01.pphosted.com (mx0a-00128a01.pphosted.com
 [148.163.135.77])
 by silver.osuosl.org (Postfix) with ESMTPS id 426B62262B
 for <devel@driverdev.osuosl.org>; Tue, 28 Apr 2020 09:31:21 +0000 (UTC)
Received: from pps.filterd (m0167088.ppops.net [127.0.0.1])
 by mx0a-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 03S9F5og023238; Tue, 28 Apr 2020 05:31:20 -0400
Received: from nwd2mta4.analog.com ([137.71.173.58])
 by mx0a-00128a01.pphosted.com with ESMTP id 30pes28jje-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 28 Apr 2020 05:31:20 -0400
Received: from SCSQMBX10.ad.analog.com (scsqmbx10.ad.analog.com [10.77.17.5])
 by nwd2mta4.analog.com (8.14.7/8.14.7) with ESMTP id 03S9VIwt002693
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
 verify=FAIL); Tue, 28 Apr 2020 05:31:18 -0400
Received: from SCSQCASHYB7.ad.analog.com (10.77.17.133) by
 SCSQMBX10.ad.analog.com (10.77.17.5) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Tue, 28 Apr 2020 02:31:17 -0700
Received: from SCSQMBX11.ad.analog.com (10.77.17.10) by
 SCSQCASHYB7.ad.analog.com (10.77.17.133) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Tue, 28 Apr 2020 02:31:17 -0700
Received: from zeus.spd.analog.com (10.64.82.11) by SCSQMBX11.ad.analog.com
 (10.77.17.10) with Microsoft SMTP Server id 15.1.1779.2 via Frontend
 Transport; Tue, 28 Apr 2020 02:31:16 -0700
Received: from localhost.localdomain ([10.48.65.12])
 by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 03S9VEhP026277;
 Tue, 28 Apr 2020 05:31:14 -0400
From: Alexandru Ardelean <alexandru.ardelean@analog.com>
To: <linux-iio@vger.kernel.org>, <devel@driverdev.osuosl.org>,
 <linux-kernel@vger.kernel.org>
Subject: [PATCH] staging: iio: ad5933: rework probe to use devm_ function
 variants
Date: Tue, 28 Apr 2020 12:31:28 +0300
Message-ID: <20200428093128.60747-1-alexandru.ardelean@analog.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-ADIRoutedOnPrem: True
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-04-28_05:2020-04-27,
 2020-04-28 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 spamscore=0
 mlxscore=0 suspectscore=2 bulkscore=0 phishscore=0 priorityscore=1501
 clxscore=1015 malwarescore=0 impostorscore=0 lowpriorityscore=0
 mlxlogscore=999 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2004280080
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
Cc: Alexandru Ardelean <alexandru.ardelean@analog.com>, jic23@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This change cleans up the driver's probe function to use only devm_
function variants. This also gets rid of the remove function and moves the
clock & regulator de-initializations to the 'ad5933_cleanup()' callback.

Signed-off-by: Alexandru Ardelean <alexandru.ardelean@analog.com>
---
 .../staging/iio/impedance-analyzer/ad5933.c   | 59 ++++++++-----------
 1 file changed, 23 insertions(+), 36 deletions(-)

diff --git a/drivers/staging/iio/impedance-analyzer/ad5933.c b/drivers/staging/iio/impedance-analyzer/ad5933.c
index af0bcf95ee8a..06a6dcd7883b 100644
--- a/drivers/staging/iio/impedance-analyzer/ad5933.c
+++ b/drivers/staging/iio/impedance-analyzer/ad5933.c
@@ -602,11 +602,12 @@ static const struct iio_buffer_setup_ops ad5933_ring_setup_ops = {
 	.postdisable = ad5933_ring_postdisable,
 };
 
-static int ad5933_register_ring_funcs_and_init(struct iio_dev *indio_dev)
+static int ad5933_register_ring_funcs_and_init(struct device *dev,
+					       struct iio_dev *indio_dev)
 {
 	struct iio_buffer *buffer;
 
-	buffer = iio_kfifo_allocate();
+	buffer = devm_iio_kfifo_allocate(dev);
 	if (!buffer)
 		return -ENOMEM;
 
@@ -676,6 +677,14 @@ static void ad5933_work(struct work_struct *work)
 	}
 }
 
+static void ad5933_cleanup(void *data)
+{
+	struct ad5933_state *st = data;
+
+	clk_disable_unprepare(st->mclk);
+	regulator_disable(st->reg);
+}
+
 static int ad5933_probe(struct i2c_client *client,
 			const struct i2c_device_id *id)
 {
@@ -703,23 +712,28 @@ static int ad5933_probe(struct i2c_client *client,
 		dev_err(&client->dev, "Failed to enable specified VDD supply\n");
 		return ret;
 	}
+
+	ret = devm_add_action_or_reset(&client->dev, ad5933_cleanup, st);
+	if (ret)
+		return ret;
+
 	ret = regulator_get_voltage(st->reg);
 
 	if (ret < 0)
-		goto error_disable_reg;
+		return ret;
 
 	st->vref_mv = ret / 1000;
 
 	st->mclk = devm_clk_get(&client->dev, "mclk");
 	if (IS_ERR(st->mclk) && PTR_ERR(st->mclk) != -ENOENT) {
 		ret = PTR_ERR(st->mclk);
-		goto error_disable_reg;
+		return ret;
 	}
 
 	if (!IS_ERR(st->mclk)) {
 		ret = clk_prepare_enable(st->mclk);
 		if (ret < 0)
-			goto error_disable_reg;
+			return ret;
 		ext_clk_hz = clk_get_rate(st->mclk);
 	}
 
@@ -742,41 +756,15 @@ static int ad5933_probe(struct i2c_client *client,
 	indio_dev->channels = ad5933_channels;
 	indio_dev->num_channels = ARRAY_SIZE(ad5933_channels);
 
-	ret = ad5933_register_ring_funcs_and_init(indio_dev);
+	ret = ad5933_register_ring_funcs_and_init(&client->dev, indio_dev);
 	if (ret)
-		goto error_disable_mclk;
+		return ret;
 
 	ret = ad5933_setup(st);
 	if (ret)
-		goto error_unreg_ring;
-
-	ret = iio_device_register(indio_dev);
-	if (ret)
-		goto error_unreg_ring;
-
-	return 0;
-
-error_unreg_ring:
-	iio_kfifo_free(indio_dev->buffer);
-error_disable_mclk:
-	clk_disable_unprepare(st->mclk);
-error_disable_reg:
-	regulator_disable(st->reg);
-
-	return ret;
-}
-
-static int ad5933_remove(struct i2c_client *client)
-{
-	struct iio_dev *indio_dev = i2c_get_clientdata(client);
-	struct ad5933_state *st = iio_priv(indio_dev);
-
-	iio_device_unregister(indio_dev);
-	iio_kfifo_free(indio_dev->buffer);
-	regulator_disable(st->reg);
-	clk_disable_unprepare(st->mclk);
+		return ret;
 
-	return 0;
+	return devm_iio_device_register(&client->dev, indio_dev);
 }
 
 static const struct i2c_device_id ad5933_id[] = {
@@ -801,7 +789,6 @@ static struct i2c_driver ad5933_driver = {
 		.of_match_table = ad5933_of_match,
 	},
 	.probe = ad5933_probe,
-	.remove = ad5933_remove,
 	.id_table = ad5933_id,
 };
 module_i2c_driver(ad5933_driver);
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

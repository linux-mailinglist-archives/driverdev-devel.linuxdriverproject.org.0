Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 549F71DE2F3
	for <lists+driverdev-devel@lfdr.de>; Fri, 22 May 2020 11:23:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BC7B4888F8;
	Fri, 22 May 2020 09:23:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7mK2Vg0Nh93X; Fri, 22 May 2020 09:23:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 55B88887E9;
	Fri, 22 May 2020 09:22:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6412F1BF370
 for <devel@linuxdriverproject.org>; Fri, 22 May 2020 09:22:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 54209203DC
 for <devel@linuxdriverproject.org>; Fri, 22 May 2020 09:22:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hg5-fM-OWQtx for <devel@linuxdriverproject.org>;
 Fri, 22 May 2020 09:22:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx0a-00128a01.pphosted.com (mx0a-00128a01.pphosted.com
 [148.163.135.77])
 by silver.osuosl.org (Postfix) with ESMTPS id 54BA4203AF
 for <devel@driverdev.osuosl.org>; Fri, 22 May 2020 09:22:26 +0000 (UTC)
Received: from pps.filterd (m0167089.ppops.net [127.0.0.1])
 by mx0a-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 04M8XAYn016246; Fri, 22 May 2020 04:36:10 -0400
Received: from nwd2mta3.analog.com ([137.71.173.56])
 by mx0a-00128a01.pphosted.com with ESMTP id 312d3655nj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 22 May 2020 04:36:08 -0400
Received: from SCSQMBX11.ad.analog.com (scsqmbx11.ad.analog.com [10.77.17.10])
 by nwd2mta3.analog.com (8.14.7/8.14.7) with ESMTP id 04M8a6Nd040205
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
 verify=FAIL); Fri, 22 May 2020 04:36:07 -0400
Received: from SCSQMBX11.ad.analog.com (10.77.17.10) by
 SCSQMBX11.ad.analog.com (10.77.17.10) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Fri, 22 May 2020 01:36:05 -0700
Received: from zeus.spd.analog.com (10.64.82.11) by SCSQMBX11.ad.analog.com
 (10.77.17.10) with Microsoft SMTP Server id 15.1.1779.2 via Frontend
 Transport; Fri, 22 May 2020 01:36:04 -0700
Received: from saturn.ad.analog.com ([10.48.65.112])
 by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 04M8ZhUP005306;
 Fri, 22 May 2020 04:35:55 -0400
From: Alexandru Ardelean <alexandru.ardelean@analog.com>
To: <bcm-kernel-feedback-list@broadcom.com>, <linux-iio@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-arm-kernel@lists.infradead.org>, <linux-input@vger.kernel.org>,
 <linux-aspeed@lists.ozlabs.org>, <linux-samsung-soc@vger.kernel.org>,
 <linux-amlogic@lists.infradead.org>,
 <linux-mediatek@lists.infradead.org>, <linux-arm-msm@vger.kernel.org>,
 <linux-rockchip@lists.infradead.org>, <linux-pm@vger.kernel.org>,
 <platform-driver-x86@vger.kernel.org>, <devel@driverdev.osuosl.org>
Subject: [PATCH 2/5] iio: remove explicit IIO device parent assignment
Date: Fri, 22 May 2020 11:22:05 +0300
Message-ID: <20200522082208.383631-2-alexandru.ardelean@analog.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200522082208.383631-1-alexandru.ardelean@analog.com>
References: <20200522082208.383631-1-alexandru.ardelean@analog.com>
MIME-Version: 1.0
X-ADIRoutedOnPrem: True
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.676
 definitions=2020-05-22_05:2020-05-21,
 2020-05-22 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=999
 suspectscore=2 bulkscore=0 mlxscore=0 phishscore=0 cotscore=-2147483648
 impostorscore=0 priorityscore=1501 lowpriorityscore=0 spamscore=0
 clxscore=1015 adultscore=0 malwarescore=0 classifier=spam adjust=0
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

This patch applies the semantic patch:
@@
expression I, P, SP;
@@
   I = devm_iio_device_alloc(P, SP);
   ...
-  I->dev.parent = P;

It updates 302 files and does 307 deletions.
This semantic patch also removes some comments like
'/* Establish that the iio_dev is a child of the i2c device */'

But this is is only done in case where the block is left empty.

The patch does not seem to cover all cases. It looks like in some cases a
different variable is used in some cases to assign the parent, but it
points to the same reference.
In other cases, the block covered by ... may be just too big to be covered
by the semantic patch.

However, this looks pretty good as well, as it does cover a big bulk of the
drivers that should remove the parent assignment.

Signed-off-by: Alexandru Ardelean <alexandru.ardelean@analog.com>
---
 drivers/counter/104-quad-8.c                     | 1 -
 drivers/counter/stm32-lptimer-cnt.c              | 1 -
 drivers/iio/accel/adis16201.c                    | 1 -
 drivers/iio/accel/adis16209.c                    | 1 -
 drivers/iio/accel/adxl345_core.c                 | 1 -
 drivers/iio/accel/adxl372.c                      | 1 -
 drivers/iio/accel/bma180.c                       | 1 -
 drivers/iio/accel/bma220_spi.c                   | 1 -
 drivers/iio/accel/bma400_core.c                  | 1 -
 drivers/iio/accel/bmc150-accel-core.c            | 1 -
 drivers/iio/accel/da280.c                        | 1 -
 drivers/iio/accel/da311.c                        | 1 -
 drivers/iio/accel/dmard06.c                      | 1 -
 drivers/iio/accel/dmard09.c                      | 1 -
 drivers/iio/accel/dmard10.c                      | 1 -
 drivers/iio/accel/hid-sensor-accel-3d.c          | 1 -
 drivers/iio/accel/kxsd9.c                        | 1 -
 drivers/iio/accel/mc3230.c                       | 1 -
 drivers/iio/accel/mma7455_core.c                 | 1 -
 drivers/iio/accel/mma7660.c                      | 1 -
 drivers/iio/accel/mma9551.c                      | 1 -
 drivers/iio/accel/mxc4005.c                      | 1 -
 drivers/iio/accel/mxc6255.c                      | 1 -
 drivers/iio/accel/sca3000.c                      | 1 -
 drivers/iio/accel/ssp_accel_sensor.c             | 1 -
 drivers/iio/accel/stk8312.c                      | 1 -
 drivers/iio/accel/stk8ba50.c                     | 1 -
 drivers/iio/adc/ab8500-gpadc.c                   | 1 -
 drivers/iio/adc/ad7091r-base.c                   | 1 -
 drivers/iio/adc/ad7124.c                         | 1 -
 drivers/iio/adc/ad7266.c                         | 1 -
 drivers/iio/adc/ad7291.c                         | 1 -
 drivers/iio/adc/ad7292.c                         | 1 -
 drivers/iio/adc/ad7298.c                         | 1 -
 drivers/iio/adc/ad7476.c                         | 1 -
 drivers/iio/adc/ad7606.c                         | 1 -
 drivers/iio/adc/ad7766.c                         | 1 -
 drivers/iio/adc/ad7768-1.c                       | 1 -
 drivers/iio/adc/ad7780.c                         | 1 -
 drivers/iio/adc/ad7791.c                         | 1 -
 drivers/iio/adc/ad7793.c                         | 1 -
 drivers/iio/adc/ad7887.c                         | 1 -
 drivers/iio/adc/ad7923.c                         | 1 -
 drivers/iio/adc/ad7949.c                         | 1 -
 drivers/iio/adc/ad799x.c                         | 1 -
 drivers/iio/adc/adi-axi-adc.c                    | 1 -
 drivers/iio/adc/aspeed_adc.c                     | 1 -
 drivers/iio/adc/at91-sama5d2_adc.c               | 1 -
 drivers/iio/adc/at91_adc.c                       | 1 -
 drivers/iio/adc/axp20x_adc.c                     | 1 -
 drivers/iio/adc/axp288_adc.c                     | 1 -
 drivers/iio/adc/bcm_iproc_adc.c                  | 1 -
 drivers/iio/adc/berlin2-adc.c                    | 1 -
 drivers/iio/adc/cc10001_adc.c                    | 1 -
 drivers/iio/adc/cpcap-adc.c                      | 1 -
 drivers/iio/adc/da9150-gpadc.c                   | 1 -
 drivers/iio/adc/dln2-adc.c                       | 1 -
 drivers/iio/adc/envelope-detector.c              | 1 -
 drivers/iio/adc/ep93xx_adc.c                     | 1 -
 drivers/iio/adc/exynos_adc.c                     | 1 -
 drivers/iio/adc/fsl-imx25-gcq.c                  | 1 -
 drivers/iio/adc/hi8435.c                         | 1 -
 drivers/iio/adc/imx7d_adc.c                      | 1 -
 drivers/iio/adc/ina2xx-adc.c                     | 1 -
 drivers/iio/adc/ingenic-adc.c                    | 1 -
 drivers/iio/adc/intel_mrfld_adc.c                | 1 -
 drivers/iio/adc/lp8788_adc.c                     | 1 -
 drivers/iio/adc/lpc18xx_adc.c                    | 1 -
 drivers/iio/adc/lpc32xx_adc.c                    | 1 -
 drivers/iio/adc/ltc2471.c                        | 1 -
 drivers/iio/adc/ltc2485.c                        | 1 -
 drivers/iio/adc/max1027.c                        | 1 -
 drivers/iio/adc/max11100.c                       | 1 -
 drivers/iio/adc/max1118.c                        | 1 -
 drivers/iio/adc/max1241.c                        | 1 -
 drivers/iio/adc/max9611.c                        | 1 -
 drivers/iio/adc/mcp320x.c                        | 1 -
 drivers/iio/adc/mcp3422.c                        | 1 -
 drivers/iio/adc/men_z188_adc.c                   | 1 -
 drivers/iio/adc/meson_saradc.c                   | 1 -
 drivers/iio/adc/mt6577_auxadc.c                  | 1 -
 drivers/iio/adc/mxs-lradc-adc.c                  | 1 -
 drivers/iio/adc/nau7802.c                        | 1 -
 drivers/iio/adc/npcm_adc.c                       | 1 -
 drivers/iio/adc/palmas_gpadc.c                   | 1 -
 drivers/iio/adc/qcom-pm8xxx-xoadc.c              | 1 -
 drivers/iio/adc/qcom-spmi-adc5.c                 | 1 -
 drivers/iio/adc/qcom-spmi-vadc.c                 | 1 -
 drivers/iio/adc/rcar-gyroadc.c                   | 1 -
 drivers/iio/adc/rn5t618-adc.c                    | 1 -
 drivers/iio/adc/rockchip_saradc.c                | 1 -
 drivers/iio/adc/sc27xx_adc.c                     | 1 -
 drivers/iio/adc/sd_adc_modulator.c               | 1 -
 drivers/iio/adc/spear_adc.c                      | 1 -
 drivers/iio/adc/stm32-adc.c                      | 1 -
 drivers/iio/adc/stm32-dfsdm-adc.c                | 1 -
 drivers/iio/adc/stmpe-adc.c                      | 1 -
 drivers/iio/adc/stx104.c                         | 1 -
 drivers/iio/adc/sun4i-gpadc-iio.c                | 1 -
 drivers/iio/adc/ti-adc081c.c                     | 1 -
 drivers/iio/adc/ti-adc0832.c                     | 1 -
 drivers/iio/adc/ti-adc084s021.c                  | 1 -
 drivers/iio/adc/ti-adc108s102.c                  | 1 -
 drivers/iio/adc/ti-adc12138.c                    | 1 -
 drivers/iio/adc/ti-adc128s052.c                  | 1 -
 drivers/iio/adc/ti-adc161s626.c                  | 1 -
 drivers/iio/adc/ti-ads1015.c                     | 1 -
 drivers/iio/adc/ti-ads124s08.c                   | 1 -
 drivers/iio/adc/ti-ads7950.c                     | 1 -
 drivers/iio/adc/ti-ads8344.c                     | 1 -
 drivers/iio/adc/ti-ads8688.c                     | 1 -
 drivers/iio/adc/ti-tlc4541.c                     | 1 -
 drivers/iio/adc/ti_am335x_adc.c                  | 1 -
 drivers/iio/adc/twl4030-madc.c                   | 1 -
 drivers/iio/adc/twl6030-gpadc.c                  | 1 -
 drivers/iio/adc/vf610_adc.c                      | 1 -
 drivers/iio/adc/viperboard_adc.c                 | 1 -
 drivers/iio/adc/xilinx-xadc-core.c               | 1 -
 drivers/iio/afe/iio-rescale.c                    | 1 -
 drivers/iio/amplifiers/hmc425a.c                 | 1 -
 drivers/iio/chemical/ams-iaq-core.c              | 1 -
 drivers/iio/chemical/atlas-sensor.c              | 1 -
 drivers/iio/chemical/bme680_core.c               | 1 -
 drivers/iio/chemical/ccs811.c                    | 1 -
 drivers/iio/chemical/pms7003.c                   | 1 -
 drivers/iio/chemical/sgp30.c                     | 1 -
 drivers/iio/chemical/sps30.c                     | 1 -
 drivers/iio/dac/ad5064.c                         | 1 -
 drivers/iio/dac/ad5360.c                         | 1 -
 drivers/iio/dac/ad5380.c                         | 1 -
 drivers/iio/dac/ad5421.c                         | 1 -
 drivers/iio/dac/ad5446.c                         | 1 -
 drivers/iio/dac/ad5449.c                         | 1 -
 drivers/iio/dac/ad5504.c                         | 1 -
 drivers/iio/dac/ad5592r-base.c                   | 1 -
 drivers/iio/dac/ad5624r_spi.c                    | 1 -
 drivers/iio/dac/ad5686.c                         | 1 -
 drivers/iio/dac/ad5755.c                         | 1 -
 drivers/iio/dac/ad5758.c                         | 1 -
 drivers/iio/dac/ad5761.c                         | 1 -
 drivers/iio/dac/ad5764.c                         | 1 -
 drivers/iio/dac/ad5791.c                         | 1 -
 drivers/iio/dac/ad7303.c                         | 1 -
 drivers/iio/dac/ad8801.c                         | 1 -
 drivers/iio/dac/cio-dac.c                        | 1 -
 drivers/iio/dac/dpot-dac.c                       | 1 -
 drivers/iio/dac/ds4424.c                         | 1 -
 drivers/iio/dac/lpc18xx_dac.c                    | 1 -
 drivers/iio/dac/ltc1660.c                        | 1 -
 drivers/iio/dac/ltc2632.c                        | 1 -
 drivers/iio/dac/m62332.c                         | 3 ---
 drivers/iio/dac/max517.c                         | 3 ---
 drivers/iio/dac/max5821.c                        | 1 -
 drivers/iio/dac/mcp4725.c                        | 1 -
 drivers/iio/dac/mcp4922.c                        | 1 -
 drivers/iio/dac/stm32-dac.c                      | 1 -
 drivers/iio/dac/ti-dac082s085.c                  | 1 -
 drivers/iio/dac/ti-dac5571.c                     | 1 -
 drivers/iio/dac/ti-dac7311.c                     | 1 -
 drivers/iio/dac/ti-dac7612.c                     | 1 -
 drivers/iio/dac/vf610_dac.c                      | 1 -
 drivers/iio/frequency/ad9523.c                   | 1 -
 drivers/iio/frequency/adf4350.c                  | 1 -
 drivers/iio/frequency/adf4371.c                  | 1 -
 drivers/iio/gyro/adis16080.c                     | 1 -
 drivers/iio/gyro/adis16130.c                     | 1 -
 drivers/iio/gyro/adis16136.c                     | 1 -
 drivers/iio/gyro/adis16260.c                     | 1 -
 drivers/iio/gyro/adxrs450.c                      | 1 -
 drivers/iio/gyro/bmg160_core.c                   | 1 -
 drivers/iio/gyro/fxas21002c_core.c               | 1 -
 drivers/iio/gyro/hid-sensor-gyro-3d.c            | 1 -
 drivers/iio/gyro/itg3200_core.c                  | 1 -
 drivers/iio/gyro/mpu3050-core.c                  | 1 -
 drivers/iio/gyro/ssp_gyro_sensor.c               | 1 -
 drivers/iio/health/max30100.c                    | 1 -
 drivers/iio/health/max30102.c                    | 1 -
 drivers/iio/humidity/am2315.c                    | 1 -
 drivers/iio/humidity/hdc100x.c                   | 1 -
 drivers/iio/humidity/hid-sensor-humidity.c       | 1 -
 drivers/iio/humidity/htu21.c                     | 1 -
 drivers/iio/humidity/si7005.c                    | 1 -
 drivers/iio/humidity/si7020.c                    | 1 -
 drivers/iio/imu/adis16400.c                      | 1 -
 drivers/iio/imu/adis16460.c                      | 1 -
 drivers/iio/imu/adis16475.c                      | 1 -
 drivers/iio/imu/adis16480.c                      | 1 -
 drivers/iio/imu/bmi160/bmi160_core.c             | 1 -
 drivers/iio/imu/fxos8700_core.c                  | 1 -
 drivers/iio/imu/kmx61.c                          | 1 -
 drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_core.c     | 1 -
 drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_shub.c     | 1 -
 drivers/iio/light/acpi-als.c                     | 1 -
 drivers/iio/light/adjd_s311.c                    | 1 -
 drivers/iio/light/adux1020.c                     | 1 -
 drivers/iio/light/al3010.c                       | 1 -
 drivers/iio/light/al3320a.c                      | 1 -
 drivers/iio/light/apds9300.c                     | 1 -
 drivers/iio/light/apds9960.c                     | 1 -
 drivers/iio/light/bh1750.c                       | 1 -
 drivers/iio/light/bh1780.c                       | 1 -
 drivers/iio/light/cm32181.c                      | 1 -
 drivers/iio/light/cm3232.c                       | 1 -
 drivers/iio/light/cm3323.c                       | 1 -
 drivers/iio/light/cm36651.c                      | 1 -
 drivers/iio/light/gp2ap002.c                     | 1 -
 drivers/iio/light/gp2ap020a00f.c                 | 1 -
 drivers/iio/light/hid-sensor-als.c               | 1 -
 drivers/iio/light/hid-sensor-prox.c              | 1 -
 drivers/iio/light/iqs621-als.c                   | 1 -
 drivers/iio/light/isl29018.c                     | 1 -
 drivers/iio/light/isl29028.c                     | 1 -
 drivers/iio/light/isl29125.c                     | 1 -
 drivers/iio/light/jsa1212.c                      | 1 -
 drivers/iio/light/lv0104cs.c                     | 1 -
 drivers/iio/light/max44000.c                     | 1 -
 drivers/iio/light/max44009.c                     | 1 -
 drivers/iio/light/noa1305.c                      | 1 -
 drivers/iio/light/opt3001.c                      | 1 -
 drivers/iio/light/pa12203001.c                   | 1 -
 drivers/iio/light/rpr0521.c                      | 1 -
 drivers/iio/light/si1133.c                       | 1 -
 drivers/iio/light/si1145.c                       | 1 -
 drivers/iio/light/st_uvis25_core.c               | 1 -
 drivers/iio/light/stk3310.c                      | 1 -
 drivers/iio/light/tcs3414.c                      | 1 -
 drivers/iio/light/tcs3472.c                      | 1 -
 drivers/iio/light/tsl2563.c                      | 1 -
 drivers/iio/light/tsl2583.c                      | 1 -
 drivers/iio/light/tsl2772.c                      | 1 -
 drivers/iio/light/tsl4531.c                      | 1 -
 drivers/iio/light/us5182d.c                      | 1 -
 drivers/iio/light/vcnl4000.c                     | 1 -
 drivers/iio/light/vcnl4035.c                     | 1 -
 drivers/iio/light/veml6030.c                     | 1 -
 drivers/iio/light/veml6070.c                     | 1 -
 drivers/iio/light/vl6180.c                       | 1 -
 drivers/iio/light/zopt2201.c                     | 1 -
 drivers/iio/magnetometer/ak8974.c                | 1 -
 drivers/iio/magnetometer/bmc150_magn.c           | 1 -
 drivers/iio/magnetometer/hid-sensor-magn-3d.c    | 1 -
 drivers/iio/magnetometer/hmc5843_core.c          | 1 -
 drivers/iio/magnetometer/mag3110.c               | 1 -
 drivers/iio/magnetometer/mmc35240.c              | 1 -
 drivers/iio/magnetometer/rm3100-core.c           | 1 -
 drivers/iio/multiplexer/iio-mux.c                | 1 -
 drivers/iio/orientation/hid-sensor-incl-3d.c     | 1 -
 drivers/iio/position/iqs624-pos.c                | 1 -
 drivers/iio/potentiometer/ad5272.c               | 1 -
 drivers/iio/potentiometer/ds1803.c               | 1 -
 drivers/iio/potentiometer/max5432.c              | 1 -
 drivers/iio/potentiometer/max5481.c              | 1 -
 drivers/iio/potentiometer/max5487.c              | 1 -
 drivers/iio/potentiometer/mcp4018.c              | 1 -
 drivers/iio/potentiometer/mcp41010.c             | 1 -
 drivers/iio/potentiometer/mcp4131.c              | 1 -
 drivers/iio/potentiometer/mcp4531.c              | 1 -
 drivers/iio/potentiometer/tpl0102.c              | 1 -
 drivers/iio/pressure/abp060mg.c                  | 1 -
 drivers/iio/pressure/bmp280-core.c               | 1 -
 drivers/iio/pressure/dlhl60d.c                   | 1 -
 drivers/iio/pressure/dps310.c                    | 1 -
 drivers/iio/pressure/hid-sensor-press.c          | 1 -
 drivers/iio/pressure/hp03.c                      | 1 -
 drivers/iio/pressure/hp206c.c                    | 1 -
 drivers/iio/pressure/icp10100.c                  | 1 -
 drivers/iio/pressure/mpl115.c                    | 1 -
 drivers/iio/pressure/mpl3115.c                   | 1 -
 drivers/iio/pressure/ms5637.c                    | 1 -
 drivers/iio/pressure/t5403.c                     | 1 -
 drivers/iio/pressure/zpa2326.c                   | 1 -
 drivers/iio/proximity/as3935.c                   | 1 -
 drivers/iio/proximity/isl29501.c                 | 1 -
 drivers/iio/proximity/mb1232.c                   | 1 -
 drivers/iio/proximity/rfd77402.c                 | 1 -
 drivers/iio/proximity/sx9310.c                   | 1 -
 drivers/iio/proximity/sx9500.c                   | 1 -
 drivers/iio/proximity/vl53l0x-i2c.c              | 1 -
 drivers/iio/resolver/ad2s1200.c                  | 1 -
 drivers/iio/resolver/ad2s90.c                    | 1 -
 drivers/iio/temperature/hid-sensor-temperature.c | 1 -
 drivers/iio/temperature/iqs620at-temp.c          | 1 -
 drivers/iio/temperature/ltc2983.c                | 1 -
 drivers/iio/temperature/max31856.c               | 1 -
 drivers/iio/temperature/maxim_thermocouple.c     | 1 -
 drivers/iio/temperature/mlx90614.c               | 1 -
 drivers/iio/temperature/mlx90632.c               | 1 -
 drivers/iio/temperature/tmp006.c                 | 1 -
 drivers/iio/temperature/tmp007.c                 | 1 -
 drivers/iio/temperature/tsys02d.c                | 1 -
 drivers/iio/trigger/stm32-timer-trigger.c        | 1 -
 drivers/input/touchscreen/tsc2007_iio.c          | 1 -
 drivers/staging/iio/accel/adis16203.c            | 1 -
 drivers/staging/iio/accel/adis16240.c            | 1 -
 drivers/staging/iio/adc/ad7280a.c                | 1 -
 drivers/staging/iio/adc/ad7816.c                 | 1 -
 drivers/staging/iio/cdc/ad7150.c                 | 2 --
 drivers/staging/iio/cdc/ad7746.c                 | 1 -
 drivers/staging/iio/frequency/ad9832.c           | 1 -
 drivers/staging/iio/frequency/ad9834.c           | 1 -
 drivers/staging/iio/impedance-analyzer/ad5933.c  | 1 -
 drivers/staging/iio/resolver/ad2s1210.c          | 1 -
 302 files changed, 307 deletions(-)

diff --git a/drivers/counter/104-quad-8.c b/drivers/counter/104-quad-8.c
index aa13708c2bc3..69fd34fe2749 100644
--- a/drivers/counter/104-quad-8.c
+++ b/drivers/counter/104-quad-8.c
@@ -1538,7 +1538,6 @@ static int quad8_probe(struct device *dev, unsigned int id)
 	indio_dev->num_channels = ARRAY_SIZE(quad8_channels);
 	indio_dev->channels = quad8_channels;
 	indio_dev->name = dev_name(dev);
-	indio_dev->dev.parent = dev;
 
 	/* Initialize Counter device and driver data */
 	quad8iio = iio_priv(indio_dev);
diff --git a/drivers/counter/stm32-lptimer-cnt.c b/drivers/counter/stm32-lptimer-cnt.c
index 8e276eb655f5..fd6828e2d34f 100644
--- a/drivers/counter/stm32-lptimer-cnt.c
+++ b/drivers/counter/stm32-lptimer-cnt.c
@@ -648,7 +648,6 @@ static int stm32_lptim_cnt_probe(struct platform_device *pdev)
 
 	/* Initialize IIO device */
 	indio_dev->name = dev_name(&pdev->dev);
-	indio_dev->dev.parent = &pdev->dev;
 	indio_dev->dev.of_node = pdev->dev.of_node;
 	indio_dev->info = &stm32_lptim_cnt_iio_info;
 	if (ddata->has_encoder)
diff --git a/drivers/iio/accel/adis16201.c b/drivers/iio/accel/adis16201.c
index 4154e7396bbe..59a24c355a1a 100644
--- a/drivers/iio/accel/adis16201.c
+++ b/drivers/iio/accel/adis16201.c
@@ -271,7 +271,6 @@ static int adis16201_probe(struct spi_device *spi)
 	spi_set_drvdata(spi, indio_dev);
 
 	indio_dev->name = spi->dev.driver->name;
-	indio_dev->dev.parent = &spi->dev;
 	indio_dev->info = &adis16201_info;
 
 	indio_dev->channels = adis16201_channels;
diff --git a/drivers/iio/accel/adis16209.c b/drivers/iio/accel/adis16209.c
index 31d45e7c5485..3d5538e2f76e 100644
--- a/drivers/iio/accel/adis16209.c
+++ b/drivers/iio/accel/adis16209.c
@@ -282,7 +282,6 @@ static int adis16209_probe(struct spi_device *spi)
 	spi_set_drvdata(spi, indio_dev);
 
 	indio_dev->name = spi->dev.driver->name;
-	indio_dev->dev.parent = &spi->dev;
 	indio_dev->info = &adis16209_info;
 	indio_dev->channels = adis16209_channels;
 	indio_dev->num_channels = ARRAY_SIZE(adis16209_channels);
diff --git a/drivers/iio/accel/adxl345_core.c b/drivers/iio/accel/adxl345_core.c
index 9c269799e6c1..6d6468ef3dfd 100644
--- a/drivers/iio/accel/adxl345_core.c
+++ b/drivers/iio/accel/adxl345_core.c
@@ -246,7 +246,6 @@ int adxl345_core_probe(struct device *dev, struct regmap *regmap,
 		return ret;
 	}
 
-	indio_dev->dev.parent = dev;
 	indio_dev->name = name;
 	indio_dev->info = &adxl345_info;
 	indio_dev->modes = INDIO_DIRECT_MODE;
diff --git a/drivers/iio/accel/adxl372.c b/drivers/iio/accel/adxl372.c
index 60daf04ce188..26ca45073a56 100644
--- a/drivers/iio/accel/adxl372.c
+++ b/drivers/iio/accel/adxl372.c
@@ -938,7 +938,6 @@ int adxl372_probe(struct device *dev, struct regmap *regmap,
 	indio_dev->channels = adxl372_channels;
 	indio_dev->num_channels = ARRAY_SIZE(adxl372_channels);
 	indio_dev->available_scan_masks = adxl372_channel_masks;
-	indio_dev->dev.parent = dev;
 	indio_dev->name = name;
 	indio_dev->info = &adxl372_info;
 	indio_dev->modes = INDIO_DIRECT_MODE | INDIO_BUFFER_SOFTWARE;
diff --git a/drivers/iio/accel/bma180.c b/drivers/iio/accel/bma180.c
index 265722e4b13f..5b7a467c7b27 100644
--- a/drivers/iio/accel/bma180.c
+++ b/drivers/iio/accel/bma180.c
@@ -1038,7 +1038,6 @@ static int bma180_probe(struct i2c_client *client,
 		goto err_chip_disable;
 
 	mutex_init(&data->mutex);
-	indio_dev->dev.parent = dev;
 	indio_dev->channels = data->part_info->channels;
 	indio_dev->num_channels = data->part_info->num_channels;
 	indio_dev->name = id->name;
diff --git a/drivers/iio/accel/bma220_spi.c b/drivers/iio/accel/bma220_spi.c
index cae905039cb6..cce8324394f5 100644
--- a/drivers/iio/accel/bma220_spi.c
+++ b/drivers/iio/accel/bma220_spi.c
@@ -237,7 +237,6 @@ static int bma220_probe(struct spi_device *spi)
 	spi_set_drvdata(spi, indio_dev);
 	mutex_init(&data->lock);
 
-	indio_dev->dev.parent = &spi->dev;
 	indio_dev->info = &bma220_info;
 	indio_dev->name = BMA220_DEVICE_NAME;
 	indio_dev->modes = INDIO_DIRECT_MODE;
diff --git a/drivers/iio/accel/bma400_core.c b/drivers/iio/accel/bma400_core.c
index cc77f89c048b..7eeba80e32cb 100644
--- a/drivers/iio/accel/bma400_core.c
+++ b/drivers/iio/accel/bma400_core.c
@@ -816,7 +816,6 @@ int bma400_probe(struct device *dev, struct regmap *regmap, const char *name)
 		return ret;
 
 	mutex_init(&data->mutex);
-	indio_dev->dev.parent = dev;
 	indio_dev->name = name;
 	indio_dev->info = &bma400_info;
 	indio_dev->channels = bma400_channels;
diff --git a/drivers/iio/accel/bmc150-accel-core.c b/drivers/iio/accel/bmc150-accel-core.c
index 121b4e89f038..8f60d0727ee8 100644
--- a/drivers/iio/accel/bmc150-accel-core.c
+++ b/drivers/iio/accel/bmc150-accel-core.c
@@ -1574,7 +1574,6 @@ int bmc150_accel_core_probe(struct device *dev, struct regmap *regmap, int irq,
 
 	mutex_init(&data->mutex);
 
-	indio_dev->dev.parent = dev;
 	indio_dev->channels = data->chip_info->channels;
 	indio_dev->num_channels = data->chip_info->num_channels;
 	indio_dev->name = name ? name : data->chip_info->name;
diff --git a/drivers/iio/accel/da280.c b/drivers/iio/accel/da280.c
index 227bea2d738b..4472dde6899e 100644
--- a/drivers/iio/accel/da280.c
+++ b/drivers/iio/accel/da280.c
@@ -120,7 +120,6 @@ static int da280_probe(struct i2c_client *client,
 	data->client = client;
 	i2c_set_clientdata(client, indio_dev);
 
-	indio_dev->dev.parent = &client->dev;
 	indio_dev->info = &da280_info;
 	indio_dev->modes = INDIO_DIRECT_MODE;
 	indio_dev->channels = da280_channels;
diff --git a/drivers/iio/accel/da311.c b/drivers/iio/accel/da311.c
index c20979249a48..3b3df620ba27 100644
--- a/drivers/iio/accel/da311.c
+++ b/drivers/iio/accel/da311.c
@@ -231,7 +231,6 @@ static int da311_probe(struct i2c_client *client,
 	data->client = client;
 	i2c_set_clientdata(client, indio_dev);
 
-	indio_dev->dev.parent = &client->dev;
 	indio_dev->info = &da311_info;
 	indio_dev->name = "da311";
 	indio_dev->modes = INDIO_DIRECT_MODE;
diff --git a/drivers/iio/accel/dmard06.c b/drivers/iio/accel/dmard06.c
index ef89bded7390..de2868c28d95 100644
--- a/drivers/iio/accel/dmard06.c
+++ b/drivers/iio/accel/dmard06.c
@@ -161,7 +161,6 @@ static int dmard06_probe(struct i2c_client *client,
 	dmard06->chip_id = ret;
 
 	i2c_set_clientdata(client, indio_dev);
-	indio_dev->dev.parent = &client->dev;
 	indio_dev->name = DMARD06_DRV_NAME;
 	indio_dev->modes = INDIO_DIRECT_MODE;
 	indio_dev->channels = dmard06_channels;
diff --git a/drivers/iio/accel/dmard09.c b/drivers/iio/accel/dmard09.c
index 2d666cd69b29..e6e28c964777 100644
--- a/drivers/iio/accel/dmard09.c
+++ b/drivers/iio/accel/dmard09.c
@@ -116,7 +116,6 @@ static int dmard09_probe(struct i2c_client *client,
 	}
 
 	i2c_set_clientdata(client, indio_dev);
-	indio_dev->dev.parent = &client->dev;
 	indio_dev->name = DMARD09_DRV_NAME;
 	indio_dev->modes = INDIO_DIRECT_MODE;
 	indio_dev->channels = dmard09_channels;
diff --git a/drivers/iio/accel/dmard10.c b/drivers/iio/accel/dmard10.c
index 71c852b8bb3e..90206f015857 100644
--- a/drivers/iio/accel/dmard10.c
+++ b/drivers/iio/accel/dmard10.c
@@ -196,7 +196,6 @@ static int dmard10_probe(struct i2c_client *client,
 	data->client = client;
 	i2c_set_clientdata(client, indio_dev);
 
-	indio_dev->dev.parent = &client->dev;
 	indio_dev->info = &dmard10_info;
 	indio_dev->name = "dmard10";
 	indio_dev->modes = INDIO_DIRECT_MODE;
diff --git a/drivers/iio/accel/hid-sensor-accel-3d.c b/drivers/iio/accel/hid-sensor-accel-3d.c
index 0ec0533448bc..4c5e594024f8 100644
--- a/drivers/iio/accel/hid-sensor-accel-3d.c
+++ b/drivers/iio/accel/hid-sensor-accel-3d.c
@@ -384,7 +384,6 @@ static int hid_accel_3d_probe(struct platform_device *pdev)
 		goto error_free_dev_mem;
 	}
 
-	indio_dev->dev.parent = &pdev->dev;
 	indio_dev->info = &accel_3d_info;
 	indio_dev->name = name;
 	indio_dev->modes = INDIO_DIRECT_MODE;
diff --git a/drivers/iio/accel/kxsd9.c b/drivers/iio/accel/kxsd9.c
index 0b876b2dc5bd..63b1d8ee6c6f 100644
--- a/drivers/iio/accel/kxsd9.c
+++ b/drivers/iio/accel/kxsd9.c
@@ -411,7 +411,6 @@ int kxsd9_common_probe(struct device *dev,
 	indio_dev->channels = kxsd9_channels;
 	indio_dev->num_channels = ARRAY_SIZE(kxsd9_channels);
 	indio_dev->name = name;
-	indio_dev->dev.parent = dev;
 	indio_dev->info = &kxsd9_info;
 	indio_dev->modes = INDIO_DIRECT_MODE;
 	indio_dev->available_scan_masks = kxsd9_scan_masks;
diff --git a/drivers/iio/accel/mc3230.c b/drivers/iio/accel/mc3230.c
index 02b3d25b3d96..46e4283fc037 100644
--- a/drivers/iio/accel/mc3230.c
+++ b/drivers/iio/accel/mc3230.c
@@ -132,7 +132,6 @@ static int mc3230_probe(struct i2c_client *client,
 	data->client = client;
 	i2c_set_clientdata(client, indio_dev);
 
-	indio_dev->dev.parent = &client->dev;
 	indio_dev->info = &mc3230_info;
 	indio_dev->name = "mc3230";
 	indio_dev->modes = INDIO_DIRECT_MODE;
diff --git a/drivers/iio/accel/mma7455_core.c b/drivers/iio/accel/mma7455_core.c
index 8b5a6aff9bf4..7e99bcb3398d 100644
--- a/drivers/iio/accel/mma7455_core.c
+++ b/drivers/iio/accel/mma7455_core.c
@@ -260,7 +260,6 @@ int mma7455_core_probe(struct device *dev, struct regmap *regmap,
 
 	indio_dev->info = &mma7455_info;
 	indio_dev->name = name;
-	indio_dev->dev.parent = dev;
 	indio_dev->modes = INDIO_DIRECT_MODE;
 	indio_dev->channels = mma7455_channels;
 	indio_dev->num_channels = ARRAY_SIZE(mma7455_channels);
diff --git a/drivers/iio/accel/mma7660.c b/drivers/iio/accel/mma7660.c
index 7faf6d8657ae..b3c9136d51ec 100644
--- a/drivers/iio/accel/mma7660.c
+++ b/drivers/iio/accel/mma7660.c
@@ -188,7 +188,6 @@ static int mma7660_probe(struct i2c_client *client,
 	mutex_init(&data->lock);
 	data->mode = MMA7660_MODE_STANDBY;
 
-	indio_dev->dev.parent = &client->dev;
 	indio_dev->info = &mma7660_info;
 	indio_dev->name = MMA7660_DRIVER_NAME;
 	indio_dev->modes = INDIO_DIRECT_MODE;
diff --git a/drivers/iio/accel/mma9551.c b/drivers/iio/accel/mma9551.c
index 99e4a21ca942..08a2303cc9df 100644
--- a/drivers/iio/accel/mma9551.c
+++ b/drivers/iio/accel/mma9551.c
@@ -473,7 +473,6 @@ static int mma9551_probe(struct i2c_client *client,
 
 	mutex_init(&data->mutex);
 
-	indio_dev->dev.parent = &client->dev;
 	indio_dev->channels = mma9551_channels;
 	indio_dev->num_channels = ARRAY_SIZE(mma9551_channels);
 	indio_dev->name = name;
diff --git a/drivers/iio/accel/mxc4005.c b/drivers/iio/accel/mxc4005.c
index 9d07642c0de1..03adbb4aaee7 100644
--- a/drivers/iio/accel/mxc4005.c
+++ b/drivers/iio/accel/mxc4005.c
@@ -416,7 +416,6 @@ static int mxc4005_probe(struct i2c_client *client,
 
 	mutex_init(&data->mutex);
 
-	indio_dev->dev.parent = &client->dev;
 	indio_dev->channels = mxc4005_channels;
 	indio_dev->num_channels = ARRAY_SIZE(mxc4005_channels);
 	indio_dev->available_scan_masks = mxc4005_scan_masks;
diff --git a/drivers/iio/accel/mxc6255.c b/drivers/iio/accel/mxc6255.c
index f532f8643aa4..9aeeadc420d3 100644
--- a/drivers/iio/accel/mxc6255.c
+++ b/drivers/iio/accel/mxc6255.c
@@ -138,7 +138,6 @@ static int mxc6255_probe(struct i2c_client *client,
 	data->regmap = regmap;
 
 	indio_dev->name = MXC6255_DRV_NAME;
-	indio_dev->dev.parent = &client->dev;
 	indio_dev->channels = mxc6255_channels;
 	indio_dev->num_channels = ARRAY_SIZE(mxc6255_channels);
 	indio_dev->modes = INDIO_DIRECT_MODE;
diff --git a/drivers/iio/accel/sca3000.c b/drivers/iio/accel/sca3000.c
index 66d768d971e1..ecb0355b87a3 100644
--- a/drivers/iio/accel/sca3000.c
+++ b/drivers/iio/accel/sca3000.c
@@ -1467,7 +1467,6 @@ static int sca3000_probe(struct spi_device *spi)
 	st->info = &sca3000_spi_chip_info_tbl[spi_get_device_id(spi)
 					      ->driver_data];
 
-	indio_dev->dev.parent = &spi->dev;
 	indio_dev->name = spi_get_device_id(spi)->name;
 	indio_dev->info = &sca3000_info;
 	if (st->info->temp_output) {
diff --git a/drivers/iio/accel/ssp_accel_sensor.c b/drivers/iio/accel/ssp_accel_sensor.c
index c32647abce20..3102b507e22a 100644
--- a/drivers/iio/accel/ssp_accel_sensor.c
+++ b/drivers/iio/accel/ssp_accel_sensor.c
@@ -108,7 +108,6 @@ static int ssp_accel_probe(struct platform_device *pdev)
 	spd->type = SSP_ACCELEROMETER_SENSOR;
 
 	indio_dev->name = ssp_accel_device_name;
-	indio_dev->dev.parent = &pdev->dev;
 	indio_dev->dev.of_node = pdev->dev.of_node;
 	indio_dev->info = &ssp_accel_iio_info;
 	indio_dev->modes = INDIO_BUFFER_SOFTWARE;
diff --git a/drivers/iio/accel/stk8312.c b/drivers/iio/accel/stk8312.c
index 58c160ccdee7..616d0b90dd92 100644
--- a/drivers/iio/accel/stk8312.c
+++ b/drivers/iio/accel/stk8312.c
@@ -515,7 +515,6 @@ static int stk8312_probe(struct i2c_client *client,
 	i2c_set_clientdata(client, indio_dev);
 	mutex_init(&data->lock);
 
-	indio_dev->dev.parent = &client->dev;
 	indio_dev->info = &stk8312_info;
 	indio_dev->name = STK8312_DRIVER_NAME;
 	indio_dev->modes = INDIO_DIRECT_MODE;
diff --git a/drivers/iio/accel/stk8ba50.c b/drivers/iio/accel/stk8ba50.c
index c70ddec29eb4..98fad8cd6fe7 100644
--- a/drivers/iio/accel/stk8ba50.c
+++ b/drivers/iio/accel/stk8ba50.c
@@ -399,7 +399,6 @@ static int stk8ba50_probe(struct i2c_client *client,
 	i2c_set_clientdata(client, indio_dev);
 	mutex_init(&data->lock);
 
-	indio_dev->dev.parent = &client->dev;
 	indio_dev->info = &stk8ba50_info;
 	indio_dev->name = STK8BA50_DRIVER_NAME;
 	indio_dev->modes = INDIO_DIRECT_MODE;
diff --git a/drivers/iio/adc/ab8500-gpadc.c b/drivers/iio/adc/ab8500-gpadc.c
index fd5b18d7f0c2..b264f88cf9d9 100644
--- a/drivers/iio/adc/ab8500-gpadc.c
+++ b/drivers/iio/adc/ab8500-gpadc.c
@@ -1163,7 +1163,6 @@ static int ab8500_gpadc_probe(struct platform_device *pdev)
 
 	pm_runtime_put(dev);
 
-	indio_dev->dev.parent = dev;
 	indio_dev->dev.of_node = np;
 	indio_dev->name = "ab8500-gpadc";
 	indio_dev->modes = INDIO_DIRECT_MODE;
diff --git a/drivers/iio/adc/ad7091r-base.c b/drivers/iio/adc/ad7091r-base.c
index 33c40357bd5e..63b4d6ea4566 100644
--- a/drivers/iio/adc/ad7091r-base.c
+++ b/drivers/iio/adc/ad7091r-base.c
@@ -224,7 +224,6 @@ int ad7091r_probe(struct device *dev, const char *name,
 	st->chip_info = chip_info;
 	st->map = map;
 
-	iio_dev->dev.parent = dev;
 	iio_dev->name = name;
 	iio_dev->info = &ad7091r_info;
 	iio_dev->modes = INDIO_DIRECT_MODE;
diff --git a/drivers/iio/adc/ad7124.c b/drivers/iio/adc/ad7124.c
index a3c0647a5391..bb53ab265b64 100644
--- a/drivers/iio/adc/ad7124.c
+++ b/drivers/iio/adc/ad7124.c
@@ -683,7 +683,6 @@ static int ad7124_probe(struct spi_device *spi)
 
 	spi_set_drvdata(spi, indio_dev);
 
-	indio_dev->dev.parent = &spi->dev;
 	indio_dev->name = spi_get_device_id(spi)->name;
 	indio_dev->modes = INDIO_DIRECT_MODE;
 	indio_dev->info = &ad7124_info;
diff --git a/drivers/iio/adc/ad7266.c b/drivers/iio/adc/ad7266.c
index c8524f098883..715d39b200df 100644
--- a/drivers/iio/adc/ad7266.c
+++ b/drivers/iio/adc/ad7266.c
@@ -437,7 +437,6 @@ static int ad7266_probe(struct spi_device *spi)
 	spi_set_drvdata(spi, indio_dev);
 	st->spi = spi;
 
-	indio_dev->dev.parent = &spi->dev;
 	indio_dev->dev.of_node = spi->dev.of_node;
 	indio_dev->name = spi_get_device_id(spi)->name;
 	indio_dev->modes = INDIO_DIRECT_MODE;
diff --git a/drivers/iio/adc/ad7291.c b/drivers/iio/adc/ad7291.c
index b2b137fed246..dbba62ad5e16 100644
--- a/drivers/iio/adc/ad7291.c
+++ b/drivers/iio/adc/ad7291.c
@@ -502,7 +502,6 @@ static int ad7291_probe(struct i2c_client *client,
 	indio_dev->channels = ad7291_channels;
 	indio_dev->num_channels = ARRAY_SIZE(ad7291_channels);
 
-	indio_dev->dev.parent = &client->dev;
 	indio_dev->dev.of_node = client->dev.of_node;
 	indio_dev->info = &ad7291_info;
 	indio_dev->modes = INDIO_DIRECT_MODE;
diff --git a/drivers/iio/adc/ad7292.c b/drivers/iio/adc/ad7292.c
index 6595fd196288..2eafbe7ac7c7 100644
--- a/drivers/iio/adc/ad7292.c
+++ b/drivers/iio/adc/ad7292.c
@@ -304,7 +304,6 @@ static int ad7292_probe(struct spi_device *spi)
 		st->vref_mv = 1250;
 	}
 
-	indio_dev->dev.parent = &spi->dev;
 	indio_dev->name = spi_get_device_id(spi)->name;
 	indio_dev->modes = INDIO_DIRECT_MODE;
 	indio_dev->info = &ad7292_info;
diff --git a/drivers/iio/adc/ad7298.c b/drivers/iio/adc/ad7298.c
index dc8d8c5f6ad3..26768b15c0de 100644
--- a/drivers/iio/adc/ad7298.c
+++ b/drivers/iio/adc/ad7298.c
@@ -312,7 +312,6 @@ static int ad7298_probe(struct spi_device *spi)
 	st->spi = spi;
 
 	indio_dev->name = spi_get_device_id(spi)->name;
-	indio_dev->dev.parent = &spi->dev;
 	indio_dev->dev.of_node = spi->dev.of_node;
 	indio_dev->modes = INDIO_DIRECT_MODE;
 	indio_dev->channels = ad7298_channels;
diff --git a/drivers/iio/adc/ad7476.c b/drivers/iio/adc/ad7476.c
index 4e816d714ad2..e2a69dd6a47e 100644
--- a/drivers/iio/adc/ad7476.c
+++ b/drivers/iio/adc/ad7476.c
@@ -301,7 +301,6 @@ static int ad7476_probe(struct spi_device *spi)
 	st->spi = spi;
 
 	/* Establish that the iio_dev is a child of the spi device */
-	indio_dev->dev.parent = &spi->dev;
 	indio_dev->dev.of_node = spi->dev.of_node;
 	indio_dev->name = spi_get_device_id(spi)->name;
 	indio_dev->modes = INDIO_DIRECT_MODE;
diff --git a/drivers/iio/adc/ad7606.c b/drivers/iio/adc/ad7606.c
index e4683a68522a..23d8277086ee 100644
--- a/drivers/iio/adc/ad7606.c
+++ b/drivers/iio/adc/ad7606.c
@@ -614,7 +614,6 @@ int ad7606_probe(struct device *dev, int irq, void __iomem *base_address,
 	if (ret)
 		return ret;
 
-	indio_dev->dev.parent = dev;
 	if (st->gpio_os) {
 		if (st->gpio_range)
 			indio_dev->info = &ad7606_info_os_and_range;
diff --git a/drivers/iio/adc/ad7766.c b/drivers/iio/adc/ad7766.c
index bc388ea41754..4bcf8a34bc46 100644
--- a/drivers/iio/adc/ad7766.c
+++ b/drivers/iio/adc/ad7766.c
@@ -242,7 +242,6 @@ static int ad7766_probe(struct spi_device *spi)
 	if (IS_ERR(ad7766->pd_gpio))
 		return PTR_ERR(ad7766->pd_gpio);
 
-	indio_dev->dev.parent = &spi->dev;
 	indio_dev->name = spi_get_device_id(spi)->name;
 	indio_dev->modes = INDIO_DIRECT_MODE;
 	indio_dev->channels = ad7766_channels;
diff --git a/drivers/iio/adc/ad7768-1.c b/drivers/iio/adc/ad7768-1.c
index 0d132708c429..be2aed551324 100644
--- a/drivers/iio/adc/ad7768-1.c
+++ b/drivers/iio/adc/ad7768-1.c
@@ -584,7 +584,6 @@ static int ad7768_probe(struct spi_device *spi)
 
 	indio_dev->channels = ad7768_channels;
 	indio_dev->num_channels = ARRAY_SIZE(ad7768_channels);
-	indio_dev->dev.parent = &spi->dev;
 	indio_dev->name = spi_get_device_id(spi)->name;
 	indio_dev->info = &ad7768_info;
 	indio_dev->modes = INDIO_DIRECT_MODE | INDIO_BUFFER_TRIGGERED;
diff --git a/drivers/iio/adc/ad7780.c b/drivers/iio/adc/ad7780.c
index f47606ebbbbe..ecbbdfa1f88b 100644
--- a/drivers/iio/adc/ad7780.c
+++ b/drivers/iio/adc/ad7780.c
@@ -320,7 +320,6 @@ static int ad7780_probe(struct spi_device *spi)
 
 	spi_set_drvdata(spi, indio_dev);
 
-	indio_dev->dev.parent = &spi->dev;
 	indio_dev->name = spi_get_device_id(spi)->name;
 	indio_dev->modes = INDIO_DIRECT_MODE;
 	indio_dev->channels = &st->chip_info->channel;
diff --git a/drivers/iio/adc/ad7791.c b/drivers/iio/adc/ad7791.c
index 48432b6f6002..b636cf0a8f19 100644
--- a/drivers/iio/adc/ad7791.c
+++ b/drivers/iio/adc/ad7791.c
@@ -425,7 +425,6 @@ static int ad7791_probe(struct spi_device *spi)
 
 	spi_set_drvdata(spi, indio_dev);
 
-	indio_dev->dev.parent = &spi->dev;
 	indio_dev->dev.of_node = spi->dev.of_node;
 	indio_dev->name = spi_get_device_id(spi)->name;
 	indio_dev->modes = INDIO_DIRECT_MODE;
diff --git a/drivers/iio/adc/ad7793.c b/drivers/iio/adc/ad7793.c
index 808485f42415..b858723c144b 100644
--- a/drivers/iio/adc/ad7793.c
+++ b/drivers/iio/adc/ad7793.c
@@ -818,7 +818,6 @@ static int ad7793_probe(struct spi_device *spi)
 
 	spi_set_drvdata(spi, indio_dev);
 
-	indio_dev->dev.parent = &spi->dev;
 	indio_dev->dev.of_node = spi->dev.of_node;
 	indio_dev->name = spi_get_device_id(spi)->name;
 	indio_dev->modes = INDIO_DIRECT_MODE;
diff --git a/drivers/iio/adc/ad7887.c b/drivers/iio/adc/ad7887.c
index c6a3428e950a..ca4c98401ebc 100644
--- a/drivers/iio/adc/ad7887.c
+++ b/drivers/iio/adc/ad7887.c
@@ -265,7 +265,6 @@ static int ad7887_probe(struct spi_device *spi)
 	st->spi = spi;
 
 	/* Estabilish that the iio_dev is a child of the spi device */
-	indio_dev->dev.parent = &spi->dev;
 	indio_dev->dev.of_node = spi->dev.of_node;
 	indio_dev->name = spi_get_device_id(spi)->name;
 	indio_dev->info = &ad7887_info;
diff --git a/drivers/iio/adc/ad7923.c b/drivers/iio/adc/ad7923.c
index 1d124c87c6ac..6f1996cfd1e5 100644
--- a/drivers/iio/adc/ad7923.c
+++ b/drivers/iio/adc/ad7923.c
@@ -315,7 +315,6 @@ static int ad7923_probe(struct spi_device *spi)
 	info = &ad7923_chip_info[spi_get_device_id(spi)->driver_data];
 
 	indio_dev->name = spi_get_device_id(spi)->name;
-	indio_dev->dev.parent = &spi->dev;
 	indio_dev->dev.of_node = spi->dev.of_node;
 	indio_dev->modes = INDIO_DIRECT_MODE;
 	indio_dev->channels = info->channels;
diff --git a/drivers/iio/adc/ad7949.c b/drivers/iio/adc/ad7949.c
index 2c6f60edb7ce..c6676d317356 100644
--- a/drivers/iio/adc/ad7949.c
+++ b/drivers/iio/adc/ad7949.c
@@ -243,7 +243,6 @@ static int ad7949_spi_probe(struct spi_device *spi)
 		return -ENOMEM;
 	}
 
-	indio_dev->dev.parent = dev;
 	indio_dev->dev.of_node = dev->of_node;
 	indio_dev->info = &ad7949_spi_info;
 	indio_dev->name = spi_get_device_id(spi)->name;
diff --git a/drivers/iio/adc/ad799x.c b/drivers/iio/adc/ad799x.c
index ef013af1aec0..6a389bbbffaa 100644
--- a/drivers/iio/adc/ad799x.c
+++ b/drivers/iio/adc/ad799x.c
@@ -814,7 +814,6 @@ static int ad799x_probe(struct i2c_client *client,
 
 	st->client = client;
 
-	indio_dev->dev.parent = &client->dev;
 	indio_dev->dev.of_node = client->dev.of_node;
 	indio_dev->name = id->name;
 	indio_dev->info = st->chip_config->info;
diff --git a/drivers/iio/adc/adi-axi-adc.c b/drivers/iio/adc/adi-axi-adc.c
index c24c8da99eb4..63d926e86798 100644
--- a/drivers/iio/adc/adi-axi-adc.c
+++ b/drivers/iio/adc/adi-axi-adc.c
@@ -435,7 +435,6 @@ static int adi_axi_adc_probe(struct platform_device *pdev)
 	}
 
 	indio_dev->info = &adi_axi_adc_info;
-	indio_dev->dev.parent = &pdev->dev;
 	indio_dev->name = "adi-axi-adc";
 	indio_dev->modes = INDIO_DIRECT_MODE;
 	indio_dev->num_channels = conv->chip_info->num_channels;
diff --git a/drivers/iio/adc/aspeed_adc.c b/drivers/iio/adc/aspeed_adc.c
index 1e5375235cfe..19efaa41bc34 100644
--- a/drivers/iio/adc/aspeed_adc.c
+++ b/drivers/iio/adc/aspeed_adc.c
@@ -252,7 +252,6 @@ static int aspeed_adc_probe(struct platform_device *pdev)
 
 	model_data = of_device_get_match_data(&pdev->dev);
 	indio_dev->name = model_data->model_name;
-	indio_dev->dev.parent = &pdev->dev;
 	indio_dev->info = &aspeed_adc_iio_info;
 	indio_dev->modes = INDIO_DIRECT_MODE;
 	indio_dev->channels = aspeed_adc_iio_channels;
diff --git a/drivers/iio/adc/at91-sama5d2_adc.c b/drivers/iio/adc/at91-sama5d2_adc.c
index 9abbbdcc7420..1b4340a6c6bb 100644
--- a/drivers/iio/adc/at91-sama5d2_adc.c
+++ b/drivers/iio/adc/at91-sama5d2_adc.c
@@ -1710,7 +1710,6 @@ static int at91_adc_probe(struct platform_device *pdev)
 	if (!indio_dev)
 		return -ENOMEM;
 
-	indio_dev->dev.parent = &pdev->dev;
 	indio_dev->name = dev_name(&pdev->dev);
 	indio_dev->modes = INDIO_DIRECT_MODE | INDIO_BUFFER_SOFTWARE;
 	indio_dev->info = &at91_adc_info;
diff --git a/drivers/iio/adc/at91_adc.c b/drivers/iio/adc/at91_adc.c
index 0368b6dc6d60..8544f0b3b50f 100644
--- a/drivers/iio/adc/at91_adc.c
+++ b/drivers/iio/adc/at91_adc.c
@@ -1172,7 +1172,6 @@ static int at91_adc_probe(struct platform_device *pdev)
 
 	platform_set_drvdata(pdev, idev);
 
-	idev->dev.parent = &pdev->dev;
 	idev->name = dev_name(&pdev->dev);
 	idev->modes = INDIO_DIRECT_MODE;
 	idev->info = &at91_adc_info;
diff --git a/drivers/iio/adc/axp20x_adc.c b/drivers/iio/adc/axp20x_adc.c
index 88059480da17..b138f1a1fb51 100644
--- a/drivers/iio/adc/axp20x_adc.c
+++ b/drivers/iio/adc/axp20x_adc.c
@@ -668,7 +668,6 @@ static int axp20x_probe(struct platform_device *pdev)
 	platform_set_drvdata(pdev, indio_dev);
 
 	info->regmap = axp20x_dev->regmap;
-	indio_dev->dev.parent = &pdev->dev;
 	indio_dev->dev.of_node = pdev->dev.of_node;
 	indio_dev->modes = INDIO_DIRECT_MODE;
 
diff --git a/drivers/iio/adc/axp288_adc.c b/drivers/iio/adc/axp288_adc.c
index 8ea2aed6d6f5..5f5e8b39e4d2 100644
--- a/drivers/iio/adc/axp288_adc.c
+++ b/drivers/iio/adc/axp288_adc.c
@@ -271,7 +271,6 @@ static int axp288_adc_probe(struct platform_device *pdev)
 		return ret;
 	}
 
-	indio_dev->dev.parent = &pdev->dev;
 	indio_dev->name = pdev->name;
 	indio_dev->channels = axp288_adc_channels;
 	indio_dev->num_channels = ARRAY_SIZE(axp288_adc_channels);
diff --git a/drivers/iio/adc/bcm_iproc_adc.c b/drivers/iio/adc/bcm_iproc_adc.c
index 5e396104ac86..9bf29c2384a4 100644
--- a/drivers/iio/adc/bcm_iproc_adc.c
+++ b/drivers/iio/adc/bcm_iproc_adc.c
@@ -573,7 +573,6 @@ static int iproc_adc_probe(struct platform_device *pdev)
 	}
 
 	indio_dev->name = "iproc-static-adc";
-	indio_dev->dev.parent = &pdev->dev;
 	indio_dev->dev.of_node = pdev->dev.of_node;
 	indio_dev->info = &iproc_adc_iio_info;
 	indio_dev->modes = INDIO_DIRECT_MODE;
diff --git a/drivers/iio/adc/berlin2-adc.c b/drivers/iio/adc/berlin2-adc.c
index 72d8fa94ab31..8b04b95b7b7a 100644
--- a/drivers/iio/adc/berlin2-adc.c
+++ b/drivers/iio/adc/berlin2-adc.c
@@ -321,7 +321,6 @@ static int berlin2_adc_probe(struct platform_device *pdev)
 	init_waitqueue_head(&priv->wq);
 	mutex_init(&priv->lock);
 
-	indio_dev->dev.parent = &pdev->dev;
 	indio_dev->name = dev_name(&pdev->dev);
 	indio_dev->modes = INDIO_DIRECT_MODE;
 	indio_dev->info = &berlin2_adc_info;
diff --git a/drivers/iio/adc/cc10001_adc.c b/drivers/iio/adc/cc10001_adc.c
index fe9257624f16..e16ac935693b 100644
--- a/drivers/iio/adc/cc10001_adc.c
+++ b/drivers/iio/adc/cc10001_adc.c
@@ -334,7 +334,6 @@ static int cc10001_adc_probe(struct platform_device *pdev)
 	if (ret)
 		return ret;
 
-	indio_dev->dev.parent = &pdev->dev;
 	indio_dev->name = dev_name(&pdev->dev);
 	indio_dev->info = &cc10001_adc_info;
 	indio_dev->modes = INDIO_DIRECT_MODE;
diff --git a/drivers/iio/adc/cpcap-adc.c b/drivers/iio/adc/cpcap-adc.c
index 5086a337f4c9..9b0d6d7c90e9 100644
--- a/drivers/iio/adc/cpcap-adc.c
+++ b/drivers/iio/adc/cpcap-adc.c
@@ -985,7 +985,6 @@ static int cpcap_adc_probe(struct platform_device *pdev)
 	init_waitqueue_head(&ddata->wq_data_avail);
 
 	indio_dev->modes = INDIO_DIRECT_MODE | INDIO_BUFFER_SOFTWARE;
-	indio_dev->dev.parent = &pdev->dev;
 	indio_dev->dev.of_node = pdev->dev.of_node;
 	indio_dev->channels = cpcap_adc_channels;
 	indio_dev->num_channels = ARRAY_SIZE(cpcap_adc_channels);
diff --git a/drivers/iio/adc/da9150-gpadc.c b/drivers/iio/adc/da9150-gpadc.c
index ae8bcc32f63d..3461e26a89bd 100644
--- a/drivers/iio/adc/da9150-gpadc.c
+++ b/drivers/iio/adc/da9150-gpadc.c
@@ -354,7 +354,6 @@ static int da9150_gpadc_probe(struct platform_device *pdev)
 	}
 
 	indio_dev->name = dev_name(dev);
-	indio_dev->dev.parent = dev;
 	indio_dev->dev.of_node = pdev->dev.of_node;
 	indio_dev->info = &da9150_gpadc_info;
 	indio_dev->modes = INDIO_DIRECT_MODE;
diff --git a/drivers/iio/adc/dln2-adc.c b/drivers/iio/adc/dln2-adc.c
index 65c7c9329b1c..6689cb93c6a2 100644
--- a/drivers/iio/adc/dln2-adc.c
+++ b/drivers/iio/adc/dln2-adc.c
@@ -652,7 +652,6 @@ static int dln2_adc_probe(struct platform_device *pdev)
 	IIO_CHAN_SOFT_TIMESTAMP_ASSIGN(dln2->iio_channels[i], i);
 
 	indio_dev->name = DLN2_ADC_MOD_NAME;
-	indio_dev->dev.parent = dev;
 	indio_dev->info = &dln2_adc_info;
 	indio_dev->modes = INDIO_DIRECT_MODE;
 	indio_dev->channels = dln2->iio_channels;
diff --git a/drivers/iio/adc/envelope-detector.c b/drivers/iio/adc/envelope-detector.c
index 28f3d6758eb5..77e60d160d02 100644
--- a/drivers/iio/adc/envelope-detector.c
+++ b/drivers/iio/adc/envelope-detector.c
@@ -343,7 +343,6 @@ static int envelope_detector_probe(struct platform_device *pdev)
 	INIT_DELAYED_WORK(&env->comp_timeout, envelope_detector_timeout);
 
 	indio_dev->name = dev_name(dev);
-	indio_dev->dev.parent = dev;
 	indio_dev->dev.of_node = dev->of_node;
 	indio_dev->info = &envelope_detector_info;
 	indio_dev->channels = &envelope_detector_iio_channel;
diff --git a/drivers/iio/adc/ep93xx_adc.c b/drivers/iio/adc/ep93xx_adc.c
index 5c97e8a511f2..c08ab3c6dfaf 100644
--- a/drivers/iio/adc/ep93xx_adc.c
+++ b/drivers/iio/adc/ep93xx_adc.c
@@ -170,7 +170,6 @@ static int ep93xx_adc_probe(struct platform_device *pdev)
 		return PTR_ERR(priv->base);
 	}
 
-	iiodev->dev.parent = &pdev->dev;
 	iiodev->name = dev_name(&pdev->dev);
 	iiodev->modes = INDIO_DIRECT_MODE;
 	iiodev->info = &ep93xx_adc_info;
diff --git a/drivers/iio/adc/exynos_adc.c b/drivers/iio/adc/exynos_adc.c
index 9d29b56805cd..63b8b00d7eb0 100644
--- a/drivers/iio/adc/exynos_adc.c
+++ b/drivers/iio/adc/exynos_adc.c
@@ -870,7 +870,6 @@ static int exynos_adc_probe(struct platform_device *pdev)
 	platform_set_drvdata(pdev, indio_dev);
 
 	indio_dev->name = dev_name(&pdev->dev);
-	indio_dev->dev.parent = &pdev->dev;
 	indio_dev->dev.of_node = pdev->dev.of_node;
 	indio_dev->info = &exynos_adc_iio_info;
 	indio_dev->modes = INDIO_DIRECT_MODE;
diff --git a/drivers/iio/adc/fsl-imx25-gcq.c b/drivers/iio/adc/fsl-imx25-gcq.c
index b0a4dc88ba9b..8cb51cf7a816 100644
--- a/drivers/iio/adc/fsl-imx25-gcq.c
+++ b/drivers/iio/adc/fsl-imx25-gcq.c
@@ -350,7 +350,6 @@ static int mx25_gcq_probe(struct platform_device *pdev)
 		goto err_clk_unprepare;
 	}
 
-	indio_dev->dev.parent = &pdev->dev;
 	indio_dev->channels = mx25_gcq_channels;
 	indio_dev->num_channels = ARRAY_SIZE(mx25_gcq_channels);
 	indio_dev->info = &mx25_gcq_iio_info;
diff --git a/drivers/iio/adc/hi8435.c b/drivers/iio/adc/hi8435.c
index 8da45bf36d36..dd23b8593b7b 100644
--- a/drivers/iio/adc/hi8435.c
+++ b/drivers/iio/adc/hi8435.c
@@ -488,7 +488,6 @@ static int hi8435_probe(struct spi_device *spi)
 	spi_set_drvdata(spi, idev);
 	mutex_init(&priv->lock);
 
-	idev->dev.parent	= &spi->dev;
 	idev->dev.of_node	= spi->dev.of_node;
 	idev->name		= spi_get_device_id(spi)->name;
 	idev->modes		= INDIO_DIRECT_MODE;
diff --git a/drivers/iio/adc/imx7d_adc.c b/drivers/iio/adc/imx7d_adc.c
index 2a2fbf788e95..4969a5f941e3 100644
--- a/drivers/iio/adc/imx7d_adc.c
+++ b/drivers/iio/adc/imx7d_adc.c
@@ -515,7 +515,6 @@ static int imx7d_adc_probe(struct platform_device *pdev)
 	init_completion(&info->completion);
 
 	indio_dev->name = dev_name(dev);
-	indio_dev->dev.parent = dev;
 	indio_dev->info = &imx7d_adc_iio_info;
 	indio_dev->modes = INDIO_DIRECT_MODE;
 	indio_dev->channels = imx7d_adc_iio_channels;
diff --git a/drivers/iio/adc/ina2xx-adc.c b/drivers/iio/adc/ina2xx-adc.c
index bdd7cba6f6b0..467f48b6f451 100644
--- a/drivers/iio/adc/ina2xx-adc.c
+++ b/drivers/iio/adc/ina2xx-adc.c
@@ -1015,7 +1015,6 @@ static int ina2xx_probe(struct i2c_client *client,
 	}
 
 	indio_dev->modes = INDIO_DIRECT_MODE | INDIO_BUFFER_SOFTWARE;
-	indio_dev->dev.parent = &client->dev;
 	indio_dev->dev.of_node = client->dev.of_node;
 	if (id->driver_data == ina226) {
 		indio_dev->channels = ina226_channels;
diff --git a/drivers/iio/adc/ingenic-adc.c b/drivers/iio/adc/ingenic-adc.c
index 39c0a609fc94..3ea097c9650e 100644
--- a/drivers/iio/adc/ingenic-adc.c
+++ b/drivers/iio/adc/ingenic-adc.c
@@ -481,7 +481,6 @@ static int ingenic_adc_probe(struct platform_device *pdev)
 		return ret;
 	}
 
-	iio_dev->dev.parent = dev;
 	iio_dev->name = "jz-adc";
 	iio_dev->modes = INDIO_DIRECT_MODE;
 	iio_dev->channels = ingenic_channels;
diff --git a/drivers/iio/adc/intel_mrfld_adc.c b/drivers/iio/adc/intel_mrfld_adc.c
index a6d2e1f27e76..75394350eb4c 100644
--- a/drivers/iio/adc/intel_mrfld_adc.c
+++ b/drivers/iio/adc/intel_mrfld_adc.c
@@ -207,7 +207,6 @@ static int mrfld_adc_probe(struct platform_device *pdev)
 
 	platform_set_drvdata(pdev, indio_dev);
 
-	indio_dev->dev.parent = dev;
 	indio_dev->name = pdev->name;
 
 	indio_dev->channels = mrfld_adc_channels;
diff --git a/drivers/iio/adc/lp8788_adc.c b/drivers/iio/adc/lp8788_adc.c
index c1fc1b678e0f..6e32d2ac1ace 100644
--- a/drivers/iio/adc/lp8788_adc.c
+++ b/drivers/iio/adc/lp8788_adc.c
@@ -205,7 +205,6 @@ static int lp8788_adc_probe(struct platform_device *pdev)
 
 	mutex_init(&adc->lock);
 
-	indio_dev->dev.parent = &pdev->dev;
 	indio_dev->name = pdev->name;
 	indio_dev->modes = INDIO_DIRECT_MODE;
 	indio_dev->info = &lp8788_adc_info;
diff --git a/drivers/iio/adc/lpc18xx_adc.c b/drivers/iio/adc/lpc18xx_adc.c
index 4c6ac6644dc0..3566990ae87d 100644
--- a/drivers/iio/adc/lpc18xx_adc.c
+++ b/drivers/iio/adc/lpc18xx_adc.c
@@ -152,7 +152,6 @@ static int lpc18xx_adc_probe(struct platform_device *pdev)
 	}
 
 	indio_dev->name = dev_name(&pdev->dev);
-	indio_dev->dev.parent = &pdev->dev;
 	indio_dev->info = &lpc18xx_adc_info;
 	indio_dev->modes = INDIO_DIRECT_MODE;
 	indio_dev->channels = lpc18xx_adc_iio_channels;
diff --git a/drivers/iio/adc/lpc32xx_adc.c b/drivers/iio/adc/lpc32xx_adc.c
index b896f7ff4572..bc2712a48844 100644
--- a/drivers/iio/adc/lpc32xx_adc.c
+++ b/drivers/iio/adc/lpc32xx_adc.c
@@ -196,7 +196,6 @@ static int lpc32xx_adc_probe(struct platform_device *pdev)
 	init_completion(&st->completion);
 
 	iodev->name = LPC32XXAD_NAME;
-	iodev->dev.parent = &pdev->dev;
 	iodev->info = &lpc32xx_adc_iio_info;
 	iodev->modes = INDIO_DIRECT_MODE;
 	iodev->num_channels = ARRAY_SIZE(lpc32xx_adc_iio_channels);
diff --git a/drivers/iio/adc/ltc2471.c b/drivers/iio/adc/ltc2471.c
index 55fab612843a..0e0fe881a8e6 100644
--- a/drivers/iio/adc/ltc2471.c
+++ b/drivers/iio/adc/ltc2471.c
@@ -116,7 +116,6 @@ static int ltc2471_i2c_probe(struct i2c_client *client,
 	data = iio_priv(indio_dev);
 	data->client = client;
 
-	indio_dev->dev.parent = &client->dev;
 	indio_dev->name = id->name;
 	indio_dev->info = &ltc2471_info;
 	indio_dev->modes = INDIO_DIRECT_MODE;
diff --git a/drivers/iio/adc/ltc2485.c b/drivers/iio/adc/ltc2485.c
index c418466d51fd..37c762f8218c 100644
--- a/drivers/iio/adc/ltc2485.c
+++ b/drivers/iio/adc/ltc2485.c
@@ -108,7 +108,6 @@ static int ltc2485_probe(struct i2c_client *client,
 	i2c_set_clientdata(client, indio_dev);
 	data->client = client;
 
-	indio_dev->dev.parent = &client->dev;
 	indio_dev->name = id->name;
 	indio_dev->info = &ltc2485_info;
 	indio_dev->modes = INDIO_DIRECT_MODE;
diff --git a/drivers/iio/adc/max1027.c b/drivers/iio/adc/max1027.c
index 02834ca3e1ce..b489cb14ea0d 100644
--- a/drivers/iio/adc/max1027.c
+++ b/drivers/iio/adc/max1027.c
@@ -440,7 +440,6 @@ static int max1027_probe(struct spi_device *spi)
 	mutex_init(&st->lock);
 
 	indio_dev->name = spi_get_device_id(spi)->name;
-	indio_dev->dev.parent = &spi->dev;
 	indio_dev->dev.of_node = spi->dev.of_node;
 	indio_dev->info = &max1027_info;
 	indio_dev->modes = INDIO_DIRECT_MODE;
diff --git a/drivers/iio/adc/max11100.c b/drivers/iio/adc/max11100.c
index 3440539cfdba..3f423dc8f553 100644
--- a/drivers/iio/adc/max11100.c
+++ b/drivers/iio/adc/max11100.c
@@ -115,7 +115,6 @@ static int max11100_probe(struct spi_device *spi)
 	state = iio_priv(indio_dev);
 	state->spi = spi;
 
-	indio_dev->dev.parent = &spi->dev;
 	indio_dev->dev.of_node = spi->dev.of_node;
 	indio_dev->name = "max11100";
 	indio_dev->info = &max11100_info;
diff --git a/drivers/iio/adc/max1118.c b/drivers/iio/adc/max1118.c
index 0c5d7aaf6826..273fbea2a515 100644
--- a/drivers/iio/adc/max1118.c
+++ b/drivers/iio/adc/max1118.c
@@ -225,7 +225,6 @@ static int max1118_probe(struct spi_device *spi)
 	spi_set_drvdata(spi, indio_dev);
 
 	indio_dev->name = spi_get_device_id(spi)->name;
-	indio_dev->dev.parent = &spi->dev;
 	indio_dev->info = &max1118_info;
 	indio_dev->modes = INDIO_DIRECT_MODE;
 	indio_dev->channels = max1118_channels;
diff --git a/drivers/iio/adc/max1241.c b/drivers/iio/adc/max1241.c
index 541939c7abca..0cbbb3c56d08 100644
--- a/drivers/iio/adc/max1241.c
+++ b/drivers/iio/adc/max1241.c
@@ -192,7 +192,6 @@ static int max1241_probe(struct spi_device *spi)
 		dev_dbg(dev, "no shutdown pin passed, low-power mode disabled");
 
 	indio_dev->name = spi_get_device_id(spi)->name;
-	indio_dev->dev.parent = dev;
 	indio_dev->info = &max1241_info;
 	indio_dev->modes = INDIO_DIRECT_MODE;
 	indio_dev->channels = max1241_channels;
diff --git a/drivers/iio/adc/max9611.c b/drivers/iio/adc/max9611.c
index 04d5ff7d2c8e..f0fdd08cea91 100644
--- a/drivers/iio/adc/max9611.c
+++ b/drivers/iio/adc/max9611.c
@@ -545,7 +545,6 @@ static int max9611_probe(struct i2c_client *client,
 	if (ret)
 		return ret;
 
-	indio_dev->dev.parent	= &client->dev;
 	indio_dev->dev.of_node	= client->dev.of_node;
 	indio_dev->name		= of_id->data;
 	indio_dev->modes	= INDIO_DIRECT_MODE;
diff --git a/drivers/iio/adc/mcp320x.c b/drivers/iio/adc/mcp320x.c
index 2c0eb5de110c..ee1f65f011a3 100644
--- a/drivers/iio/adc/mcp320x.c
+++ b/drivers/iio/adc/mcp320x.c
@@ -384,7 +384,6 @@ static int mcp320x_probe(struct spi_device *spi)
 	adc = iio_priv(indio_dev);
 	adc->spi = spi;
 
-	indio_dev->dev.parent = &spi->dev;
 	indio_dev->dev.of_node = spi->dev.of_node;
 	indio_dev->name = spi_get_device_id(spi)->name;
 	indio_dev->modes = INDIO_DIRECT_MODE;
diff --git a/drivers/iio/adc/mcp3422.c b/drivers/iio/adc/mcp3422.c
index d86c0b5d80a3..56a4768185ea 100644
--- a/drivers/iio/adc/mcp3422.c
+++ b/drivers/iio/adc/mcp3422.c
@@ -347,7 +347,6 @@ static int mcp3422_probe(struct i2c_client *client,
 
 	mutex_init(&adc->lock);
 
-	indio_dev->dev.parent = &client->dev;
 	indio_dev->dev.of_node = client->dev.of_node;
 	indio_dev->name = dev_name(&client->dev);
 	indio_dev->modes = INDIO_DIRECT_MODE;
diff --git a/drivers/iio/adc/men_z188_adc.c b/drivers/iio/adc/men_z188_adc.c
index 196c8226381e..42ea8bc7e780 100644
--- a/drivers/iio/adc/men_z188_adc.c
+++ b/drivers/iio/adc/men_z188_adc.c
@@ -110,7 +110,6 @@ static int men_z188_probe(struct mcb_device *dev,
 
 	adc = iio_priv(indio_dev);
 	indio_dev->name = "z188-adc";
-	indio_dev->dev.parent = &dev->dev;
 	indio_dev->info = &z188_adc_info;
 	indio_dev->modes = INDIO_DIRECT_MODE;
 	indio_dev->channels = z188_adc_iio_channels;
diff --git a/drivers/iio/adc/meson_saradc.c b/drivers/iio/adc/meson_saradc.c
index 22a470db9ef8..1026cb199aa3 100644
--- a/drivers/iio/adc/meson_saradc.c
+++ b/drivers/iio/adc/meson_saradc.c
@@ -1208,7 +1208,6 @@ static int meson_sar_adc_probe(struct platform_device *pdev)
 	priv->param = match_data->param;
 
 	indio_dev->name = match_data->name;
-	indio_dev->dev.parent = &pdev->dev;
 	indio_dev->dev.of_node = pdev->dev.of_node;
 	indio_dev->modes = INDIO_DIRECT_MODE;
 	indio_dev->info = &meson_sar_adc_iio_info;
diff --git a/drivers/iio/adc/mt6577_auxadc.c b/drivers/iio/adc/mt6577_auxadc.c
index a4776d924f3a..ac415cb089cd 100644
--- a/drivers/iio/adc/mt6577_auxadc.c
+++ b/drivers/iio/adc/mt6577_auxadc.c
@@ -245,7 +245,6 @@ static int mt6577_auxadc_probe(struct platform_device *pdev)
 		return -ENOMEM;
 
 	adc_dev = iio_priv(indio_dev);
-	indio_dev->dev.parent = &pdev->dev;
 	indio_dev->name = dev_name(&pdev->dev);
 	indio_dev->info = &mt6577_auxadc_info;
 	indio_dev->modes = INDIO_DIRECT_MODE;
diff --git a/drivers/iio/adc/mxs-lradc-adc.c b/drivers/iio/adc/mxs-lradc-adc.c
index 9d2f74c2489a..c371565374d1 100644
--- a/drivers/iio/adc/mxs-lradc-adc.c
+++ b/drivers/iio/adc/mxs-lradc-adc.c
@@ -722,7 +722,6 @@ static int mxs_lradc_adc_probe(struct platform_device *pdev)
 	platform_set_drvdata(pdev, iio);
 
 	iio->name = pdev->name;
-	iio->dev.parent = dev;
 	iio->dev.of_node = dev->parent->of_node;
 	iio->info = &mxs_lradc_adc_iio_info;
 	iio->modes = INDIO_DIRECT_MODE;
diff --git a/drivers/iio/adc/nau7802.c b/drivers/iio/adc/nau7802.c
index 572579139fba..e2ed9f575a46 100644
--- a/drivers/iio/adc/nau7802.c
+++ b/drivers/iio/adc/nau7802.c
@@ -430,7 +430,6 @@ static int nau7802_probe(struct i2c_client *client,
 
 	i2c_set_clientdata(client, indio_dev);
 
-	indio_dev->dev.parent = &client->dev;
 	indio_dev->dev.of_node = client->dev.of_node;
 	indio_dev->name = dev_name(&client->dev);
 	indio_dev->modes = INDIO_DIRECT_MODE;
diff --git a/drivers/iio/adc/npcm_adc.c b/drivers/iio/adc/npcm_adc.c
index 83bad2d5575d..d9d105920001 100644
--- a/drivers/iio/adc/npcm_adc.c
+++ b/drivers/iio/adc/npcm_adc.c
@@ -261,7 +261,6 @@ static int npcm_adc_probe(struct platform_device *pdev)
 
 	platform_set_drvdata(pdev, indio_dev);
 	indio_dev->name = dev_name(&pdev->dev);
-	indio_dev->dev.parent = &pdev->dev;
 	indio_dev->info = &npcm_adc_iio_info;
 	indio_dev->modes = INDIO_DIRECT_MODE;
 	indio_dev->channels = npcm_adc_iio_channels;
diff --git a/drivers/iio/adc/palmas_gpadc.c b/drivers/iio/adc/palmas_gpadc.c
index 46e595eb889f..768453ca204b 100644
--- a/drivers/iio/adc/palmas_gpadc.c
+++ b/drivers/iio/adc/palmas_gpadc.c
@@ -593,7 +593,6 @@ static int palmas_gpadc_probe(struct platform_device *pdev)
 	adc->extended_delay = gpadc_pdata->extended_delay;
 
 	indio_dev->name = MOD_NAME;
-	indio_dev->dev.parent = &pdev->dev;
 	indio_dev->info = &palmas_gpadc_iio_info;
 	indio_dev->modes = INDIO_DIRECT_MODE;
 	indio_dev->channels = palmas_gpadc_iio_channel;
diff --git a/drivers/iio/adc/qcom-pm8xxx-xoadc.c b/drivers/iio/adc/qcom-pm8xxx-xoadc.c
index c599ffa45a04..d3225965a1af 100644
--- a/drivers/iio/adc/qcom-pm8xxx-xoadc.c
+++ b/drivers/iio/adc/qcom-pm8xxx-xoadc.c
@@ -933,7 +933,6 @@ static int pm8xxx_xoadc_probe(struct platform_device *pdev)
 		goto out_disable_vref;
 	}
 
-	indio_dev->dev.parent = dev;
 	indio_dev->dev.of_node = np;
 	indio_dev->name = variant->name;
 	indio_dev->modes = INDIO_DIRECT_MODE;
diff --git a/drivers/iio/adc/qcom-spmi-adc5.c b/drivers/iio/adc/qcom-spmi-adc5.c
index 21fdcde77883..507ed76a113d 100644
--- a/drivers/iio/adc/qcom-spmi-adc5.c
+++ b/drivers/iio/adc/qcom-spmi-adc5.c
@@ -773,7 +773,6 @@ static int adc5_probe(struct platform_device *pdev)
 			return ret;
 	}
 
-	indio_dev->dev.parent = dev;
 	indio_dev->dev.of_node = node;
 	indio_dev->name = pdev->name;
 	indio_dev->modes = INDIO_DIRECT_MODE;
diff --git a/drivers/iio/adc/qcom-spmi-vadc.c b/drivers/iio/adc/qcom-spmi-vadc.c
index 203ad59da336..1f1bb747c8e1 100644
--- a/drivers/iio/adc/qcom-spmi-vadc.c
+++ b/drivers/iio/adc/qcom-spmi-vadc.c
@@ -907,7 +907,6 @@ static int vadc_probe(struct platform_device *pdev)
 	if (ret)
 		return ret;
 
-	indio_dev->dev.parent = dev;
 	indio_dev->dev.of_node = node;
 	indio_dev->name = pdev->name;
 	indio_dev->modes = INDIO_DIRECT_MODE;
diff --git a/drivers/iio/adc/rcar-gyroadc.c b/drivers/iio/adc/rcar-gyroadc.c
index 63ce743ee7af..8591d3871791 100644
--- a/drivers/iio/adc/rcar-gyroadc.c
+++ b/drivers/iio/adc/rcar-gyroadc.c
@@ -516,7 +516,6 @@ static int rcar_gyroadc_probe(struct platform_device *pdev)
 	platform_set_drvdata(pdev, indio_dev);
 
 	indio_dev->name = DRIVER_NAME;
-	indio_dev->dev.parent = dev;
 	indio_dev->dev.of_node = pdev->dev.of_node;
 	indio_dev->info = &rcar_gyroadc_iio_info;
 	indio_dev->modes = INDIO_DIRECT_MODE;
diff --git a/drivers/iio/adc/rn5t618-adc.c b/drivers/iio/adc/rn5t618-adc.c
index f21027e4e26a..7010c4276947 100644
--- a/drivers/iio/adc/rn5t618-adc.c
+++ b/drivers/iio/adc/rn5t618-adc.c
@@ -218,7 +218,6 @@ static int rn5t618_adc_probe(struct platform_device *pdev)
 	init_completion(&adc->conv_completion);
 
 	iio_dev->name = dev_name(&pdev->dev);
-	iio_dev->dev.parent = &pdev->dev;
 	iio_dev->info = &rn5t618_adc_iio_info;
 	iio_dev->modes = INDIO_DIRECT_MODE;
 	iio_dev->channels = rn5t618_adc_iio_channels;
diff --git a/drivers/iio/adc/rockchip_saradc.c b/drivers/iio/adc/rockchip_saradc.c
index 582ba047c4a6..dabcd3e1365f 100644
--- a/drivers/iio/adc/rockchip_saradc.c
+++ b/drivers/iio/adc/rockchip_saradc.c
@@ -307,7 +307,6 @@ static int rockchip_saradc_probe(struct platform_device *pdev)
 	platform_set_drvdata(pdev, indio_dev);
 
 	indio_dev->name = dev_name(&pdev->dev);
-	indio_dev->dev.parent = &pdev->dev;
 	indio_dev->dev.of_node = pdev->dev.of_node;
 	indio_dev->info = &rockchip_saradc_iio_info;
 	indio_dev->modes = INDIO_DIRECT_MODE;
diff --git a/drivers/iio/adc/sc27xx_adc.c b/drivers/iio/adc/sc27xx_adc.c
index 66b387f9b36d..aa32a1f385e2 100644
--- a/drivers/iio/adc/sc27xx_adc.c
+++ b/drivers/iio/adc/sc27xx_adc.c
@@ -533,7 +533,6 @@ static int sc27xx_adc_probe(struct platform_device *pdev)
 		return ret;
 	}
 
-	indio_dev->dev.parent = dev;
 	indio_dev->name = dev_name(dev);
 	indio_dev->modes = INDIO_DIRECT_MODE;
 	indio_dev->info = &sc27xx_info;
diff --git a/drivers/iio/adc/sd_adc_modulator.c b/drivers/iio/adc/sd_adc_modulator.c
index 560d8c7d9d86..c32bb7bb5a96 100644
--- a/drivers/iio/adc/sd_adc_modulator.c
+++ b/drivers/iio/adc/sd_adc_modulator.c
@@ -32,7 +32,6 @@ static int iio_sd_mod_probe(struct platform_device *pdev)
 	if (!iio)
 		return -ENOMEM;
 
-	iio->dev.parent = dev;
 	iio->dev.of_node = dev->of_node;
 	iio->name = dev_name(dev);
 	iio->info = &iio_sd_mod_iio_info;
diff --git a/drivers/iio/adc/spear_adc.c b/drivers/iio/adc/spear_adc.c
index 0ad536494e8f..1bc986a7009d 100644
--- a/drivers/iio/adc/spear_adc.c
+++ b/drivers/iio/adc/spear_adc.c
@@ -336,7 +336,6 @@ static int spear_adc_probe(struct platform_device *pdev)
 	init_completion(&st->completion);
 
 	indio_dev->name = SPEAR_ADC_MOD_NAME;
-	indio_dev->dev.parent = dev;
 	indio_dev->info = &spear_adc_info;
 	indio_dev->modes = INDIO_DIRECT_MODE;
 	indio_dev->channels = spear_adc_iio_channels;
diff --git a/drivers/iio/adc/stm32-adc.c b/drivers/iio/adc/stm32-adc.c
index ae622ee6d08c..2c5fcc43c444 100644
--- a/drivers/iio/adc/stm32-adc.c
+++ b/drivers/iio/adc/stm32-adc.c
@@ -1886,7 +1886,6 @@ static int stm32_adc_probe(struct platform_device *pdev)
 		of_match_device(dev->driver->of_match_table, dev)->data;
 
 	indio_dev->name = dev_name(&pdev->dev);
-	indio_dev->dev.parent = &pdev->dev;
 	indio_dev->dev.of_node = pdev->dev.of_node;
 	indio_dev->info = &stm32_adc_iio_info;
 	indio_dev->modes = INDIO_DIRECT_MODE | INDIO_HARDWARE_TRIGGERED;
diff --git a/drivers/iio/adc/stm32-dfsdm-adc.c b/drivers/iio/adc/stm32-dfsdm-adc.c
index 76a60d93fe23..038ef0d6d999 100644
--- a/drivers/iio/adc/stm32-dfsdm-adc.c
+++ b/drivers/iio/adc/stm32-dfsdm-adc.c
@@ -1570,7 +1570,6 @@ static int stm32_dfsdm_adc_probe(struct platform_device *pdev)
 	adc = iio_priv(iio);
 	adc->dfsdm = dev_get_drvdata(dev->parent);
 
-	iio->dev.parent = dev;
 	iio->dev.of_node = np;
 	iio->modes = INDIO_DIRECT_MODE;
 
diff --git a/drivers/iio/adc/stmpe-adc.c b/drivers/iio/adc/stmpe-adc.c
index 0f88048ea48f..fba659bfdb40 100644
--- a/drivers/iio/adc/stmpe-adc.c
+++ b/drivers/iio/adc/stmpe-adc.c
@@ -297,7 +297,6 @@ static int stmpe_adc_probe(struct platform_device *pdev)
 	platform_set_drvdata(pdev, indio_dev);
 
 	indio_dev->name		= dev_name(&pdev->dev);
-	indio_dev->dev.parent	= &pdev->dev;
 	indio_dev->info		= &stmpe_adc_iio_info;
 	indio_dev->modes	= INDIO_DIRECT_MODE;
 
diff --git a/drivers/iio/adc/stx104.c b/drivers/iio/adc/stx104.c
index f87bbc711ccc..55bd2dc514e9 100644
--- a/drivers/iio/adc/stx104.c
+++ b/drivers/iio/adc/stx104.c
@@ -319,7 +319,6 @@ static int stx104_probe(struct device *dev, unsigned int id)
 	}
 
 	indio_dev->name = dev_name(dev);
-	indio_dev->dev.parent = dev;
 
 	priv = iio_priv(indio_dev);
 	priv->base = base[id];
diff --git a/drivers/iio/adc/sun4i-gpadc-iio.c b/drivers/iio/adc/sun4i-gpadc-iio.c
index 0f2c1738a90d..06b02f5b1721 100644
--- a/drivers/iio/adc/sun4i-gpadc-iio.c
+++ b/drivers/iio/adc/sun4i-gpadc-iio.c
@@ -619,7 +619,6 @@ static int sun4i_gpadc_probe(struct platform_device *pdev)
 	info->indio_dev = indio_dev;
 	init_completion(&info->completion);
 	indio_dev->name = dev_name(&pdev->dev);
-	indio_dev->dev.parent = &pdev->dev;
 	indio_dev->dev.of_node = pdev->dev.of_node;
 	indio_dev->info = &sun4i_gpadc_iio_info;
 	indio_dev->modes = INDIO_DIRECT_MODE;
diff --git a/drivers/iio/adc/ti-adc081c.c b/drivers/iio/adc/ti-adc081c.c
index 0235863ff77b..e44e7a40a36b 100644
--- a/drivers/iio/adc/ti-adc081c.c
+++ b/drivers/iio/adc/ti-adc081c.c
@@ -181,7 +181,6 @@ static int adc081c_probe(struct i2c_client *client,
 	if (err < 0)
 		return err;
 
-	iio->dev.parent = &client->dev;
 	iio->dev.of_node = client->dev.of_node;
 	iio->name = dev_name(&client->dev);
 	iio->modes = INDIO_DIRECT_MODE;
diff --git a/drivers/iio/adc/ti-adc0832.c b/drivers/iio/adc/ti-adc0832.c
index 6ea39f4bbb37..054db3425afa 100644
--- a/drivers/iio/adc/ti-adc0832.c
+++ b/drivers/iio/adc/ti-adc0832.c
@@ -245,7 +245,6 @@ static int adc0832_probe(struct spi_device *spi)
 	mutex_init(&adc->lock);
 
 	indio_dev->name = spi_get_device_id(spi)->name;
-	indio_dev->dev.parent = &spi->dev;
 	indio_dev->dev.of_node = spi->dev.of_node;
 	indio_dev->info = &adc0832_info;
 	indio_dev->modes = INDIO_DIRECT_MODE;
diff --git a/drivers/iio/adc/ti-adc084s021.c b/drivers/iio/adc/ti-adc084s021.c
index bdedf456ee05..376a0cf1f4ff 100644
--- a/drivers/iio/adc/ti-adc084s021.c
+++ b/drivers/iio/adc/ti-adc084s021.c
@@ -211,7 +211,6 @@ static int adc084s021_probe(struct spi_device *spi)
 	spi_set_drvdata(spi, indio_dev);
 
 	/* Initiate the Industrial I/O device */
-	indio_dev->dev.parent = &spi->dev;
 	indio_dev->dev.of_node = spi->dev.of_node;
 	indio_dev->name = spi_get_device_id(spi)->name;
 	indio_dev->modes = INDIO_DIRECT_MODE;
diff --git a/drivers/iio/adc/ti-adc108s102.c b/drivers/iio/adc/ti-adc108s102.c
index de9aaebff862..9b9b27415c93 100644
--- a/drivers/iio/adc/ti-adc108s102.c
+++ b/drivers/iio/adc/ti-adc108s102.c
@@ -252,7 +252,6 @@ static int adc108s102_probe(struct spi_device *spi)
 	st->spi = spi;
 
 	indio_dev->name = spi->modalias;
-	indio_dev->dev.parent = &spi->dev;
 	indio_dev->modes = INDIO_DIRECT_MODE;
 	indio_dev->channels = adc108s102_channels;
 	indio_dev->num_channels = ARRAY_SIZE(adc108s102_channels);
diff --git a/drivers/iio/adc/ti-adc12138.c b/drivers/iio/adc/ti-adc12138.c
index 68a9dcb8faa2..e485719cd2c4 100644
--- a/drivers/iio/adc/ti-adc12138.c
+++ b/drivers/iio/adc/ti-adc12138.c
@@ -407,7 +407,6 @@ static int adc12138_probe(struct spi_device *spi)
 	init_completion(&adc->complete);
 
 	indio_dev->name = spi_get_device_id(spi)->name;
-	indio_dev->dev.parent = &spi->dev;
 	indio_dev->info = &adc12138_info;
 	indio_dev->modes = INDIO_DIRECT_MODE;
 
diff --git a/drivers/iio/adc/ti-adc128s052.c b/drivers/iio/adc/ti-adc128s052.c
index 1e5a936b5b6a..4eca6404661c 100644
--- a/drivers/iio/adc/ti-adc128s052.c
+++ b/drivers/iio/adc/ti-adc128s052.c
@@ -152,7 +152,6 @@ static int adc128_probe(struct spi_device *spi)
 
 	spi_set_drvdata(spi, indio_dev);
 
-	indio_dev->dev.parent = &spi->dev;
 	indio_dev->dev.of_node = spi->dev.of_node;
 	indio_dev->name = spi_get_device_id(spi)->name;
 	indio_dev->modes = INDIO_DIRECT_MODE;
diff --git a/drivers/iio/adc/ti-adc161s626.c b/drivers/iio/adc/ti-adc161s626.c
index 3bbc9b9ddbfe..d6f28d478a73 100644
--- a/drivers/iio/adc/ti-adc161s626.c
+++ b/drivers/iio/adc/ti-adc161s626.c
@@ -179,7 +179,6 @@ static int ti_adc_probe(struct spi_device *spi)
 		return -ENOMEM;
 
 	indio_dev->info = &ti_adc_info;
-	indio_dev->dev.parent = &spi->dev;
 	indio_dev->dev.of_node = spi->dev.of_node;
 	indio_dev->name = TI_ADC_DRV_NAME;
 	indio_dev->modes = INDIO_DIRECT_MODE;
diff --git a/drivers/iio/adc/ti-ads1015.c b/drivers/iio/adc/ti-ads1015.c
index 5ea4f45d6bad..629c631e8f5c 100644
--- a/drivers/iio/adc/ti-ads1015.c
+++ b/drivers/iio/adc/ti-ads1015.c
@@ -939,7 +939,6 @@ static int ads1015_probe(struct i2c_client *client,
 
 	mutex_init(&data->lock);
 
-	indio_dev->dev.parent = &client->dev;
 	indio_dev->dev.of_node = client->dev.of_node;
 	indio_dev->name = ADS1015_DRV_NAME;
 	indio_dev->modes = INDIO_DIRECT_MODE;
diff --git a/drivers/iio/adc/ti-ads124s08.c b/drivers/iio/adc/ti-ads124s08.c
index f1ee3b1e2827..dacaa7255a3b 100644
--- a/drivers/iio/adc/ti-ads124s08.c
+++ b/drivers/iio/adc/ti-ads124s08.c
@@ -325,7 +325,6 @@ static int ads124s_probe(struct spi_device *spi)
 	ads124s_priv->spi = spi;
 
 	indio_dev->name = spi_id->name;
-	indio_dev->dev.parent = &spi->dev;
 	indio_dev->dev.of_node = spi->dev.of_node;
 	indio_dev->modes = INDIO_DIRECT_MODE;
 	indio_dev->channels = ads124s_priv->chip_info->channels;
diff --git a/drivers/iio/adc/ti-ads7950.c b/drivers/iio/adc/ti-ads7950.c
index f9edc1207f75..fa7e017f8202 100644
--- a/drivers/iio/adc/ti-ads7950.c
+++ b/drivers/iio/adc/ti-ads7950.c
@@ -557,7 +557,6 @@ static int ti_ads7950_probe(struct spi_device *spi)
 	info = &ti_ads7950_chip_info[spi_get_device_id(spi)->driver_data];
 
 	indio_dev->name = spi_get_device_id(spi)->name;
-	indio_dev->dev.parent = &spi->dev;
 	indio_dev->modes = INDIO_DIRECT_MODE;
 	indio_dev->channels = info->channels;
 	indio_dev->num_channels = info->num_channels;
diff --git a/drivers/iio/adc/ti-ads8344.c b/drivers/iio/adc/ti-ads8344.c
index abe4b56c847c..7d99a67082a4 100644
--- a/drivers/iio/adc/ti-ads8344.c
+++ b/drivers/iio/adc/ti-ads8344.c
@@ -146,7 +146,6 @@ static int ads8344_probe(struct spi_device *spi)
 	mutex_init(&adc->lock);
 
 	indio_dev->name = dev_name(&spi->dev);
-	indio_dev->dev.parent = &spi->dev;
 	indio_dev->dev.of_node = spi->dev.of_node;
 	indio_dev->info = &ads8344_info;
 	indio_dev->modes = INDIO_DIRECT_MODE;
diff --git a/drivers/iio/adc/ti-ads8688.c b/drivers/iio/adc/ti-ads8688.c
index 14fe7c320b52..011e5c8b5afd 100644
--- a/drivers/iio/adc/ti-ads8688.c
+++ b/drivers/iio/adc/ti-ads8688.c
@@ -449,7 +449,6 @@ static int ads8688_probe(struct spi_device *spi)
 	st->spi = spi;
 
 	indio_dev->name = spi_get_device_id(spi)->name;
-	indio_dev->dev.parent = &spi->dev;
 	indio_dev->dev.of_node = spi->dev.of_node;
 	indio_dev->modes = INDIO_DIRECT_MODE;
 	indio_dev->channels = st->chip_info->channels;
diff --git a/drivers/iio/adc/ti-tlc4541.c b/drivers/iio/adc/ti-tlc4541.c
index 77620359b54c..432238246519 100644
--- a/drivers/iio/adc/ti-tlc4541.c
+++ b/drivers/iio/adc/ti-tlc4541.c
@@ -177,7 +177,6 @@ static int tlc4541_probe(struct spi_device *spi)
 	info = &tlc4541_chip_info[spi_get_device_id(spi)->driver_data];
 
 	indio_dev->name = spi_get_device_id(spi)->name;
-	indio_dev->dev.parent = &spi->dev;
 	indio_dev->modes = INDIO_DIRECT_MODE;
 	indio_dev->channels = info->channels;
 	indio_dev->num_channels = info->num_channels;
diff --git a/drivers/iio/adc/ti_am335x_adc.c b/drivers/iio/adc/ti_am335x_adc.c
index 9d984f2a8ba7..55c583bf1664 100644
--- a/drivers/iio/adc/ti_am335x_adc.c
+++ b/drivers/iio/adc/ti_am335x_adc.c
@@ -626,7 +626,6 @@ static int tiadc_probe(struct platform_device *pdev)
 	adc_dev->mfd_tscadc = ti_tscadc_dev_get(pdev);
 	tiadc_parse_dt(pdev, adc_dev);
 
-	indio_dev->dev.parent = &pdev->dev;
 	indio_dev->name = dev_name(&pdev->dev);
 	indio_dev->modes = INDIO_DIRECT_MODE;
 	indio_dev->info = &tiadc_info;
diff --git a/drivers/iio/adc/twl4030-madc.c b/drivers/iio/adc/twl4030-madc.c
index 472b08f37fea..e5602169e681 100644
--- a/drivers/iio/adc/twl4030-madc.c
+++ b/drivers/iio/adc/twl4030-madc.c
@@ -772,7 +772,6 @@ static int twl4030_madc_probe(struct platform_device *pdev)
 	madc->dev = &pdev->dev;
 
 	iio_dev->name = dev_name(&pdev->dev);
-	iio_dev->dev.parent = &pdev->dev;
 	iio_dev->dev.of_node = pdev->dev.of_node;
 	iio_dev->info = &twl4030_madc_iio_info;
 	iio_dev->modes = INDIO_DIRECT_MODE;
diff --git a/drivers/iio/adc/twl6030-gpadc.c b/drivers/iio/adc/twl6030-gpadc.c
index f24148bd15de..bd501a09bc98 100644
--- a/drivers/iio/adc/twl6030-gpadc.c
+++ b/drivers/iio/adc/twl6030-gpadc.c
@@ -926,7 +926,6 @@ static int twl6030_gpadc_probe(struct platform_device *pdev)
 	}
 
 	indio_dev->name = DRIVER_NAME;
-	indio_dev->dev.parent = dev;
 	indio_dev->info = &twl6030_gpadc_iio_info;
 	indio_dev->modes = INDIO_DIRECT_MODE;
 	indio_dev->channels = pdata->iio_channels;
diff --git a/drivers/iio/adc/vf610_adc.c b/drivers/iio/adc/vf610_adc.c
index cb7380bf07ca..1e3ef5dd0bc6 100644
--- a/drivers/iio/adc/vf610_adc.c
+++ b/drivers/iio/adc/vf610_adc.c
@@ -860,7 +860,6 @@ static int vf610_adc_probe(struct platform_device *pdev)
 	init_completion(&info->completion);
 
 	indio_dev->name = dev_name(&pdev->dev);
-	indio_dev->dev.parent = &pdev->dev;
 	indio_dev->dev.of_node = pdev->dev.of_node;
 	indio_dev->info = &vf610_adc_iio_info;
 	indio_dev->modes = INDIO_DIRECT_MODE;
diff --git a/drivers/iio/adc/viperboard_adc.c b/drivers/iio/adc/viperboard_adc.c
index 1d2aeb04069b..1028b101cf56 100644
--- a/drivers/iio/adc/viperboard_adc.c
+++ b/drivers/iio/adc/viperboard_adc.c
@@ -121,7 +121,6 @@ static int vprbrd_adc_probe(struct platform_device *pdev)
 	adc = iio_priv(indio_dev);
 	adc->vb = vb;
 	indio_dev->name = "viperboard adc";
-	indio_dev->dev.parent = &pdev->dev;
 	indio_dev->info = &vprbrd_adc_iio_info;
 	indio_dev->modes = INDIO_DIRECT_MODE;
 	indio_dev->channels = vprbrd_adc_iio_channels;
diff --git a/drivers/iio/adc/xilinx-xadc-core.c b/drivers/iio/adc/xilinx-xadc-core.c
index d7fecab9252e..aeefd9768203 100644
--- a/drivers/iio/adc/xilinx-xadc-core.c
+++ b/drivers/iio/adc/xilinx-xadc-core.c
@@ -1221,7 +1221,6 @@ static int xadc_probe(struct platform_device *pdev)
 	if (IS_ERR(xadc->base))
 		return PTR_ERR(xadc->base);
 
-	indio_dev->dev.parent = &pdev->dev;
 	indio_dev->dev.of_node = pdev->dev.of_node;
 	indio_dev->name = "xadc";
 	indio_dev->modes = INDIO_DIRECT_MODE;
diff --git a/drivers/iio/afe/iio-rescale.c b/drivers/iio/afe/iio-rescale.c
index e9ceee66d1e7..69c0f277ada0 100644
--- a/drivers/iio/afe/iio-rescale.c
+++ b/drivers/iio/afe/iio-rescale.c
@@ -314,7 +314,6 @@ static int rescale_probe(struct platform_device *pdev)
 	rescale->source = source;
 
 	indio_dev->name = dev_name(dev);
-	indio_dev->dev.parent = dev;
 	indio_dev->info = &rescale_info;
 	indio_dev->modes = INDIO_DIRECT_MODE;
 	indio_dev->channels = &rescale->chan;
diff --git a/drivers/iio/amplifiers/hmc425a.c b/drivers/iio/amplifiers/hmc425a.c
index d9e6e9678ffc..582708924e4f 100644
--- a/drivers/iio/amplifiers/hmc425a.c
+++ b/drivers/iio/amplifiers/hmc425a.c
@@ -227,7 +227,6 @@ static int hmc425a_probe(struct platform_device *pdev)
 
 	mutex_init(&st->lock);
 
-	indio_dev->dev.parent = &pdev->dev;
 	indio_dev->info = &hmc425a_info;
 	indio_dev->modes = INDIO_DIRECT_MODE;
 
diff --git a/drivers/iio/chemical/ams-iaq-core.c b/drivers/iio/chemical/ams-iaq-core.c
index a0646ba2ad88..8c1b64fd424a 100644
--- a/drivers/iio/chemical/ams-iaq-core.c
+++ b/drivers/iio/chemical/ams-iaq-core.c
@@ -152,7 +152,6 @@ static int ams_iaqcore_probe(struct i2c_client *client,
 	data->last_update = jiffies - HZ;
 	mutex_init(&data->lock);
 
-	indio_dev->dev.parent = &client->dev;
 	indio_dev->info = &ams_iaqcore_info;
 	indio_dev->name = dev_name(&client->dev);
 	indio_dev->modes = INDIO_DIRECT_MODE;
diff --git a/drivers/iio/chemical/atlas-sensor.c b/drivers/iio/chemical/atlas-sensor.c
index a6d996ab9a66..81d2098e1f5f 100644
--- a/drivers/iio/chemical/atlas-sensor.c
+++ b/drivers/iio/chemical/atlas-sensor.c
@@ -632,7 +632,6 @@ static int atlas_probe(struct i2c_client *client,
 	indio_dev->channels = chip->channels;
 	indio_dev->num_channels = chip->num_channels;
 	indio_dev->modes = INDIO_BUFFER_SOFTWARE | INDIO_DIRECT_MODE;
-	indio_dev->dev.parent = &client->dev;
 
 	trig = devm_iio_trigger_alloc(&client->dev, "%s-dev%d",
 				      indio_dev->name, indio_dev->id);
diff --git a/drivers/iio/chemical/bme680_core.c b/drivers/iio/chemical/bme680_core.c
index 13773e01699b..6ea99e4cbf92 100644
--- a/drivers/iio/chemical/bme680_core.c
+++ b/drivers/iio/chemical/bme680_core.c
@@ -923,7 +923,6 @@ int bme680_core_probe(struct device *dev, struct regmap *regmap,
 	data = iio_priv(indio_dev);
 	dev_set_drvdata(dev, indio_dev);
 	data->regmap = regmap;
-	indio_dev->dev.parent = dev;
 	indio_dev->name = name;
 	indio_dev->channels = bme680_channels;
 	indio_dev->num_channels = ARRAY_SIZE(bme680_channels);
diff --git a/drivers/iio/chemical/ccs811.c b/drivers/iio/chemical/ccs811.c
index 3ecd633f9ed3..2b007e7568b2 100644
--- a/drivers/iio/chemical/ccs811.c
+++ b/drivers/iio/chemical/ccs811.c
@@ -464,7 +464,6 @@ static int ccs811_probe(struct i2c_client *client,
 
 	mutex_init(&data->lock);
 
-	indio_dev->dev.parent = &client->dev;
 	indio_dev->name = id->name;
 	indio_dev->info = &ccs811_info;
 	indio_dev->modes = INDIO_DIRECT_MODE;
diff --git a/drivers/iio/chemical/pms7003.c b/drivers/iio/chemical/pms7003.c
index 23c9ab252470..c7cf10c0de61 100644
--- a/drivers/iio/chemical/pms7003.c
+++ b/drivers/iio/chemical/pms7003.c
@@ -273,7 +273,6 @@ static int pms7003_probe(struct serdev_device *serdev)
 	state = iio_priv(indio_dev);
 	serdev_device_set_drvdata(serdev, indio_dev);
 	state->serdev = serdev;
-	indio_dev->dev.parent = &serdev->dev;
 	indio_dev->info = &pms7003_info;
 	indio_dev->name = PMS7003_DRIVER_NAME;
 	indio_dev->channels = pms7003_channels,
diff --git a/drivers/iio/chemical/sgp30.c b/drivers/iio/chemical/sgp30.c
index 403e8803471a..2c4086c48136 100644
--- a/drivers/iio/chemical/sgp30.c
+++ b/drivers/iio/chemical/sgp30.c
@@ -533,7 +533,6 @@ static int sgp_probe(struct i2c_client *client,
 	if (ret)
 		return ret;
 
-	indio_dev->dev.parent = &client->dev;
 	indio_dev->info = &sgp_info;
 	indio_dev->name = id->name;
 	indio_dev->modes = INDIO_DIRECT_MODE;
diff --git a/drivers/iio/chemical/sps30.c b/drivers/iio/chemical/sps30.c
index acb9f8ecbb3d..b360d7bae255 100644
--- a/drivers/iio/chemical/sps30.c
+++ b/drivers/iio/chemical/sps30.c
@@ -484,7 +484,6 @@ static int sps30_probe(struct i2c_client *client)
 	i2c_set_clientdata(client, indio_dev);
 	state->client = client;
 	state->state = RESET;
-	indio_dev->dev.parent = &client->dev;
 	indio_dev->info = &sps30_info;
 	indio_dev->name = client->name;
 	indio_dev->channels = sps30_channels;
diff --git a/drivers/iio/dac/ad5064.c b/drivers/iio/dac/ad5064.c
index d33642de9720..db36365dc04c 100644
--- a/drivers/iio/dac/ad5064.c
+++ b/drivers/iio/dac/ad5064.c
@@ -874,7 +874,6 @@ static int ad5064_probe(struct device *dev, enum ad5064_type type,
 			return ret;
 	}
 
-	indio_dev->dev.parent = dev;
 	indio_dev->name = name;
 	indio_dev->info = &ad5064_info;
 	indio_dev->modes = INDIO_DIRECT_MODE;
diff --git a/drivers/iio/dac/ad5360.c b/drivers/iio/dac/ad5360.c
index 3e0c9e84e8da..f5d19d158d1c 100644
--- a/drivers/iio/dac/ad5360.c
+++ b/drivers/iio/dac/ad5360.c
@@ -476,7 +476,6 @@ static int ad5360_probe(struct spi_device *spi)
 	st->chip_info = &ad5360_chip_info_tbl[type];
 	st->spi = spi;
 
-	indio_dev->dev.parent = &spi->dev;
 	indio_dev->name = spi_get_device_id(spi)->name;
 	indio_dev->info = &ad5360_info;
 	indio_dev->modes = INDIO_DIRECT_MODE;
diff --git a/drivers/iio/dac/ad5380.c b/drivers/iio/dac/ad5380.c
index b37e5675f716..0dcbe1d4d84b 100644
--- a/drivers/iio/dac/ad5380.c
+++ b/drivers/iio/dac/ad5380.c
@@ -386,7 +386,6 @@ static int ad5380_probe(struct device *dev, struct regmap *regmap,
 	st->chip_info = &ad5380_chip_info_tbl[type];
 	st->regmap = regmap;
 
-	indio_dev->dev.parent = dev;
 	indio_dev->name = name;
 	indio_dev->info = &ad5380_info;
 	indio_dev->modes = INDIO_DIRECT_MODE;
diff --git a/drivers/iio/dac/ad5421.c b/drivers/iio/dac/ad5421.c
index fec27764cea8..4158c810de9b 100644
--- a/drivers/iio/dac/ad5421.c
+++ b/drivers/iio/dac/ad5421.c
@@ -487,7 +487,6 @@ static int ad5421_probe(struct spi_device *spi)
 
 	st->spi = spi;
 
-	indio_dev->dev.parent = &spi->dev;
 	indio_dev->name = "ad5421";
 	indio_dev->info = &ad5421_info;
 	indio_dev->modes = INDIO_DIRECT_MODE;
diff --git a/drivers/iio/dac/ad5446.c b/drivers/iio/dac/ad5446.c
index 8f8afc8999bc..e01ba90dc106 100644
--- a/drivers/iio/dac/ad5446.c
+++ b/drivers/iio/dac/ad5446.c
@@ -251,7 +251,6 @@ static int ad5446_probe(struct device *dev, const char *name,
 	st->dev = dev;
 
 	/* Establish that the iio_dev is a child of the device */
-	indio_dev->dev.parent = dev;
 	indio_dev->name = name;
 	indio_dev->info = &ad5446_info;
 	indio_dev->modes = INDIO_DIRECT_MODE;
diff --git a/drivers/iio/dac/ad5449.c b/drivers/iio/dac/ad5449.c
index d739b10e5236..447ba9f550d8 100644
--- a/drivers/iio/dac/ad5449.c
+++ b/drivers/iio/dac/ad5449.c
@@ -297,7 +297,6 @@ static int ad5449_spi_probe(struct spi_device *spi)
 	if (ret)
 		return ret;
 
-	indio_dev->dev.parent = &spi->dev;
 	indio_dev->name = id->name;
 	indio_dev->info = &ad5449_info;
 	indio_dev->modes = INDIO_DIRECT_MODE;
diff --git a/drivers/iio/dac/ad5504.c b/drivers/iio/dac/ad5504.c
index c64e6898ff20..6f18ac2c20fa 100644
--- a/drivers/iio/dac/ad5504.c
+++ b/drivers/iio/dac/ad5504.c
@@ -304,7 +304,6 @@ static int ad5504_probe(struct spi_device *spi)
 
 	st->reg = reg;
 	st->spi = spi;
-	indio_dev->dev.parent = &spi->dev;
 	indio_dev->name = spi_get_device_id(st->spi)->name;
 	indio_dev->info = &ad5504_info;
 	if (spi_get_device_id(st->spi)->driver_data == ID_AD5501)
diff --git a/drivers/iio/dac/ad5592r-base.c b/drivers/iio/dac/ad5592r-base.c
index e2110113e884..d00e2d0aee02 100644
--- a/drivers/iio/dac/ad5592r-base.c
+++ b/drivers/iio/dac/ad5592r-base.c
@@ -620,7 +620,6 @@ int ad5592r_probe(struct device *dev, const char *name,
 			return ret;
 	}
 
-	iio_dev->dev.parent = dev;
 	iio_dev->name = name;
 	iio_dev->info = &ad5592r_info;
 	iio_dev->modes = INDIO_DIRECT_MODE;
diff --git a/drivers/iio/dac/ad5624r_spi.c b/drivers/iio/dac/ad5624r_spi.c
index 2015a5df840c..2b2b8edfd258 100644
--- a/drivers/iio/dac/ad5624r_spi.c
+++ b/drivers/iio/dac/ad5624r_spi.c
@@ -253,7 +253,6 @@ static int ad5624r_probe(struct spi_device *spi)
 
 	st->us = spi;
 
-	indio_dev->dev.parent = &spi->dev;
 	indio_dev->name = spi_get_device_id(spi)->name;
 	indio_dev->info = &ad5624r_info;
 	indio_dev->modes = INDIO_DIRECT_MODE;
diff --git a/drivers/iio/dac/ad5686.c b/drivers/iio/dac/ad5686.c
index 8dd67da0a7da..56cf9344d187 100644
--- a/drivers/iio/dac/ad5686.c
+++ b/drivers/iio/dac/ad5686.c
@@ -461,7 +461,6 @@ int ad5686_probe(struct device *dev,
 	for (i = 0; i < st->chip_info->num_channels; i++)
 		st->pwr_down_mode |= (0x01 << (i * 2));
 
-	indio_dev->dev.parent = dev;
 	indio_dev->name = name;
 	indio_dev->info = &ad5686_info;
 	indio_dev->modes = INDIO_DIRECT_MODE;
diff --git a/drivers/iio/dac/ad5755.c b/drivers/iio/dac/ad5755.c
index 7723bd313fc6..c8d9c698283d 100644
--- a/drivers/iio/dac/ad5755.c
+++ b/drivers/iio/dac/ad5755.c
@@ -744,7 +744,6 @@ static int ad5755_probe(struct spi_device *spi)
 	st->spi = spi;
 	st->pwr_down = 0xf;
 
-	indio_dev->dev.parent = &spi->dev;
 	indio_dev->name = spi_get_device_id(spi)->name;
 	indio_dev->info = &ad5755_info;
 	indio_dev->modes = INDIO_DIRECT_MODE;
diff --git a/drivers/iio/dac/ad5758.c b/drivers/iio/dac/ad5758.c
index 475646c82b40..86649149a3b0 100644
--- a/drivers/iio/dac/ad5758.c
+++ b/drivers/iio/dac/ad5758.c
@@ -854,7 +854,6 @@ static int ad5758_probe(struct spi_device *spi)
 
 	mutex_init(&st->lock);
 
-	indio_dev->dev.parent = &spi->dev;
 	indio_dev->name = spi_get_device_id(spi)->name;
 	indio_dev->info = &ad5758_info;
 	indio_dev->modes = INDIO_DIRECT_MODE;
diff --git a/drivers/iio/dac/ad5761.c b/drivers/iio/dac/ad5761.c
index 67179944e5c5..6c21d5f7aa5e 100644
--- a/drivers/iio/dac/ad5761.c
+++ b/drivers/iio/dac/ad5761.c
@@ -376,7 +376,6 @@ static int ad5761_probe(struct spi_device *spi)
 	if (ret)
 		goto disable_regulator_err;
 
-	iio_dev->dev.parent = &spi->dev;
 	iio_dev->info = &ad5761_info;
 	iio_dev->modes = INDIO_DIRECT_MODE;
 	iio_dev->channels = &chip_info->channel;
diff --git a/drivers/iio/dac/ad5764.c b/drivers/iio/dac/ad5764.c
index 5b0f0fe354f6..53e756e59e60 100644
--- a/drivers/iio/dac/ad5764.c
+++ b/drivers/iio/dac/ad5764.c
@@ -290,7 +290,6 @@ static int ad5764_probe(struct spi_device *spi)
 	st->spi = spi;
 	st->chip_info = &ad5764_chip_infos[type];
 
-	indio_dev->dev.parent = &spi->dev;
 	indio_dev->name = spi_get_device_id(spi)->name;
 	indio_dev->info = &ad5764_info;
 	indio_dev->modes = INDIO_DIRECT_MODE;
diff --git a/drivers/iio/dac/ad5791.c b/drivers/iio/dac/ad5791.c
index 1d11f39ed047..60aa16128a8f 100644
--- a/drivers/iio/dac/ad5791.c
+++ b/drivers/iio/dac/ad5791.c
@@ -409,7 +409,6 @@ static int ad5791_probe(struct spi_device *spi)
 		goto error_disable_reg_neg;
 
 	spi_set_drvdata(spi, indio_dev);
-	indio_dev->dev.parent = &spi->dev;
 	indio_dev->info = &ad5791_info;
 	indio_dev->modes = INDIO_DIRECT_MODE;
 	indio_dev->channels
diff --git a/drivers/iio/dac/ad7303.c b/drivers/iio/dac/ad7303.c
index 15af8a1cce3e..4460aa57a33f 100644
--- a/drivers/iio/dac/ad7303.c
+++ b/drivers/iio/dac/ad7303.c
@@ -238,7 +238,6 @@ static int ad7303_probe(struct spi_device *spi)
 		st->config |= AD7303_CFG_EXTERNAL_VREF;
 	}
 
-	indio_dev->dev.parent = &spi->dev;
 	indio_dev->name = id->name;
 	indio_dev->info = &ad7303_info;
 	indio_dev->modes = INDIO_DIRECT_MODE;
diff --git a/drivers/iio/dac/ad8801.c b/drivers/iio/dac/ad8801.c
index 0789c9100a8f..6354b7c8f052 100644
--- a/drivers/iio/dac/ad8801.c
+++ b/drivers/iio/dac/ad8801.c
@@ -171,7 +171,6 @@ static int ad8801_probe(struct spi_device *spi)
 	}
 
 	spi_set_drvdata(spi, indio_dev);
-	indio_dev->dev.parent = &spi->dev;
 	indio_dev->info = &ad8801_info;
 	indio_dev->modes = INDIO_DIRECT_MODE;
 	indio_dev->channels = ad8801_channels;
diff --git a/drivers/iio/dac/cio-dac.c b/drivers/iio/dac/cio-dac.c
index 81677795e57a..95813569f394 100644
--- a/drivers/iio/dac/cio-dac.c
+++ b/drivers/iio/dac/cio-dac.c
@@ -110,7 +110,6 @@ static int cio_dac_probe(struct device *dev, unsigned int id)
 	indio_dev->channels = cio_dac_channels;
 	indio_dev->num_channels = CIO_DAC_NUM_CHAN;
 	indio_dev->name = dev_name(dev);
-	indio_dev->dev.parent = dev;
 
 	priv = iio_priv(indio_dev);
 	priv->base = base[id];
diff --git a/drivers/iio/dac/dpot-dac.c b/drivers/iio/dac/dpot-dac.c
index 4a6111b7e86c..b3835fb6b862 100644
--- a/drivers/iio/dac/dpot-dac.c
+++ b/drivers/iio/dac/dpot-dac.c
@@ -177,7 +177,6 @@ static int dpot_dac_probe(struct platform_device *pdev)
 	dac = iio_priv(indio_dev);
 
 	indio_dev->name = dev_name(dev);
-	indio_dev->dev.parent = dev;
 	indio_dev->info = &dpot_dac_info;
 	indio_dev->modes = INDIO_DIRECT_MODE;
 	indio_dev->channels = &dpot_dac_iio_channel;
diff --git a/drivers/iio/dac/ds4424.c b/drivers/iio/dac/ds4424.c
index 26d206681472..86eec0df1174 100644
--- a/drivers/iio/dac/ds4424.c
+++ b/drivers/iio/dac/ds4424.c
@@ -231,7 +231,6 @@ static int ds4424_probe(struct i2c_client *client,
 	data->client = client;
 	indio_dev->name = id->name;
 	indio_dev->dev.of_node = client->dev.of_node;
-	indio_dev->dev.parent = &client->dev;
 
 	data->vcc_reg = devm_regulator_get(&client->dev, "vcc");
 	if (IS_ERR(data->vcc_reg)) {
diff --git a/drivers/iio/dac/lpc18xx_dac.c b/drivers/iio/dac/lpc18xx_dac.c
index 0ab357bd3633..9e38607a189e 100644
--- a/drivers/iio/dac/lpc18xx_dac.c
+++ b/drivers/iio/dac/lpc18xx_dac.c
@@ -133,7 +133,6 @@ static int lpc18xx_dac_probe(struct platform_device *pdev)
 	}
 
 	indio_dev->name = dev_name(&pdev->dev);
-	indio_dev->dev.parent = &pdev->dev;
 	indio_dev->info = &lpc18xx_dac_info;
 	indio_dev->modes = INDIO_DIRECT_MODE;
 	indio_dev->channels = lpc18xx_dac_iio_channels;
diff --git a/drivers/iio/dac/ltc1660.c b/drivers/iio/dac/ltc1660.c
index 10866838c72a..dc10188540ca 100644
--- a/drivers/iio/dac/ltc1660.c
+++ b/drivers/iio/dac/ltc1660.c
@@ -186,7 +186,6 @@ static int ltc1660_probe(struct spi_device *spi)
 
 	priv->spi = spi;
 	spi_set_drvdata(spi, indio_dev);
-	indio_dev->dev.parent = &spi->dev;
 	indio_dev->info = &ltc1660_info;
 	indio_dev->modes = INDIO_DIRECT_MODE;
 	indio_dev->channels = ltc1660_channels[id->driver_data];
diff --git a/drivers/iio/dac/ltc2632.c b/drivers/iio/dac/ltc2632.c
index f891311f05cf..06bfaaa00da6 100644
--- a/drivers/iio/dac/ltc2632.c
+++ b/drivers/iio/dac/ltc2632.c
@@ -362,7 +362,6 @@ static int ltc2632_probe(struct spi_device *spi)
 		}
 	}
 
-	indio_dev->dev.parent = &spi->dev;
 	indio_dev->name = dev_of_node(&spi->dev) ? dev_of_node(&spi->dev)->name
 						 : spi_get_device_id(spi)->name;
 	indio_dev->info = &ltc2632_info;
diff --git a/drivers/iio/dac/m62332.c b/drivers/iio/dac/m62332.c
index 3205ca98c32d..225b1a374dc1 100644
--- a/drivers/iio/dac/m62332.c
+++ b/drivers/iio/dac/m62332.c
@@ -204,9 +204,6 @@ static int m62332_probe(struct i2c_client *client,
 	if (IS_ERR(data->vcc))
 		return PTR_ERR(data->vcc);
 
-	/* establish that the iio_dev is a child of the i2c device */
-	indio_dev->dev.parent = &client->dev;
-
 	indio_dev->num_channels = ARRAY_SIZE(m62332_channels);
 	indio_dev->channels = m62332_channels;
 	indio_dev->modes = INDIO_DIRECT_MODE;
diff --git a/drivers/iio/dac/max517.c b/drivers/iio/dac/max517.c
index 7e01838ef4d0..daa60386bf0c 100644
--- a/drivers/iio/dac/max517.c
+++ b/drivers/iio/dac/max517.c
@@ -156,9 +156,6 @@ static int max517_probe(struct i2c_client *client,
 	i2c_set_clientdata(client, indio_dev);
 	data->client = client;
 
-	/* establish that the iio_dev is a child of the i2c device */
-	indio_dev->dev.parent = &client->dev;
-
 	switch (id->driver_data) {
 	case ID_MAX521:
 		indio_dev->num_channels = 8;
diff --git a/drivers/iio/dac/max5821.c b/drivers/iio/dac/max5821.c
index 2da086e372af..d6bb24db49c4 100644
--- a/drivers/iio/dac/max5821.c
+++ b/drivers/iio/dac/max5821.c
@@ -341,7 +341,6 @@ static int max5821_probe(struct i2c_client *client,
 	data->vref_mv = ret / 1000;
 
 	indio_dev->name = id->name;
-	indio_dev->dev.parent = &client->dev;
 	indio_dev->num_channels = ARRAY_SIZE(max5821_channels);
 	indio_dev->channels = max5821_channels;
 	indio_dev->modes = INDIO_DIRECT_MODE;
diff --git a/drivers/iio/dac/mcp4725.c b/drivers/iio/dac/mcp4725.c
index ed455e801e80..ee174d224110 100644
--- a/drivers/iio/dac/mcp4725.c
+++ b/drivers/iio/dac/mcp4725.c
@@ -453,7 +453,6 @@ static int mcp4725_probe(struct i2c_client *client,
 			goto err_disable_vdd_reg;
 	}
 
-	indio_dev->dev.parent = &client->dev;
 	indio_dev->name = id->name;
 	indio_dev->info = &mcp4725_info;
 	indio_dev->channels = &mcp472x_channel[id->driver_data];
diff --git a/drivers/iio/dac/mcp4922.c b/drivers/iio/dac/mcp4922.c
index f9194b3ddc9c..c4e430b4050e 100644
--- a/drivers/iio/dac/mcp4922.c
+++ b/drivers/iio/dac/mcp4922.c
@@ -152,7 +152,6 @@ static int mcp4922_probe(struct spi_device *spi)
 
 	spi_set_drvdata(spi, indio_dev);
 	id = spi_get_device_id(spi);
-	indio_dev->dev.parent = &spi->dev;
 	indio_dev->info = &mcp4922_info;
 	indio_dev->modes = INDIO_DIRECT_MODE;
 	indio_dev->channels = mcp4922_channels[id->driver_data];
diff --git a/drivers/iio/dac/stm32-dac.c b/drivers/iio/dac/stm32-dac.c
index f22c1d9129b2..092c796fa3d9 100644
--- a/drivers/iio/dac/stm32-dac.c
+++ b/drivers/iio/dac/stm32-dac.c
@@ -323,7 +323,6 @@ static int stm32_dac_probe(struct platform_device *pdev)
 	dac = iio_priv(indio_dev);
 	dac->common = dev_get_drvdata(pdev->dev.parent);
 	indio_dev->name = dev_name(&pdev->dev);
-	indio_dev->dev.parent = &pdev->dev;
 	indio_dev->dev.of_node = pdev->dev.of_node;
 	indio_dev->info = &stm32_dac_iio_info;
 	indio_dev->modes = INDIO_DIRECT_MODE;
diff --git a/drivers/iio/dac/ti-dac082s085.c b/drivers/iio/dac/ti-dac082s085.c
index 57b498d2a2a5..24e5833860f2 100644
--- a/drivers/iio/dac/ti-dac082s085.c
+++ b/drivers/iio/dac/ti-dac082s085.c
@@ -268,7 +268,6 @@ static int ti_dac_probe(struct spi_device *spi)
 	if (!indio_dev)
 		return -ENOMEM;
 
-	indio_dev->dev.parent = dev;
 	indio_dev->info = &ti_dac_info;
 	indio_dev->name = spi->modalias;
 	indio_dev->modes = INDIO_DIRECT_MODE;
diff --git a/drivers/iio/dac/ti-dac5571.c b/drivers/iio/dac/ti-dac5571.c
index 3a2bb0efe50d..502552716e1e 100644
--- a/drivers/iio/dac/ti-dac5571.c
+++ b/drivers/iio/dac/ti-dac5571.c
@@ -321,7 +321,6 @@ static int dac5571_probe(struct i2c_client *client,
 	i2c_set_clientdata(client, indio_dev);
 	data->client = client;
 
-	indio_dev->dev.parent = dev;
 	indio_dev->dev.of_node = client->dev.of_node;
 	indio_dev->info = &dac5571_info;
 	indio_dev->name = id->name;
diff --git a/drivers/iio/dac/ti-dac7311.c b/drivers/iio/dac/ti-dac7311.c
index 6f5df1a30a1c..d20cee33daba 100644
--- a/drivers/iio/dac/ti-dac7311.c
+++ b/drivers/iio/dac/ti-dac7311.c
@@ -251,7 +251,6 @@ static int ti_dac_probe(struct spi_device *spi)
 	spi->bits_per_word = 16;
 	spi_setup(spi);
 
-	indio_dev->dev.parent = dev;
 	indio_dev->dev.of_node = spi->dev.of_node;
 	indio_dev->info = &ti_dac_info;
 	indio_dev->name = spi_get_device_id(spi)->name;
diff --git a/drivers/iio/dac/ti-dac7612.c b/drivers/iio/dac/ti-dac7612.c
index c46805144dd4..7339d956a0cf 100644
--- a/drivers/iio/dac/ti-dac7612.c
+++ b/drivers/iio/dac/ti-dac7612.c
@@ -139,7 +139,6 @@ static int dac7612_probe(struct spi_device *spi)
 		return PTR_ERR(priv->loaddacs);
 	priv->spi = spi;
 	spi_set_drvdata(spi, iio_dev);
-	iio_dev->dev.parent = &spi->dev;
 	iio_dev->info = &dac7612_info;
 	iio_dev->modes = INDIO_DIRECT_MODE;
 	iio_dev->channels = dac7612_channels;
diff --git a/drivers/iio/dac/vf610_dac.c b/drivers/iio/dac/vf610_dac.c
index c1e15ede0e8e..344b55307c60 100644
--- a/drivers/iio/dac/vf610_dac.c
+++ b/drivers/iio/dac/vf610_dac.c
@@ -199,7 +199,6 @@ static int vf610_dac_probe(struct platform_device *pdev)
 	platform_set_drvdata(pdev, indio_dev);
 
 	indio_dev->name = dev_name(&pdev->dev);
-	indio_dev->dev.parent = &pdev->dev;
 	indio_dev->dev.of_node = pdev->dev.of_node;
 	indio_dev->info = &vf610_dac_iio_info;
 	indio_dev->modes = INDIO_DIRECT_MODE;
diff --git a/drivers/iio/frequency/ad9523.c b/drivers/iio/frequency/ad9523.c
index a7322184cbdd..334e1d779d6d 100644
--- a/drivers/iio/frequency/ad9523.c
+++ b/drivers/iio/frequency/ad9523.c
@@ -1026,7 +1026,6 @@ static int ad9523_probe(struct spi_device *spi)
 	st->spi = spi;
 	st->pdata = pdata;
 
-	indio_dev->dev.parent = &spi->dev;
 	indio_dev->name = (pdata->name[0] != 0) ? pdata->name :
 			  spi_get_device_id(spi)->name;
 	indio_dev->info = &ad9523_info;
diff --git a/drivers/iio/frequency/adf4350.c b/drivers/iio/frequency/adf4350.c
index 1c2dc9b00f31..409c9c47161e 100644
--- a/drivers/iio/frequency/adf4350.c
+++ b/drivers/iio/frequency/adf4350.c
@@ -531,7 +531,6 @@ static int adf4350_probe(struct spi_device *spi)
 	st->spi = spi;
 	st->pdata = pdata;
 
-	indio_dev->dev.parent = &spi->dev;
 	indio_dev->name = (pdata->name[0] != 0) ? pdata->name :
 		spi_get_device_id(spi)->name;
 
diff --git a/drivers/iio/frequency/adf4371.c b/drivers/iio/frequency/adf4371.c
index ff82863cbf42..ecd5e18995ad 100644
--- a/drivers/iio/frequency/adf4371.c
+++ b/drivers/iio/frequency/adf4371.c
@@ -573,7 +573,6 @@ static int adf4371_probe(struct spi_device *spi)
 	mutex_init(&st->lock);
 
 	st->chip_info = &adf4371_chip_info[id->driver_data];
-	indio_dev->dev.parent = &spi->dev;
 	indio_dev->name = id->name;
 	indio_dev->info = &adf4371_info;
 	indio_dev->modes = INDIO_DIRECT_MODE;
diff --git a/drivers/iio/gyro/adis16080.c b/drivers/iio/gyro/adis16080.c
index 1b84b8e112fe..6e5e2d98943c 100644
--- a/drivers/iio/gyro/adis16080.c
+++ b/drivers/iio/gyro/adis16080.c
@@ -207,7 +207,6 @@ static int adis16080_probe(struct spi_device *spi)
 	indio_dev->name = spi->dev.driver->name;
 	indio_dev->channels = adis16080_channels;
 	indio_dev->num_channels = ARRAY_SIZE(adis16080_channels);
-	indio_dev->dev.parent = &spi->dev;
 	indio_dev->info = &adis16080_info;
 	indio_dev->modes = INDIO_DIRECT_MODE;
 
diff --git a/drivers/iio/gyro/adis16130.c b/drivers/iio/gyro/adis16130.c
index 2a9ec08ec561..b9c952e65b55 100644
--- a/drivers/iio/gyro/adis16130.c
+++ b/drivers/iio/gyro/adis16130.c
@@ -155,7 +155,6 @@ static int adis16130_probe(struct spi_device *spi)
 	indio_dev->name = spi->dev.driver->name;
 	indio_dev->channels = adis16130_channels;
 	indio_dev->num_channels = ARRAY_SIZE(adis16130_channels);
-	indio_dev->dev.parent = &spi->dev;
 	indio_dev->info = &adis16130_info;
 	indio_dev->modes = INDIO_DIRECT_MODE;
 
diff --git a/drivers/iio/gyro/adis16136.c b/drivers/iio/gyro/adis16136.c
index afdc57af475d..d8a96f6bbae2 100644
--- a/drivers/iio/gyro/adis16136.c
+++ b/drivers/iio/gyro/adis16136.c
@@ -540,7 +540,6 @@ static int adis16136_probe(struct spi_device *spi)
 	adis16136 = iio_priv(indio_dev);
 
 	adis16136->chip_info = &adis16136_chip_info[id->driver_data];
-	indio_dev->dev.parent = &spi->dev;
 	indio_dev->name = spi_get_device_id(spi)->name;
 	indio_dev->channels = adis16136_channels;
 	indio_dev->num_channels = ARRAY_SIZE(adis16136_channels);
diff --git a/drivers/iio/gyro/adis16260.c b/drivers/iio/gyro/adis16260.c
index 9823573e811a..e638d56e1574 100644
--- a/drivers/iio/gyro/adis16260.c
+++ b/drivers/iio/gyro/adis16260.c
@@ -381,7 +381,6 @@ static int adis16260_probe(struct spi_device *spi)
 	adis16260->info = &adis16260_chip_info_table[id->driver_data];
 
 	indio_dev->name = id->name;
-	indio_dev->dev.parent = &spi->dev;
 	indio_dev->info = &adis16260_info;
 	indio_dev->channels = adis16260->info->channels;
 	indio_dev->num_channels = adis16260->info->num_channels;
diff --git a/drivers/iio/gyro/adxrs450.c b/drivers/iio/gyro/adxrs450.c
index b00c0eb44249..04f350025215 100644
--- a/drivers/iio/gyro/adxrs450.c
+++ b/drivers/iio/gyro/adxrs450.c
@@ -424,7 +424,6 @@ static int adxrs450_probe(struct spi_device *spi)
 	/* This is only used for removal purposes */
 	spi_set_drvdata(spi, indio_dev);
 
-	indio_dev->dev.parent = &spi->dev;
 	indio_dev->info = &adxrs450_info;
 	indio_dev->modes = INDIO_DIRECT_MODE;
 	indio_dev->channels =
diff --git a/drivers/iio/gyro/bmg160_core.c b/drivers/iio/gyro/bmg160_core.c
index 428ddfc13acb..933492b33189 100644
--- a/drivers/iio/gyro/bmg160_core.c
+++ b/drivers/iio/gyro/bmg160_core.c
@@ -1097,7 +1097,6 @@ int bmg160_core_probe(struct device *dev, struct regmap *regmap, int irq,
 	if (ACPI_HANDLE(dev))
 		name = bmg160_match_acpi_device(dev);
 
-	indio_dev->dev.parent = dev;
 	indio_dev->channels = bmg160_channels;
 	indio_dev->num_channels = ARRAY_SIZE(bmg160_channels);
 	indio_dev->name = name;
diff --git a/drivers/iio/gyro/fxas21002c_core.c b/drivers/iio/gyro/fxas21002c_core.c
index 89d2bb2282ea..b5e0e96c5968 100644
--- a/drivers/iio/gyro/fxas21002c_core.c
+++ b/drivers/iio/gyro/fxas21002c_core.c
@@ -905,7 +905,6 @@ int fxas21002c_core_probe(struct device *dev, struct regmap *regmap, int irq,
 	if (ret < 0)
 		return ret;
 
-	indio_dev->dev.parent = dev;
 	indio_dev->channels = fxas21002c_channels;
 	indio_dev->num_channels = ARRAY_SIZE(fxas21002c_channels);
 	indio_dev->name = name;
diff --git a/drivers/iio/gyro/hid-sensor-gyro-3d.c b/drivers/iio/gyro/hid-sensor-gyro-3d.c
index 7f382aae1dfd..6698f5f535f6 100644
--- a/drivers/iio/gyro/hid-sensor-gyro-3d.c
+++ b/drivers/iio/gyro/hid-sensor-gyro-3d.c
@@ -319,7 +319,6 @@ static int hid_gyro_3d_probe(struct platform_device *pdev)
 	}
 
 	indio_dev->num_channels = ARRAY_SIZE(gyro_3d_channels);
-	indio_dev->dev.parent = &pdev->dev;
 	indio_dev->info = &gyro_3d_info;
 	indio_dev->name = name;
 	indio_dev->modes = INDIO_DIRECT_MODE;
diff --git a/drivers/iio/gyro/itg3200_core.c b/drivers/iio/gyro/itg3200_core.c
index b3afa556f973..e9804664db73 100644
--- a/drivers/iio/gyro/itg3200_core.c
+++ b/drivers/iio/gyro/itg3200_core.c
@@ -316,7 +316,6 @@ static int itg3200_probe(struct i2c_client *client,
 	i2c_set_clientdata(client, indio_dev);
 	st->i2c = client;
 
-	indio_dev->dev.parent = &client->dev;
 	indio_dev->name = client->dev.driver->name;
 	indio_dev->channels = itg3200_channels;
 	indio_dev->num_channels = ARRAY_SIZE(itg3200_channels);
diff --git a/drivers/iio/gyro/mpu3050-core.c b/drivers/iio/gyro/mpu3050-core.c
index 8e908a749f95..157330451e0a 100644
--- a/drivers/iio/gyro/mpu3050-core.c
+++ b/drivers/iio/gyro/mpu3050-core.c
@@ -1198,7 +1198,6 @@ int mpu3050_common_probe(struct device *dev,
 	if (ret)
 		goto err_power_down;
 
-	indio_dev->dev.parent = dev;
 	indio_dev->channels = mpu3050_channels;
 	indio_dev->num_channels = ARRAY_SIZE(mpu3050_channels);
 	indio_dev->info = &mpu3050_info;
diff --git a/drivers/iio/gyro/ssp_gyro_sensor.c b/drivers/iio/gyro/ssp_gyro_sensor.c
index 4e4ee4167544..ac7c170a20de 100644
--- a/drivers/iio/gyro/ssp_gyro_sensor.c
+++ b/drivers/iio/gyro/ssp_gyro_sensor.c
@@ -108,7 +108,6 @@ static int ssp_gyro_probe(struct platform_device *pdev)
 	spd->type = SSP_GYROSCOPE_SENSOR;
 
 	indio_dev->name = ssp_gyro_name;
-	indio_dev->dev.parent = &pdev->dev;
 	indio_dev->info = &ssp_gyro_iio_info;
 	indio_dev->modes = INDIO_BUFFER_SOFTWARE;
 	indio_dev->channels = ssp_gyro_channels;
diff --git a/drivers/iio/health/max30100.c b/drivers/iio/health/max30100.c
index 546fc37ad75d..38aa2030f3c6 100644
--- a/drivers/iio/health/max30100.c
+++ b/drivers/iio/health/max30100.c
@@ -439,7 +439,6 @@ static int max30100_probe(struct i2c_client *client,
 	indio_dev->available_scan_masks = max30100_scan_masks;
 	indio_dev->modes = (INDIO_BUFFER_SOFTWARE | INDIO_DIRECT_MODE);
 	indio_dev->setup_ops = &max30100_buffer_setup_ops;
-	indio_dev->dev.parent = &client->dev;
 
 	data = iio_priv(indio_dev);
 	data->indio_dev = indio_dev;
diff --git a/drivers/iio/health/max30102.c b/drivers/iio/health/max30102.c
index 74fc260b957e..9b47d9472a4f 100644
--- a/drivers/iio/health/max30102.c
+++ b/drivers/iio/health/max30102.c
@@ -526,7 +526,6 @@ static int max30102_probe(struct i2c_client *client,
 	indio_dev->info = &max30102_info;
 	indio_dev->modes = (INDIO_BUFFER_SOFTWARE | INDIO_DIRECT_MODE);
 	indio_dev->setup_ops = &max30102_buffer_setup_ops;
-	indio_dev->dev.parent = &client->dev;
 
 	data = iio_priv(indio_dev);
 	data->indio_dev = indio_dev;
diff --git a/drivers/iio/humidity/am2315.c b/drivers/iio/humidity/am2315.c
index 3bac98e731d9..02ad1767c845 100644
--- a/drivers/iio/humidity/am2315.c
+++ b/drivers/iio/humidity/am2315.c
@@ -233,7 +233,6 @@ static int am2315_probe(struct i2c_client *client,
 	i2c_set_clientdata(client, indio_dev);
 	mutex_init(&data->lock);
 
-	indio_dev->dev.parent = &client->dev;
 	indio_dev->info = &am2315_info;
 	indio_dev->name = AM2315_DRIVER_NAME;
 	indio_dev->modes = INDIO_DIRECT_MODE;
diff --git a/drivers/iio/humidity/hdc100x.c b/drivers/iio/humidity/hdc100x.c
index 7ecd2ffa3132..3331141734c8 100644
--- a/drivers/iio/humidity/hdc100x.c
+++ b/drivers/iio/humidity/hdc100x.c
@@ -374,7 +374,6 @@ static int hdc100x_probe(struct i2c_client *client,
 	data->client = client;
 	mutex_init(&data->lock);
 
-	indio_dev->dev.parent = &client->dev;
 	indio_dev->name = dev_name(&client->dev);
 	indio_dev->modes = INDIO_DIRECT_MODE;
 	indio_dev->info = &hdc100x_info;
diff --git a/drivers/iio/humidity/hid-sensor-humidity.c b/drivers/iio/humidity/hid-sensor-humidity.c
index d2318c4aab0f..52f605114ef7 100644
--- a/drivers/iio/humidity/hid-sensor-humidity.c
+++ b/drivers/iio/humidity/hid-sensor-humidity.c
@@ -226,7 +226,6 @@ static int hid_humidity_probe(struct platform_device *pdev)
 
 	indio_dev->channels = humid_chans;
 	indio_dev->num_channels = ARRAY_SIZE(humidity_channels);
-	indio_dev->dev.parent = &pdev->dev;
 	indio_dev->info = &humidity_info;
 	indio_dev->name = name;
 	indio_dev->modes = INDIO_DIRECT_MODE;
diff --git a/drivers/iio/humidity/htu21.c b/drivers/iio/humidity/htu21.c
index d4c0589844dd..4f5d9d1c05ab 100644
--- a/drivers/iio/humidity/htu21.c
+++ b/drivers/iio/humidity/htu21.c
@@ -204,7 +204,6 @@ static int htu21_probe(struct i2c_client *client,
 
 	indio_dev->info = &htu21_info;
 	indio_dev->name = id->name;
-	indio_dev->dev.parent = &client->dev;
 	indio_dev->modes = INDIO_DIRECT_MODE;
 
 	if (id->driver_data == MS8607) {
diff --git a/drivers/iio/humidity/si7005.c b/drivers/iio/humidity/si7005.c
index d5aef0bfef01..160b3d92df61 100644
--- a/drivers/iio/humidity/si7005.c
+++ b/drivers/iio/humidity/si7005.c
@@ -142,7 +142,6 @@ static int si7005_probe(struct i2c_client *client,
 	data->client = client;
 	mutex_init(&data->lock);
 
-	indio_dev->dev.parent = &client->dev;
 	indio_dev->name = dev_name(&client->dev);
 	indio_dev->modes = INDIO_DIRECT_MODE;
 	indio_dev->info = &si7005_info;
diff --git a/drivers/iio/humidity/si7020.c b/drivers/iio/humidity/si7020.c
index b938f07eed64..a09b5773d377 100644
--- a/drivers/iio/humidity/si7020.c
+++ b/drivers/iio/humidity/si7020.c
@@ -128,7 +128,6 @@ static int si7020_probe(struct i2c_client *client,
 	data = iio_priv(indio_dev);
 	*data = client;
 
-	indio_dev->dev.parent = &client->dev;
 	indio_dev->name = dev_name(&client->dev);
 	indio_dev->modes = INDIO_DIRECT_MODE;
 	indio_dev->info = &si7020_info;
diff --git a/drivers/iio/imu/adis16400.c b/drivers/iio/imu/adis16400.c
index 229f2ff98469..1ebe3e50d3e6 100644
--- a/drivers/iio/imu/adis16400.c
+++ b/drivers/iio/imu/adis16400.c
@@ -1181,7 +1181,6 @@ static int adis16400_probe(struct spi_device *spi)
 
 	/* setup the industrialio driver allocated elements */
 	st->variant = &adis16400_chips[spi_get_device_id(spi)->driver_data];
-	indio_dev->dev.parent = &spi->dev;
 	indio_dev->name = spi_get_device_id(spi)->name;
 	indio_dev->channels = st->variant->channels;
 	indio_dev->num_channels = st->variant->num_channels;
diff --git a/drivers/iio/imu/adis16460.c b/drivers/iio/imu/adis16460.c
index ad20c488a3ba..b26a5f1bc51a 100644
--- a/drivers/iio/imu/adis16460.c
+++ b/drivers/iio/imu/adis16460.c
@@ -393,7 +393,6 @@ static int adis16460_probe(struct spi_device *spi)
 	st = iio_priv(indio_dev);
 
 	st->chip_info = &adis16460_chip_info;
-	indio_dev->dev.parent = &spi->dev;
 	indio_dev->name = spi_get_device_id(spi)->name;
 	indio_dev->channels = st->chip_info->channels;
 	indio_dev->num_channels = st->chip_info->num_channels;
diff --git a/drivers/iio/imu/adis16475.c b/drivers/iio/imu/adis16475.c
index c6dac4fc67a1..35d10ccb66c2 100644
--- a/drivers/iio/imu/adis16475.c
+++ b/drivers/iio/imu/adis16475.c
@@ -1289,7 +1289,6 @@ static int adis16475_probe(struct spi_device *spi)
 	if (ret)
 		return ret;
 
-	indio_dev->dev.parent = &spi->dev;
 	indio_dev->name = st->info->name;
 	indio_dev->channels = st->info->channels;
 	indio_dev->num_channels = st->info->num_channels;
diff --git a/drivers/iio/imu/adis16480.c b/drivers/iio/imu/adis16480.c
index 6a471eee110e..5163749f568e 100644
--- a/drivers/iio/imu/adis16480.c
+++ b/drivers/iio/imu/adis16480.c
@@ -1229,7 +1229,6 @@ static int adis16480_probe(struct spi_device *spi)
 	st = iio_priv(indio_dev);
 
 	st->chip_info = &adis16480_chip_info[id->driver_data];
-	indio_dev->dev.parent = &spi->dev;
 	indio_dev->name = spi_get_device_id(spi)->name;
 	indio_dev->channels = st->chip_info->channels;
 	indio_dev->num_channels = st->chip_info->num_channels;
diff --git a/drivers/iio/imu/bmi160/bmi160_core.c b/drivers/iio/imu/bmi160/bmi160_core.c
index 6af65d6f1d28..91a58e6272c7 100644
--- a/drivers/iio/imu/bmi160/bmi160_core.c
+++ b/drivers/iio/imu/bmi160/bmi160_core.c
@@ -826,7 +826,6 @@ int bmi160_core_probe(struct device *dev, struct regmap *regmap,
 	if (!name && ACPI_HANDLE(dev))
 		name = bmi160_match_acpi_device(dev);
 
-	indio_dev->dev.parent = dev;
 	indio_dev->channels = bmi160_channels;
 	indio_dev->num_channels = ARRAY_SIZE(bmi160_channels);
 	indio_dev->name = name;
diff --git a/drivers/iio/imu/fxos8700_core.c b/drivers/iio/imu/fxos8700_core.c
index 7b47be44ea59..ab288186f36e 100644
--- a/drivers/iio/imu/fxos8700_core.c
+++ b/drivers/iio/imu/fxos8700_core.c
@@ -633,7 +633,6 @@ int fxos8700_core_probe(struct device *dev, struct regmap *regmap,
 	if (ret)
 		return ret;
 
-	indio_dev->dev.parent = dev;
 	indio_dev->channels = fxos8700_channels;
 	indio_dev->num_channels = ARRAY_SIZE(fxos8700_channels);
 	indio_dev->name = name ? name : "fxos8700";
diff --git a/drivers/iio/imu/kmx61.c b/drivers/iio/imu/kmx61.c
index e67466100aff..e37bf0cb1654 100644
--- a/drivers/iio/imu/kmx61.c
+++ b/drivers/iio/imu/kmx61.c
@@ -1248,7 +1248,6 @@ static struct iio_dev *kmx61_indiodev_setup(struct kmx61_data *data,
 
 	kmx61_set_data(indio_dev, data);
 
-	indio_dev->dev.parent = &data->client->dev;
 	indio_dev->channels = chan;
 	indio_dev->num_channels = num_channels;
 	indio_dev->name = name;
diff --git a/drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_core.c b/drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_core.c
index 0b776cb91928..c8ddeb3f48ff 100644
--- a/drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_core.c
+++ b/drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_core.c
@@ -2152,7 +2152,6 @@ static struct iio_dev *st_lsm6dsx_alloc_iiodev(struct st_lsm6dsx_hw *hw,
 		return NULL;
 
 	iio_dev->modes = INDIO_DIRECT_MODE;
-	iio_dev->dev.parent = hw->dev;
 	iio_dev->available_scan_masks = st_lsm6dsx_available_scan_masks;
 	iio_dev->channels = hw->settings->channels[id].chan;
 	iio_dev->num_channels = hw->settings->channels[id].len;
diff --git a/drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_shub.c b/drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_shub.c
index e20d2ca928cc..cb03d038c994 100644
--- a/drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_shub.c
+++ b/drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_shub.c
@@ -732,7 +732,6 @@ st_lsm6dsx_shub_alloc_iiodev(struct st_lsm6dsx_hw *hw,
 		return NULL;
 
 	iio_dev->modes = INDIO_DIRECT_MODE;
-	iio_dev->dev.parent = hw->dev;
 	iio_dev->info = &st_lsm6dsx_ext_info;
 
 	sensor = iio_priv(iio_dev);
diff --git a/drivers/iio/light/acpi-als.c b/drivers/iio/light/acpi-als.c
index 1eafd0b24e18..2be7180e2cbf 100644
--- a/drivers/iio/light/acpi-als.c
+++ b/drivers/iio/light/acpi-als.c
@@ -178,7 +178,6 @@ static int acpi_als_add(struct acpi_device *device)
 	mutex_init(&als->lock);
 
 	indio_dev->name = ACPI_ALS_DEVICE_NAME;
-	indio_dev->dev.parent = &device->dev;
 	indio_dev->info = &acpi_als_info;
 	indio_dev->modes = INDIO_BUFFER_SOFTWARE;
 	indio_dev->channels = acpi_als_channels;
diff --git a/drivers/iio/light/adjd_s311.c b/drivers/iio/light/adjd_s311.c
index d3269cd44fb5..17dac8d0e11d 100644
--- a/drivers/iio/light/adjd_s311.c
+++ b/drivers/iio/light/adjd_s311.c
@@ -259,7 +259,6 @@ static int adjd_s311_probe(struct i2c_client *client,
 	i2c_set_clientdata(client, indio_dev);
 	data->client = client;
 
-	indio_dev->dev.parent = &client->dev;
 	indio_dev->info = &adjd_s311_info;
 	indio_dev->name = ADJD_S311_DRV_NAME;
 	indio_dev->channels = adjd_s311_channels;
diff --git a/drivers/iio/light/adux1020.c b/drivers/iio/light/adux1020.c
index b07797ac10d7..9aa28695e6f1 100644
--- a/drivers/iio/light/adux1020.c
+++ b/drivers/iio/light/adux1020.c
@@ -785,7 +785,6 @@ static int adux1020_probe(struct i2c_client *client,
 	if (!indio_dev)
 		return -ENOMEM;
 
-	indio_dev->dev.parent = &client->dev;
 	indio_dev->info = &adux1020_info;
 	indio_dev->name = ADUX1020_DRV_NAME;
 	indio_dev->channels = adux1020_channels;
diff --git a/drivers/iio/light/al3010.c b/drivers/iio/light/al3010.c
index b1ed7658cc46..b4e9924094cd 100644
--- a/drivers/iio/light/al3010.c
+++ b/drivers/iio/light/al3010.c
@@ -179,7 +179,6 @@ static int al3010_probe(struct i2c_client *client,
 	i2c_set_clientdata(client, indio_dev);
 	data->client = client;
 
-	indio_dev->dev.parent = &client->dev;
 	indio_dev->info = &al3010_info;
 	indio_dev->name = AL3010_DRV_NAME;
 	indio_dev->channels = al3010_channels;
diff --git a/drivers/iio/light/al3320a.c b/drivers/iio/light/al3320a.c
index 20ed0a73c390..cc1407ccc10a 100644
--- a/drivers/iio/light/al3320a.c
+++ b/drivers/iio/light/al3320a.c
@@ -202,7 +202,6 @@ static int al3320a_probe(struct i2c_client *client,
 	i2c_set_clientdata(client, indio_dev);
 	data->client = client;
 
-	indio_dev->dev.parent = &client->dev;
 	indio_dev->info = &al3320a_info;
 	indio_dev->name = AL3320A_DRV_NAME;
 	indio_dev->channels = al3320a_channels;
diff --git a/drivers/iio/light/apds9300.c b/drivers/iio/light/apds9300.c
index 856b6c468dea..baaf202dce05 100644
--- a/drivers/iio/light/apds9300.c
+++ b/drivers/iio/light/apds9300.c
@@ -419,7 +419,6 @@ static int apds9300_probe(struct i2c_client *client,
 
 	mutex_init(&data->mutex);
 
-	indio_dev->dev.parent = &client->dev;
 	indio_dev->channels = apds9300_channels;
 	indio_dev->num_channels = ARRAY_SIZE(apds9300_channels);
 	indio_dev->name = APDS9300_DRV_NAME;
diff --git a/drivers/iio/light/apds9960.c b/drivers/iio/light/apds9960.c
index 52f86bc777dd..9afb3fcc74e6 100644
--- a/drivers/iio/light/apds9960.c
+++ b/drivers/iio/light/apds9960.c
@@ -1001,7 +1001,6 @@ static int apds9960_probe(struct i2c_client *client,
 
 	iio_device_attach_buffer(indio_dev, buffer);
 
-	indio_dev->dev.parent = &client->dev;
 	indio_dev->info = &apds9960_info;
 	indio_dev->name = APDS9960_DRV_NAME;
 	indio_dev->channels = apds9960_channels;
diff --git a/drivers/iio/light/bh1750.c b/drivers/iio/light/bh1750.c
index adb5ab9e3439..48484b9401b9 100644
--- a/drivers/iio/light/bh1750.c
+++ b/drivers/iio/light/bh1750.c
@@ -254,7 +254,6 @@ static int bh1750_probe(struct i2c_client *client,
 		return ret;
 
 	mutex_init(&data->lock);
-	indio_dev->dev.parent = &client->dev;
 	indio_dev->info = &bh1750_info;
 	indio_dev->name = id->name;
 	indio_dev->channels = bh1750_channels;
diff --git a/drivers/iio/light/bh1780.c b/drivers/iio/light/bh1780.c
index 03f2d8d123c4..abbf2e662e7d 100644
--- a/drivers/iio/light/bh1780.c
+++ b/drivers/iio/light/bh1780.c
@@ -185,7 +185,6 @@ static int bh1780_probe(struct i2c_client *client,
 	pm_runtime_use_autosuspend(&client->dev);
 	pm_runtime_put(&client->dev);
 
-	indio_dev->dev.parent = &client->dev;
 	indio_dev->info = &bh1780_info;
 	indio_dev->name = "bh1780";
 	indio_dev->channels = bh1780_channels;
diff --git a/drivers/iio/light/cm32181.c b/drivers/iio/light/cm32181.c
index 160eb3f99795..5d8333d63358 100644
--- a/drivers/iio/light/cm32181.c
+++ b/drivers/iio/light/cm32181.c
@@ -465,7 +465,6 @@ static int cm32181_probe(struct i2c_client *client)
 	cm32181->dev = dev;
 
 	mutex_init(&cm32181->lock);
-	indio_dev->dev.parent = dev;
 	indio_dev->channels = cm32181_channels;
 	indio_dev->num_channels = ARRAY_SIZE(cm32181_channels);
 	indio_dev->info = &cm32181_info;
diff --git a/drivers/iio/light/cm3232.c b/drivers/iio/light/cm3232.c
index 867200825686..18a410340dc5 100644
--- a/drivers/iio/light/cm3232.c
+++ b/drivers/iio/light/cm3232.c
@@ -340,7 +340,6 @@ static int cm3232_probe(struct i2c_client *client,
 	i2c_set_clientdata(client, indio_dev);
 	chip->client = client;
 
-	indio_dev->dev.parent = &client->dev;
 	indio_dev->channels = cm3232_channels;
 	indio_dev->num_channels = ARRAY_SIZE(cm3232_channels);
 	indio_dev->info = &cm3232_info;
diff --git a/drivers/iio/light/cm3323.c b/drivers/iio/light/cm3323.c
index 0443861ba1ec..6d1b0ffd144b 100644
--- a/drivers/iio/light/cm3323.c
+++ b/drivers/iio/light/cm3323.c
@@ -231,7 +231,6 @@ static int cm3323_probe(struct i2c_client *client,
 
 	mutex_init(&data->mutex);
 
-	indio_dev->dev.parent = &client->dev;
 	indio_dev->info = &cm3323_info;
 	indio_dev->name = CM3323_DRV_NAME;
 	indio_dev->channels = cm3323_channels;
diff --git a/drivers/iio/light/cm36651.c b/drivers/iio/light/cm36651.c
index 90e38fcc974b..fd83a19929bc 100644
--- a/drivers/iio/light/cm36651.c
+++ b/drivers/iio/light/cm36651.c
@@ -662,7 +662,6 @@ static int cm36651_probe(struct i2c_client *client,
 	}
 
 	mutex_init(&cm36651->lock);
-	indio_dev->dev.parent = &client->dev;
 	indio_dev->channels = cm36651_channels;
 	indio_dev->num_channels = ARRAY_SIZE(cm36651_channels);
 	indio_dev->info = &cm36651_info;
diff --git a/drivers/iio/light/gp2ap002.c b/drivers/iio/light/gp2ap002.c
index b7ef16b28280..06e258245ff3 100644
--- a/drivers/iio/light/gp2ap002.c
+++ b/drivers/iio/light/gp2ap002.c
@@ -583,7 +583,6 @@ static int gp2ap002_probe(struct i2c_client *client,
 	pm_runtime_use_autosuspend(dev);
 	pm_runtime_put(dev);
 
-	indio_dev->dev.parent = dev;
 	indio_dev->info = &gp2ap002_info;
 	indio_dev->name = "gp2ap002";
 	indio_dev->channels = gp2ap002_channels;
diff --git a/drivers/iio/light/gp2ap020a00f.c b/drivers/iio/light/gp2ap020a00f.c
index 070d4cd0cf54..dd9ad880deca 100644
--- a/drivers/iio/light/gp2ap020a00f.c
+++ b/drivers/iio/light/gp2ap020a00f.c
@@ -1527,7 +1527,6 @@ static int gp2ap020a00f_probe(struct i2c_client *client,
 	init_waitqueue_head(&data->data_ready_queue);
 
 	mutex_init(&data->lock);
-	indio_dev->dev.parent = &client->dev;
 	indio_dev->channels = gp2ap020a00f_channels;
 	indio_dev->num_channels = ARRAY_SIZE(gp2ap020a00f_channels);
 	indio_dev->info = &gp2ap020a00f_info;
diff --git a/drivers/iio/light/hid-sensor-als.c b/drivers/iio/light/hid-sensor-als.c
index 81fa2a422797..a21c827e4953 100644
--- a/drivers/iio/light/hid-sensor-als.c
+++ b/drivers/iio/light/hid-sensor-als.c
@@ -301,7 +301,6 @@ static int hid_als_probe(struct platform_device *pdev)
 
 	indio_dev->num_channels =
 				ARRAY_SIZE(als_channels);
-	indio_dev->dev.parent = &pdev->dev;
 	indio_dev->info = &als_info;
 	indio_dev->name = name;
 	indio_dev->modes = INDIO_DIRECT_MODE;
diff --git a/drivers/iio/light/hid-sensor-prox.c b/drivers/iio/light/hid-sensor-prox.c
index e9c04df07344..330cf359e0b8 100644
--- a/drivers/iio/light/hid-sensor-prox.c
+++ b/drivers/iio/light/hid-sensor-prox.c
@@ -279,7 +279,6 @@ static int hid_prox_probe(struct platform_device *pdev)
 	}
 
 	indio_dev->num_channels = ARRAY_SIZE(prox_channels);
-	indio_dev->dev.parent = &pdev->dev;
 	indio_dev->info = &prox_info;
 	indio_dev->name = name;
 	indio_dev->modes = INDIO_DIRECT_MODE;
diff --git a/drivers/iio/light/iqs621-als.c b/drivers/iio/light/iqs621-als.c
index b2988a782bd0..a95cd8361f2b 100644
--- a/drivers/iio/light/iqs621-als.c
+++ b/drivers/iio/light/iqs621-als.c
@@ -580,7 +580,6 @@ static int iqs621_als_probe(struct platform_device *pdev)
 	}
 
 	indio_dev->modes = INDIO_DIRECT_MODE;
-	indio_dev->dev.parent = &pdev->dev;
 	indio_dev->name = iqs62x->dev_desc->dev_name;
 	indio_dev->info = &iqs621_als_info;
 
diff --git a/drivers/iio/light/isl29018.c b/drivers/iio/light/isl29018.c
index 805a74f08ad1..ac8ad0f32689 100644
--- a/drivers/iio/light/isl29018.c
+++ b/drivers/iio/light/isl29018.c
@@ -782,7 +782,6 @@ static int isl29018_probe(struct i2c_client *client,
 	indio_dev->channels = isl29018_chip_info_tbl[dev_id].channels;
 	indio_dev->num_channels = isl29018_chip_info_tbl[dev_id].num_channels;
 	indio_dev->name = name;
-	indio_dev->dev.parent = &client->dev;
 	indio_dev->modes = INDIO_DIRECT_MODE;
 
 	return devm_iio_device_register(&client->dev, indio_dev);
diff --git a/drivers/iio/light/isl29028.c b/drivers/iio/light/isl29028.c
index 4d220c835c75..2f8b494f3e08 100644
--- a/drivers/iio/light/isl29028.c
+++ b/drivers/iio/light/isl29028.c
@@ -620,7 +620,6 @@ static int isl29028_probe(struct i2c_client *client,
 	indio_dev->channels = isl29028_channels;
 	indio_dev->num_channels = ARRAY_SIZE(isl29028_channels);
 	indio_dev->name = id->name;
-	indio_dev->dev.parent = &client->dev;
 	indio_dev->modes = INDIO_DIRECT_MODE;
 
 	pm_runtime_enable(&client->dev);
diff --git a/drivers/iio/light/isl29125.c b/drivers/iio/light/isl29125.c
index 95611f5eff01..663c72610655 100644
--- a/drivers/iio/light/isl29125.c
+++ b/drivers/iio/light/isl29125.c
@@ -268,7 +268,6 @@ static int isl29125_probe(struct i2c_client *client,
 	i2c_set_clientdata(client, indio_dev);
 	data->client = client;
 
-	indio_dev->dev.parent = &client->dev;
 	indio_dev->info = &isl29125_info;
 	indio_dev->name = ISL29125_DRV_NAME;
 	indio_dev->channels = isl29125_channels;
diff --git a/drivers/iio/light/jsa1212.c b/drivers/iio/light/jsa1212.c
index 13deeebe37eb..724a0ec9f35c 100644
--- a/drivers/iio/light/jsa1212.c
+++ b/drivers/iio/light/jsa1212.c
@@ -338,7 +338,6 @@ static int jsa1212_probe(struct i2c_client *client,
 	if (ret < 0)
 		return ret;
 
-	indio_dev->dev.parent = &client->dev;
 	indio_dev->channels = jsa1212_channels;
 	indio_dev->num_channels = ARRAY_SIZE(jsa1212_channels);
 	indio_dev->name = JSA1212_DRIVER_NAME;
diff --git a/drivers/iio/light/lv0104cs.c b/drivers/iio/light/lv0104cs.c
index 55b8e2855647..c2a896bb0aac 100644
--- a/drivers/iio/light/lv0104cs.c
+++ b/drivers/iio/light/lv0104cs.c
@@ -502,7 +502,6 @@ static int lv0104cs_probe(struct i2c_client *client,
 		return ret;
 
 	indio_dev->modes = INDIO_DIRECT_MODE;
-	indio_dev->dev.parent = &client->dev;
 	indio_dev->channels = lv0104cs_channels;
 	indio_dev->num_channels = ARRAY_SIZE(lv0104cs_channels);
 	indio_dev->name = client->name;
diff --git a/drivers/iio/light/max44000.c b/drivers/iio/light/max44000.c
index d6d8007ba430..aa8ed1e3e89a 100644
--- a/drivers/iio/light/max44000.c
+++ b/drivers/iio/light/max44000.c
@@ -538,7 +538,6 @@ static int max44000_probe(struct i2c_client *client,
 
 	i2c_set_clientdata(client, indio_dev);
 	mutex_init(&data->lock);
-	indio_dev->dev.parent = &client->dev;
 	indio_dev->info = &max44000_info;
 	indio_dev->name = MAX44000_DRV_NAME;
 	indio_dev->channels = max44000_channels;
diff --git a/drivers/iio/light/max44009.c b/drivers/iio/light/max44009.c
index 00ba15499638..801e5a0ad496 100644
--- a/drivers/iio/light/max44009.c
+++ b/drivers/iio/light/max44009.c
@@ -501,7 +501,6 @@ static int max44009_probe(struct i2c_client *client,
 	data = iio_priv(indio_dev);
 	i2c_set_clientdata(client, indio_dev);
 	data->client = client;
-	indio_dev->dev.parent = &client->dev;
 	indio_dev->info = &max44009_info;
 	indio_dev->modes = INDIO_DIRECT_MODE;
 	indio_dev->name = MAX44009_DRV_NAME;
diff --git a/drivers/iio/light/noa1305.c b/drivers/iio/light/noa1305.c
index 5ebfbc52f541..a308fbc2fc7b 100644
--- a/drivers/iio/light/noa1305.c
+++ b/drivers/iio/light/noa1305.c
@@ -270,7 +270,6 @@ static int noa1305_probe(struct i2c_client *client,
 		return ret;
 	}
 
-	indio_dev->dev.parent = &client->dev;
 	indio_dev->info = &noa1305_info;
 	indio_dev->channels = noa1305_channels;
 	indio_dev->num_channels = ARRAY_SIZE(noa1305_channels);
diff --git a/drivers/iio/light/opt3001.c b/drivers/iio/light/opt3001.c
index 82abfa57b59c..b02c497455f3 100644
--- a/drivers/iio/light/opt3001.c
+++ b/drivers/iio/light/opt3001.c
@@ -768,7 +768,6 @@ static int opt3001_probe(struct i2c_client *client,
 	iio->name = client->name;
 	iio->channels = opt3001_channels;
 	iio->num_channels = ARRAY_SIZE(opt3001_channels);
-	iio->dev.parent = dev;
 	iio->modes = INDIO_DIRECT_MODE;
 	iio->info = &opt3001_info;
 
diff --git a/drivers/iio/light/pa12203001.c b/drivers/iio/light/pa12203001.c
index 0295783f036a..bfade6577a38 100644
--- a/drivers/iio/light/pa12203001.c
+++ b/drivers/iio/light/pa12203001.c
@@ -362,7 +362,6 @@ static int pa12203001_probe(struct i2c_client *client,
 
 	mutex_init(&data->lock);
 
-	indio_dev->dev.parent = &client->dev;
 	indio_dev->info = &pa12203001_info;
 	indio_dev->name = PA12203001_DRIVER_NAME;
 	indio_dev->channels = pa12203001_channels;
diff --git a/drivers/iio/light/rpr0521.c b/drivers/iio/light/rpr0521.c
index a0a7aeae5a82..c20fbc730d65 100644
--- a/drivers/iio/light/rpr0521.c
+++ b/drivers/iio/light/rpr0521.c
@@ -948,7 +948,6 @@ static int rpr0521_probe(struct i2c_client *client,
 
 	mutex_init(&data->lock);
 
-	indio_dev->dev.parent = &client->dev;
 	indio_dev->info = &rpr0521_info;
 	indio_dev->name = RPR0521_DRV_NAME;
 	indio_dev->channels = rpr0521_channels;
diff --git a/drivers/iio/light/si1133.c b/drivers/iio/light/si1133.c
index c1adab2a50fd..c280b4195003 100644
--- a/drivers/iio/light/si1133.c
+++ b/drivers/iio/light/si1133.c
@@ -1015,7 +1015,6 @@ static int si1133_probe(struct i2c_client *client,
 	i2c_set_clientdata(client, iio_dev);
 	data->client = client;
 
-	iio_dev->dev.parent = &client->dev;
 	iio_dev->name = id->name;
 	iio_dev->channels = si1133_channels;
 	iio_dev->num_channels = ARRAY_SIZE(si1133_channels);
diff --git a/drivers/iio/light/si1145.c b/drivers/iio/light/si1145.c
index 0476c2bc8138..e1f989dd3a3d 100644
--- a/drivers/iio/light/si1145.c
+++ b/drivers/iio/light/si1145.c
@@ -1307,7 +1307,6 @@ static int si1145_probe(struct i2c_client *client,
 		return -ENODEV;
 	}
 
-	indio_dev->dev.parent = &client->dev;
 	indio_dev->name = id->name;
 	indio_dev->channels = data->part_info->channels;
 	indio_dev->num_channels = data->part_info->num_channels;
diff --git a/drivers/iio/light/st_uvis25_core.c b/drivers/iio/light/st_uvis25_core.c
index d262c254b895..4d001d50e775 100644
--- a/drivers/iio/light/st_uvis25_core.c
+++ b/drivers/iio/light/st_uvis25_core.c
@@ -303,7 +303,6 @@ int st_uvis25_probe(struct device *dev, int irq, struct regmap *regmap)
 		return err;
 
 	iio_dev->modes = INDIO_DIRECT_MODE;
-	iio_dev->dev.parent = dev;
 	iio_dev->channels = st_uvis25_channels;
 	iio_dev->num_channels = ARRAY_SIZE(st_uvis25_channels);
 	iio_dev->name = ST_UVIS25_DEV_NAME;
diff --git a/drivers/iio/light/stk3310.c b/drivers/iio/light/stk3310.c
index 185c24a75ae6..8d0c034b89c3 100644
--- a/drivers/iio/light/stk3310.c
+++ b/drivers/iio/light/stk3310.c
@@ -585,7 +585,6 @@ static int stk3310_probe(struct i2c_client *client,
 	if (ret < 0)
 		return ret;
 
-	indio_dev->dev.parent = &client->dev;
 	indio_dev->info = &stk3310_info;
 	indio_dev->name = STK3310_DRIVER_NAME;
 	indio_dev->modes = INDIO_DIRECT_MODE;
diff --git a/drivers/iio/light/tcs3414.c b/drivers/iio/light/tcs3414.c
index b542e5619ead..bd6d3e4a0c4d 100644
--- a/drivers/iio/light/tcs3414.c
+++ b/drivers/iio/light/tcs3414.c
@@ -294,7 +294,6 @@ static int tcs3414_probe(struct i2c_client *client,
 	i2c_set_clientdata(client, indio_dev);
 	data->client = client;
 
-	indio_dev->dev.parent = &client->dev;
 	indio_dev->info = &tcs3414_info;
 	indio_dev->name = TCS3414_DRV_NAME;
 	indio_dev->channels = tcs3414_channels;
diff --git a/drivers/iio/light/tcs3472.c b/drivers/iio/light/tcs3472.c
index 12ad34441010..a0dc447aeb68 100644
--- a/drivers/iio/light/tcs3472.c
+++ b/drivers/iio/light/tcs3472.c
@@ -454,7 +454,6 @@ static int tcs3472_probe(struct i2c_client *client,
 	data->client = client;
 	mutex_init(&data->lock);
 
-	indio_dev->dev.parent = &client->dev;
 	indio_dev->info = &tcs3472_info;
 	indio_dev->name = TCS3472_DRV_NAME;
 	indio_dev->channels = tcs3472_channels;
diff --git a/drivers/iio/light/tsl2563.c b/drivers/iio/light/tsl2563.c
index 27a5c28aac7f..29c54f1849ec 100644
--- a/drivers/iio/light/tsl2563.c
+++ b/drivers/iio/light/tsl2563.c
@@ -750,7 +750,6 @@ static int tsl2563_probe(struct i2c_client *client,
 	indio_dev->name = client->name;
 	indio_dev->channels = tsl2563_channels;
 	indio_dev->num_channels = ARRAY_SIZE(tsl2563_channels);
-	indio_dev->dev.parent = &client->dev;
 	indio_dev->modes = INDIO_DIRECT_MODE;
 
 	if (client->irq)
diff --git a/drivers/iio/light/tsl2583.c b/drivers/iio/light/tsl2583.c
index a760d14e146a..9e5490b7473b 100644
--- a/drivers/iio/light/tsl2583.c
+++ b/drivers/iio/light/tsl2583.c
@@ -840,7 +840,6 @@ static int tsl2583_probe(struct i2c_client *clientp,
 	indio_dev->info = &tsl2583_info;
 	indio_dev->channels = tsl2583_channels;
 	indio_dev->num_channels = ARRAY_SIZE(tsl2583_channels);
-	indio_dev->dev.parent = &clientp->dev;
 	indio_dev->modes = INDIO_DIRECT_MODE;
 	indio_dev->name = chip->client->name;
 
diff --git a/drivers/iio/light/tsl2772.c b/drivers/iio/light/tsl2772.c
index 9fbde9b71b63..735399405417 100644
--- a/drivers/iio/light/tsl2772.c
+++ b/drivers/iio/light/tsl2772.c
@@ -1833,7 +1833,6 @@ static int tsl2772_probe(struct i2c_client *clientp,
 		&tsl2772_chip_info_tbl[device_channel_config[id->driver_data]];
 
 	indio_dev->info = chip->chip_info->info;
-	indio_dev->dev.parent = &clientp->dev;
 	indio_dev->modes = INDIO_DIRECT_MODE;
 	indio_dev->name = chip->client->name;
 	indio_dev->num_channels = chip->chip_info->chan_table_elements;
diff --git a/drivers/iio/light/tsl4531.c b/drivers/iio/light/tsl4531.c
index 0dfc664205c7..70505ba6d858 100644
--- a/drivers/iio/light/tsl4531.c
+++ b/drivers/iio/light/tsl4531.c
@@ -192,7 +192,6 @@ static int tsl4531_probe(struct i2c_client *client,
 	if (ret < 0)
 		return ret;
 
-	indio_dev->dev.parent = &client->dev;
 	indio_dev->info = &tsl4531_info;
 	indio_dev->channels = tsl4531_channels;
 	indio_dev->num_channels = ARRAY_SIZE(tsl4531_channels);
diff --git a/drivers/iio/light/us5182d.c b/drivers/iio/light/us5182d.c
index b995f21a3347..2f2e79f17f0e 100644
--- a/drivers/iio/light/us5182d.c
+++ b/drivers/iio/light/us5182d.c
@@ -851,7 +851,6 @@ static int us5182d_probe(struct i2c_client *client,
 
 	mutex_init(&data->lock);
 
-	indio_dev->dev.parent = &client->dev;
 	indio_dev->info = &us5182d_info;
 	indio_dev->name = US5182D_DRV_NAME;
 	indio_dev->channels = us5182d_channels;
diff --git a/drivers/iio/light/vcnl4000.c b/drivers/iio/light/vcnl4000.c
index 2a4b3d331055..ac1ab715d4dd 100644
--- a/drivers/iio/light/vcnl4000.c
+++ b/drivers/iio/light/vcnl4000.c
@@ -1058,7 +1058,6 @@ static int vcnl4000_probe(struct i2c_client *client,
 				     &data->near_level))
 		data->near_level = 0;
 
-	indio_dev->dev.parent = &client->dev;
 	indio_dev->info = data->chip_spec->info;
 	indio_dev->channels = data->chip_spec->channels;
 	indio_dev->num_channels = data->chip_spec->num_channels;
diff --git a/drivers/iio/light/vcnl4035.c b/drivers/iio/light/vcnl4035.c
index cca4db312bd3..765c44adac57 100644
--- a/drivers/iio/light/vcnl4035.c
+++ b/drivers/iio/light/vcnl4035.c
@@ -564,7 +564,6 @@ static int vcnl4035_probe(struct i2c_client *client,
 	data->client = client;
 	data->regmap = regmap;
 
-	indio_dev->dev.parent = &client->dev;
 	indio_dev->info = &vcnl4035_info;
 	indio_dev->name = VCNL4035_DRV_NAME;
 	indio_dev->channels = vcnl4035_channels;
diff --git a/drivers/iio/light/veml6030.c b/drivers/iio/light/veml6030.c
index aa25b87fca8f..de85c9b30be1 100644
--- a/drivers/iio/light/veml6030.c
+++ b/drivers/iio/light/veml6030.c
@@ -814,7 +814,6 @@ static int veml6030_probe(struct i2c_client *client,
 	data->client = client;
 	data->regmap = regmap;
 
-	indio_dev->dev.parent = &client->dev;
 	indio_dev->name = "veml6030";
 	indio_dev->channels = veml6030_channels;
 	indio_dev->num_channels = ARRAY_SIZE(veml6030_channels);
diff --git a/drivers/iio/light/veml6070.c b/drivers/iio/light/veml6070.c
index 0be553ad5989..1e55e09a8d16 100644
--- a/drivers/iio/light/veml6070.c
+++ b/drivers/iio/light/veml6070.c
@@ -151,7 +151,6 @@ static int veml6070_probe(struct i2c_client *client,
 	data->client1 = client;
 	mutex_init(&data->lock);
 
-	indio_dev->dev.parent = &client->dev;
 	indio_dev->info = &veml6070_info;
 	indio_dev->channels = veml6070_channels;
 	indio_dev->num_channels = ARRAY_SIZE(veml6070_channels);
diff --git a/drivers/iio/light/vl6180.c b/drivers/iio/light/vl6180.c
index ed7b02765b97..4775bd785e50 100644
--- a/drivers/iio/light/vl6180.c
+++ b/drivers/iio/light/vl6180.c
@@ -509,7 +509,6 @@ static int vl6180_probe(struct i2c_client *client,
 	data->client = client;
 	mutex_init(&data->lock);
 
-	indio_dev->dev.parent = &client->dev;
 	indio_dev->info = &vl6180_info;
 	indio_dev->channels = vl6180_channels;
 	indio_dev->num_channels = ARRAY_SIZE(vl6180_channels);
diff --git a/drivers/iio/light/zopt2201.c b/drivers/iio/light/zopt2201.c
index 80ae530720cd..e0bc9df9c88b 100644
--- a/drivers/iio/light/zopt2201.c
+++ b/drivers/iio/light/zopt2201.c
@@ -527,7 +527,6 @@ static int zopt2201_probe(struct i2c_client *client,
 	data->client = client;
 	mutex_init(&data->lock);
 
-	indio_dev->dev.parent = &client->dev;
 	indio_dev->info = &zopt2201_info;
 	indio_dev->channels = zopt2201_channels;
 	indio_dev->num_channels = ARRAY_SIZE(zopt2201_channels);
diff --git a/drivers/iio/magnetometer/ak8974.c b/drivers/iio/magnetometer/ak8974.c
index 810fdfd37c88..c2260c84f7f1 100644
--- a/drivers/iio/magnetometer/ak8974.c
+++ b/drivers/iio/magnetometer/ak8974.c
@@ -892,7 +892,6 @@ static int ak8974_probe(struct i2c_client *i2c,
 	pm_runtime_use_autosuspend(&i2c->dev);
 	pm_runtime_put(&i2c->dev);
 
-	indio_dev->dev.parent = &i2c->dev;
 	switch (ak8974->variant) {
 	case AK8974_WHOAMI_VALUE_AMI306:
 	case AK8974_WHOAMI_VALUE_AMI305:
diff --git a/drivers/iio/magnetometer/bmc150_magn.c b/drivers/iio/magnetometer/bmc150_magn.c
index d4de16750b10..8fc52057837d 100644
--- a/drivers/iio/magnetometer/bmc150_magn.c
+++ b/drivers/iio/magnetometer/bmc150_magn.c
@@ -883,7 +883,6 @@ int bmc150_magn_probe(struct device *dev, struct regmap *regmap,
 	if (ret < 0)
 		return ret;
 
-	indio_dev->dev.parent = dev;
 	indio_dev->channels = bmc150_magn_channels;
 	indio_dev->num_channels = ARRAY_SIZE(bmc150_magn_channels);
 	indio_dev->available_scan_masks = bmc150_magn_scan_masks;
diff --git a/drivers/iio/magnetometer/hid-sensor-magn-3d.c b/drivers/iio/magnetometer/hid-sensor-magn-3d.c
index 0c09daf87794..97642ebd9168 100644
--- a/drivers/iio/magnetometer/hid-sensor-magn-3d.c
+++ b/drivers/iio/magnetometer/hid-sensor-magn-3d.c
@@ -512,7 +512,6 @@ static int hid_magn_3d_probe(struct platform_device *pdev)
 
 	indio_dev->channels = channels;
 	indio_dev->num_channels = chan_count;
-	indio_dev->dev.parent = &pdev->dev;
 	indio_dev->info = &magn_3d_info;
 	indio_dev->name = name;
 	indio_dev->modes = INDIO_DIRECT_MODE;
diff --git a/drivers/iio/magnetometer/hmc5843_core.c b/drivers/iio/magnetometer/hmc5843_core.c
index c44a4292da92..1474ba63babe 100644
--- a/drivers/iio/magnetometer/hmc5843_core.c
+++ b/drivers/iio/magnetometer/hmc5843_core.c
@@ -642,7 +642,6 @@ int hmc5843_common_probe(struct device *dev, struct regmap *regmap,
 	if (ret)
 		return ret;
 
-	indio_dev->dev.parent = dev;
 	indio_dev->name = name;
 	indio_dev->info = &hmc5843_info;
 	indio_dev->modes = INDIO_DIRECT_MODE;
diff --git a/drivers/iio/magnetometer/mag3110.c b/drivers/iio/magnetometer/mag3110.c
index fb16cfdd6fa6..4d305a21c379 100644
--- a/drivers/iio/magnetometer/mag3110.c
+++ b/drivers/iio/magnetometer/mag3110.c
@@ -519,7 +519,6 @@ static int mag3110_probe(struct i2c_client *client,
 	i2c_set_clientdata(client, indio_dev);
 	indio_dev->info = &mag3110_info;
 	indio_dev->name = id->name;
-	indio_dev->dev.parent = &client->dev;
 	indio_dev->modes = INDIO_DIRECT_MODE;
 	indio_dev->channels = mag3110_channels;
 	indio_dev->num_channels = ARRAY_SIZE(mag3110_channels);
diff --git a/drivers/iio/magnetometer/mmc35240.c b/drivers/iio/magnetometer/mmc35240.c
index 1787d656d009..656bcc464693 100644
--- a/drivers/iio/magnetometer/mmc35240.c
+++ b/drivers/iio/magnetometer/mmc35240.c
@@ -507,7 +507,6 @@ static int mmc35240_probe(struct i2c_client *client,
 
 	mutex_init(&data->mutex);
 
-	indio_dev->dev.parent = &client->dev;
 	indio_dev->info = &mmc35240_info;
 	indio_dev->name = MMC35240_DRV_NAME;
 	indio_dev->channels = mmc35240_channels;
diff --git a/drivers/iio/magnetometer/rm3100-core.c b/drivers/iio/magnetometer/rm3100-core.c
index 43a2e420c9c4..a3e754943456 100644
--- a/drivers/iio/magnetometer/rm3100-core.c
+++ b/drivers/iio/magnetometer/rm3100-core.c
@@ -549,7 +549,6 @@ int rm3100_common_probe(struct device *dev, struct regmap *regmap, int irq)
 
 	mutex_init(&data->lock);
 
-	indio_dev->dev.parent = dev;
 	indio_dev->name = "rm3100";
 	indio_dev->info = &rm3100_info;
 	indio_dev->channels = rm3100_channels;
diff --git a/drivers/iio/multiplexer/iio-mux.c b/drivers/iio/multiplexer/iio-mux.c
index 0422ef57914c..6910218fdb00 100644
--- a/drivers/iio/multiplexer/iio-mux.c
+++ b/drivers/iio/multiplexer/iio-mux.c
@@ -395,7 +395,6 @@ static int mux_probe(struct platform_device *pdev)
 	mux->cached_state = -1;
 
 	indio_dev->name = dev_name(dev);
-	indio_dev->dev.parent = dev;
 	indio_dev->info = &mux_info;
 	indio_dev->modes = INDIO_DIRECT_MODE;
 	indio_dev->channels = mux->chan;
diff --git a/drivers/iio/orientation/hid-sensor-incl-3d.c b/drivers/iio/orientation/hid-sensor-incl-3d.c
index 6aac8bea233a..ae132a93bcae 100644
--- a/drivers/iio/orientation/hid-sensor-incl-3d.c
+++ b/drivers/iio/orientation/hid-sensor-incl-3d.c
@@ -339,7 +339,6 @@ static int hid_incl_3d_probe(struct platform_device *pdev)
 	}
 
 	indio_dev->num_channels = ARRAY_SIZE(incl_3d_channels);
-	indio_dev->dev.parent = &pdev->dev;
 	indio_dev->info = &incl_3d_info;
 	indio_dev->name = name;
 	indio_dev->modes = INDIO_DIRECT_MODE;
diff --git a/drivers/iio/position/iqs624-pos.c b/drivers/iio/position/iqs624-pos.c
index 77096c31c2ba..f3d100a582ff 100644
--- a/drivers/iio/position/iqs624-pos.c
+++ b/drivers/iio/position/iqs624-pos.c
@@ -245,7 +245,6 @@ static int iqs624_pos_probe(struct platform_device *pdev)
 	iqs624_pos->iqs62x = iqs62x;
 
 	indio_dev->modes = INDIO_DIRECT_MODE;
-	indio_dev->dev.parent = &pdev->dev;
 	indio_dev->channels = iqs624_pos_channels;
 	indio_dev->num_channels = ARRAY_SIZE(iqs624_pos_channels);
 	indio_dev->name = iqs62x->dev_desc->dev_name;
diff --git a/drivers/iio/potentiometer/ad5272.c b/drivers/iio/potentiometer/ad5272.c
index 154f9a5da8bc..08a15e505ed6 100644
--- a/drivers/iio/potentiometer/ad5272.c
+++ b/drivers/iio/potentiometer/ad5272.c
@@ -184,7 +184,6 @@ static int ad5272_probe(struct i2c_client *client,
 	if (ret < 0)
 		return -ENODEV;
 
-	indio_dev->dev.parent = dev;
 	indio_dev->info = &ad5272_info;
 	indio_dev->channels = &ad5272_channel;
 	indio_dev->num_channels = 1;
diff --git a/drivers/iio/potentiometer/ds1803.c b/drivers/iio/potentiometer/ds1803.c
index d0de78232a93..5c061ab8f46c 100644
--- a/drivers/iio/potentiometer/ds1803.c
+++ b/drivers/iio/potentiometer/ds1803.c
@@ -126,7 +126,6 @@ static int ds1803_probe(struct i2c_client *client,
 	data->client = client;
 	data->cfg = &ds1803_cfg[id->driver_data];
 
-	indio_dev->dev.parent = dev;
 	indio_dev->info = &ds1803_info;
 	indio_dev->channels = ds1803_channels;
 	indio_dev->num_channels = ARRAY_SIZE(ds1803_channels);
diff --git a/drivers/iio/potentiometer/max5432.c b/drivers/iio/potentiometer/max5432.c
index 641b1821fdf6..280de9c54471 100644
--- a/drivers/iio/potentiometer/max5432.c
+++ b/drivers/iio/potentiometer/max5432.c
@@ -102,7 +102,6 @@ static int max5432_probe(struct i2c_client *client,
 	data->client = client;
 	data->ohm = (unsigned long)of_device_get_match_data(dev);
 
-	indio_dev->dev.parent = dev;
 	indio_dev->info = &max5432_info;
 	indio_dev->channels = max5432_channels;
 	indio_dev->num_channels = ARRAY_SIZE(max5432_channels);
diff --git a/drivers/iio/potentiometer/max5481.c b/drivers/iio/potentiometer/max5481.c
index 732375b6d131..e4cb947c1c32 100644
--- a/drivers/iio/potentiometer/max5481.c
+++ b/drivers/iio/potentiometer/max5481.c
@@ -149,7 +149,6 @@ static int max5481_probe(struct spi_device *spi)
 		data->cfg = &max5481_cfg[id->driver_data];
 
 	indio_dev->name = id->name;
-	indio_dev->dev.parent = &spi->dev;
 	indio_dev->modes = INDIO_DIRECT_MODE;
 
 	/* variant specific configuration */
diff --git a/drivers/iio/potentiometer/max5487.c b/drivers/iio/potentiometer/max5487.c
index 68ff806d4668..7ec51976ec99 100644
--- a/drivers/iio/potentiometer/max5487.c
+++ b/drivers/iio/potentiometer/max5487.c
@@ -100,7 +100,6 @@ static int max5487_spi_probe(struct spi_device *spi)
 
 	indio_dev->info = &max5487_info;
 	indio_dev->name = id->name;
-	indio_dev->dev.parent = &spi->dev;
 	indio_dev->modes = INDIO_DIRECT_MODE;
 	indio_dev->channels = max5487_channels;
 	indio_dev->num_channels = ARRAY_SIZE(max5487_channels);
diff --git a/drivers/iio/potentiometer/mcp4018.c b/drivers/iio/potentiometer/mcp4018.c
index 62151b2a2b12..fd0579ad3c83 100644
--- a/drivers/iio/potentiometer/mcp4018.c
+++ b/drivers/iio/potentiometer/mcp4018.c
@@ -165,7 +165,6 @@ static int mcp4018_probe(struct i2c_client *client)
 	if (!data->cfg)
 		data->cfg = &mcp4018_cfg[i2c_match_id(mcp4018_id, client)->driver_data];
 
-	indio_dev->dev.parent = dev;
 	indio_dev->info = &mcp4018_info;
 	indio_dev->channels = &mcp4018_channel;
 	indio_dev->num_channels = 1;
diff --git a/drivers/iio/potentiometer/mcp41010.c b/drivers/iio/potentiometer/mcp41010.c
index 2368b39debf5..3c46ce4bc627 100644
--- a/drivers/iio/potentiometer/mcp41010.c
+++ b/drivers/iio/potentiometer/mcp41010.c
@@ -152,7 +152,6 @@ static int mcp41010_probe(struct spi_device *spi)
 
 	mutex_init(&data->lock);
 
-	indio_dev->dev.parent = dev;
 	indio_dev->info = &mcp41010_info;
 	indio_dev->channels = mcp41010_channels;
 	indio_dev->num_channels = data->cfg->wipers;
diff --git a/drivers/iio/potentiometer/mcp4131.c b/drivers/iio/potentiometer/mcp4131.c
index 98df91e97f2f..103df5e100f3 100644
--- a/drivers/iio/potentiometer/mcp4131.c
+++ b/drivers/iio/potentiometer/mcp4131.c
@@ -260,7 +260,6 @@ static int mcp4131_probe(struct spi_device *spi)
 
 	mutex_init(&data->lock);
 
-	indio_dev->dev.parent = dev;
 	indio_dev->info = &mcp4131_info;
 	indio_dev->channels = mcp4131_channels;
 	indio_dev->num_channels = data->cfg->wipers;
diff --git a/drivers/iio/potentiometer/mcp4531.c b/drivers/iio/potentiometer/mcp4531.c
index d71a22d71a30..95efc4b40514 100644
--- a/drivers/iio/potentiometer/mcp4531.c
+++ b/drivers/iio/potentiometer/mcp4531.c
@@ -375,7 +375,6 @@ static int mcp4531_probe(struct i2c_client *client)
 	if (!data->cfg)
 		data->cfg = &mcp4531_cfg[i2c_match_id(mcp4531_id, client)->driver_data];
 
-	indio_dev->dev.parent = dev;
 	indio_dev->info = &mcp4531_info;
 	indio_dev->channels = mcp4531_channels;
 	indio_dev->num_channels = data->cfg->wipers;
diff --git a/drivers/iio/potentiometer/tpl0102.c b/drivers/iio/potentiometer/tpl0102.c
index a0a07e47f13f..d996dc367fb7 100644
--- a/drivers/iio/potentiometer/tpl0102.c
+++ b/drivers/iio/potentiometer/tpl0102.c
@@ -140,7 +140,6 @@ static int tpl0102_probe(struct i2c_client *client,
 		return PTR_ERR(data->regmap);
 	}
 
-	indio_dev->dev.parent = dev;
 	indio_dev->info = &tpl0102_info;
 	indio_dev->channels = tpl0102_channels;
 	indio_dev->num_channels = data->cfg->wipers;
diff --git a/drivers/iio/pressure/abp060mg.c b/drivers/iio/pressure/abp060mg.c
index 267aad8af0a6..e1c3bdb371ee 100644
--- a/drivers/iio/pressure/abp060mg.c
+++ b/drivers/iio/pressure/abp060mg.c
@@ -194,7 +194,6 @@ static int abp060mg_probe(struct i2c_client *client,
 
 	abp060mg_init_device(indio_dev, cfg_id);
 
-	indio_dev->dev.parent = &client->dev;
 	indio_dev->name = dev_name(&client->dev);
 	indio_dev->modes = INDIO_DIRECT_MODE;
 	indio_dev->info = &abp060mg_info;
diff --git a/drivers/iio/pressure/bmp280-core.c b/drivers/iio/pressure/bmp280-core.c
index 126a56d31b6e..6b7da40f99c8 100644
--- a/drivers/iio/pressure/bmp280-core.c
+++ b/drivers/iio/pressure/bmp280-core.c
@@ -1004,7 +1004,6 @@ int bmp280_common_probe(struct device *dev,
 	mutex_init(&data->lock);
 	data->dev = dev;
 
-	indio_dev->dev.parent = dev;
 	indio_dev->name = name;
 	indio_dev->channels = bmp280_channels;
 	indio_dev->info = &bmp280_info;
diff --git a/drivers/iio/pressure/dlhl60d.c b/drivers/iio/pressure/dlhl60d.c
index b8c99e7bd6cf..7afe37c97575 100644
--- a/drivers/iio/pressure/dlhl60d.c
+++ b/drivers/iio/pressure/dlhl60d.c
@@ -311,7 +311,6 @@ static int dlh_probe(struct i2c_client *client,
 	st->use_interrupt = false;
 
 	indio_dev->name = id->name;
-	indio_dev->dev.parent = &client->dev;
 	indio_dev->dev.of_node = client->dev.of_node;
 	indio_dev->info = &dlh_info;
 	indio_dev->modes = INDIO_DIRECT_MODE;
diff --git a/drivers/iio/pressure/dps310.c b/drivers/iio/pressure/dps310.c
index 2c1943bbc433..0730380ceb69 100644
--- a/drivers/iio/pressure/dps310.c
+++ b/drivers/iio/pressure/dps310.c
@@ -732,7 +732,6 @@ static int dps310_probe(struct i2c_client *client,
 	data->client = client;
 	mutex_init(&data->lock);
 
-	iio->dev.parent = &client->dev;
 	iio->name = id->name;
 	iio->channels = dps310_channels;
 	iio->num_channels = ARRAY_SIZE(dps310_channels);
diff --git a/drivers/iio/pressure/hid-sensor-press.c b/drivers/iio/pressure/hid-sensor-press.c
index 5e6663f757ae..5c458788f346 100644
--- a/drivers/iio/pressure/hid-sensor-press.c
+++ b/drivers/iio/pressure/hid-sensor-press.c
@@ -283,7 +283,6 @@ static int hid_press_probe(struct platform_device *pdev)
 
 	indio_dev->num_channels =
 				ARRAY_SIZE(press_channels);
-	indio_dev->dev.parent = &pdev->dev;
 	indio_dev->info = &press_info;
 	indio_dev->name = name;
 	indio_dev->modes = INDIO_DIRECT_MODE;
diff --git a/drivers/iio/pressure/hp03.c b/drivers/iio/pressure/hp03.c
index 026ba15ef68f..e40b1d7dc129 100644
--- a/drivers/iio/pressure/hp03.c
+++ b/drivers/iio/pressure/hp03.c
@@ -224,7 +224,6 @@ static int hp03_probe(struct i2c_client *client,
 	priv->client = client;
 	mutex_init(&priv->lock);
 
-	indio_dev->dev.parent = dev;
 	indio_dev->name = id->name;
 	indio_dev->channels = hp03_channels;
 	indio_dev->num_channels = ARRAY_SIZE(hp03_channels);
diff --git a/drivers/iio/pressure/hp206c.c b/drivers/iio/pressure/hp206c.c
index 1f931f5b7a65..986b7a59712e 100644
--- a/drivers/iio/pressure/hp206c.c
+++ b/drivers/iio/pressure/hp206c.c
@@ -378,7 +378,6 @@ static int hp206c_probe(struct i2c_client *client,
 
 	indio_dev->info = &hp206c_info;
 	indio_dev->name = id->name;
-	indio_dev->dev.parent = &client->dev;
 	indio_dev->modes = INDIO_DIRECT_MODE;
 	indio_dev->channels = hp206c_channels;
 	indio_dev->num_channels = ARRAY_SIZE(hp206c_channels);
diff --git a/drivers/iio/pressure/icp10100.c b/drivers/iio/pressure/icp10100.c
index 06cb5b63a189..90c0df068bbb 100644
--- a/drivers/iio/pressure/icp10100.c
+++ b/drivers/iio/pressure/icp10100.c
@@ -545,7 +545,6 @@ static int icp10100_probe(struct i2c_client *client,
 		return -ENOMEM;
 
 	i2c_set_clientdata(client, indio_dev);
-	indio_dev->dev.parent = &client->dev;
 	indio_dev->name = client->name;
 	indio_dev->modes = INDIO_DIRECT_MODE;
 	indio_dev->channels = icp10100_channels;
diff --git a/drivers/iio/pressure/mpl115.c b/drivers/iio/pressure/mpl115.c
index ca81a3dc5646..81f288312a28 100644
--- a/drivers/iio/pressure/mpl115.c
+++ b/drivers/iio/pressure/mpl115.c
@@ -160,7 +160,6 @@ int mpl115_probe(struct device *dev, const char *name,
 
 	indio_dev->info = &mpl115_info;
 	indio_dev->name = name;
-	indio_dev->dev.parent = dev;
 	indio_dev->modes = INDIO_DIRECT_MODE;
 	indio_dev->channels = mpl115_channels;
 	indio_dev->num_channels = ARRAY_SIZE(mpl115_channels);
diff --git a/drivers/iio/pressure/mpl3115.c b/drivers/iio/pressure/mpl3115.c
index d066f3c5a8a6..ccdb0b70e48c 100644
--- a/drivers/iio/pressure/mpl3115.c
+++ b/drivers/iio/pressure/mpl3115.c
@@ -241,7 +241,6 @@ static int mpl3115_probe(struct i2c_client *client,
 	i2c_set_clientdata(client, indio_dev);
 	indio_dev->info = &mpl3115_info;
 	indio_dev->name = id->name;
-	indio_dev->dev.parent = &client->dev;
 	indio_dev->modes = INDIO_DIRECT_MODE;
 	indio_dev->channels = mpl3115_channels;
 	indio_dev->num_channels = ARRAY_SIZE(mpl3115_channels);
diff --git a/drivers/iio/pressure/ms5637.c b/drivers/iio/pressure/ms5637.c
index f49c7003c72a..05e0ef7260d5 100644
--- a/drivers/iio/pressure/ms5637.c
+++ b/drivers/iio/pressure/ms5637.c
@@ -152,7 +152,6 @@ static int ms5637_probe(struct i2c_client *client,
 
 	indio_dev->info = &ms5637_info;
 	indio_dev->name = id->name;
-	indio_dev->dev.parent = &client->dev;
 	indio_dev->modes = INDIO_DIRECT_MODE;
 	indio_dev->channels = ms5637_channels;
 	indio_dev->num_channels = ARRAY_SIZE(ms5637_channels);
diff --git a/drivers/iio/pressure/t5403.c b/drivers/iio/pressure/t5403.c
index 22abd28071b7..685fcf65334f 100644
--- a/drivers/iio/pressure/t5403.c
+++ b/drivers/iio/pressure/t5403.c
@@ -236,7 +236,6 @@ static int t5403_probe(struct i2c_client *client,
 	i2c_set_clientdata(client, indio_dev);
 	indio_dev->info = &t5403_info;
 	indio_dev->name = id->name;
-	indio_dev->dev.parent = &client->dev;
 	indio_dev->modes = INDIO_DIRECT_MODE;
 	indio_dev->channels = t5403_channels;
 	indio_dev->num_channels = ARRAY_SIZE(t5403_channels);
diff --git a/drivers/iio/pressure/zpa2326.c b/drivers/iio/pressure/zpa2326.c
index 37fe851f89af..ef818f2aebd6 100644
--- a/drivers/iio/pressure/zpa2326.c
+++ b/drivers/iio/pressure/zpa2326.c
@@ -1601,7 +1601,6 @@ static struct iio_dev *zpa2326_create_managed_iiodev(struct device *device,
 
 	/* Setup for userspace synchronous on demand sampling. */
 	indio_dev->modes = INDIO_DIRECT_MODE;
-	indio_dev->dev.parent = device;
 	indio_dev->channels = zpa2326_channels;
 	indio_dev->num_channels = ARRAY_SIZE(zpa2326_channels);
 	indio_dev->name = name;
diff --git a/drivers/iio/proximity/as3935.c b/drivers/iio/proximity/as3935.c
index bac9a433dd19..c339e7339ec8 100644
--- a/drivers/iio/proximity/as3935.c
+++ b/drivers/iio/proximity/as3935.c
@@ -399,7 +399,6 @@ static int as3935_probe(struct spi_device *spi)
 		return -EINVAL;
 	}
 
-	indio_dev->dev.parent = &spi->dev;
 	indio_dev->name = spi_get_device_id(spi)->name;
 	indio_dev->channels = as3935_channels;
 	indio_dev->num_channels = ARRAY_SIZE(as3935_channels);
diff --git a/drivers/iio/proximity/isl29501.c b/drivers/iio/proximity/isl29501.c
index 5ae549075b27..90e76451c972 100644
--- a/drivers/iio/proximity/isl29501.c
+++ b/drivers/iio/proximity/isl29501.c
@@ -972,7 +972,6 @@ static int isl29501_probe(struct i2c_client *client,
 		return ret;
 
 	indio_dev->modes = INDIO_DIRECT_MODE;
-	indio_dev->dev.parent = &client->dev;
 	indio_dev->channels = isl29501_channels;
 	indio_dev->num_channels = ARRAY_SIZE(isl29501_channels);
 	indio_dev->name = client->name;
diff --git a/drivers/iio/proximity/mb1232.c b/drivers/iio/proximity/mb1232.c
index 166b3e6d7db8..654564c45248 100644
--- a/drivers/iio/proximity/mb1232.c
+++ b/drivers/iio/proximity/mb1232.c
@@ -200,7 +200,6 @@ static int mb1232_probe(struct i2c_client *client,
 
 	indio_dev->info = &mb1232_info;
 	indio_dev->name = id->name;
-	indio_dev->dev.parent = dev;
 	indio_dev->modes = INDIO_DIRECT_MODE;
 	indio_dev->channels = mb1232_channels;
 	indio_dev->num_channels = ARRAY_SIZE(mb1232_channels);
diff --git a/drivers/iio/proximity/rfd77402.c b/drivers/iio/proximity/rfd77402.c
index 36480c0100a7..7a0472323f17 100644
--- a/drivers/iio/proximity/rfd77402.c
+++ b/drivers/iio/proximity/rfd77402.c
@@ -274,7 +274,6 @@ static int rfd77402_probe(struct i2c_client *client,
 	data->client = client;
 	mutex_init(&data->lock);
 
-	indio_dev->dev.parent = &client->dev;
 	indio_dev->info = &rfd77402_info;
 	indio_dev->channels = rfd77402_channels;
 	indio_dev->num_channels = ARRAY_SIZE(rfd77402_channels);
diff --git a/drivers/iio/proximity/sx9310.c b/drivers/iio/proximity/sx9310.c
index d161f3061e35..08c6100e2c94 100644
--- a/drivers/iio/proximity/sx9310.c
+++ b/drivers/iio/proximity/sx9310.c
@@ -931,7 +931,6 @@ static int sx9310_probe(struct i2c_client *client,
 		return ret;
 
 	ACPI_COMPANION_SET(&indio_dev->dev, ACPI_COMPANION(&client->dev));
-	indio_dev->dev.parent = &client->dev;
 	indio_dev->channels = sx9310_channels;
 	indio_dev->num_channels = ARRAY_SIZE(sx9310_channels);
 	indio_dev->info = &sx9310_info;
diff --git a/drivers/iio/proximity/sx9500.c b/drivers/iio/proximity/sx9500.c
index 287d288e40c2..f6eec54faef4 100644
--- a/drivers/iio/proximity/sx9500.c
+++ b/drivers/iio/proximity/sx9500.c
@@ -931,7 +931,6 @@ static int sx9500_probe(struct i2c_client *client,
 	if (IS_ERR(data->regmap))
 		return PTR_ERR(data->regmap);
 
-	indio_dev->dev.parent = &client->dev;
 	indio_dev->name = SX9500_DRIVER_NAME;
 	indio_dev->channels = sx9500_channels;
 	indio_dev->num_channels = ARRAY_SIZE(sx9500_channels);
diff --git a/drivers/iio/proximity/vl53l0x-i2c.c b/drivers/iio/proximity/vl53l0x-i2c.c
index b48216cc1858..5fbda9475ba9 100644
--- a/drivers/iio/proximity/vl53l0x-i2c.c
+++ b/drivers/iio/proximity/vl53l0x-i2c.c
@@ -134,7 +134,6 @@ static int vl53l0x_probe(struct i2c_client *client)
 				     I2C_FUNC_SMBUS_BYTE_DATA))
 		return -EOPNOTSUPP;
 
-	indio_dev->dev.parent = &client->dev;
 	indio_dev->name = "vl53l0x";
 	indio_dev->info = &vl53l0x_info;
 	indio_dev->channels = vl53l0x_channels;
diff --git a/drivers/iio/resolver/ad2s1200.c b/drivers/iio/resolver/ad2s1200.c
index a391f46ee06b..6007abad116b 100644
--- a/drivers/iio/resolver/ad2s1200.c
+++ b/drivers/iio/resolver/ad2s1200.c
@@ -157,7 +157,6 @@ static int ad2s1200_probe(struct spi_device *spi)
 		return PTR_ERR(st->rdvel);
 	}
 
-	indio_dev->dev.parent = &spi->dev;
 	indio_dev->info = &ad2s1200_info;
 	indio_dev->modes = INDIO_DIRECT_MODE;
 	indio_dev->channels = ad2s1200_channels;
diff --git a/drivers/iio/resolver/ad2s90.c b/drivers/iio/resolver/ad2s90.c
index a41f5cb10da5..d6a91f137e13 100644
--- a/drivers/iio/resolver/ad2s90.c
+++ b/drivers/iio/resolver/ad2s90.c
@@ -94,7 +94,6 @@ static int ad2s90_probe(struct spi_device *spi)
 
 	mutex_init(&st->lock);
 	st->sdev = spi;
-	indio_dev->dev.parent = &spi->dev;
 	indio_dev->info = &ad2s90_info;
 	indio_dev->modes = INDIO_DIRECT_MODE;
 	indio_dev->channels = &ad2s90_chan;
diff --git a/drivers/iio/temperature/hid-sensor-temperature.c b/drivers/iio/temperature/hid-sensor-temperature.c
index 8d1f434f109d..81688f1b932f 100644
--- a/drivers/iio/temperature/hid-sensor-temperature.c
+++ b/drivers/iio/temperature/hid-sensor-temperature.c
@@ -223,7 +223,6 @@ static int hid_temperature_probe(struct platform_device *pdev)
 
 	indio_dev->channels = temp_chans;
 	indio_dev->num_channels = ARRAY_SIZE(temperature_channels);
-	indio_dev->dev.parent = &pdev->dev;
 	indio_dev->info = &temperature_info;
 	indio_dev->name = name;
 	indio_dev->modes = INDIO_DIRECT_MODE;
diff --git a/drivers/iio/temperature/iqs620at-temp.c b/drivers/iio/temperature/iqs620at-temp.c
index 3fd52b3eb030..fe126e1fb783 100644
--- a/drivers/iio/temperature/iqs620at-temp.c
+++ b/drivers/iio/temperature/iqs620at-temp.c
@@ -74,7 +74,6 @@ static int iqs620_temp_probe(struct platform_device *pdev)
 	iio_device_set_drvdata(indio_dev, iqs62x);
 
 	indio_dev->modes = INDIO_DIRECT_MODE;
-	indio_dev->dev.parent = &pdev->dev;
 	indio_dev->channels = iqs620_temp_channels;
 	indio_dev->num_channels = ARRAY_SIZE(iqs620_temp_channels);
 	indio_dev->name = iqs62x->dev_desc->dev_name;
diff --git a/drivers/iio/temperature/ltc2983.c b/drivers/iio/temperature/ltc2983.c
index 8976e8d59826..55ff28a0f1c7 100644
--- a/drivers/iio/temperature/ltc2983.c
+++ b/drivers/iio/temperature/ltc2983.c
@@ -1500,7 +1500,6 @@ static int ltc2983_probe(struct spi_device *spi)
 	if (ret)
 		return ret;
 
-	indio_dev->dev.parent = &spi->dev;
 	indio_dev->name = name;
 	indio_dev->num_channels = st->iio_channels;
 	indio_dev->channels = st->iio_chan;
diff --git a/drivers/iio/temperature/max31856.c b/drivers/iio/temperature/max31856.c
index b4c49a5d3685..ffc54289fca7 100644
--- a/drivers/iio/temperature/max31856.c
+++ b/drivers/iio/temperature/max31856.c
@@ -417,7 +417,6 @@ static int max31856_probe(struct spi_device *spi)
 	spi_set_drvdata(spi, indio_dev);
 
 	indio_dev->info = &max31856_info;
-	indio_dev->dev.parent = &spi->dev;
 	indio_dev->dev.of_node = spi->dev.of_node;
 	indio_dev->name = id->name;
 	indio_dev->modes = INDIO_DIRECT_MODE;
diff --git a/drivers/iio/temperature/maxim_thermocouple.c b/drivers/iio/temperature/maxim_thermocouple.c
index 8d21116c7a22..0297e215b61a 100644
--- a/drivers/iio/temperature/maxim_thermocouple.c
+++ b/drivers/iio/temperature/maxim_thermocouple.c
@@ -244,7 +244,6 @@ static int maxim_thermocouple_probe(struct spi_device *spi)
 	indio_dev->available_scan_masks = chip->scan_masks;
 	indio_dev->num_channels = chip->num_channels;
 	indio_dev->modes = INDIO_DIRECT_MODE;
-	indio_dev->dev.parent = &spi->dev;
 
 	data = iio_priv(indio_dev);
 	data->spi = spi;
diff --git a/drivers/iio/temperature/mlx90614.c b/drivers/iio/temperature/mlx90614.c
index b7c56ddf884f..ef0fec94d269 100644
--- a/drivers/iio/temperature/mlx90614.c
+++ b/drivers/iio/temperature/mlx90614.c
@@ -525,7 +525,6 @@ static int mlx90614_probe(struct i2c_client *client,
 
 	mlx90614_wakeup(data);
 
-	indio_dev->dev.parent = &client->dev;
 	indio_dev->name = id->name;
 	indio_dev->modes = INDIO_DIRECT_MODE;
 	indio_dev->info = &mlx90614_info;
diff --git a/drivers/iio/temperature/mlx90632.c b/drivers/iio/temperature/mlx90632.c
index eaca6ba06864..ef94ad86275c 100644
--- a/drivers/iio/temperature/mlx90632.c
+++ b/drivers/iio/temperature/mlx90632.c
@@ -645,7 +645,6 @@ static int mlx90632_probe(struct i2c_client *client,
 	mlx90632->regmap = regmap;
 
 	mutex_init(&mlx90632->lock);
-	indio_dev->dev.parent = &client->dev;
 	indio_dev->name = id->name;
 	indio_dev->modes = INDIO_DIRECT_MODE;
 	indio_dev->info = &mlx90632_info;
diff --git a/drivers/iio/temperature/tmp006.c b/drivers/iio/temperature/tmp006.c
index cc45d8345eb9..54976c7dad92 100644
--- a/drivers/iio/temperature/tmp006.c
+++ b/drivers/iio/temperature/tmp006.c
@@ -216,7 +216,6 @@ static int tmp006_probe(struct i2c_client *client,
 	i2c_set_clientdata(client, indio_dev);
 	data->client = client;
 
-	indio_dev->dev.parent = &client->dev;
 	indio_dev->name = dev_name(&client->dev);
 	indio_dev->modes = INDIO_DIRECT_MODE;
 	indio_dev->info = &tmp006_info;
diff --git a/drivers/iio/temperature/tmp007.c b/drivers/iio/temperature/tmp007.c
index 7df234d96f94..f90fe9e5617b 100644
--- a/drivers/iio/temperature/tmp007.c
+++ b/drivers/iio/temperature/tmp007.c
@@ -463,7 +463,6 @@ static int tmp007_probe(struct i2c_client *client,
 	data->client = client;
 	mutex_init(&data->lock);
 
-	indio_dev->dev.parent = &client->dev;
 	indio_dev->name = "tmp007";
 	indio_dev->modes = INDIO_DIRECT_MODE;
 	indio_dev->info = &tmp007_info;
diff --git a/drivers/iio/temperature/tsys02d.c b/drivers/iio/temperature/tsys02d.c
index 6735af400b22..fc96e5f9d3fc 100644
--- a/drivers/iio/temperature/tsys02d.c
+++ b/drivers/iio/temperature/tsys02d.c
@@ -149,7 +149,6 @@ static int tsys02d_probe(struct i2c_client *client,
 
 	indio_dev->info = &tsys02d_info;
 	indio_dev->name = id->name;
-	indio_dev->dev.parent = &client->dev;
 	indio_dev->modes = INDIO_DIRECT_MODE;
 	indio_dev->channels = tsys02d_channels;
 	indio_dev->num_channels = ARRAY_SIZE(tsys02d_channels);
diff --git a/drivers/iio/trigger/stm32-timer-trigger.c b/drivers/iio/trigger/stm32-timer-trigger.c
index 7d8962d6566a..e7459ad3d6cd 100644
--- a/drivers/iio/trigger/stm32-timer-trigger.c
+++ b/drivers/iio/trigger/stm32-timer-trigger.c
@@ -723,7 +723,6 @@ static struct stm32_timer_trigger *stm32_setup_counter_device(struct device *dev
 		return NULL;
 
 	indio_dev->name = dev_name(dev);
-	indio_dev->dev.parent = dev;
 	indio_dev->info = &stm32_trigger_info;
 	indio_dev->modes = INDIO_HARDWARE_TRIGGERED;
 	indio_dev->num_channels = 1;
diff --git a/drivers/input/touchscreen/tsc2007_iio.c b/drivers/input/touchscreen/tsc2007_iio.c
index 3b0e3fa87d4c..752eb7fe5da3 100644
--- a/drivers/input/touchscreen/tsc2007_iio.c
+++ b/drivers/input/touchscreen/tsc2007_iio.c
@@ -119,7 +119,6 @@ int tsc2007_iio_configure(struct tsc2007 *ts)
 	iio->ts = ts;
 
 	indio_dev->name = "tsc2007";
-	indio_dev->dev.parent = &ts->client->dev;
 	indio_dev->info = &tsc2007_iio_info;
 	indio_dev->modes = INDIO_DIRECT_MODE;
 	indio_dev->channels = tsc2007_iio_channel;
diff --git a/drivers/staging/iio/accel/adis16203.c b/drivers/staging/iio/accel/adis16203.c
index fef52d9b5346..c7798908ef0e 100644
--- a/drivers/staging/iio/accel/adis16203.c
+++ b/drivers/staging/iio/accel/adis16203.c
@@ -277,7 +277,6 @@ static int adis16203_probe(struct spi_device *spi)
 	spi_set_drvdata(spi, indio_dev);
 
 	indio_dev->name = spi->dev.driver->name;
-	indio_dev->dev.parent = &spi->dev;
 	indio_dev->channels = adis16203_channels;
 	indio_dev->num_channels = ARRAY_SIZE(adis16203_channels);
 	indio_dev->info = &adis16203_info;
diff --git a/drivers/staging/iio/accel/adis16240.c b/drivers/staging/iio/accel/adis16240.c
index 8bd35c6c56a1..38ec40b458c9 100644
--- a/drivers/staging/iio/accel/adis16240.c
+++ b/drivers/staging/iio/accel/adis16240.c
@@ -400,7 +400,6 @@ static int adis16240_probe(struct spi_device *spi)
 	spi_set_drvdata(spi, indio_dev);
 
 	indio_dev->name = spi->dev.driver->name;
-	indio_dev->dev.parent = &spi->dev;
 	indio_dev->info = &adis16240_info;
 	indio_dev->channels = adis16240_channels;
 	indio_dev->num_channels = ARRAY_SIZE(adis16240_channels);
diff --git a/drivers/staging/iio/adc/ad7280a.c b/drivers/staging/iio/adc/ad7280a.c
index bef6bd1295ea..fef0055b8990 100644
--- a/drivers/staging/iio/adc/ad7280a.c
+++ b/drivers/staging/iio/adc/ad7280a.c
@@ -978,7 +978,6 @@ static int ad7280_probe(struct spi_device *spi)
 	st->readback_delay_us += 5; /* Add tWAIT */
 
 	indio_dev->name = spi_get_device_id(spi)->name;
-	indio_dev->dev.parent = &spi->dev;
 	indio_dev->modes = INDIO_DIRECT_MODE;
 
 	ret = ad7280_channel_init(st);
diff --git a/drivers/staging/iio/adc/ad7816.c b/drivers/staging/iio/adc/ad7816.c
index a9985a7f8199..6c14d7bcdd67 100644
--- a/drivers/staging/iio/adc/ad7816.c
+++ b/drivers/staging/iio/adc/ad7816.c
@@ -394,7 +394,6 @@ static int ad7816_probe(struct spi_device *spi_dev)
 	}
 
 	indio_dev->name = spi_get_device_id(spi_dev)->name;
-	indio_dev->dev.parent = &spi_dev->dev;
 	indio_dev->info = &ad7816_info;
 	indio_dev->modes = INDIO_DIRECT_MODE;
 
diff --git a/drivers/staging/iio/cdc/ad7150.c b/drivers/staging/iio/cdc/ad7150.c
index f4954d85553e..48132ab157ef 100644
--- a/drivers/staging/iio/cdc/ad7150.c
+++ b/drivers/staging/iio/cdc/ad7150.c
@@ -590,8 +590,6 @@ static int ad7150_probe(struct i2c_client *client,
 	indio_dev->name = id->name;
 	indio_dev->channels = ad7150_channels;
 	indio_dev->num_channels = ARRAY_SIZE(ad7150_channels);
-	/* Establish that the iio_dev is a child of the i2c device */
-	indio_dev->dev.parent = &client->dev;
 
 	indio_dev->info = &ad7150_info;
 
diff --git a/drivers/staging/iio/cdc/ad7746.c b/drivers/staging/iio/cdc/ad7746.c
index 21527d84f940..bd9803c7c5b6 100644
--- a/drivers/staging/iio/cdc/ad7746.c
+++ b/drivers/staging/iio/cdc/ad7746.c
@@ -695,7 +695,6 @@ static int ad7746_probe(struct i2c_client *client,
 
 	/* Establish that the iio_dev is a child of the i2c device */
 	indio_dev->name = id->name;
-	indio_dev->dev.parent = &client->dev;
 	indio_dev->info = &ad7746_info;
 	indio_dev->channels = ad7746_channels;
 	if (id->driver_data == 7746)
diff --git a/drivers/staging/iio/frequency/ad9832.c b/drivers/staging/iio/frequency/ad9832.c
index 74308a2e72db..447937e04ebd 100644
--- a/drivers/staging/iio/frequency/ad9832.c
+++ b/drivers/staging/iio/frequency/ad9832.c
@@ -348,7 +348,6 @@ static int ad9832_probe(struct spi_device *spi)
 	st->spi = spi;
 	mutex_init(&st->lock);
 
-	indio_dev->dev.parent = &spi->dev;
 	indio_dev->name = spi_get_device_id(spi)->name;
 	indio_dev->info = &ad9832_info;
 	indio_dev->modes = INDIO_DIRECT_MODE;
diff --git a/drivers/staging/iio/frequency/ad9834.c b/drivers/staging/iio/frequency/ad9834.c
index 23026978a5a5..77f77a2b2e05 100644
--- a/drivers/staging/iio/frequency/ad9834.c
+++ b/drivers/staging/iio/frequency/ad9834.c
@@ -431,7 +431,6 @@ static int ad9834_probe(struct spi_device *spi)
 	st->spi = spi;
 	st->devid = spi_get_device_id(spi)->driver_data;
 	st->reg = reg;
-	indio_dev->dev.parent = &spi->dev;
 	indio_dev->name = spi_get_device_id(spi)->name;
 	switch (st->devid) {
 	case ID_AD9833:
diff --git a/drivers/staging/iio/impedance-analyzer/ad5933.c b/drivers/staging/iio/impedance-analyzer/ad5933.c
index c468355b0848..dba78896ea8f 100644
--- a/drivers/staging/iio/impedance-analyzer/ad5933.c
+++ b/drivers/staging/iio/impedance-analyzer/ad5933.c
@@ -759,7 +759,6 @@ static int ad5933_probe(struct i2c_client *client,
 	INIT_DELAYED_WORK(&st->work, ad5933_work);
 	st->poll_time_jiffies = msecs_to_jiffies(AD5933_POLL_TIME_ms);
 
-	indio_dev->dev.parent = &client->dev;
 	indio_dev->info = &ad5933_info;
 	indio_dev->name = id->name;
 	indio_dev->modes = (INDIO_BUFFER_SOFTWARE | INDIO_DIRECT_MODE);
diff --git a/drivers/staging/iio/resolver/ad2s1210.c b/drivers/staging/iio/resolver/ad2s1210.c
index 4b25a3a314ed..225f775ecf67 100644
--- a/drivers/staging/iio/resolver/ad2s1210.c
+++ b/drivers/staging/iio/resolver/ad2s1210.c
@@ -664,7 +664,6 @@ static int ad2s1210_probe(struct spi_device *spi)
 	st->resolution = 12;
 	st->fexcit = AD2S1210_DEF_EXCIT;
 
-	indio_dev->dev.parent = &spi->dev;
 	indio_dev->info = &ad2s1210_info;
 	indio_dev->modes = INDIO_DIRECT_MODE;
 	indio_dev->channels = ad2s1210_channels;
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

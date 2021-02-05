Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9194D310DFC
	for <lists+driverdev-devel@lfdr.de>; Fri,  5 Feb 2021 17:38:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 34F942E118;
	Fri,  5 Feb 2021 16:38:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DLII2w4UzrpC; Fri,  5 Feb 2021 16:38:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id DE2D22305A;
	Fri,  5 Feb 2021 16:38:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D35EA1BF27F
 for <devel@linuxdriverproject.org>; Fri,  5 Feb 2021 16:38:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CFB1A86B54
 for <devel@linuxdriverproject.org>; Fri,  5 Feb 2021 16:38:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DNgnaW2xcGKD for <devel@linuxdriverproject.org>;
 Fri,  5 Feb 2021 16:38:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
 [213.167.242.64])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BA785869B7
 for <devel@driverdev.osuosl.org>; Fri,  5 Feb 2021 16:38:33 +0000 (UTC)
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:169:7140:5c7:913e:f5dc:1fa])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id A1C45316;
 Fri,  5 Feb 2021 17:38:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1612543109;
 bh=VDeh1UbbOpEZAzYMYoSbEP32YFEiJpOEK8yXSrSc9gw=;
 h=From:To:Cc:Subject:Date:From;
 b=W+E11Et3FLdhV256GHjyFmVVALpAUYR2UTSWtLPJDEfe79OTqd/b5NBiMjrZTrBdi
 gM8z6hM+IF0thk0bcB99GXRcKHwPYV4Ozqj1UzpvKVRpQHTrbtYw05c1m46L0rLHAQ
 W/T/UtvdDjE+I4dAeGyYG/0nEBCdizLed0+BjoGE=
From: Jean-Michel Hautbois <jeanmichel.hautbois@ideasonboard.com>
To: linux-media@vger.kernel.org
Subject: [PATCH] media: intel-ipu3: Specify CCM values precision
Date: Fri,  5 Feb 2021 17:38:19 +0100
Message-Id: <20210205163819.28439-1-jeanmichel.hautbois@ideasonboard.com>
X-Mailer: git-send-email 2.27.0
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, sakari.ailus@linux.intel.com,
 bingbu.cao@intel.com, mchehab@kernel.org, jeanmichel.hautbois@ideasonboard.com,
 tian.shu.qiu@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

When trying to convert a CCM matrix for IPU3, extreme values for the
Color Correction Matrix.
Specify the precision to ease userspace integration.

Signed-off-by: Jean-Michel Hautbois <jeanmichel.hautbois@ideasonboard.com>
---
 drivers/staging/media/ipu3/include/intel-ipu3.h | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/media/ipu3/include/intel-ipu3.h b/drivers/staging/media/ipu3/include/intel-ipu3.h
index edd8edda0647..68f7d11ce52f 100644
--- a/drivers/staging/media/ipu3/include/intel-ipu3.h
+++ b/drivers/staging/media/ipu3/include/intel-ipu3.h
@@ -923,19 +923,21 @@ struct ipu3_uapi_dm_config {
 /**
  * struct ipu3_uapi_ccm_mat_config - Color correction matrix
  *
- * @coeff_m11: CCM 3x3 coefficient, range [-65536, 65535]
+ * @coeff_m11: CCM 3x3 coefficient, range [-32768, 32767]
  * @coeff_m12: CCM 3x3 coefficient, range [-8192, 8191]
- * @coeff_m13: CCM 3x3 coefficient, range [-32768, 32767]
+ * @coeff_m13: CCM 3x3 coefficient, range [-8192, 8191]
  * @coeff_o_r: Bias 3x1 coefficient, range [-8191, 8181]
- * @coeff_m21: CCM 3x3 coefficient, range [-32767, 32767]
- * @coeff_m22: CCM 3x3 coefficient, range [-8192, 8191]
- * @coeff_m23: CCM 3x3 coefficient, range [-32768, 32767]
+ * @coeff_m21: CCM 3x3 coefficient, range [-8192, 8191]
+ * @coeff_m22: CCM 3x3 coefficient, range [-32768, 32767]
+ * @coeff_m23: CCM 3x3 coefficient, range [-8192, 8191]
  * @coeff_o_g: Bias 3x1 coefficient, range [-8191, 8181]
- * @coeff_m31: CCM 3x3 coefficient, range [-32768, 32767]
+ * @coeff_m31: CCM 3x3 coefficient, range [-8192, 8191]
  * @coeff_m32: CCM 3x3 coefficient, range [-8192, 8191]
  * @coeff_m33: CCM 3x3 coefficient, range [-32768, 32767]
  * @coeff_o_b: Bias 3x1 coefficient, range [-8191, 8181]
  *
+ * Precision s3.13, range [-8, 8).
+ *
  * Transform sensor specific color space to standard sRGB by applying 3x3 matrix
  * and adding a bias vector O. The transformation is basically a rotation and
  * translation in the 3-dimensional color spaces. Here are the defaults:
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

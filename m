Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D3FC1EEC49
	for <lists+driverdev-devel@lfdr.de>; Thu,  4 Jun 2020 22:47:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6ED1E88375;
	Thu,  4 Jun 2020 20:47:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TxlyYaeiVCgP; Thu,  4 Jun 2020 20:47:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9AA58883CD;
	Thu,  4 Jun 2020 20:47:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0C7391BF2C6
 for <devel@linuxdriverproject.org>; Thu,  4 Jun 2020 20:47:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id F1ABB25048
 for <devel@linuxdriverproject.org>; Thu,  4 Jun 2020 20:47:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cRdjjzGZ9OOk for <devel@linuxdriverproject.org>;
 Thu,  4 Jun 2020 20:47:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 2D6C5250D0
 for <devel@driverdev.osuosl.org>; Thu,  4 Jun 2020 20:47:09 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DDEC7207F9;
 Thu,  4 Jun 2020 20:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591303629;
 bh=EpUoapDsHAy7sbPtW80ddehyw4Im20LRuhLaco5sdq4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ZTi7nPKy6NlZdYGSLyK240eCUKAv0MdxqRIl+3hmzgZda3rI6lUuNF0lTYGit7jM9
 LFFFiFzqTdWYD0J5WtUhFKP86L4cSb2ANcKzey2F8SNFGAcvdHJQcbQRB8h7iOlbO5
 DmQ/sNctCVEN45PXCln2vKdDaqDhmivkbAJAgt4w=
Received: from mchehab by mail.kernel.org with local (Exim 4.93)
 (envelope-from <mchehab@kernel.org>)
 id 1jgwlW-0004Ap-Td; Thu, 04 Jun 2020 22:47:06 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Subject: [PATCH 5/5] media: atomisp: improve ACPI/DMI detection logs
Date: Thu,  4 Jun 2020 22:47:05 +0200
Message-Id: <aca33f229a1cb2425df1bb6d08670ad982e9daa0.1591303518.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1591303518.git.mchehab+huawei@kernel.org>
References: <cover.1591303518.git.mchehab+huawei@kernel.org>
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
Cc: devel@driverdev.osuosl.org,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Sakari Ailus <sakari.ailus@linux.intel.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

As there are several ways where the driver could possible
retrieve sensor data, make the prints clearer about what
was detected and from where.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 .../media/atomisp/pci/atomisp_gmin_platform.c  | 18 ++++++++++++------
 1 file changed, 12 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp_gmin_platform.c b/drivers/staging/media/atomisp/pci/atomisp_gmin_platform.c
index a14326111b26..1ba03448d348 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_gmin_platform.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_gmin_platform.c
@@ -936,7 +936,8 @@ int atomisp_gmin_register_vcm_control(struct camera_vcm_control *vcmCtrl)
 }
 EXPORT_SYMBOL_GPL(atomisp_gmin_register_vcm_control);
 
-static int gmin_get_hardcoded_var(struct gmin_cfg_var *varlist,
+static int gmin_get_hardcoded_var(struct device *dev,
+				  struct gmin_cfg_var *varlist,
 				  const char *var8, char *out, size_t *out_len)
 {
 	struct gmin_cfg_var *gv;
@@ -947,6 +948,8 @@ static int gmin_get_hardcoded_var(struct gmin_cfg_var *varlist,
 		if (strcmp(var8, gv->name))
 			continue;
 
+		dev_info(dev, "Found DMI entry for '%s'\n", var8);
+
 		vl = strlen(gv->val);
 		if (vl > *out_len - 1)
 			return -ENOSPC;
@@ -1070,9 +1073,10 @@ static int gmin_get_config_var(struct device *maindev,
 	 */
 	id = dmi_first_match(gmin_vars);
 	if (id) {
-		dev_info(maindev, "Found DMI entry for '%s'\n", var8);
-		return gmin_get_hardcoded_var(id->driver_data, var8, out,
-					      out_len);
+		ret = gmin_get_hardcoded_var(maindev, id->driver_data, var8,
+					     out, out_len);
+		if (!ret)
+			return 0;
 	}
 
 	/* Our variable names are ASCII by construction, but EFI names
@@ -1102,9 +1106,9 @@ static int gmin_get_config_var(struct device *maindev,
 		*out_len = ev->var.DataSize;
 		dev_info(maindev, "found EFI entry for '%s'\n", var8);
 	} else if (is_gmin) {
-		dev_warn(maindev, "Failed to find gmin variable %s\n", var8);
+		dev_info(maindev, "Failed to find EFI gmin variable %s\n", var8);
 	} else {
-		dev_warn(maindev, "Failed to find variable %s\n", var8);
+		dev_info(maindev, "Failed to find EFI variable %s\n", var8);
 	}
 
 	kfree(ev);
@@ -1123,6 +1127,8 @@ int gmin_get_var_int(struct device *dev, bool is_gmin, const char *var, int def)
 	if (!ret) {
 		val[len] = 0;
 		ret = kstrtol(val, 0, &result);
+	} else {
+		dev_info(dev, "%s: using default (%d)\n", var, def);
 	}
 
 	return ret ? def : result;
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

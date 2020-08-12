Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A53BE242C82
	for <lists+driverdev-devel@lfdr.de>; Wed, 12 Aug 2020 17:57:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3713D88270;
	Wed, 12 Aug 2020 15:57:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gG-RYkSKW4Vt; Wed, 12 Aug 2020 15:57:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 519CF88254;
	Wed, 12 Aug 2020 15:57:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 30A5F1BF9B5
 for <devel@linuxdriverproject.org>; Wed, 12 Aug 2020 15:57:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2DD4188252
 for <devel@linuxdriverproject.org>; Wed, 12 Aug 2020 15:57:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id U-G7hlk7dfXJ for <devel@linuxdriverproject.org>;
 Wed, 12 Aug 2020 15:57:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id DD85C881BC
 for <devel@driverdev.osuosl.org>; Wed, 12 Aug 2020 15:57:00 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 87A8522D6D;
 Wed, 12 Aug 2020 15:57:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1597247820;
 bh=Y7yROnsklvipuA8a2pdI0bW8d3tnRK65tTCSvHytTKQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=rSOgVg9Rs52BpQyqxio+9kY4N1J/eD3ZUI63kWaWAbWnLhCWNNrHv80svNGMJS7oY
 G/0/9c48CjUD7BR8qVgMC0GlzjWtKUiBeQXUSJkgi++fMtsXcZXpYUCNY9syiAJFrS
 lqB7SYAvZcWi2w9BcWGZpYRi/HrBspPAIYDF4XFs=
Received: from mchehab by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1k5t7a-005t6g-KC; Wed, 12 Aug 2020 17:56:58 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Subject: [PATCH 24/44] staging: regulator: hi6421v600-regulator: get rid of
 unused code
Date: Wed, 12 Aug 2020 17:56:34 +0200
Message-Id: <1bde120cd28eb16966d9b93754e4c6b46a6ad3cc.1597247164.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1597247164.git.mchehab+huawei@kernel.org>
References: <cover.1597247164.git.mchehab+huawei@kernel.org>
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linuxarm@huawei.com,
 linux-kernel@vger.kernel.org, mauro.chehab@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Get rid of the sysfs code and other parts of the driver
which aren't needed upstream.

If needed later, this patch can be (partially?) reversed.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 .../staging/hikey9xx/hi6421v600-regulator.c   | 196 +-----------------
 1 file changed, 8 insertions(+), 188 deletions(-)

diff --git a/drivers/staging/hikey9xx/hi6421v600-regulator.c b/drivers/staging/hikey9xx/hi6421v600-regulator.c
index 941bfe32bf5b..7bc0ae27b110 100644
--- a/drivers/staging/hikey9xx/hi6421v600-regulator.c
+++ b/drivers/staging/hikey9xx/hi6421v600-regulator.c
@@ -34,19 +34,10 @@
 #include <linux/delay.h>
 #include <linux/time.h>
 #include <linux/version.h>
-#ifdef CONFIG_HISI_PMIC_DEBUG
-#include <linux/debugfs.h>
-#endif
 #include <linux/seq_file.h>
 #include <linux/uaccess.h>
 #include <linux/spmi.h>
 
-#if 1
-#define BRAND_DEBUG(args...) pr_debug(args);
-#else
-#define BRAND_DEBUG(args...)
-#endif
-
 struct hisi_regulator_register_info {
 	u32 ctrl_reg;
 	u32 enable_mask;
@@ -110,7 +101,7 @@ static int hisi_regulator_is_enabled(struct regulator_dev *dev)
 	struct hisi_pmic *pmic = rdev_to_pmic(dev);
 
 	reg_val = hisi_pmic_read(pmic, sreg->register_info.ctrl_reg);
-	BRAND_DEBUG("<[%s]: ctrl_reg=0x%x,enable_state=%d>\n", __func__, sreg->register_info.ctrl_reg,\
+	pr_debug("<[%s]: ctrl_reg=0x%x,enable_state=%d>\n", __func__, sreg->register_info.ctrl_reg,\
 			(reg_val & sreg->register_info.enable_mask));
 
 	return ((reg_val & sreg->register_info.enable_mask) != 0);
@@ -124,7 +115,7 @@ static int hisi_regulator_enable(struct regulator_dev *dev)
 	/* keep a distance of off_on_delay from last time disabled */
 	ensured_time_after(sreg->last_off_time, sreg->off_on_delay);
 
-	BRAND_DEBUG("<[%s]: off_on_delay=%dus>\n", __func__, sreg->off_on_delay);
+	pr_debug("<[%s]: off_on_delay=%dus>\n", __func__, sreg->off_on_delay);
 
 	/* cannot enable more than one regulator at one time */
 	mutex_lock(&enable_mutex);
@@ -134,7 +125,7 @@ static int hisi_regulator_enable(struct regulator_dev *dev)
 	hisi_pmic_rmw(pmic, sreg->register_info.ctrl_reg,
 				sreg->register_info.enable_mask,
 				sreg->register_info.enable_mask);
-	BRAND_DEBUG("<[%s]: ctrl_reg=0x%x,enable_mask=0x%x>\n", __func__, sreg->register_info.ctrl_reg,\
+	pr_debug("<[%s]: ctrl_reg=0x%x,enable_mask=0x%x>\n", __func__, sreg->register_info.ctrl_reg,\
 			sreg->register_info.enable_mask);
 
 	do_gettimeofday(&last_enabled);
@@ -165,7 +156,7 @@ static int hisi_regulator_get_voltage(struct regulator_dev *dev)
 
 	/* get voltage selector */
 	reg_val = hisi_pmic_read(pmic, sreg->register_info.vset_reg);
-	BRAND_DEBUG("<[%s]: vset_reg=0x%x>\n", __func__, sreg->register_info.vset_reg);
+	pr_debug("<[%s]: vset_reg=0x%x>\n", __func__, sreg->register_info.vset_reg);
 
 	selector = (reg_val & sreg->register_info.vset_mask) >>
 				(ffs(sreg->register_info.vset_mask) - 1);
@@ -198,7 +189,7 @@ static int hisi_regulator_set_voltage(struct regulator_dev *dev,
 		sreg->register_info.vset_mask,
 		vsel << (ffs(sreg->register_info.vset_mask) - 1));
 
-	BRAND_DEBUG("<[%s]: vset_reg=0x%x, vset_mask=0x%x, value=0x%x>\n", __func__,\
+	pr_debug("<[%s]: vset_reg=0x%x, vset_mask=0x%x, value=0x%x>\n", __func__,\
 			sreg->register_info.vset_reg,\
 			sreg->register_info.vset_mask,\
 			vsel << (ffs(sreg->register_info.vset_mask) - 1)\
@@ -214,7 +205,7 @@ static unsigned int hisi_regulator_get_mode(struct regulator_dev *dev)
 	u32 reg_val;
 
 	reg_val = hisi_pmic_read(pmic, sreg->register_info.ctrl_reg);
-	BRAND_DEBUG("<[%s]: reg_val=%d, ctrl_reg=0x%x, eco_mode_mask=0x%x>\n", __func__, reg_val,\
+	pr_debug("<[%s]: reg_val=%d, ctrl_reg=0x%x, eco_mode_mask=0x%x>\n", __func__, reg_val,\
 			sreg->register_info.ctrl_reg,\
 			sreg->register_info.eco_mode_mask\
 		   );
@@ -248,7 +239,7 @@ static int hisi_regulator_set_mode(struct regulator_dev *dev,
 		sreg->register_info.eco_mode_mask,
 		eco_mode << (ffs(sreg->register_info.eco_mode_mask) - 1));
 
-	BRAND_DEBUG("<[%s]: ctrl_reg=0x%x, eco_mode_mask=0x%x, value=0x%x>\n", __func__,\
+	pr_debug("<[%s]: ctrl_reg=0x%x, eco_mode_mask=0x%x, value=0x%x>\n", __func__,\
 			sreg->register_info.ctrl_reg,\
 			sreg->register_info.eco_mode_mask,\
 			eco_mode << (ffs(sreg->register_info.eco_mode_mask) - 1)\
@@ -403,147 +394,6 @@ static struct of_device_id of_hisi_regulator_match_tbl[] = {
 	{ /* end */ }
 };
 
-#ifdef CONFIG_HISI_PMIC_DEBUG
-extern void get_current_regulator_dev(struct seq_file *s);
-extern void set_regulator_state(char *ldo_name, int value);
-extern void get_regulator_state(char *ldo_name);
-extern int set_regulator_voltage(char *ldo_name, unsigned int vol_value);
-
-u32 pmu_atoi(char *s)
-{
-	char *p = s;
-	char c;
-	u64 ret = 0;
-	if (s == NULL)
-		return 0;
-	while ((c = *p++) != '\0') {
-		if ('0' <= c && c <= '9') {
-			ret *= 10;
-			ret += (u64)((unsigned char)c - '0');
-			if (ret > U32_MAX)
-				return 0;
-		} else {
-			break;
-		}
-	}
-	return (u32)ret;
-}
-static int dbg_hisi_regulator_show(struct seq_file *s, void *data)
-{
-	seq_printf(s, "\n\r");
-	seq_printf(s, "%-13s %-15s %-15s %-15s %-15s\n\r",
-			"LDO_NAME", "ON/OFF", "Use_count", "Open_count", "Always_on");
-	seq_printf(s, "-----------------------------------------"
-			"-----------------------------------------------\n\r");
-	get_current_regulator_dev(s);
-	return 0;
-}
-
-static int dbg_hisi_regulator_open(struct inode *inode, struct file *file)
-{
-	return single_open(file, dbg_hisi_regulator_show, inode->i_private);
-}
-
-static const struct file_operations debug_regulator_state_fops = {
-	.open		= dbg_hisi_regulator_open,
-	.read		= seq_read,
-	.llseek		= seq_lseek,
-	.release	= single_release,
-};
-
-static int dbg_control_regulator_show(struct seq_file *s, void *data)
-{
-	printk("                                                                             \n\r \
-		---------------------------------------------------------------------------------\n\r \
-		|usage:                                                                         |\n\r \
-		|	S = state	R = read	V = voltage                                         |\n\r \
-		|	set ldo state and voltage                                                   |\n\r \
-		|	get ldo state and current voltage                                           |\n\r \
-		|example:                                                                       |\n\r \
-		|	echo S ldo16 0   > control_regulator	:disable ldo16                      |\n\r \
-		|	echo S ldo16 1   > control_regulator	:enable ldo16                       |\n\r \
-		|	echo R ldo16     > control_regulator	:get ldo16 state and voltage        |\n\r \
-		|	echo V ldo16 xxx > control_regulator	:set ldo16 voltage                  |\n\r \
-		---------------------------------------------------------------------------------\n\r");
-	return 0;
-}
-static ssize_t dbg_control_regulator_set_value(struct file *filp, const char __user *buffer,
-	size_t count, loff_t *ppos)
-{
-	char tmp[128] = {0};
-	char ptr[128] = {0};
-	char *vol = NULL;
-	char num = 0;
-	unsigned int i;
-	int next_flag = 1;
-
-	if (count >= 128) {
-		pr_info("error! buffer size big than internal buffer\n");
-		return -EFAULT;
-	}
-
-	if (copy_from_user(tmp, buffer, count)) {
-		pr_info("error!\n");
-		return -EFAULT;
-	}
-
-	if (tmp[0] == 'R' || tmp[0] == 'r') {
-		for (i = 2; i < (count - 1); i++) {
-			ptr[i - 2] = tmp[i];
-		}
-		ptr[i - 2] = '\0';
-		get_regulator_state(ptr);
-	} else if (tmp[0] == 'S' || tmp[0] == 's') {
-		for (i = 2; i < (count - 1); i++) {
-			if (tmp[i] == ' ') {
-				next_flag = 0;
-				ptr[i - 2] = '\0';
-				continue;
-			}
-			if (next_flag) {
-				ptr[i - 2] = tmp[i];
-			} else {
-				num = tmp[i] - 48;
-			}
-		}
-		set_regulator_state(ptr, num);
-	} else if (tmp[0] == 'V' || tmp[0] == 'v') {
-		for (i = 2; i < (count - 1); i++) {
-			if (tmp[i] == ' ') {
-				next_flag = 0;
-				ptr[i - 2] = '\0';
-				continue;
-			}
-			if (next_flag) {
-				ptr[i - 2] = tmp[i];
-			} else {
-				vol = &tmp[i];
-				break;
-			}
-		}
-		set_regulator_voltage(ptr, pmu_atoi(vol));
-	}
-
-	*ppos += count;
-
-	return count;
-}
-
-static int dbg_control_regulator_open(struct inode *inode, struct file *file)
-{
-	file->private_data = inode->i_private;
-	return single_open(file, dbg_control_regulator_show, &inode->i_private);
-}
-
-static const struct file_operations set_control_regulator_fops = {
-	.open		= dbg_control_regulator_open,
-	.read		= seq_read,
-	.write		= dbg_control_regulator_set_value,
-	.llseek		= seq_lseek,
-	.release	= single_release,
-};
-#endif
-
 static int hisi_regulator_probe(struct spmi_device *pdev)
 {
 	struct device *dev = &pdev->dev;
@@ -556,10 +406,6 @@ static int hisi_regulator_probe(struct spmi_device *pdev)
 	const struct of_device_id *match;
 	struct regulation_constraints *constraint;
 	const char *supplyname = NULL;
-#ifdef CONFIG_HISI_PMIC_DEBUG
-	struct dentry *d;
-	static int debugfs_flag;
-#endif
 	unsigned int temp_modes;
 
 	const struct hisi_regulator *template = NULL;
@@ -572,11 +418,7 @@ static int hisi_regulator_probe(struct spmi_device *pdev)
 	}
 
 	template = match->data;
-#if (LINUX_VERSION_CODE > KERNEL_VERSION(3, 13, 0))
 	initdata = of_get_regulator_init_data(dev, np, NULL);
-#else
-	initdata = of_get_regulator_init_data(dev, np);
-#endif
 	if (NULL == initdata) {
 		pr_err("get regulator init data error !\n");
 		return -EINVAL;
@@ -636,32 +478,10 @@ static int hisi_regulator_probe(struct spmi_device *pdev)
 		goto hisi_probe_end;
 	}
 
-	BRAND_DEBUG("[%s]:valid_modes_mask[0x%x], valid_ops_mask[0x%x]\n", rdesc->name,\
+	pr_debug("[%s]:valid_modes_mask[0x%x], valid_ops_mask[0x%x]\n", rdesc->name,\
 			constraint->valid_modes_mask, constraint->valid_ops_mask);
 
 	dev_set_drvdata(dev, rdev);
-#ifdef CONFIG_HISI_PMIC_DEBUG
-	if (debugfs_flag == 0) {
-		d = debugfs_create_dir("hisi_regulator_debugfs", NULL);
-		if (!d) {
-			dev_err(dev, "failed to create hisi regulator debugfs dir !\n");
-			ret = -ENOMEM;
-			goto hisi_probe_fail;
-		}
-		(void) debugfs_create_file("regulator_state", S_IRUSR,
-						d, NULL, &debug_regulator_state_fops);
-
-		(void) debugfs_create_file("control_regulator", S_IRUSR,
-						d, NULL, &set_control_regulator_fops);
-		debugfs_flag = 1;
-	}
-#endif
-
-#ifdef CONFIG_HISI_PMIC_DEBUG
-hisi_probe_fail:
-	if (ret)
-		regulator_unregister(rdev);
-#endif
 hisi_probe_end:
 	if (ret)
 		kfree(sreg);
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D78888F8F0
	for <lists+driverdev-devel@lfdr.de>; Fri, 16 Aug 2019 04:33:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8B68C863DC;
	Fri, 16 Aug 2019 02:33:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L09lQp1fuXKC; Fri, 16 Aug 2019 02:33:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AE1B4860C1;
	Fri, 16 Aug 2019 02:33:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1B0D61BF2BD
 for <devel@linuxdriverproject.org>; Fri, 16 Aug 2019 02:33:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1768E8618F
 for <devel@linuxdriverproject.org>; Fri, 16 Aug 2019 02:33:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eeIKtt_rJK38 for <devel@linuxdriverproject.org>;
 Fri, 16 Aug 2019 02:33:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 920A58643D
 for <devel@driverdev.osuosl.org>; Fri, 16 Aug 2019 02:33:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Aug 2019 19:33:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,391,1559545200"; d="scan'208";a="194894553"
Received: from genxtest-ykzhao.sh.intel.com ([10.239.143.71])
 by fmsmga001.fm.intel.com with ESMTP; 15 Aug 2019 19:33:22 -0700
From: Zhao Yakui <yakui.zhao@intel.com>
To: x86@kernel.org, linux-kernel@vger.kernel.org, devel@driverdev.osuosl.org
Subject: [RFC PATCH 15/15] drivers/acrn: add the support of offline SOS cpu
Date: Fri, 16 Aug 2019 10:25:56 +0800
Message-Id: <1565922356-4488-16-git-send-email-yakui.zhao@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1565922356-4488-1-git-send-email-yakui.zhao@intel.com>
References: <1565922356-4488-1-git-send-email-yakui.zhao@intel.com>
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
Cc: Zhao Yakui <yakui.zhao@intel.com>, Jason Chen CJ <jason.cj.chen@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The ACRN-hypervisor works in partition mode. In such case the guest OS
and domain0 kernel will run in the different CPUs.  In course of booting
domain0 kernel, it can use all the available CPUs,which can accelerate
the booting. But after the booting is finished, it needs to offline the
other CPUs so that they can be allocated to the guest OS.

add sysfs with attr "offline_cpu", use
	echo cpu_id > /sys/class/acrn/acrn_hsm/offline_cpu
to do the hypercall offline/destroy according vcpu.
before doing it, It will offline cpu by using the below cmd:
	echo 0 > /sys/devices/system/cpu/cpuX/online

Currently this is mainly used in user-space device model before
booting other ACRN guest.

Co-developed-by: Jason Chen CJ <jason.cj.chen@intel.com>
Signed-off-by: Jason Chen CJ <jason.cj.chen@intel.com>
Signed-off-by: Zhao Yakui <yakui.zhao@intel.com>
---
 drivers/staging/acrn/acrn_dev.c | 45 +++++++++++++++++++++++++++++++++++++++++
 1 file changed, 45 insertions(+)

diff --git a/drivers/staging/acrn/acrn_dev.c b/drivers/staging/acrn/acrn_dev.c
index 0602125..6868003 100644
--- a/drivers/staging/acrn/acrn_dev.c
+++ b/drivers/staging/acrn/acrn_dev.c
@@ -588,6 +588,41 @@ static const struct file_operations fops = {
 #define SUPPORT_HV_API_VERSION_MAJOR	1
 #define SUPPORT_HV_API_VERSION_MINOR	0
 
+static ssize_t
+offline_cpu_store(struct device *dev,
+			struct device_attribute *attr,
+			const char *buf, size_t count)
+{
+#ifdef CONFIG_X86
+	u64 cpu, lapicid;
+
+	if (kstrtoull(buf, 0, &cpu) < 0)
+		return -EINVAL;
+
+	if (cpu_possible(cpu)) {
+		lapicid = cpu_data(cpu).apicid;
+		pr_info("acrn: try to offline cpu %lld with lapicid %lld\n",
+				cpu, lapicid);
+		if (hcall_sos_offline_cpu(lapicid) < 0) {
+			pr_err("acrn: failed to offline cpu from Hypervisor!\n");
+			return -EINVAL;
+		}
+	}
+#endif
+	return count;
+}
+
+static DEVICE_ATTR(offline_cpu, 00200, NULL, offline_cpu_store);
+
+static struct attribute *acrn_attrs[] = {
+	&dev_attr_offline_cpu.attr,
+	NULL
+};
+
+static struct attribute_group acrn_attr_group = {
+	.attrs = acrn_attrs,
+};
+
 static int __init acrn_init(void)
 {
 	unsigned long flag;
@@ -647,6 +682,15 @@ static int __init acrn_init(void)
 		return PTR_ERR(acrn_device);
 	}
 
+	if (sysfs_create_group(&acrn_device->kobj, &acrn_attr_group)) {
+		pr_warn("acrn: sysfs create failed\n");
+		device_destroy(acrn_class, MKDEV(major, 0));
+		class_unregister(acrn_class);
+		class_destroy(acrn_class);
+		unregister_chrdev(major, DEVICE_NAME);
+		return -EINVAL;
+	}
+
 	tasklet_init(&acrn_io_req_tasklet, io_req_tasklet, 0);
 	local_irq_save(flag);
 	acrn_setup_intr_irq(acrn_intr_handler);
@@ -664,6 +708,7 @@ static void __exit acrn_exit(void)
 
 	tasklet_kill(&acrn_io_req_tasklet);
 	acrn_remove_intr_irq();
+	sysfs_remove_group(&acrn_device->kobj, &acrn_attr_group);
 	device_destroy(acrn_class, MKDEV(major, 0));
 	class_unregister(acrn_class);
 	class_destroy(acrn_class);
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

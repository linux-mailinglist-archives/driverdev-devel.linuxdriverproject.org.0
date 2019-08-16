Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3FA18F8EF
	for <lists+driverdev-devel@lfdr.de>; Fri, 16 Aug 2019 04:33:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1C7088846E;
	Fri, 16 Aug 2019 02:33:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iMrWqKIkBCem; Fri, 16 Aug 2019 02:33:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1F05288499;
	Fri, 16 Aug 2019 02:33:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3642C1BF2BD
 for <devel@linuxdriverproject.org>; Fri, 16 Aug 2019 02:33:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3378E864C4
 for <devel@linuxdriverproject.org>; Fri, 16 Aug 2019 02:33:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AEwVHYg9Kjkj for <devel@linuxdriverproject.org>;
 Fri, 16 Aug 2019 02:33:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 98DA18643D
 for <devel@driverdev.osuosl.org>; Fri, 16 Aug 2019 02:33:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Aug 2019 19:33:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,391,1559545200"; d="scan'208";a="194894541"
Received: from genxtest-ykzhao.sh.intel.com ([10.239.143.71])
 by fmsmga001.fm.intel.com with ESMTP; 15 Aug 2019 19:33:19 -0700
From: Zhao Yakui <yakui.zhao@intel.com>
To: x86@kernel.org, linux-kernel@vger.kernel.org, devel@driverdev.osuosl.org
Subject: [RFC PATCH 13/15] drivers/acrn: add service to obtain Power data
 transition
Date: Fri, 16 Aug 2019 10:25:54 +0800
Message-Id: <1565922356-4488-14-git-send-email-yakui.zhao@intel.com>
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
Cc: Zhao Yakui <yakui.zhao@intel.com>, Victor Sun <victor.sun@intel.com>,
 Jason Chen CJ <jason.cj.chen@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The px/cx data is critical to support the power transition. DM will get
these data to build DSDT for UOS. With this DSDT, UOS would have the
capability on power control if acpi-cpufreq/idle driver is enabled in
kernel.
Add the PM ioctl that is used to obtain the info of power state
so that the DM can construct the DSDT with Power frequence/C-state idle
for guest system.

Co-developed-by: Jason Chen CJ <jason.cj.chen@intel.com>
Signed-off-by: Jason Chen CJ <jason.cj.chen@intel.com>
Co-developed-by: Victor Sun <victor.sun@intel.com>
Signed-off-by: Victor Sun <victor.sun@intel.com>
Signed-off-by: Zhao Yakui <yakui.zhao@intel.com>
---
 drivers/staging/acrn/acrn_dev.c           | 75 +++++++++++++++++++++++++++++++
 include/uapi/linux/acrn/acrn_ioctl_defs.h | 36 +++++++++++++++
 2 files changed, 111 insertions(+)

diff --git a/drivers/staging/acrn/acrn_dev.c b/drivers/staging/acrn/acrn_dev.c
index 93f45e3..ef0ec50 100644
--- a/drivers/staging/acrn/acrn_dev.c
+++ b/drivers/staging/acrn/acrn_dev.c
@@ -432,6 +432,81 @@ long acrn_dev_ioctl(struct file *filep,
 		break;
 	}
 
+	case IC_PM_GET_CPU_STATE: {
+		u64 cmd;
+
+		if (copy_from_user(&cmd, (void *)ioctl_param, sizeof(cmd)))
+			return -EFAULT;
+
+		switch (cmd & PMCMD_TYPE_MASK) {
+		case PMCMD_GET_PX_CNT:
+		case PMCMD_GET_CX_CNT: {
+			u64 *pm_info;
+
+			pm_info = kmalloc(sizeof(u64), GFP_KERNEL);
+			if (!pm_info)
+				return -ENOMEM;
+
+			ret = hcall_get_cpu_state(cmd, virt_to_phys(pm_info));
+			if (ret < 0) {
+				kfree(pm_info);
+				return -EFAULT;
+			}
+
+			if (copy_to_user((void *)ioctl_param,
+					 pm_info, sizeof(u64)))
+				ret = -EFAULT;
+
+			kfree(pm_info);
+			break;
+		}
+		case PMCMD_GET_PX_DATA: {
+			struct cpu_px_data *px_data;
+
+			px_data = kmalloc(sizeof(*px_data), GFP_KERNEL);
+			if (!px_data)
+				return -ENOMEM;
+
+			ret = hcall_get_cpu_state(cmd, virt_to_phys(px_data));
+			if (ret < 0) {
+				kfree(px_data);
+				return -EFAULT;
+			}
+
+			if (copy_to_user((void *)ioctl_param,
+					 px_data, sizeof(*px_data)))
+				ret = -EFAULT;
+
+			kfree(px_data);
+			break;
+		}
+		case PMCMD_GET_CX_DATA: {
+			struct cpu_cx_data *cx_data;
+
+			cx_data = kmalloc(sizeof(*cx_data), GFP_KERNEL);
+			if (!cx_data)
+				return -ENOMEM;
+
+			ret = hcall_get_cpu_state(cmd, virt_to_phys(cx_data));
+			if (ret < 0) {
+				kfree(cx_data);
+				return -EFAULT;
+			}
+
+			if (copy_to_user((void *)ioctl_param,
+					 cx_data, sizeof(*cx_data)))
+				ret = -EFAULT;
+			kfree(cx_data);
+			break;
+		}
+		default:
+			ret = -EFAULT;
+			break;
+		}
+
+		break;
+	}
+
 	default:
 		pr_warn("Unknown IOCTL 0x%x\n", ioctl_num);
 		ret = -EFAULT;
diff --git a/include/uapi/linux/acrn/acrn_ioctl_defs.h b/include/uapi/linux/acrn/acrn_ioctl_defs.h
index c3c4f98..c762bd2 100644
--- a/include/uapi/linux/acrn/acrn_ioctl_defs.h
+++ b/include/uapi/linux/acrn/acrn_ioctl_defs.h
@@ -234,6 +234,39 @@ struct ioreq_notify {
 	uint32_t vcpu;
 };
 
+struct acrn_generic_address {
+	uint8_t		space_id;
+	uint8_t		bit_width;
+	uint8_t		bit_offset;
+	uint8_t		access_size;
+	uint64_t	address;
+};
+
+struct cpu_cx_data {
+	struct acrn_generic_address cx_reg;
+	uint8_t		type;
+	uint32_t	latency;
+	uint64_t	power;
+};
+
+struct cpu_px_data {
+	uint64_t core_frequency;	/* megahertz */
+	uint64_t power;			/* milliWatts */
+	uint64_t transition_latency;	/* microseconds */
+	uint64_t bus_master_latency;	/* microseconds */
+	uint64_t control;		/* control value */
+	uint64_t status;		/* success indicator */
+};
+
+#define PMCMD_TYPE_MASK		0x000000ff
+
+enum pm_cmd_type {
+	PMCMD_GET_PX_CNT,
+	PMCMD_GET_PX_DATA,
+	PMCMD_GET_CX_CNT,
+	PMCMD_GET_CX_DATA,
+};
+
 /*
  * Common IOCTL ID definition for DM
  */
@@ -281,4 +314,7 @@ struct ioreq_notify {
 #define IC_SET_PTDEV_INTR_INFO         _IC_ID(IC_ID, IC_ID_PCI_BASE + 0x03)
 #define IC_RESET_PTDEV_INTR_INFO       _IC_ID(IC_ID, IC_ID_PCI_BASE + 0x04)
 
+/* Power management */
+#define IC_ID_PM_BASE                   0x60UL
+#define IC_PM_GET_CPU_STATE            _IC_ID(IC_ID, IC_ID_PM_BASE + 0x00)
 #endif /* __ACRN_IOCTL_DEFS_H__ */
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

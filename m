Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CA8421C1F12
	for <lists+driverdev-devel@lfdr.de>; Fri,  1 May 2020 22:56:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 57F75870AA;
	Fri,  1 May 2020 20:56:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BS7mn9YYa4gX; Fri,  1 May 2020 20:56:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C52F586F8D;
	Fri,  1 May 2020 20:56:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0C6781BF322
 for <devel@linuxdriverproject.org>; Fri,  1 May 2020 20:56:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0946888530
 for <devel@linuxdriverproject.org>; Fri,  1 May 2020 20:56:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7DuG2vm6RKqw for <devel@linuxdriverproject.org>;
 Fri,  1 May 2020 20:56:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 682D688528
 for <devel@driverdev.osuosl.org>; Fri,  1 May 2020 20:56:48 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F1368208DB;
 Fri,  1 May 2020 20:56:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588366608;
 bh=rHa/OUq4PCsz9/I6xh/fl/AbvwyJsSpGvaGWFA1Ua1U=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=XJ4MPi+Xk1wLagRs5xrnEzQ97LT2Ssh2H8lUmfB1Z2Rfz25GybxBfX7QMt76w8ryp
 6ZF/uPDIRvnWYxF1jqFOyZS4kvkUwcwn7YgO/761pu8KJAXjpgnjaTK06Qimwl2WLb
 b0YixU1Lpm8xP7oU+iPrUTcpqisXpTNQrE0DXGRU=
Received: from mchehab by mail.kernel.org with local (Exim 4.92.3)
 (envelope-from <mchehab@kernel.org>)
 id 1jUciD-00FVhI-Rm; Fri, 01 May 2020 22:56:45 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Subject: [PATCH] media: atomisp: use add_qos_request instead of update
Date: Fri,  1 May 2020 22:56:33 +0200
Message-Id: <0df754194a1939de813f37897eaa825a120f7aca.1588366521.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20200501192844.397efcaa@ASUS>
References: <20200501192844.397efcaa@ASUS>
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Patrik Gfeller <patrik.gfeller@gmail.com>, Alan Cox <alan@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

It doesn't make senst to update a request that was not
created. So, instead of using cpu_latency_qos_update_request(),
let's use, instead cpu_latency_qos_add_request() at device
probing code.

This should fix this issue:

[    9.691775] cpu_latency_qos_update_request called for unknown object
[    9.695279] WARNING: CPU: 3 PID: 523 at kernel/power/qos.c:296 cpu_latency_qos_update_request+0x3a/0xb0
[    9.698826] Modules linked in: snd_soc_acpi_intel_match snd_rawmidi snd_soc_acpi snd_soc_rl6231 snd_soc_core ath mac80211 snd_compress snd_hdmi_lpe_audio ac97_bus hid_sensor_accel_3d snd_pcm_dmaengine hid_sensor_gyro_3d hid_sensor_trigger industrialio_triggered_buffer kfifo_buf hid_sensor_iio_common processor_thermal_device industrialio cfg80211 snd_pcm snd_seq intel_rapl_common atomisp(C+) libarc4 intel_soc_dts_iosf cros_ec_ishtp intel_xhci_usb_role_switch mei_txe cros_ec videobuf_vmalloc mei roles atomisp_ov2680(C) videobuf_core snd_seq_device snd_timer spi_pxa2xx_platform videodev snd mc dw_dmac intel_hid dw_dmac_core 8250_dw soundcore int3406_thermal int3400_thermal intel_int0002_vgpio acpi_pad acpi_thermal_rel soc_button_array int3403_thermal int340x_thermal_zone mac_hid sch_fq_codel parport_pc ppdev lp parport ip_tables x_tables autofs4 hid_sensor_custom hid_sensor_hub intel_ishtp_loader intel_ishtp_hid crct10dif_pclmul crc32_pclmul ghash_clmulni_intel i915 mmc_block
  i2c_algo_bit
[    9.698885]  aesni_intel crypto_simd drm_kms_helper cryptd syscopyarea sysfillrect glue_helper sysimgblt fb_sys_fops cec intel_ish_ipc drm lpc_ich intel_ishtp hid_asus intel_soc_pmic_chtdc_ti asus_wmi i2c_hid sparse_keymap sdhci_acpi wmi video sdhci hid_generic usbhid hid
[    9.736699] CPU: 3 PID: 523 Comm: systemd-udevd Tainted: G         C        5.7.0-rc1+ #2
[    9.741309] Hardware name: ASUSTeK COMPUTER INC. T101HA/T101HA, BIOS T101HA.305 01/24/2018
[    9.745962] RIP: 0010:cpu_latency_qos_update_request+0x3a/0xb0
[    9.750615] Code: 89 e5 41 55 41 54 41 89 f4 53 48 89 fb 48 81 7f 28 e0 7f c6 9e 74 1c 48 c7 c6 60 f3 65 9e 48 c7 c7 e8 a9 99 9e e8 b2 a6 f9 ff <0f> 0b 5b 41 5c 41 5d 5d c3 0f 1f 44 00 00 44 3b 23 74 ef 44 89 e2
[    9.760065] RSP: 0018:ffffa865404f39c0 EFLAGS: 00010282
[    9.764734] RAX: 0000000000000000 RBX: ffff9d2aefc84350 RCX: 0000000000000000
[    9.769435] RDX: ffff9d2afbfa97c0 RSI: ffff9d2afbf99808 RDI: ffff9d2afbf99808
[    9.774125] RBP: ffffa865404f39d8 R08: 0000000000000304 R09: 0000000000aaaaaa
[    9.778804] R10: 0000000000000000 R11: 0000000000000001 R12: 00000000ffffffff
[    9.783491] R13: ffff9d2afb4640b0 R14: ffffffffc07ecf20 R15: 0000000091000000
[    9.788187] FS:  00007efe67ff8880(0000) GS:ffff9d2afbf80000(0000) knlGS:0000000000000000
[    9.792864] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[    9.797482] CR2: 00007ffc6424bdc8 CR3: 0000000178998000 CR4: 00000000001006e0
[    9.802126] Call Trace:
[    9.806775]  atomisp_pci_probe.cold.19+0x15f/0x116f [atomisp]
[    9.811441]  local_pci_probe+0x47/0x80
[    9.816085]  pci_device_probe+0xff/0x1b0
[    9.820706]  really_probe+0x1c8/0x3e0
[    9.825247]  driver_probe_device+0xd9/0x120
[    9.829769]  device_driver_attach+0x58/0x60
[    9.834294]  __driver_attach+0x8f/0x150
[    9.838782]  ? device_driver_attach+0x60/0x60
[    9.843205]  ? device_driver_attach+0x60/0x60
[    9.847634]  bus_for_each_dev+0x79/0xc0
[    9.852033]  ? kmem_cache_alloc_trace+0x167/0x230
[    9.856462]  driver_attach+0x1e/0x20

Reported-by: Patrik Gfeller <patrik.gfeller@gmail.com>
Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/media/atomisp/pci/atomisp_v4l2.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp_v4l2.c b/drivers/staging/media/atomisp/pci/atomisp_v4l2.c
index 297f55a01b1b..f1bae9712720 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_v4l2.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_v4l2.c
@@ -1751,7 +1751,7 @@ static int atomisp_pci_probe(struct pci_dev *dev,
 
 	atomisp_msi_irq_init(isp, dev);
 
-	cpu_latency_qos_update_request(&isp->pm_qos, PM_QOS_DEFAULT_VALUE);
+	cpu_latency_qos_add_request(&isp->pm_qos, PM_QOS_DEFAULT_VALUE);
 
 	/*
 	 * for MRFLD, Software/firmware needs to write a 1 to bit 0 of
-- 
2.25.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

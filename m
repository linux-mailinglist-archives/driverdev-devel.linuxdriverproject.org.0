Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 96A9C2101D
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 May 2019 23:38:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4D7E1847F9;
	Thu, 16 May 2019 21:38:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CVtuifWPjf5V; Thu, 16 May 2019 21:38:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B084E844A8;
	Thu, 16 May 2019 21:38:32 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C05A61BF29A
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 16 May 2019 21:38:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id BCD098733E
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 16 May 2019 21:38:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yvU0onO4I0HD
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 16 May 2019 21:38:16 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from kadath.azazel.net (kadath.azazel.net [81.187.231.250])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2873C8731D
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 16 May 2019 21:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=azazel.net; 
 s=20190108;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Rdckc+SxpQdUEe8j+LDDcua8WV0nI18fiqpZ71SoDCY=; b=mjuopplYfWTIeGkwqcZXtf/kf0
 0eEcGYZHVSemxZzMeP9NQ1pFGLZPpcZRgBxafmY2VBuIOsAEIRN01vKjW0vGi2XxertHZnfFJF5LQ
 2FcpoH3QldyUFL4RBRm/wh3N9D+r1O4IolMcjh4TXG1ml5uY9ZWmtUW8lEvN+kkym2dxl6z/SQPY7
 8db6ni0QFUdXUdMXZu6Ee4pjET8rolpGnL+f4dFXPc8K07KGQe9o7H8csrhc5AmOTxBSbmvgrfn3i
 B42xDmvm/oqm8jK4HTdCXmgld/hSv9PTc5ih60P7E3CBPYcq7vIj5jWEBUK+XEelsDpkLltcY/rku
 KBwYb6Tw==;
Received: from ulthar.dreamlands ([192.168.96.2])
 by kadath.azazel.net with esmtp (Exim 4.89)
 (envelope-from <jeremy@azazel.net>)
 id 1hRO4s-0000d7-Cs; Thu, 16 May 2019 22:38:14 +0100
From: Jeremy Sowden <jeremy@azazel.net>
To: Linux Driver Project Developer List
 <driverdev-devel@linuxdriverproject.org>
Subject: [PATCH v2 1/9] staging: kpc2000: removed trailing white-space.
Date: Thu, 16 May 2019 22:38:06 +0100
Message-Id: <20190516213814.22232-2-jeremy@azazel.net>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190516213814.22232-1-jeremy@azazel.net>
References: <20190516200411.17715-1-jeremy@azazel.net>
 <20190516213814.22232-1-jeremy@azazel.net>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 192.168.96.2
X-SA-Exim-Mail-From: jeremy@azazel.net
X-SA-Exim-Scanned: No (on kadath.azazel.net); SAEximRunCond expanded to false
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
Cc: Greg KH <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Removed trailing white-space from four files.

Signed-off-by: Jeremy Sowden <jeremy@azazel.net>
---
 drivers/staging/kpc2000/kpc2000/cell_probe.c | 62 ++++++-------
 drivers/staging/kpc2000/kpc2000/core.c       | 98 ++++++++++----------
 drivers/staging/kpc2000/kpc2000/fileops.c    |  2 +-
 drivers/staging/kpc2000/kpc2000/pcie.h       | 10 +-
 4 files changed, 86 insertions(+), 86 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc2000/cell_probe.c b/drivers/staging/kpc2000/kpc2000/cell_probe.c
index bce2bf9eee04..6a2ebdf20113 100644
--- a/drivers/staging/kpc2000/kpc2000/cell_probe.c
+++ b/drivers/staging/kpc2000/kpc2000/cell_probe.c
@@ -106,24 +106,24 @@ static int probe_core_basic(unsigned int core_num, struct kp2000_device *pcard,
     };
 
     dev_dbg(&pcard->pdev->dev, "Found Basic core: type = %02d  dma = %02x / %02x  offset = 0x%x  length = 0x%x (%d regs)\n", cte.type, KPC_OLD_S2C_DMA_CH_NUM(cte), KPC_OLD_C2S_DMA_CH_NUM(cte), cte.offset, cte.length, cte.length / 8);
-    
-    
+
+
     cell.platform_data = &core_pdata;
     cell.pdata_size = sizeof(struct kpc_core_device_platdata);
     cell.num_resources = 2;
-    
+
     memset(&resources, 0, sizeof(resources));
 
     resources[0].start = cte.offset;
     resources[0].end   = cte.offset + (cte.length - 1);
     resources[0].flags = IORESOURCE_MEM;
-    
+
     resources[1].start = pcard->pdev->irq;
     resources[1].end   = pcard->pdev->irq;
     resources[1].flags = IORESOURCE_IRQ;
-    
+
     cell.resources = resources;
-    
+
     return mfd_add_devices(
         PCARD_TO_DEV(pcard),    // parent
         pcard->card_num * 100,  // id
@@ -148,7 +148,7 @@ struct kpc_uio_device {
 static ssize_t  show_attr(struct device *dev, struct device_attribute *attr, char *buf)
 {
     struct kpc_uio_device *kudev = dev_get_drvdata(dev);
-    
+
     #define ATTR_NAME_CMP(v)  (strcmp(v, attr->attr.name) == 0)
     if ATTR_NAME_CMP("offset"){
         return scnprintf(buf, PAGE_SIZE, "%u\n", kudev->cte.offset);
@@ -228,7 +228,7 @@ irqreturn_t  kuio_handler(int irq, struct uio_info *uioinfo)
     struct kpc_uio_device *kudev = uioinfo->priv;
     if (irq != kudev->pcard->pdev->irq)
         return IRQ_NONE;
-    
+
     if (kp2000_check_uio_irq(kudev->pcard, kudev->cte.irq_base_num)){
         writeq((1 << kudev->cte.irq_base_num), kudev->pcard->sysinfo_regs_base + REG_INTERRUPT_ACTIVE); // Clear the active flag
         return IRQ_HANDLED;
@@ -242,7 +242,7 @@ int kuio_irqcontrol(struct uio_info *uioinfo, s32 irq_on)
     struct kpc_uio_device *kudev = uioinfo->priv;
     struct kp2000_device *pcard = kudev->pcard;
     u64 mask;
-    
+
     lock_card(pcard);
     mask = readq(pcard->sysinfo_regs_base + REG_INTERRUPT_MASK);
     if (irq_on){
@@ -252,7 +252,7 @@ int kuio_irqcontrol(struct uio_info *uioinfo, s32 irq_on)
     }
     writeq(mask, pcard->sysinfo_regs_base + REG_INTERRUPT_MASK);
     unlock_card(pcard);
-    
+
     return 0;
 }
 
@@ -263,18 +263,18 @@ static int probe_core_uio(unsigned int core_num, struct kp2000_device *pcard,
     int rv;
 
     dev_dbg(&pcard->pdev->dev, "Found UIO core:   type = %02d  dma = %02x / %02x  offset = 0x%x  length = 0x%x (%d regs)\n", cte.type, KPC_OLD_S2C_DMA_CH_NUM(cte), KPC_OLD_C2S_DMA_CH_NUM(cte), cte.offset, cte.length, cte.length / 8);
-    
+
     kudev = kzalloc(sizeof(struct kpc_uio_device), GFP_KERNEL);
     if (!kudev){
         dev_err(&pcard->pdev->dev, "probe_core_uio: failed to kzalloc kpc_uio_device\n");
         return -ENOMEM;
     }
-    
+
     INIT_LIST_HEAD(&kudev->list);
     kudev->pcard = pcard;
     kudev->cte = cte;
     kudev->core_num = core_num;
-    
+
     kudev->uioinfo.priv = kudev;
     kudev->uioinfo.name = name;
     kudev->uioinfo.version = "0.0";
@@ -291,7 +291,7 @@ static int probe_core_uio(unsigned int core_num, struct kp2000_device *pcard,
     kudev->uioinfo.mem[0].addr = pci_resource_start(pcard->pdev, REG_BAR) + cte.offset;
     kudev->uioinfo.mem[0].size = (cte.length + PAGE_SIZE-1) & ~(PAGE_SIZE-1); // Round up to nearest PAGE_SIZE boundary
     kudev->uioinfo.mem[0].memtype = UIO_MEM_PHYS;
-    
+
     kudev->dev = device_create(kpc_uio_class, &pcard->pdev->dev, MKDEV(0,0), kudev, "%s.%d.%d.%d", kudev->uioinfo.name, pcard->card_num, cte.type, kudev->core_num);
     if (IS_ERR(kudev->dev)) {
         dev_err(&pcard->pdev->dev, "probe_core_uio device_create failed!\n");
@@ -299,7 +299,7 @@ static int probe_core_uio(unsigned int core_num, struct kp2000_device *pcard,
         return -ENODEV;
     }
     dev_set_drvdata(kudev->dev, kudev);
-    
+
     rv = uio_register_device(kudev->dev, &kudev->uioinfo);
     if (rv){
         dev_err(&pcard->pdev->dev, "probe_core_uio failed uio_register_device: %d\n", rv);
@@ -307,9 +307,9 @@ static int probe_core_uio(unsigned int core_num, struct kp2000_device *pcard,
         kfree(kudev);
         return rv;
     }
-    
+
     list_add_tail(&kudev->list, &pcard->uio_devices_list);
-    
+
     return 0;
 }
 
@@ -320,24 +320,24 @@ static int  create_dma_engine_core(struct kp2000_device *pcard, size_t engine_re
     struct resource  resources[2];
 
     dev_dbg(&pcard->pdev->dev, "create_dma_core(pcard = [%p], engine_regs_offset = %zx, engine_num = %d)\n", pcard, engine_regs_offset, engine_num);
-    
+
     cell.platform_data = NULL;
     cell.pdata_size = 0;
     cell.name = KP_DRIVER_NAME_DMA_CONTROLLER;
     cell.num_resources = 2;
-    
+
     memset(&resources, 0, sizeof(resources));
 
     resources[0].start = engine_regs_offset;
     resources[0].end   = engine_regs_offset + (KPC_DMA_ENGINE_SIZE - 1);
     resources[0].flags = IORESOURCE_MEM;
-    
+
     resources[1].start = irq_num;
     resources[1].end   = irq_num;
     resources[1].flags = IORESOURCE_IRQ;
-    
+
     cell.resources = resources;
-    
+
     return mfd_add_devices(
         PCARD_TO_DEV(pcard),    // parent
         pcard->card_num * 100,  // id
@@ -354,7 +354,7 @@ static int  kp2000_setup_dma_controller(struct kp2000_device *pcard)
     int err;
     unsigned int i;
     u64 capabilities_reg;
-    
+
     // S2C Engines
     for (i = 0 ; i < 32 ; i++){
         capabilities_reg = readq( pcard->dma_bar_base + KPC_DMA_S2C_BASE_OFFSET + (KPC_DMA_ENGINE_SIZE * i) );
@@ -371,9 +371,9 @@ static int  kp2000_setup_dma_controller(struct kp2000_device *pcard)
             if (err) goto err_out;
         }
     }
-    
+
     return 0;
-    
+
 err_out:
     dev_err(&pcard->pdev->dev, "kp2000_setup_dma_controller: failed to add a DMA Engine: %d\n", err);
     return err;
@@ -389,12 +389,12 @@ int  kp2000_probe_cores(struct kp2000_device *pcard)
     struct core_table_entry cte;
 
     dev_dbg(&pcard->pdev->dev, "kp2000_probe_cores(pcard = %p / %d)\n", pcard, pcard->card_num);
-    
+
     err = kp2000_setup_dma_controller(pcard);
     if (err) return err;
-    
+
     INIT_LIST_HEAD(&pcard->uio_devices_list);
-    
+
     // First, iterate the core table looking for the highest CORE_ID
     for (i = 0 ; i < pcard->core_table_length ; i++){
         read_val = readq(pcard->sysinfo_regs_base + ((pcard->core_table_offset + i) * 8));
@@ -415,7 +415,7 @@ int  kp2000_probe_cores(struct kp2000_device *pcard)
         for (i = 0 ; i < pcard->core_table_length ; i++){
             read_val = readq(pcard->sysinfo_regs_base + ((pcard->core_table_offset + i) * 8));
             parse_core_table_entry(&cte, read_val, pcard->core_table_rev);
-            
+
             if (cte.type != current_type_id)
                 continue;
 
@@ -443,7 +443,7 @@ int  kp2000_probe_cores(struct kp2000_device *pcard)
             core_num++;
         }
     }
-    
+
     // Finally, instantiate a UIO device for the core_table.
     cte.type                = 0; // CORE_ID_BOARD_INFO
     cte.offset              = 0; // board info is always at the beginning
@@ -459,7 +459,7 @@ int  kp2000_probe_cores(struct kp2000_device *pcard)
         dev_err(&pcard->pdev->dev, "kp2000_probe_cores: failed to add board_info core: %d\n", err);
         goto error;
     }
-    
+
     return 0;
 
 error:
diff --git a/drivers/staging/kpc2000/kpc2000/core.c b/drivers/staging/kpc2000/kpc2000/core.c
index 40390cdd3c8d..eb8bac62d33d 100644
--- a/drivers/staging/kpc2000/kpc2000/core.c
+++ b/drivers/staging/kpc2000/kpc2000/core.c
@@ -30,7 +30,7 @@ static ssize_t  show_attr(struct device *dev, struct device_attribute *attr, cha
     if (!pdev)  return -ENXIO;
     pcard = pci_get_drvdata(pdev);
     if (!pcard)  return -ENXIO;
-    
+
     if (strcmp("ssid", attr->attr.name) == 0){         return scnprintf(buf, PAGE_SIZE, "%016llx\n", pcard->ssid);  } else
     if (strcmp("ddna", attr->attr.name) == 0){         return scnprintf(buf, PAGE_SIZE, "%016llx\n", pcard->ddna);  } else
     if (strcmp("card_id", attr->attr.name) == 0){      return scnprintf(buf, PAGE_SIZE, "%08x\n", pcard->card_id);  } else
@@ -67,11 +67,11 @@ static ssize_t cpld_reconfigure(struct device *dev, struct device_attribute *att
     if (!pdev)  return -ENXIO;
     pcard = pci_get_drvdata(pdev);
     if (!pcard)  return -ENXIO;
-    
+
     rv = kstrtol(buf, 0, &wr_val);
     if (rv < 0)  return rv;
     if (wr_val > 7)  return -EINVAL;
-    
+
     wr_val = wr_val << 8;
     wr_val |= 0x1; // Set the "Configure Go" bit
     writeq(wr_val, pcard->sysinfo_regs_base + REG_CPLD_CONFIG);
@@ -111,12 +111,12 @@ static void wait_and_read_ssid(struct kp2000_device *pcard)
 {
     u64 read_val = readq(pcard->sysinfo_regs_base + REG_FPGA_SSID);
     unsigned long timeout;
-    
+
     if (read_val & 0x8000000000000000){
         pcard->ssid = read_val;
         return;
     }
-    
+
     timeout = jiffies + (HZ * 2);
     do {
         read_val = readq(pcard->sysinfo_regs_base + REG_FPGA_SSID);
@@ -127,9 +127,9 @@ static void wait_and_read_ssid(struct kp2000_device *pcard)
         cpu_relax();
         //schedule();
     } while (time_before(jiffies, timeout));
-    
+
     dev_notice(&pcard->pdev->dev, "SSID didn't show up!\n");
-    
+
     #if 0
     // Timed out waiting for the SSID to show up, just use the DDNA instead?
     read_val = readq(pcard->sysinfo_regs_base + REG_FPGA_DDNA);
@@ -143,34 +143,34 @@ static void wait_and_read_ssid(struct kp2000_device *pcard)
 static int  read_system_regs(struct kp2000_device *pcard)
 {
     u64 read_val;
-    
+
     read_val = readq(pcard->sysinfo_regs_base + REG_MAGIC_NUMBER);
     if (read_val != KP2000_MAGIC_VALUE){
         dev_err(&pcard->pdev->dev, "Invalid magic!  Got: 0x%016llx  Want: 0x%016lx\n", read_val, KP2000_MAGIC_VALUE);
         return -EILSEQ;
     }
-    
+
     read_val = readq(pcard->sysinfo_regs_base + REG_CARD_ID_AND_BUILD);
     pcard->card_id = (read_val & 0xFFFFFFFF00000000) >> 32;
     pcard->build_version = (read_val & 0x00000000FFFFFFFF) >> 0;
-    
+
     read_val = readq(pcard->sysinfo_regs_base + REG_DATE_AND_TIME_STAMPS);
     pcard->build_datestamp = (read_val & 0xFFFFFFFF00000000) >> 32;
     pcard->build_timestamp = (read_val & 0x00000000FFFFFFFF) >> 0;
-    
+
     read_val = readq(pcard->sysinfo_regs_base + REG_CORE_TABLE_OFFSET);
     pcard->core_table_length = (read_val & 0xFFFFFFFF00000000) >> 32;
     pcard->core_table_offset = (read_val & 0x00000000FFFFFFFF) >> 0;
-    
+
     wait_and_read_ssid(pcard);
-    
+
     read_val = readq(pcard->sysinfo_regs_base + REG_FPGA_HW_ID);
     pcard->core_table_rev    = (read_val & 0x0000000000000F00) >> 8;
     pcard->hardware_revision = (read_val & 0x000000000000001F);
-    
+
     read_val = readq(pcard->sysinfo_regs_base + REG_FPGA_DDNA);
     pcard->ddna = read_val;
-    
+
     dev_info(&pcard->pdev->dev, "system_regs: %08x %08x %08x %08x  %02x  %d %d  %016llx  %016llx\n",
         pcard->card_id,
         pcard->build_version,
@@ -182,12 +182,12 @@ static int  read_system_regs(struct kp2000_device *pcard)
         pcard->ssid,
         pcard->ddna
     );
-    
+
     if (pcard->core_table_rev > 1){
         dev_err(&pcard->pdev->dev, "core table entry revision is higher than we can deal with, cannot continue with this card!\n");
         return 1;
     }
-    
+
     return 0;
 }
 
@@ -209,9 +209,9 @@ int  kp2000_pcie_probe(struct pci_dev *pdev, const struct pci_device_id *id)
     unsigned long dma_bar_phys_addr;
     unsigned long dma_bar_phys_len;
     u16 regval;
- 
+
     dev_dbg(&pdev->dev, "kp2000_pcie_probe(pdev = [%p], id = [%p])\n", pdev, id);
-    
+
     //{ Step 1: Allocate a struct for the pcard
     pcard = kzalloc(sizeof(struct kp2000_device), GFP_KERNEL);
     if (NULL == pcard){
@@ -220,19 +220,19 @@ int  kp2000_pcie_probe(struct pci_dev *pdev, const struct pci_device_id *id)
     }
     dev_dbg(&pdev->dev, "probe: allocated struct kp2000_device @ %p\n", pcard);
     //}
-    
+
     //{ Step 2: Initialize trivial pcard elements
     pcard->card_num = card_count;
     card_count++;
     scnprintf(pcard->name, 16, "kpcard%d", pcard->card_num);
-    
+
     mutex_init(&pcard->sem);
     lock_card(pcard);
-    
+
     pcard->pdev = pdev;
     pci_set_drvdata(pdev, pcard);
     //}
-    
+
     //{ Step 3: Enable PCI device
     err = pci_enable_device(pcard->pdev);
     if (err){
@@ -240,11 +240,11 @@ int  kp2000_pcie_probe(struct pci_dev *pdev, const struct pci_device_id *id)
         goto out3;
     }
     //}
-    
+
     //{ Step 4: Setup the Register BAR
     reg_bar_phys_addr = pci_resource_start(pcard->pdev, REG_BAR);
     reg_bar_phys_len = pci_resource_len(pcard->pdev, REG_BAR);
-    
+
     pcard->regs_bar_base = ioremap_nocache(reg_bar_phys_addr, PAGE_SIZE);
     if (NULL == pcard->regs_bar_base){
         dev_err(&pcard->pdev->dev, "probe: REG_BAR could not remap memory to virtual space\n");
@@ -252,7 +252,7 @@ int  kp2000_pcie_probe(struct pci_dev *pdev, const struct pci_device_id *id)
         goto out4;
     }
     dev_dbg(&pcard->pdev->dev, "probe: REG_BAR virt hardware address start [%p]\n", pcard->regs_bar_base);
-    
+
     err = pci_request_region(pcard->pdev, REG_BAR, KP_DRIVER_NAME_KP2000);
     if (err){
         iounmap(pcard->regs_bar_base);
@@ -260,16 +260,16 @@ int  kp2000_pcie_probe(struct pci_dev *pdev, const struct pci_device_id *id)
         err = -ENODEV;
         goto out4;
     }
-    
+
     pcard->regs_base_resource.start = reg_bar_phys_addr;
     pcard->regs_base_resource.end   = reg_bar_phys_addr + reg_bar_phys_len - 1;
     pcard->regs_base_resource.flags = IORESOURCE_MEM;
     //}
-    
+
     //{ Step 5: Setup the DMA BAR
     dma_bar_phys_addr = pci_resource_start(pcard->pdev, DMA_BAR);
     dma_bar_phys_len = pci_resource_len(pcard->pdev, DMA_BAR);
-    
+
     pcard->dma_bar_base = ioremap_nocache(dma_bar_phys_addr, dma_bar_phys_len);
     if (NULL == pcard->dma_bar_base){
         dev_err(&pcard->pdev->dev, "probe: DMA_BAR could not remap memory to virtual space\n");
@@ -277,9 +277,9 @@ int  kp2000_pcie_probe(struct pci_dev *pdev, const struct pci_device_id *id)
         goto out5;
     }
     dev_dbg(&pcard->pdev->dev, "probe: DMA_BAR virt hardware address start [%p]\n", pcard->dma_bar_base);
-    
+
     pcard->dma_common_regs = pcard->dma_bar_base + KPC_DMA_COMMON_OFFSET;
-    
+
     err = pci_request_region(pcard->pdev, DMA_BAR, "kp2000_pcie");
     if (err){
         iounmap(pcard->dma_bar_base);
@@ -287,22 +287,22 @@ int  kp2000_pcie_probe(struct pci_dev *pdev, const struct pci_device_id *id)
         err = -ENODEV;
         goto out5;
     }
-    
+
     pcard->dma_base_resource.start = dma_bar_phys_addr;
     pcard->dma_base_resource.end   = dma_bar_phys_addr + dma_bar_phys_len - 1;
     pcard->dma_base_resource.flags = IORESOURCE_MEM;
     //}
-    
+
     //{ Step 6: System Regs
     pcard->sysinfo_regs_base = pcard->regs_bar_base;
     err = read_system_regs(pcard);
     if (err)
         goto out6;
-    
+
     // Disable all "user" interrupts because they're not used yet.
     writeq(0xFFFFFFFFFFFFFFFF, pcard->sysinfo_regs_base + REG_INTERRUPT_MASK);
     //}
-    
+
     //{ Step 7: Configure PCI thingies
     // let the card master PCIe
     pci_set_master(pcard->pdev);
@@ -310,19 +310,19 @@ int  kp2000_pcie_probe(struct pci_dev *pdev, const struct pci_device_id *id)
     pci_read_config_word(pcard->pdev, PCI_COMMAND, &regval);
     regval |= (PCI_COMMAND_IO | PCI_COMMAND_MEMORY);
     pci_write_config_word(pcard->pdev, PCI_COMMAND, regval);
-    
+
     // Clear relaxed ordering bit
     pcie_capability_clear_and_set_word(pcard->pdev, PCI_EXP_DEVCTL, PCI_EXP_DEVCTL_RELAX_EN, 0);
-    
+
     // Set Max_Payload_Size and Max_Read_Request_Size
     regval = (0x0) << 5; // Max_Payload_Size = 128 B
     pcie_capability_clear_and_set_word(pcard->pdev, PCI_EXP_DEVCTL, PCI_EXP_DEVCTL_PAYLOAD, regval);
     regval = (0x0) << 12; // Max_Read_Request_Size = 128 B
     pcie_capability_clear_and_set_word(pcard->pdev, PCI_EXP_DEVCTL, PCI_EXP_DEVCTL_READRQ, regval);
-    
+
     // Enable error reporting for: Correctable Errors, Non-Fatal Errors, Fatal Errors, Unsupported Requests
     pcie_capability_clear_and_set_word(pcard->pdev, PCI_EXP_DEVCTL, 0, PCI_EXP_DEVCTL_CERE | PCI_EXP_DEVCTL_NFERE | PCI_EXP_DEVCTL_FERE | PCI_EXP_DEVCTL_URRE);
-    
+
     err = dma_set_mask(PCARD_TO_DEV(pcard), DMA_BIT_MASK(64));
     if (err){
         dev_err(&pcard->pdev->dev, "CANNOT use DMA mask %0llx\n", DMA_BIT_MASK(64));
@@ -330,19 +330,19 @@ int  kp2000_pcie_probe(struct pci_dev *pdev, const struct pci_device_id *id)
     }
     dev_dbg(&pcard->pdev->dev, "Using DMA mask %0llx\n", dma_get_mask(PCARD_TO_DEV(pcard)));
     //}
-    
+
     //{ Step 8: Configure IRQs
     err = pci_enable_msi(pcard->pdev);
     if (err < 0)
         goto out8a;
-    
+
     rv = request_irq(pcard->pdev->irq, kp2000_irq_handler, IRQF_SHARED, pcard->name, pcard);
     if (rv){
         dev_err(&pcard->pdev->dev, "kp2000_pcie_probe: failed to request_irq: %d\n", rv);
         goto out8b;
     }
     //}
-    
+
     //{ Step 9: Setup sysfs attributes
     err = sysfs_create_files(&(pdev->dev.kobj), kp_attr_list);
     if (err){
@@ -350,30 +350,30 @@ int  kp2000_pcie_probe(struct pci_dev *pdev, const struct pci_device_id *id)
         goto out9;
     }
     //}
-    
+
     //{ Step 10: Setup misc device
     pcard->miscdev.minor = MISC_DYNAMIC_MINOR;
     pcard->miscdev.fops = &kp2000_fops;
     pcard->miscdev.parent = &pcard->pdev->dev;
     pcard->miscdev.name = pcard->name;
-    
+
     err = misc_register(&pcard->miscdev);
     if (err){
         dev_err(&pcard->pdev->dev, "kp2000_pcie_probe: misc_register failed: %d\n", err);
         goto out10;
     }
     //}
-    
+
     //{ Step 11: Probe cores
     err = kp2000_probe_cores(pcard);
     if (err)
         goto out11;
     //}
-    
+
     //{ Step 12: Enable IRQs in HW
     SetBackEndControl(pcard->dma_common_regs, KPC_DMA_CARD_IRQ_ENABLE | KPC_DMA_CARD_USER_INTERRUPT_MODE);
     //}
-    
+
     dev_dbg(&pcard->pdev->dev, "kp2000_pcie_probe() complete!\n");
     unlock_card(pcard);
     return 0;
@@ -410,9 +410,9 @@ void  kp2000_pcie_remove(struct pci_dev *pdev)
     struct kp2000_device *pcard = pci_get_drvdata(pdev);
 
     dev_dbg(&pdev->dev, "kp2000_pcie_remove(pdev=%p)\n", pdev);
-    
+
     if (pcard == NULL)  return;
-    
+
     lock_card(pcard);
     kp2000_remove_cores(pcard);
     mfd_remove_devices(PCARD_TO_DEV(pcard));
diff --git a/drivers/staging/kpc2000/kpc2000/fileops.c b/drivers/staging/kpc2000/kpc2000/fileops.c
index b3b0b763fa1e..3e3b4800bc2c 100644
--- a/drivers/staging/kpc2000/kpc2000/fileops.c
+++ b/drivers/staging/kpc2000/kpc2000/fileops.c
@@ -88,7 +88,7 @@ long  kp2000_cdev_ioctl(struct file *filp, unsigned int ioctl_num, unsigned long
 	switch (ioctl_num){
 	case KP2000_IOCTL_GET_CPLD_REG:             return readq(pcard->sysinfo_regs_base + REG_CPLD_CONFIG);
 	case KP2000_IOCTL_GET_PCIE_ERROR_REG:       return readq(pcard->sysinfo_regs_base + REG_PCIE_ERROR_COUNT);
-    
+
 	case KP2000_IOCTL_GET_EVERYTHING: {
 		struct kp2000_regs temp;
 		int ret;
diff --git a/drivers/staging/kpc2000/kpc2000/pcie.h b/drivers/staging/kpc2000/kpc2000/pcie.h
index 893aebfd1449..8a032a5a962e 100644
--- a/drivers/staging/kpc2000/kpc2000/pcie.h
+++ b/drivers/staging/kpc2000/kpc2000/pcie.h
@@ -52,17 +52,17 @@ struct kp2000_device {
     struct pci_dev     *pdev;
     struct miscdevice   miscdev;
     char                name[16];
-    
+
     unsigned int        card_num;
     struct mutex        sem;
-    
+
     void __iomem       *sysinfo_regs_base;
     void __iomem       *regs_bar_base;
     struct resource     regs_base_resource;
     void __iomem       *dma_bar_base;
     void __iomem       *dma_common_regs;
     struct resource     dma_base_resource;
-    
+
     // "System Registers"
     u32                 card_id;
     u32                 build_version;
@@ -74,10 +74,10 @@ struct kp2000_device {
     u8                  hardware_revision;
     u64                 ssid;
     u64                 ddna;
-    
+
     // IRQ stuff
     unsigned int        irq;
-    
+
     struct list_head    uio_devices_list;
 };
 
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3830641DDF
	for <lists+driverdev-devel@lfdr.de>; Wed, 12 Jun 2019 09:38:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8F3A886031;
	Wed, 12 Jun 2019 07:38:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 00rPfXbuhmdO; Wed, 12 Jun 2019 07:38:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8B63D86044;
	Wed, 12 Jun 2019 07:37:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 542E91BF33D
 for <devel@linuxdriverproject.org>; Wed, 12 Jun 2019 07:37:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5144F87598
 for <devel@linuxdriverproject.org>; Wed, 12 Jun 2019 07:37:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 92BaALmkCM8S for <devel@linuxdriverproject.org>;
 Wed, 12 Jun 2019 07:37:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C6DD287568
 for <devel@driverdev.osuosl.org>; Wed, 12 Jun 2019 07:37:53 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5C7XiM1083808;
 Wed, 12 Jun 2019 07:37:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2018-07-02;
 bh=4tPkRHhmyfsoxjEDnJhPeAMoClk5xrDMHALZ41AjO28=;
 b=sPVU3UYpzPEKGCmVHw25Zy+0SudydQ2sgIpngUhhmegVQNhoAlQqpYvXox7NtEjUlPUc
 24Zu6WjWpprRX4+UeRRIQ7iGj0EwkqE9r5NwQBeq44OaUFFs9xnadRqPigcIadyCQwjn
 ZpTuhkjYLs6UaCm8gKNu/QtDcbky1q/GqR4Cik48WA+wq8kC1FCe//LlqFUyYn0TrcOT
 SvLvrVTULbFMjzzzgMrmn2NOgNFqghn7b3zluO0YdftKTv9/pNgKuW4HPr9/zDB+tjYG
 ttKhtM/70Yy+ZwOO/xZvzeaMvFXibOU2RXOsnUNuc11vv2ylVN1iL1QCRisVy5uy8EFD ow== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2130.oracle.com with ESMTP id 2t04etspkv-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 12 Jun 2019 07:37:51 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5C7bS6H165275;
 Wed, 12 Jun 2019 07:37:50 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3030.oracle.com with ESMTP id 2t04hysm2c-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 12 Jun 2019 07:37:50 +0000
Received: from abhmp0007.oracle.com (abhmp0007.oracle.com [141.146.116.13])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x5C7bkhs021287;
 Wed, 12 Jun 2019 07:37:48 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 12 Jun 2019 00:37:46 -0700
Date: Wed, 12 Jun 2019 10:37:39 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Simon =?iso-8859-1?Q?Sandstr=F6m?= <simon@nikanor.nu>
Subject: Re: [PATCH 1/2] staging: kpc2000: improve label names in
 kp2000_pcie_probe
Message-ID: <20190612073739.GC1915@kadam>
References: <20190610200535.31820-1-simon@nikanor.nu>
 <20190610200535.31820-2-simon@nikanor.nu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190610200535.31820-2-simon@nikanor.nu>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9285
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=2
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1906120053
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9285
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=2 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1906120052
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
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Thanks!

Reviewed-by: Dan Carpenter <dan.carpenter@oracle.com>

Not related to your patch (IOW ignore if you want to) the error handling
is slightly more complicated than required:

drivers/staging/kpc2000/kpc2000/core.c
   356           * Step 4: Setup the Register BAR
   357           */
   358          reg_bar_phys_addr = pci_resource_start(pcard->pdev, REG_BAR);
   359          reg_bar_phys_len = pci_resource_len(pcard->pdev, REG_BAR);
   360  
   361          pcard->regs_bar_base = ioremap_nocache(reg_bar_phys_addr, PAGE_SIZE);
   362          if (!pcard->regs_bar_base) {
   363                  dev_err(&pcard->pdev->dev,
   364                          "probe: REG_BAR could not remap memory to virtual space\n");
   365                  err = -ENODEV;
   366                  goto err_disable_device;
   367          }
   368          dev_dbg(&pcard->pdev->dev,
   369                  "probe: REG_BAR virt hardware address start [%p]\n",
   370                  pcard->regs_bar_base);
   371  
   372          err = pci_request_region(pcard->pdev, REG_BAR, KP_DRIVER_NAME_KP2000);
   373          if (err) {
   374                  iounmap(pcard->regs_bar_base);
                        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^
We could move this to the bottom of the function.  We would need to
re-order it slightly to free things in the mirror of how they are
allocated.  (Always just free the most recent allocation).

   375                  dev_err(&pcard->pdev->dev,
   376                          "probe: failed to acquire PCI region (%d)\n",
   377                          err);
   378                  err = -ENODEV;
   379                  goto err_disable_device;
   380          }
   381  
   382          pcard->regs_base_resource.start = reg_bar_phys_addr;
   383          pcard->regs_base_resource.end   = reg_bar_phys_addr +
   384                                            reg_bar_phys_len - 1;
   385          pcard->regs_base_resource.flags = IORESOURCE_MEM;
   386  
   387          /*
   388           * Step 5: Setup the DMA BAR
   389           */
   390          dma_bar_phys_addr = pci_resource_start(pcard->pdev, DMA_BAR);
   391          dma_bar_phys_len = pci_resource_len(pcard->pdev, DMA_BAR);
   392  
   393          pcard->dma_bar_base = ioremap_nocache(dma_bar_phys_addr,
   394                                                dma_bar_phys_len);
   395          if (!pcard->dma_bar_base) {
   396                  dev_err(&pcard->pdev->dev,
   397                          "probe: DMA_BAR could not remap memory to virtual space\n");
   398                  err = -ENODEV;
   399                  goto err_unmap_regs;
   400          }
   401          dev_dbg(&pcard->pdev->dev,
   402                  "probe: DMA_BAR virt hardware address start [%p]\n",
   403                  pcard->dma_bar_base);
   404  
   405          pcard->dma_common_regs = pcard->dma_bar_base + KPC_DMA_COMMON_OFFSET;
   406  
   407          err = pci_request_region(pcard->pdev, DMA_BAR, "kp2000_pcie");
   408          if (err) {
   409                  iounmap(pcard->dma_bar_base);
                        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Same.

   410                  dev_err(&pcard->pdev->dev,
   411                          "probe: failed to acquire PCI region (%d)\n", err);
   412                  err = -ENODEV;
   413                  goto err_unmap_regs;
   414          }
   415  
   416          pcard->dma_base_resource.start = dma_bar_phys_addr;

[ snip ]

   509          dev_dbg(&pcard->pdev->dev, "%s() complete!\n", __func__);
   510          mutex_unlock(&pcard->sem);
   511          return 0;
   512  
   513  err_remove_sysfs:
   514          sysfs_remove_files(&pdev->dev.kobj, kp_attr_list);
   515  err_free_irq:
   516          free_irq(pcard->pdev->irq, pcard);
   517  err_disable_msi:
   518          pci_disable_msi(pcard->pdev);
   519  err_unmap_dma:
   520          iounmap(pcard->dma_bar_base);
   521          pci_release_region(pdev, DMA_BAR);
   522          pcard->dma_bar_base = NULL;
   523  err_unmap_regs:
   524          iounmap(pcard->regs_bar_base);
   525          pci_release_region(pdev, REG_BAR);
   526          pcard->regs_bar_base = NULL;

err_release_dma:
		pci_release_region(pdev, DMA_BAR);
err_unmap_dma:
		iounmap(pcard->dma_bar_base);
err_release_reg:
		pci_release_region(pdev, REG_BAR);
err_unmap_reg:
		iounmap(pcard->regs_bar_base);

I moved swapped the pci_release_region() and the iounmap() order.  There
is no need to set "pcard->regs_bar_base = NULL;" so just remove that.

   527  err_disable_device:
   528          pci_disable_device(pcard->pdev);
   529  err_remove_ida:
   530          mutex_unlock(&pcard->sem);
   531          ida_simple_remove(&card_num_ida, pcard->card_num);
   532  err_free_pcard:
   533          kfree(pcard);
   534          return err;
   535  }

regards,
dan carpenter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

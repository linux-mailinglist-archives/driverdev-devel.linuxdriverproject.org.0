Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BA30820D052
	for <lists+driverdev-devel@lfdr.de>; Mon, 29 Jun 2020 19:08:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C2B57204F2;
	Mon, 29 Jun 2020 17:08:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oEMzSyqGCKUd; Mon, 29 Jun 2020 17:08:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 861D922624;
	Mon, 29 Jun 2020 17:08:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3509B1BF34C
 for <devel@linuxdriverproject.org>; Mon, 29 Jun 2020 17:08:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2C2AB86C2B
 for <devel@linuxdriverproject.org>; Mon, 29 Jun 2020 17:08:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1aKu6w7x2x8O for <devel@linuxdriverproject.org>;
 Mon, 29 Jun 2020 17:08:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f68.google.com (mail-io1-f68.google.com
 [209.85.166.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8B37780860
 for <devel@driverdev.osuosl.org>; Mon, 29 Jun 2020 17:08:24 +0000 (UTC)
Received: by mail-io1-f68.google.com with SMTP id o5so17912345iow.8
 for <devel@driverdev.osuosl.org>; Mon, 29 Jun 2020 10:08:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=frtiYAYIRYzf0c7+OgXqsn5Y4WKcJhLf7MblWKEL3MA=;
 b=KcVKFDX0aWv+4QnWokmKVfaYBiydsC8d4y04AFFqnqRTa8TX66glEnwA4LAx7jrcHO
 aHjNlbLp8Fw7EqJrIE3NblKbq0ItY2uaETkpyHeezSbKT8I/F0tmUjNkeyG9jzVrjMSO
 rJWjqHlIj/YxLkgY/M4hqNysJtlYr/cVXngCANAuqogcbUtjbjSQ95FEl+D/kmhCTsKy
 idEiC55+sejV6tPeFdAePpRZr9pPMufXyF9bpVZ7fQdeWzkD7pc267kvzZghk+1wgj3V
 skFuRFwlVk+WlcCA8THFcmZRPyIC4/MQMmMx8c8NqUXdVzxJMJp5oTrFDmDYVqMgosLK
 2hyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=frtiYAYIRYzf0c7+OgXqsn5Y4WKcJhLf7MblWKEL3MA=;
 b=jqRACEzCepuC9sStVgSEzi6KJPwX332EoscHkFjJjPc1isl5RGe+lWDN2f3kkblrri
 A17CbqfdC7ArjYF7Ylnef7JEePGfpDS5G8rSwysRzW4ygHwV5RBSOOC+WHhct9M2cOd1
 arVUmeJYnnTILjAL7GuBkOoKoMWv3GgkhRvWrPZJygY1KWZZoUZ/e00MRVseOTtUNiiO
 FWBkzc3nQHfVO0y/m34aiBya7OlfuBUyrsKmUkmsxP7LD8bfXPQwnThAwqyHwMZ/MQ9v
 kK9WQuqqN5QWLxFUo/EYPPLdNovI5WmTS0cfWwBCkBzRxBYoBFXReS0grxQpRKFjQUO0
 r3mw==
X-Gm-Message-State: AOAM5339l4RLuQ83vkLQDRG66qSqKzr/az5A/2uyizHaocBwC7kj8V8X
 z1j8Tduh5uMBLj+2GECWFTgqEps9qmbduYjF1L8=
X-Google-Smtp-Source: ABdhPJwM8dA8f98ng1O4Ad9g0kEaSLHoAQus5mbh10axsYJMT/LexW2plXFhLFquWtBxTRJo3Sp3xpOjdyhOkK9dUEM=
X-Received: by 2002:a02:a408:: with SMTP id c8mr19198600jal.59.1593450502896; 
 Mon, 29 Jun 2020 10:08:22 -0700 (PDT)
MIME-Version: 1.0
References: <20200629082819.216405-2-vaibhavgupta40@gmail.com>
 <202006300026.hCr1U7Sc%lkp@intel.com>
In-Reply-To: <202006300026.hCr1U7Sc%lkp@intel.com>
From: Vaibhav Gupta <vaibhav.varodek@gmail.com>
Date: Mon, 29 Jun 2020 22:36:45 +0530
Message-ID: <CAPBsFfD8pNFtry605zUs+1uaQi+t8X12iuAiSWbnYqVLDpuBbA@mail.gmail.com>
Subject: Re: [PATCH v1 1/4] qlge/qlge_main.c: use genric power management
To: kernel test robot <lkp@intel.com>
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
Cc: devel@driverdev.osuosl.org, GR-Linux-NIC-Dev@marvell.com,
 kbuild-all@lists.01.org, Manish Chopra <manishc@marvell.com>,
 Vaibhav Gupta <vaibhavgupta40@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, skhan@linuxfoundation.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bjorn Helgaas <helgaas@kernel.org>, netdev@vger.kernel.org, bjorn@helgaas.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, 29 Jun 2020 at 21:39, kernel test robot <lkp@intel.com> wrote:
>
> Hi Vaibhav,
>
> Thank you for the patch! Yet something to improve:
>
> [auto build test ERROR on staging/staging-testing]
> [also build test ERROR on v5.8-rc3 next-20200629]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use  as documented in
> https://git-scm.com/docs/git-format-patch]
>
> url:    https://github.com/0day-ci/linux/commits/Vaibhav-Gupta/drivers-staging-use-generic-power-management/20200629-163141
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git 347fa58ff5558075eec98725029c443c80ffbf4a
> config: x86_64-rhel-7.6 (attached as .config)
> compiler: gcc-9 (Debian 9.3.0-13) 9.3.0
> reproduce (this is a W=1 build):
>         # save the attached .config to linux build tree
>         make W=1 ARCH=x86_64
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
>    drivers/staging/qlge/qlge_main.c: In function 'qlge_resume':
> >> drivers/staging/qlge/qlge_main.c:4793:17: error: 'pdev' undeclared (first use in this function); did you mean 'qdev'?
>     4793 |  pci_set_master(pdev);
>          |                 ^~~~
>          |                 qdev
>    drivers/staging/qlge/qlge_main.c:4793:17: note: each undeclared identifier is reported only once for each function it appears in
>
> vim +4793 drivers/staging/qlge/qlge_main.c
>
> c4e84bde1d595d drivers/net/qlge/qlge_main.c     Ron Mercer    2008-09-18  4786
> 1aed508211e137 drivers/staging/qlge/qlge_main.c Vaibhav Gupta 2020-06-29  4787  static int __maybe_unused qlge_resume(struct device *dev_d)
> c4e84bde1d595d drivers/net/qlge/qlge_main.c     Ron Mercer    2008-09-18  4788  {
> 1aed508211e137 drivers/staging/qlge/qlge_main.c Vaibhav Gupta 2020-06-29  4789          struct net_device *ndev = dev_get_drvdata(dev_d);
> c4e84bde1d595d drivers/net/qlge/qlge_main.c     Ron Mercer    2008-09-18  4790          struct ql_adapter *qdev = netdev_priv(ndev);
> c4e84bde1d595d drivers/net/qlge/qlge_main.c     Ron Mercer    2008-09-18  4791          int err;
> c4e84bde1d595d drivers/net/qlge/qlge_main.c     Ron Mercer    2008-09-18  4792
> c4e84bde1d595d drivers/net/qlge/qlge_main.c     Ron Mercer    2008-09-18 @4793          pci_set_master(pdev);
> c4e84bde1d595d drivers/net/qlge/qlge_main.c     Ron Mercer    2008-09-18  4794
> 1aed508211e137 drivers/staging/qlge/qlge_main.c Vaibhav Gupta 2020-06-29  4795          device_wakeup_disable(dev_d);
> c4e84bde1d595d drivers/net/qlge/qlge_main.c     Ron Mercer    2008-09-18  4796
> c4e84bde1d595d drivers/net/qlge/qlge_main.c     Ron Mercer    2008-09-18  4797          if (netif_running(ndev)) {
> c4e84bde1d595d drivers/net/qlge/qlge_main.c     Ron Mercer    2008-09-18  4798                  err = ql_adapter_up(qdev);
> c4e84bde1d595d drivers/net/qlge/qlge_main.c     Ron Mercer    2008-09-18  4799                  if (err)
> c4e84bde1d595d drivers/net/qlge/qlge_main.c     Ron Mercer    2008-09-18  4800                          return err;
> c4e84bde1d595d drivers/net/qlge/qlge_main.c     Ron Mercer    2008-09-18  4801          }
> c4e84bde1d595d drivers/net/qlge/qlge_main.c     Ron Mercer    2008-09-18  4802
> 72046d84f0d6e3 drivers/net/qlge/qlge_main.c     Breno Leitao  2010-07-01  4803          mod_timer(&qdev->timer, jiffies + (5 * HZ));
> c4e84bde1d595d drivers/net/qlge/qlge_main.c     Ron Mercer    2008-09-18  4804          netif_device_attach(ndev);
> c4e84bde1d595d drivers/net/qlge/qlge_main.c     Ron Mercer    2008-09-18  4805
> c4e84bde1d595d drivers/net/qlge/qlge_main.c     Ron Mercer    2008-09-18  4806          return 0;
> c4e84bde1d595d drivers/net/qlge/qlge_main.c     Ron Mercer    2008-09-18  4807  }
> c4e84bde1d595d drivers/net/qlge/qlge_main.c     Ron Mercer    2008-09-18  4808
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
This is a genuine error. I remember taking care of it when I upgraded
the driver.
Must have been caused by some unnoticed reverts at my side.

I will fix it and send a v2 patch-set. Thanks for reporting.

-- Vaibhav gupta
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

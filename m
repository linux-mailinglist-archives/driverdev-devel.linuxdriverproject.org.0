Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A8CCCDDD3
	for <lists+driverdev-devel@lfdr.de>; Mon,  7 Oct 2019 10:57:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CE2CE20526;
	Mon,  7 Oct 2019 08:57:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J5usXRuUZc9D; Mon,  7 Oct 2019 08:57:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3000B20522;
	Mon,  7 Oct 2019 08:57:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0F7951BF85D
 for <devel@linuxdriverproject.org>; Mon,  7 Oct 2019 08:57:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 07361879DB
 for <devel@linuxdriverproject.org>; Mon,  7 Oct 2019 08:57:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id f0WSzT7+yMuD for <devel@linuxdriverproject.org>;
 Mon,  7 Oct 2019 08:57:51 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id DF30E85D22
 for <devel@driverdev.osuosl.org>; Mon,  7 Oct 2019 08:57:51 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 373A32084B;
 Mon,  7 Oct 2019 08:57:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570438671;
 bh=J1mtOl5QLELJHXxRIhUluhn2Yh62mR7puj0a1v9coR8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=OW1ljMQdWnRJ5uIWyqC0Ra8PgQdkRAO0ohiapNNU0E3IyzDBt3BFieMM6jz1ZzSrK
 OOmA7FENkEy5+hLB6kA7AZiftKxd4CT5TcXNRIxxX/j91XdCyXbpVJGOW29ejesw58
 c2si8YJnnSkC2jew59etBPnx6X0jhy72nTcPrSiE=
Date: Mon, 7 Oct 2019 10:57:47 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Jerome Pouiller <Jerome.Pouiller@silabs.com>
Subject: Re: [staging:staging-testing 41/59]
 drivers/staging/wfx/main.c:47:14-21: ERROR: PTR_ERR applied after
 initialization to constant on line 42
Message-ID: <20191007085747.GA356447@kroah.com>
References: <201910041809.W4MyUT1q%lkp@intel.com>
 <3767201.AobC1b7GVW@pc-42>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3767201.AobC1b7GVW@pc-42>
User-Agent: Mutt/1.12.2 (2019-09-21)
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "kbuild-all@01.org" <kbuild-all@01.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Oct 07, 2019 at 08:36:22AM +0000, Jerome Pouiller wrote:
> On Friday 4 October 2019 12:48:32 CEST kbuild test robot wrote:
> [...]
> > >> drivers/staging/wfx/main.c:47:14-21: ERROR: PTR_ERR applied after initialization to constant on line 42
> > 
> > vim +47 drivers/staging/wfx/main.c
> > 
> >     30
> >     31  struct gpio_desc *wfx_get_gpio(struct device *dev, int override, const char *label)
> >     32  {
> >     33          struct gpio_desc *ret;
> >     34          char label_buf[256];
> >     35
> >     36          if (override >= 0) {
> >     37                  snprintf(label_buf, sizeof(label_buf), "wfx_%s", label);
> >     38                  ret = ERR_PTR(devm_gpio_request_one(dev, override, GPIOF_OUT_INIT_LOW, label_buf));
> >     39                  if (!ret)
> >     40                          ret = gpio_to_desc(override);
> >     41          } else if (override == -1) {
> >   > 42                  ret = NULL;
> >     43          } else {
> >     44                  ret = devm_gpiod_get(dev, label, GPIOD_OUT_LOW);
> >     45          }
> >     46          if (IS_ERR(ret) || !ret) {
> >   > 47                  if (!ret || PTR_ERR(ret) == -ENOENT)
> >     48                          dev_warn(dev, "gpio %s is not defined\n", label);
> >     49                  else
> >     50                          dev_warn(dev, "error while requesting gpio %s\n", label);
> >     51                  ret = NULL;
> >     52          } else {
> >     53                  dev_dbg(dev, "using gpio %d for %s\n", desc_to_gpio(ret), label);
> >     54          }
> >     55          return ret;
> >     56  }
> >     57
> 
> I think that this report is a false positive or I missed something?

No idea, but I really can not understand that code at all, so it does
need to be simplified no matter what :)

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

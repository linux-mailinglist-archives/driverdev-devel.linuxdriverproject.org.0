Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A39214F97D
	for <lists+driverdev-devel@lfdr.de>; Sun, 23 Jun 2019 04:15:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 33AC187697;
	Sun, 23 Jun 2019 02:15:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id leLNCQDa2-P9; Sun, 23 Jun 2019 02:15:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D143387762;
	Sun, 23 Jun 2019 02:15:19 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CA2B11BF2EC
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 23 Jun 2019 02:15:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C734C87697
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 23 Jun 2019 02:15:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qIVFOgCtZk0C
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 23 Jun 2019 02:15:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com
 [209.85.160.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4135C87482
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 23 Jun 2019 02:15:16 +0000 (UTC)
Received: by mail-qt1-f193.google.com with SMTP id j19so10956572qtr.12
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 22 Jun 2019 19:15:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qJYfavxZdtqez6cTPqPN++JZxr5fQnNjjZ0raOnjOSE=;
 b=PohE+4Xf24IgPMb9VhXRzoxCGJDPy61CZQXFPHzmxxHM3pNz8TtkI4g2NAjIUQqaAT
 oZsnN+MPVuXw5O8IMaRAsiXnDYT5ACOmhwN5UCqQ/KCvuL6/ma8M+zPAbwLwnsaJkALS
 KClu4qu2TXuCqkEm9CnLEAJ/GL228huNVRt7ZDoM2fNV7FGDuOyRpb3+ETEvba9XbApr
 FBZ9FG18k2N5bQzo5HuqV/MM5iwPPryDIMjiwgekc6IxmMmhWBofJcelvdLxGmsYSKwQ
 VFFxU95IwwXxPjAiZQWWJNmKPFRsy/J3prvY+AGVwMStJ9dgWSQsviYYXp5nWxnStJqb
 aHcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qJYfavxZdtqez6cTPqPN++JZxr5fQnNjjZ0raOnjOSE=;
 b=VjLh8YXj64vPYcLjWtchhyVH3Pd7TYd0UxhztKKsKkWB7YjSsyKO68SqinzwkmXFTg
 rk+UQpC9jrOEZuGRBdOpYfcGQMZ4gWe8kqgkzicL9im2TAo/BFxBzaQcGQ/aYcY210qJ
 S0JKMcERTxtbSI0NA4qU6asgfOUcuCFcdPZJgQ+yRfXUgNoTPnx9hxc7tG1Xf7uNbQ/n
 Ko3VdzHQY6aGMk/eu9C1ybaY3D8LiNSuC9aTj/O7EO/nCFuMs5YYPmjWr18Z4lzI+cFT
 DhjomFnL0SH7+VdnsEGyejjlCx/cLDLQtKF5aAbxOUYDA0zd6G54BrKLaB6ghsx60EoR
 3Q/A==
X-Gm-Message-State: APjAAAVb7+39ft+EreTrfjlvLAmkVMBS+pkR+DDCR6gmx2kstUX9iBCY
 BM0xUUzW2qKANIwUhiSdJxwOwRBT3smt9j8u8Gk=
X-Google-Smtp-Source: APXvYqyFH58Zcry9O5PqOy4oH92P+OwWJXu6fCrYab1Mm3Fi7cVPLfiaoFcgZWqY/aiI8sskTyhDkKubX8jZ+pTsdbE=
X-Received: by 2002:ac8:2d08:: with SMTP id n8mr102680537qta.383.1561256115262; 
 Sat, 22 Jun 2019 19:15:15 -0700 (PDT)
MIME-Version: 1.0
References: <20190621061517.24089-1-sergio.paracuellos@gmail.com>
 <a512ac38-e30f-5011-0764-3029d320f10c@kernel.org>
In-Reply-To: <a512ac38-e30f-5011-0764-3029d320f10c@kernel.org>
From: Brett Neumeier <bneumeier@gmail.com>
Date: Sat, 22 Jun 2019 21:15:04 -0500
Message-ID: <CAGSetNtcJkjnjO1Ftc01ueMuFMmJEv7HPpmQeSf313Rrbe2O5w@mail.gmail.com>
Subject: Re: [PATCH 0/4] staging: mt7621-pci: Handle minor issues
To: Greg Ungerer <gerg@kernel.org>
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
Cc: Neil Brown <neil@brown.name>, driverdev-devel@linuxdriverproject.org,
 gregkh@linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Jun 21, 2019 at 7:35 AM Greg Ungerer <gerg@kernel.org> wrote:
>
> Hi Sergio,
>
> On 21/6/19 4:15 pm, Sergio Paracuellos wrote:
> > This patch series properly handle minor issues in this driver. These are:
> > * Disable pcie port clock on pci dirver instead of doing it in the phy
> >    driver. The pci driver is the correct place to do this.
> > * Add a missing call to phy_exit function to properly handle the function
> >    'mt7621_pcie_init_port' error path.
> > * Move driver to init in a later stage using 'module_init' instead of using
> >    'arch_initcall'.
> >
> > Patches are only compile-tested. It would be awasome to be tested before applied
> > them (mainly the change to 'module_init' stuff).

I have similar results to Greg -- on GnuBee PC1 and PC2, six boot
attempts each on a kernel built from staging-next, I have four hangs
and eight successful boots. The hanging patterns are similar to
previous results. If the full boot logs would be helpful let me know,
I can provide them.

-- 
Brett Neumeier (bneumeier@gmail.com)
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 107974C6BF
	for <lists+driverdev-devel@lfdr.de>; Thu, 20 Jun 2019 07:21:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1209985F81;
	Thu, 20 Jun 2019 05:21:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kDM5aiRCh3nf; Thu, 20 Jun 2019 05:21:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 89E6384E55;
	Thu, 20 Jun 2019 05:21:08 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E20341BF322
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 20 Jun 2019 05:21:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id DC76284E55
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 20 Jun 2019 05:21:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5UB3J5NEySsx
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 20 Jun 2019 05:21:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com
 [209.85.210.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3F85984DD4
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 20 Jun 2019 05:21:05 +0000 (UTC)
Received: by mail-ot1-f67.google.com with SMTP id z23so1457235ote.13
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 19 Jun 2019 22:21:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=HC67PfcJ5vMkUGuujT8Y4AnRCHs64RfYdEUMagc2Pic=;
 b=tlPUzJfnE8pTxKxvrdteeiwTUfndXm6wMghwtnn5gVo0ir/SXKH+XXNRh4XP6hIm68
 QLNkUGohPYRTP+sO0yuyM62VK83aDcTJX19pPvIIoCvkG1Z8ecKDrVWzM0IRlLxhUZY+
 xYYHoyeFF9aXwMjZNG8CoiCJutGy9SRX4xLtCz+eiFI75NfbH5baSvR2HnLuLrGvEl5Z
 5pjOiet12UFslNv+4OB5prAhRPeaD63XhjWj6gEzsicrybaihL0dxgpanLghOiywBQfG
 itRQ6C35xtFkZ3h6VHiSBEB0rAg0huz8of913YZ3AVmh8haH6WRgtMvDI0xpHO5ohKpy
 Elww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HC67PfcJ5vMkUGuujT8Y4AnRCHs64RfYdEUMagc2Pic=;
 b=ITWtuyuzLjC/j5qtNDqHEwcWtjpqWqsdThhXV6DmQtINLvoNcshSPgt7AUl13+6uKb
 UYlUr50KBw5+wpJDgW7ifdtxgdJCrjt+V7B743AMweiNLUgtsu8Da5r0t52J8Tpu07At
 aWz3R0Rfw3+yP5TwwEffMy+1lX3/Za4aFIhTq6GD0s4AyxbSfraF/prsthmu6MxtrPks
 tBFt5e3cQMPOLkY8AMEQl8pVRkHX0aFUIPSnq9snV4dzCDK7i8Jyox+K0BnLI3m/bb8g
 RV5Wk+nM16QPLio+DClQEyWzCoNPW2KJP1UvrGXynTRRmNtkTCxv4g6pKHrxMc19uNbn
 xiEw==
X-Gm-Message-State: APjAAAXDau716+DUPXFz+hBRPPUiMGeXui+dpTjqHJ37nYlXM0ri0HaN
 4ZZ7w8e+WB+ZnOKCTJj1J4OWFxcn0rcV8MXChm4=
X-Google-Smtp-Source: APXvYqy14cIIXCM/ARaPqyavwXiovc3Gy5lOYREWnDkFRRRXUJwdrdtXXfP/fX2/CLhSvWom2B1HgL2KFximol8Nm7E=
X-Received: by 2002:a9d:12a7:: with SMTP id g36mr26241068otg.310.1561008064471; 
 Wed, 19 Jun 2019 22:21:04 -0700 (PDT)
MIME-Version: 1.0
References: <20190619074458.31112-1-sergio.paracuellos@gmail.com>
 <0bedcd6b-4781-ffd2-b59c-76cd555912a7@kernel.org>
In-Reply-To: <0bedcd6b-4781-ffd2-b59c-76cd555912a7@kernel.org>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Thu, 20 Jun 2019 07:20:52 +0200
Message-ID: <CAMhs-H-Qn2aBkCHCCuJhFEGG=CvUix6UHsRZRzm5QhNd8S9BMA@mail.gmail.com>
Subject: Re: [PATCH 0/4] staging: mt7621-pci: Use gpio perst instead builtin
 behaviour
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
Cc: NeilBrown <neil@brown.name>, Greg KH <gregkh@linuxfoundation.org>,
 driverdev-devel@linuxdriverproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Greg,

On Thu, Jun 20, 2019 at 2:40 AM Greg Ungerer <gerg@kernel.org> wrote:
>
> Hi Sergio,
>
> On 19/6/19 5:44 pm, Sergio Paracuellos wrote:
> > Some boards seems to ignore builtin perst configuration and use gpio
> > instead. This approach seems to be more common. Hence, update the driver
> > to properly use gpio perst via gpio descriptor's API.
> >
> > For more information refer to [1].
> >
> > Even with this set of patches applied, there still seems to have some issues
> > with a non stable pci link through the boot process. This will be resolved
> > in nest patch series when the problem is find.
> >
> > Patches are only compile-tested. It would be good to test them before being
> > applied.
> >
> > [1]: http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/2019-June/134947.html
> >
> > Sergio Paracuellos (4):
> >    staging: mt7621-pci: fix two messages in driver code
> >    staging: mt7621-pci: use gpio perst instead of builtin behaviour
> >    staging: mt7621-dts: add gpio perst to pcie bindings node
> >    staging: mt7621-pci: dt-bindings: add perst-gpio to sample bindings
> >
> >   drivers/staging/mt7621-dts/mt7621.dtsi        |   2 +
> >   .../mt7621-pci/mediatek,mt7621-pci.txt        |   2 +
> >   drivers/staging/mt7621-pci/pci-mt7621.c       | 108 ++++++++++--------
> >   3 files changed, 63 insertions(+), 49 deletions(-)
>
> Thanks for putting this together.
>
> I tried a quick test, applying this onto a linux-5.2.0-rc5 kernel and
> saw this in the boot trace:
>
>    ...
>    rt2880-pinmux pinctrl: pcie is already enabled
>    mt7621-pci 1e140000.pcie: Error applying setting, reverse things back
>    ...
>
> The system went on to boot successfully, with PCI working.
>
> Testing across multiple boots, it sometimes hangs - but we know about that
> and it is what we are still looking into.

Ok, thanks for testing this. Let's apply this patch series first.

GregKH, can we also apply this for linux-stable? kernel 5.1. Should I
sent anything else for that?

>
> Regards
> Greg

Best regards,
    Sergio Paracuellos
>
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

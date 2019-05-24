Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D5BF2909A
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 May 2019 07:54:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8CFF8228D1;
	Fri, 24 May 2019 05:54:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ybGNhB8zb3Oh; Fri, 24 May 2019 05:54:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 39550227E1;
	Fri, 24 May 2019 05:54:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8B1711BF3BE
 for <devel@linuxdriverproject.org>; Fri, 24 May 2019 05:54:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 847F586C82
 for <devel@linuxdriverproject.org>; Fri, 24 May 2019 05:54:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SsKMIM9H_Tyd for <devel@linuxdriverproject.org>;
 Fri, 24 May 2019 05:54:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f195.google.com (mail-oi1-f195.google.com
 [209.85.167.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D083786B2C
 for <devel@driverdev.osuosl.org>; Fri, 24 May 2019 05:54:19 +0000 (UTC)
Received: by mail-oi1-f195.google.com with SMTP id y124so6192773oiy.3
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 22:54:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7Ebgv3UeXA0WytHreGCVh/7DQkPpVomBIGZeLwu/7es=;
 b=WzxkgAyRBYozpQ9xwmo4jx8O4OFRtPU6J0nptXrnuf+XflBtgcZgTRHwcpnbhEmVAv
 usBq5i6iGIoTGhH3T4ughQUWoLxun4lJZmnw1D8s4AkM/5A9zCYhUuMJBwBaLG+74xd9
 cAJfKD65CbgSvqMGfCS9b1xHDIkd6gZI3ar5Z0XvUqUhAaBYVGsX6H7b5uccDJt4eySU
 MYSo6jGHbKD9L9dnKS05g0Qm1ycdhH2tguBQh9rWV2gyIdEYwANqfWndBfUxBDYMSXb/
 AzwcI7cP0mhIZnAUnajbr1n0shjsHYdDtiW7moPVVpFA5DhZpV4qTI20AA2LFMx70I7h
 zf0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7Ebgv3UeXA0WytHreGCVh/7DQkPpVomBIGZeLwu/7es=;
 b=Yc5RW/QTxwCWV+lhW5SuCqm+NRNRTD+3ZCmQjt9GoTpJo5Ysg+oOYB0OUvk6yWgbUE
 mw7L5K8lIpQ+oPWo014RkQbTau4LkLl2kNPaeVx1mCBl1aX6g1KEwrArPGlbAna6Kmw7
 +kPs4IkNJbF/YAVmzrMW2UFJPg65UBtKLhNg66NZzD1VL2LEQFt/+AuPi2Vwz+GcS1RC
 Cj07+dChnaPY5GuxDFrkbQ8FRuaT1ZDBRyUOlQwQBKr/WzbCB/ina3tSX5xLawY/W3Jf
 nEuxmL+hJ5Tmf53wrKsLPVTMufiQrG+fzUgpyXCKKHcu7N0H/fGtiMlyujPeeGfl0dew
 +Ggw==
X-Gm-Message-State: APjAAAWUq3GZpObquIawgGRaAscMiVVZ38dd2f49M+GLoDW/T6K3jlvb
 WqD4UHOeaWlLVbnlOpMcdjEBDNLuM8csRigWfpo=
X-Google-Smtp-Source: APXvYqxMC+I6BinOmBqmotSjJts4Ix18CeAG/RSOJyQ2f/Fct4fsBMOH+wWVl8C6cc2AOAkKi/k7adx3Cjy6I0Xu97w=
X-Received: by 2002:aca:3c85:: with SMTP id j127mr5285364oia.29.1558677259014; 
 Thu, 23 May 2019 22:54:19 -0700 (PDT)
MIME-Version: 1.0
References: <20190523183510.GA12942@hari-Inspiron-1545>
In-Reply-To: <20190523183510.GA12942@hari-Inspiron-1545>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Fri, 24 May 2019 07:54:08 +0200
Message-ID: <CAMhs-H9222OXrqWh4W-D7pFV6FXbhLVVGXz-29gO-Qo0eQaTvQ@mail.gmail.com>
Subject: Re: [PATCH] staging: mt7621-pci: pci-mt7621: Remove unneeded variable
 err
To: Hariprasad Kelam <hariprasad.kelam@gmail.com>
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
Cc: devel@driverdev.osuosl.org, reg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Mamta Shukla <mamtashukla555@gmail.com>, NeilBrown <neil@brown.name>,
 Peter Vernia <peter.vernia@gmail.com>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Hariprasad,


On Thu, May 23, 2019 at 8:35 PM Hariprasad Kelam
<hariprasad.kelam@gmail.com> wrote:
>
> devm_request_pci_bus_resources function will return -EBUSY/-ENOMEM
> in fail case and returns 0 on success.
>
> So no need to store return value in err variable.
>
> Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
> ---
>  drivers/staging/mt7621-pci/pci-mt7621.c | 7 +------
>  1 file changed, 1 insertion(+), 6 deletions(-)
>
> diff --git a/drivers/staging/mt7621-pci/pci-mt7621.c b/drivers/staging/mt7621-pci/pci-mt7621.c
> index 03d919a..bc2a3d1 100644
> --- a/drivers/staging/mt7621-pci/pci-mt7621.c
> +++ b/drivers/staging/mt7621-pci/pci-mt7621.c
> @@ -596,17 +596,12 @@ static int mt7621_pcie_request_resources(struct mt7621_pcie *pcie,
>                                          struct list_head *res)
>  {
>         struct device *dev = pcie->dev;
> -       int err;
>
>         pci_add_resource_offset(res, &pcie->io, pcie->offset.io);
>         pci_add_resource_offset(res, &pcie->mem, pcie->offset.mem);
>         pci_add_resource(res, &pcie->busn);
>
> -       err = devm_request_pci_bus_resources(dev, res);
> -       if (err < 0)
> -               return err;
> -
> -       return 0;
> +       return devm_request_pci_bus_resources(dev, res);
>  }
>

In the patch title, the "mt7621-pci" is repeated twice. With that changed:

Reviewed-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>

>  static int mt7621_pcie_register_host(struct pci_host_bridge *host,
> --
> 2.7.4
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

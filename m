Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F0799B7226
	for <lists+driverdev-devel@lfdr.de>; Thu, 19 Sep 2019 06:20:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id EDD4921FF8;
	Thu, 19 Sep 2019 04:20:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CnAljzsONEZc; Thu, 19 Sep 2019 04:20:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7116220505;
	Thu, 19 Sep 2019 04:20:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B80F71BF5F5
 for <devel@linuxdriverproject.org>; Thu, 19 Sep 2019 04:20:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id AF7DD868FF
 for <devel@linuxdriverproject.org>; Thu, 19 Sep 2019 04:20:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XOl-YUPLwV64 for <devel@linuxdriverproject.org>;
 Thu, 19 Sep 2019 04:20:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com
 [209.85.210.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0899181B86
 for <devel@driverdev.osuosl.org>; Thu, 19 Sep 2019 04:20:51 +0000 (UTC)
Received: by mail-ot1-f65.google.com with SMTP id k32so1902613otc.4
 for <devel@driverdev.osuosl.org>; Wed, 18 Sep 2019 21:20:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=j6ktaKerA6qNCNUVOJpqP9XS7SoRgjTBYtdJRVNyhcw=;
 b=B5ZuP2QirBOxP8R4Vuk7t6QPgJAudPXy3O8bZJY+rcApaDVAU+jgjaU9a1iluML0DJ
 3qAi/Gww7GqOOou2O1sYCeFnsWz5mKYSrbCsdVhWdJ5cpO29uBNTWp7wIOZIlHVLEtvy
 klTgBbplg4XmhPpFOIM0us0oSVRyUOaHlum3QlZ1iM2mHWzGZvHVMWiJUMXv8Qjdsxfc
 v+N8xVfUHouGPsbNQePXKRLwRmCRFVSdLKkvntP2TZsa3CSHyRbEBhfeB6gVSH52yi8V
 PrgXhQlB2flQV6fz+YY3NY+e2glt88lyUd2qwncGUCTiySGRTEoNwVn4Qvf7h4MG5cIy
 sC7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=j6ktaKerA6qNCNUVOJpqP9XS7SoRgjTBYtdJRVNyhcw=;
 b=boQ5NGkwXfqoycdLVueWRwJHycChYMiPGcW00QPmDNkVclXkr2l9kh2QtXRyxC1fc7
 syFxdvrMuQN2nwStL1OFxGhSh/YClyj6a7oAEp5j9xyB1A8kZA7vx6jsmKuaDkdPz0SM
 G4i5J/BtsYiQRCbRzxW6qzDbxAipfAp266+gZ9D45Wn7/Z3Q/qp5iQq3tNxj7lE1b39y
 2TqtZkb0TUSNW1kTMpUQu093VTtuGhCkoUdOjGbT79E/4bIx+/Wb8jrRhde4tyvvWynt
 6key1Gp278KLcuRsfyD3FTXEFQhLiM9d0ETMLzzz7ROgafEq/6xnGOQ5zfquRz9Rm9JE
 ASRA==
X-Gm-Message-State: APjAAAXaph7TLzxuGFpQGjPE3bI51X9uyz7vQPP5xNwwr+pxUXMkhwNk
 xlo60zY8HlwACgpRUyWoUsTakSAI+YpAOK7nHPc=
X-Google-Smtp-Source: APXvYqxjyCXBVLXbbc37aFrdNvvbQpskLVO+apNEFZ3ayPK48X288HghyPp33qNmLTr3e8fC29soNN0avIt7kWpkVFQ=
X-Received: by 2002:a05:6830:1f0f:: with SMTP id
 u15mr5581667otg.34.1568866850204; 
 Wed, 18 Sep 2019 21:20:50 -0700 (PDT)
MIME-Version: 1.0
References: <1c16a43c-3a01-8a86-02b0-1941ab7321dd@web.de>
In-Reply-To: <1c16a43c-3a01-8a86-02b0-1941ab7321dd@web.de>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Thu, 19 Sep 2019 06:20:39 +0200
Message-ID: <CAMhs-H9q16kGOse9pMbj3O9hoOO5de_wa9VRi_HcPo0_GbTw1g@mail.gmail.com>
Subject: Re: [PATCH] staging: mt7621-pci-phy: Use
 devm_platform_ioremap_resource() in mt7621_pci_phy_probe()
To: Markus Elfring <Markus.Elfring@web.de>
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
Cc: devel@driverdev.osuosl.org, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kernel-janitors@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 Neil Brown <neil@brown.name>, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-mediatek@lists.infradead.org, Himanshu Jha <himanshujha199640@gmail.com>,
 Emanuel Bennici <benniciemanuel78@gmail.com>,
 =?UTF-8?Q?Antti_Ker=C3=A4nen?= <detegr@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Markus,

Thanks for the patch. It looks good to me.

On Wed, Sep 18, 2019 at 9:12 PM Markus Elfring <Markus.Elfring@web.de> wrote:
>
> From: Markus Elfring <elfring@users.sourceforge.net>
> Date: Wed, 18 Sep 2019 21:01:32 +0200
>
> Simplify this function implementation by using a known wrapper function.
>
> This issue was detected by using the Coccinelle software.
>
> Signed-off-by: Markus Elfring <elfring@users.sourceforge.net>
> ---
>  drivers/staging/mt7621-pci-phy/pci-mt7621-phy.c | 10 +---------
>  1 file changed, 1 insertion(+), 9 deletions(-)
>
> diff --git a/drivers/staging/mt7621-pci-phy/pci-mt7621-phy.c b/drivers/staging/mt7621-pci-phy/pci-mt7621-phy.c
> index d2a07f145143..6ca4a33d13c3 100644
> --- a/drivers/staging/mt7621-pci-phy/pci-mt7621-phy.c
> +++ b/drivers/staging/mt7621-pci-phy/pci-mt7621-phy.c
> @@ -324,7 +324,6 @@ static int mt7621_pci_phy_probe(struct platform_device *pdev)
>         const struct soc_device_attribute *attr;
>         struct phy_provider *provider;
>         struct mt7621_pci_phy *phy;
> -       struct resource *res;
>         int port;
>         void __iomem *port_base;
>
> @@ -344,14 +343,7 @@ static int mt7621_pci_phy_probe(struct platform_device *pdev)
>
>         phy->dev = dev;
>         platform_set_drvdata(pdev, phy);
> -
> -       res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> -       if (!res) {
> -               dev_err(dev, "failed to get address resource\n");
> -               return -ENXIO;
> -       }
> -
> -       port_base = devm_ioremap_resource(dev, res);
> +       port_base = devm_platform_ioremap_resource(pdev, 0);
>         if (IS_ERR(port_base)) {
>                 dev_err(dev, "failed to remap phy regs\n");
>                 return PTR_ERR(port_base);
> --
> 2.23.0
>

Reviewed-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DD4602FBB9C
	for <lists+driverdev-devel@lfdr.de>; Tue, 19 Jan 2021 16:50:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1C93086890;
	Tue, 19 Jan 2021 15:50:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PlHtuG4btOfx; Tue, 19 Jan 2021 15:50:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4272A8666E;
	Tue, 19 Jan 2021 15:50:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BE49D1BF308
 for <devel@linuxdriverproject.org>; Tue, 19 Jan 2021 15:50:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id BAC0F84CAC
 for <devel@linuxdriverproject.org>; Tue, 19 Jan 2021 15:50:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mzeMFxhvoRtC for <devel@linuxdriverproject.org>;
 Tue, 19 Jan 2021 15:50:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D6A0A84AF4
 for <devel@driverdev.osuosl.org>; Tue, 19 Jan 2021 15:50:48 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1444920780;
 Tue, 19 Jan 2021 15:50:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1611071448;
 bh=5Kypprw0IOBfKAIc7GzQhyjIWmL2TNunxnPA/dyuLjY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=QMYzr3yEBhLTvzRMvcGQERKFgF3okrKank5UBAITfrSC1yaR7WK2Kj3fQl6daqxNg
 KUXi0sjhaZeFw0AEP78rJ+FKoafXWZCZ3epvMnmuvsQV2N79LMWXD9yXMWo4UN6F/W
 JFKgTvb5tCwwdQrmP9bgHWWjISIz2lieLq5ak7QSRBt1u/lDkpRS3YGOYZ4MuvLoCj
 idU5J7/y/wG4F7EBvZhcGZLz4f9EED+DgGoivpYoZpgWGAyQAm7zp4KQaTqz+qXjVP
 GR9vVmExiDjX7QQWQjPppaF1r2/h7PZ6yAD0W8NMm0Q7J3ZPxTtxegE1XzFLXavtXR
 bnSdfIB+Vkubg==
Date: Tue, 19 Jan 2021 16:50:43 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v3 15/18] mfd: hi6421-spmi-pmic: move driver from staging
Message-ID: <20210119165043.799daa80@coco.lan>
In-Reply-To: <20210119134622.GB4478@sirena.org.uk>
References: <cover.1611048785.git.mchehab+huawei@kernel.org>
 <aa17f0fee8cfcd654e107897d350cb3b0438763b.1611048785.git.mchehab+huawei@kernel.org>
 <20210119134622.GB4478@sirena.org.uk>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 Mayulong <mayulong1@huawei.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Lee Jones <lee.jones@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Em Tue, 19 Jan 2021 13:46:22 +0000
Mark Brown <broonie@kernel.org> escreveu:

> On Tue, Jan 19, 2021 at 11:14:20AM +0100, Mauro Carvalho Chehab wrote:
> 
> > +int hi6421_spmi_pmic_read(struct hi6421_spmi_pmic *pmic, int reg)
> > +{
> > +	struct spmi_device *pdev;
> > +	u8 read_value = 0;
> > +	u32 ret;
> > +
> > +	pdev = to_spmi_device(pmic->dev);
> > +	if (!pdev) {
> > +		pr_err("%s: pdev get failed!\n", __func__);
> > +		return -ENODEV;
> > +	}
> > +
> > +	ret = spmi_ext_register_readl(pdev, reg, &read_value, 1);
> > +	if (ret) {
> > +		pr_err("%s: spmi_ext_register_readl failed!\n", __func__);
> > +		return ret;
> > +	}
> > +	return read_value;
> > +}
> > +EXPORT_SYMBOL(hi6421_spmi_pmic_read);  
> 
> The I/O here looks a lot like regmap_spmi_ext.

Did a test here converting it to use regmap. It worked.

I'm sending a (hopefully) final patchset.

Regards,
Mauro
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

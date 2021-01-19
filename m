Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 629D42FC45B
	for <lists+driverdev-devel@lfdr.de>; Wed, 20 Jan 2021 00:02:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 519D7204E9;
	Tue, 19 Jan 2021 23:02:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fHMB9EWWf5MO; Tue, 19 Jan 2021 23:02:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 248FD2041B;
	Tue, 19 Jan 2021 23:02:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B720F1BF59A
 for <devel@linuxdriverproject.org>; Tue, 19 Jan 2021 23:02:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B393C86180
 for <devel@linuxdriverproject.org>; Tue, 19 Jan 2021 23:02:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5n2VVUu6lT21 for <devel@linuxdriverproject.org>;
 Tue, 19 Jan 2021 23:02:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0EFD086156
 for <devel@driverdev.osuosl.org>; Tue, 19 Jan 2021 23:02:49 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id B739E23108;
 Tue, 19 Jan 2021 23:02:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1611097369;
 bh=4E6CYyWfOzG3kbePOJg95Tr9M7XePzzoRhZIEGwKPYc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=rYOD5vm/10zX8Z85fjbmCuePvlre8h9i21JsaIV33refwUyqq5ndU6BPmrVf5SsoL
 OBplT+xiKpjiHWYMNZc/Lha0/w3G88xuwRjY7/HlILoLBPmlVEoSFqZUj5Y5ZEINSl
 DbMs4jHphUpwcwCOL3m4ToG8g1F5WBpXFpsaqpT7ruWgUI/5Gls/UrHeKEhQLHPNmQ
 91FjDnQ889lIav5c40LmTCwcwpCLBitmBVYJGsbILI+OQMm3ePic9NZoQDVX6hPJq3
 rBUnu8ZCwN+RO90tvl9NCEufr610pSfmttmMpDfjT/H04DmQTJjG2DdIasMKYvUxYF
 s7IMmLhSQzccA==
Date: Wed, 20 Jan 2021 00:02:44 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v4 19/21] regulator: hi6421v600-regulator: move it from
 staging
Message-ID: <20210120000244.2f1862d6@coco.lan>
In-Reply-To: <20210119161950.GC4478@sirena.org.uk>
References: <cover.1611072387.git.mchehab+huawei@kernel.org>
 <8000252dfd10677c5eb52d498e68de9c65304cf4.1611072387.git.mchehab+huawei@kernel.org>
 <20210119161950.GC4478@sirena.org.uk>
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
Cc: devel@driverdev.osuosl.org, Mayulong <mayulong1@huawei.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Liam Girdwood <lgirdwood@gmail.com>, linux-kernel@vger.kernel.org,
 Lee Jones <lee.jones@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Em Tue, 19 Jan 2021 16:19:50 +0000
Mark Brown <broonie@kernel.org> escreveu:

> On Tue, Jan 19, 2021 at 05:10:45PM +0100, Mauro Carvalho Chehab wrote:
> 
> > +static int hi6421_spmi_regulator_get_voltage_sel(struct regulator_dev *rdev)
> > +{  
> 
> > +static int hi6421_spmi_regulator_set_voltage_sel(struct regulator_dev *rdev,
> > +						 unsigned int selector)  
> 
> Now that the driver has been converted to regmap these are just
> duplicates of the regmap helpers.  You may also be able to use them for
> the disable() and is_enabled() operations, I didn't confirm that that's
> OK with the device using multi-bit enable controls for some reason IIRC.

True.

In order to avoid re-submitting 21 patches, I sent such change as
patch 22/21 .

Thanks,
Mauro
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

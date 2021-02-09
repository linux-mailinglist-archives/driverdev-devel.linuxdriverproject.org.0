Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D43EE314FAB
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Feb 2021 14:02:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id ED9B7873B4;
	Tue,  9 Feb 2021 13:02:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aanARVJNiB3v; Tue,  9 Feb 2021 13:02:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0886187358;
	Tue,  9 Feb 2021 13:02:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 548D21BF232
 for <devel@linuxdriverproject.org>; Tue,  9 Feb 2021 13:02:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 509E28706C
 for <devel@linuxdriverproject.org>; Tue,  9 Feb 2021 13:02:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4dwwOILf-VtI for <devel@linuxdriverproject.org>;
 Tue,  9 Feb 2021 13:02:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B100586DDC
 for <devel@driverdev.osuosl.org>; Tue,  9 Feb 2021 13:02:11 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id ACCEC64E75;
 Tue,  9 Feb 2021 13:02:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1612875731;
 bh=/Me+7Kp4JW3Y1A7KUFx3KcdF6XAOxqCUi6IcZfTyxrY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jLTExcCLBH7WheJBZQ5S0RePJQet3Yt4yzTvMxtzy17ZPNcpv9XUzMvNhNqZqAlN/
 QcsM9TB6q/6DP5A6Q0uhWHweiv0yxIkpcY5o+iOyzpXFXBGkN3MkMRbPk9Ml2tHaIZ
 P46V3Blimx+4djJUl0gbR3wpdHfyXV4U4eftNzis=
Date: Tue, 9 Feb 2021 14:02:08 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: Re: [PATCH AUTOSEL 5.10 14/36] media: rkisp1: uapi: change hist_bins
 array type from __u16 to __u32
Message-ID: <YCKH0HvTxeYKg1xf@kroah.com>
References: <20210208175806.2091668-1-sashal@kernel.org>
 <20210208175806.2091668-14-sashal@kernel.org>
 <12c8f50e-3bba-5936-6e67-55bd928a75c7@xs4all.nl>
 <e086d0f4-c5f0-e38c-8937-593852ac0b50@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e086d0f4-c5f0-e38c-8937-593852ac0b50@collabora.com>
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
Cc: Sasha Levin <sashal@kernel.org>, devel@driverdev.osuosl.org,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Helen Koike <helen.koike@collabora.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Feb 09, 2021 at 01:45:35PM +0100, Dafna Hirschfeld wrote:
> 
> 
> Am 08.02.21 um 21:46 schrieb Hans Verkuil:
> > On 08/02/2021 18:57, Sasha Levin wrote:
> > > From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> > > 
> > > [ Upstream commit 31f190e0ccac8b75d33fdc95a797c526cf9b149e ]
> > > 
> > > Each entry in the array is a 20 bits value composed of 16 bits unsigned
> > > integer and 4 bits fractional part. So the type should change to __u32.
> > > In addition add a documentation of how the measurements are done.
> > 
> > Dafna, Helen, does it make sense at all to backport these three patches to
> > when rkisp1 was a staging driver?
> > 
> > I would be inclined not to backport this.
> 
> I also don't think it makes sense since this changes the uapi and it is not really a bug fix.

Why was it ok to change the uapi in a newer kernel and not an older one?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

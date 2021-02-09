Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4148D3150A0
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Feb 2021 14:45:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D3A1A6F8A9
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Feb 2021 13:45:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Q-0BYUAU26l8 for <lists+driverdev-devel@lfdr.de>;
	Tue,  9 Feb 2021 13:45:02 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 048486F8A0; Tue,  9 Feb 2021 13:45:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BE8EA6F675;
	Tue,  9 Feb 2021 13:44:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B65C01BF27E
 for <devel@linuxdriverproject.org>; Tue,  9 Feb 2021 13:44:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B2F0C87040
 for <devel@linuxdriverproject.org>; Tue,  9 Feb 2021 13:44:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oX0xnQZkteDh for <devel@linuxdriverproject.org>;
 Tue,  9 Feb 2021 13:44:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 361E987028
 for <devel@driverdev.osuosl.org>; Tue,  9 Feb 2021 13:44:23 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 17EA264E0D;
 Tue,  9 Feb 2021 13:44:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1612878262;
 bh=4h3GT5egqwm04FikNjpgIj9VjhyE6EXY+YLLVJe3RDo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=R2CGMQtHpql1DsKZunw3zR/88ekQ3bGZVifWAMMQZbcrbzj/NWABv4t2+iLdPa4Ds
 NRMF3396ygWqbmUrt8D+qmg4vU9yS+mGNxsjtQwIMgTCfQR2WtsCCR1yVA/CLLJqq8
 p616TPIdWDd8m/vaNxp8Utv+/hyTawkZFCMFcVp4=
Date: Tue, 9 Feb 2021 14:44:19 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Subject: Re: [PATCH AUTOSEL 5.10 14/36] media: rkisp1: uapi: change hist_bins
 array type from __u16 to __u32
Message-ID: <YCKRsxE23f7zJtkO@kroah.com>
References: <20210208175806.2091668-1-sashal@kernel.org>
 <20210208175806.2091668-14-sashal@kernel.org>
 <12c8f50e-3bba-5936-6e67-55bd928a75c7@xs4all.nl>
 <e086d0f4-c5f0-e38c-8937-593852ac0b50@collabora.com>
 <YCKH0HvTxeYKg1xf@kroah.com>
 <3413d0af-bc8e-4a9d-e0a2-eea98febd4e9@xs4all.nl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3413d0af-bc8e-4a9d-e0a2-eea98febd4e9@xs4all.nl>
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
 Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Helen Koike <helen.koike@collabora.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Feb 09, 2021 at 02:39:41PM +0100, Hans Verkuil wrote:
> On 09/02/2021 14:02, Greg Kroah-Hartman wrote:
> > On Tue, Feb 09, 2021 at 01:45:35PM +0100, Dafna Hirschfeld wrote:
> >>
> >>
> >> Am 08.02.21 um 21:46 schrieb Hans Verkuil:
> >>> On 08/02/2021 18:57, Sasha Levin wrote:
> >>>> From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> >>>>
> >>>> [ Upstream commit 31f190e0ccac8b75d33fdc95a797c526cf9b149e ]
> >>>>
> >>>> Each entry in the array is a 20 bits value composed of 16 bits unsigned
> >>>> integer and 4 bits fractional part. So the type should change to __u32.
> >>>> In addition add a documentation of how the measurements are done.
> >>>
> >>> Dafna, Helen, does it make sense at all to backport these three patches to
> >>> when rkisp1 was a staging driver?
> >>>
> >>> I would be inclined not to backport this.
> >>
> >> I also don't think it makes sense since this changes the uapi and it is not really a bug fix.
> > 
> > Why was it ok to change the uapi in a newer kernel and not an older one?
> 
> In the older kernels this was a staging driver and the driver API was not public.
> It's debatable whether there is any benefit from trying to backport patches like
> this to a staging driver like that.
> 
> Also, these backports are incomplete, there are other patches that would need to
> be applied to make this work. Applying just these three patches without the other
> three (commits 66d81de7ea9d, fc672d806bd7 and ef357e02b6c4) makes it very messy
> indeed.
> 
> I'd just leave the staging driver in older kernels as-is. Certainly don't just
> apply these three patches without the other three commits, that would make it
> even worse.

Fair enough, Sasha, can you drop these?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

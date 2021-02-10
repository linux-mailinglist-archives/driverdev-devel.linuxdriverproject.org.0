Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0036B316A43
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Feb 2021 16:33:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B73E9873E7;
	Wed, 10 Feb 2021 15:33:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MXwmXpvJfE5S; Wed, 10 Feb 2021 15:33:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B66A5873E4;
	Wed, 10 Feb 2021 15:33:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 03C6A1BF2F1
 for <devel@linuxdriverproject.org>; Wed, 10 Feb 2021 15:33:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 012F4861CF
 for <devel@linuxdriverproject.org>; Wed, 10 Feb 2021 15:33:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BrnaSQoXG+NB for <devel@linuxdriverproject.org>;
 Wed, 10 Feb 2021 15:33:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5C43E8613C
 for <devel@driverdev.osuosl.org>; Wed, 10 Feb 2021 15:33:45 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id B24CC64DDA;
 Wed, 10 Feb 2021 15:33:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1612971225;
 bh=1zDAAQgiqsz5e7kAxXc8agDEwY/EwyxU60WtaFh/Uq8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=o/GsAZvQcnLs2WQHEYNfj2ClbQ5/nmXaMuizM6V7Odl8NDQo0XEhUGKim+qKYMuit
 9CqJ4fhlQAI8FmnOm0nBTnYurWYsEJNLcyidFDz+JvVhCpXVEybCKqRUdOzMZlUAjn
 LwDyJXAymteP/Ciq5OPpXKIlgOPdcwpwQtVc2JxOV40W5PSmEv3YoFrUynzs8xf4mY
 lhMXBxlV4LuDqEsG2VGHRlrruBXuGTMAB1BXTyZINNhv7IeejRL4SiSmkgL3zELGLG
 QUSZOMYj1Ohhp0EBTh+jHY9CFEXTM7zDWE3JS0rX4AGjkfdtXaO8hERWOxoZkjHT9Q
 0tEH9AB8tra4Q==
Date: Wed, 10 Feb 2021 10:33:43 -0500
From: Sasha Levin <sashal@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH AUTOSEL 5.10 14/36] media: rkisp1: uapi: change hist_bins
 array type from __u16 to __u32
Message-ID: <20210210153343.GD4035784@sasha-vm>
References: <20210208175806.2091668-1-sashal@kernel.org>
 <20210208175806.2091668-14-sashal@kernel.org>
 <12c8f50e-3bba-5936-6e67-55bd928a75c7@xs4all.nl>
 <e086d0f4-c5f0-e38c-8937-593852ac0b50@collabora.com>
 <YCKH0HvTxeYKg1xf@kroah.com>
 <3413d0af-bc8e-4a9d-e0a2-eea98febd4e9@xs4all.nl>
 <YCKRsxE23f7zJtkO@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YCKRsxE23f7zJtkO@kroah.com>
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
Cc: devel@driverdev.osuosl.org,
 Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Helen Koike <helen.koike@collabora.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, linux-media@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Feb 09, 2021 at 02:44:19PM +0100, Greg Kroah-Hartman wrote:
>On Tue, Feb 09, 2021 at 02:39:41PM +0100, Hans Verkuil wrote:
>> On 09/02/2021 14:02, Greg Kroah-Hartman wrote:
>> > On Tue, Feb 09, 2021 at 01:45:35PM +0100, Dafna Hirschfeld wrote:
>> >>
>> >>
>> >> Am 08.02.21 um 21:46 schrieb Hans Verkuil:
>> >>> On 08/02/2021 18:57, Sasha Levin wrote:
>> >>>> From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
>> >>>>
>> >>>> [ Upstream commit 31f190e0ccac8b75d33fdc95a797c526cf9b149e ]
>> >>>>
>> >>>> Each entry in the array is a 20 bits value composed of 16 bits unsigned
>> >>>> integer and 4 bits fractional part. So the type should change to __u32.
>> >>>> In addition add a documentation of how the measurements are done.
>> >>>
>> >>> Dafna, Helen, does it make sense at all to backport these three patches to
>> >>> when rkisp1 was a staging driver?
>> >>>
>> >>> I would be inclined not to backport this.
>> >>
>> >> I also don't think it makes sense since this changes the uapi and it is not really a bug fix.
>> >
>> > Why was it ok to change the uapi in a newer kernel and not an older one?
>>
>> In the older kernels this was a staging driver and the driver API was not public.
>> It's debatable whether there is any benefit from trying to backport patches like
>> this to a staging driver like that.
>>
>> Also, these backports are incomplete, there are other patches that would need to
>> be applied to make this work. Applying just these three patches without the other
>> three (commits 66d81de7ea9d, fc672d806bd7 and ef357e02b6c4) makes it very messy
>> indeed.
>>
>> I'd just leave the staging driver in older kernels as-is. Certainly don't just
>> apply these three patches without the other three commits, that would make it
>> even worse.
>
>Fair enough, Sasha, can you drop these?

Yup.

-- 
Thanks,
Sasha
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

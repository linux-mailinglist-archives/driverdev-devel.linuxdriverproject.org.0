Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BEB8520ABDD
	for <lists+driverdev-devel@lfdr.de>; Fri, 26 Jun 2020 07:35:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 274E987722;
	Fri, 26 Jun 2020 05:35:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id trqgWpHjYG-1; Fri, 26 Jun 2020 05:35:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 95989876FB;
	Fri, 26 Jun 2020 05:35:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BFC6B1BF5A1
 for <devel@linuxdriverproject.org>; Fri, 26 Jun 2020 05:35:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B3AFF85764
 for <devel@linuxdriverproject.org>; Fri, 26 Jun 2020 05:35:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id k_Fj6FSB6LEL for <devel@linuxdriverproject.org>;
 Fri, 26 Jun 2020 05:34:59 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from m43-7.mailgun.net (m43-7.mailgun.net [69.72.43.7])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4B5C585754
 for <devel@driverdev.osuosl.org>; Fri, 26 Jun 2020 05:34:58 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1593149699; h=Content-Type: MIME-Version: Message-ID:
 In-Reply-To: Date: References: Subject: Cc: To: From: Sender;
 bh=bY9QyU3nQzRiiypxrj+1wXtJtZwY6va84aTQOK4tRQM=;
 b=eHfROxFzCpGyo2WfiGM2ClWi0VtXiROrPxm8cGyGbGNxNVp6Szn4KsMlKW1J2PfZe5i/uys1
 +wVe9C5HYpuF1po6GP7GoHDW2GAV+5ePhuXBwC//3Akk6QjEJz4Njbpo3wldgZuCPpfSetD8
 HvQ03DmodiVWMbd17QPeainxmQg=
X-Mailgun-Sending-Ip: 69.72.43.7
X-Mailgun-Sid: WyI2ZDRhNSIsICJkZXZlbEBkcml2ZXJkZXYub3N1b3NsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n19.prod.us-east-1.postgun.com with SMTP id
 5ef588ff86de6ccd44573abd (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Fri, 26 Jun 2020 05:34:55
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 88D0CC433CA; Fri, 26 Jun 2020 05:34:54 +0000 (UTC)
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id ED31DC433C6;
 Fri, 26 Jun 2020 05:34:50 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org ED31DC433C6
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v7 00/17] wilc1000: move out of staging
References: <20200623110000.31559-1-ajay.kathat@microchip.com>
 <87ftaketkw.fsf@tynnyri.adurom.net>
 <20200624091000.GD1731290@kroah.com> <87366kztcr.fsf@codeaurora.org>
 <20200624145254.GA1876138@kroah.com>
Date: Fri, 26 Jun 2020 08:34:48 +0300
In-Reply-To: <20200624145254.GA1876138@kroah.com> (Greg KH's message of "Wed, 
 24 Jun 2020 16:52:54 +0200")
Message-ID: <87a70qe6fb.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
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
Cc: devel@driverdev.osuosl.org, Ajay.Kathat@microchip.com,
 Venkateswara.Kaja@microchip.com, linux-wireless@vger.kernel.org,
 Nicolas.Ferre@microchip.com, Sripad.Balwadgi@microchip.com,
 johannes@sipsolutions.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Greg KH <gregkh@linuxfoundation.org> writes:

> On Wed, Jun 24, 2020 at 12:49:24PM +0300, Kalle Valo wrote:
>> Greg KH <gregkh@linuxfoundation.org> writes:
>> 
>> > On Wed, Jun 24, 2020 at 11:50:07AM +0300, Kalle Valo wrote:
>> >> <Ajay.Kathat@microchip.com> writes:
>> >> 
>> >> > From: Ajay Singh <ajay.kathat@microchip.com>
>> >> >
>> >> > This patch series is to review and move wilc1000 driver out of staging.
>> >> > Most of the review comments received in [1] & [2] are addressed in the
>> >> > latest code.
>> >> > Please review and provide your inputs.
>> >> >
>> >> > [1]. https://lore.kernel.org/linux-wireless/1537957525-11467-1-git-send-email-ajay.kathat@microchip.com/
>> >> > [2]. https://lore.kernel.org/linux-wireless/1562896697-8002-1-git-send-email-ajay.kathat@microchip.com/
>> >> >
>> >> > Changes since v6:
>> >> >  - added Reviewed-by tag received for DT binding document patch earlier.
>> >> >    * https://lore.kernel.org/linux-wireless/20200405013235.GA24105@bogus
>> >> >  - merged latest driver and included --base commit as suggested.
>> >> 
>> >> Greg, in preparation for moving the driver to drivers/net/wireless can I
>> >> ask you to not to take wilc1000 patches for the time being? I think that
>> >> way it would be easier to move the driver between trees if there are no
>> >> changes after v5.8-rc1. Or is there a better way handle the move?
>> >
>> > The best way is for there to be a series of patches that just adds the
>> > driver to the "real" part of the tree, and when that is merged, let me
>> > know and I will just delete the driver version in the staging tree.
>> >
>> > Does that work for you?
>> 
>> It would be fine for me but won't that approach break the build (eg.
>> allyesconfig) due to two duplicate versions of the same driver in
>> wireless-drivers-next?
>
> For maybe one day, yes, but that's all.
>
>> What I was thinking that Ajay would create a patch moving the driver
>> from drivers/staging/wilc1000 to
>> drivers/net/wireless/microchip/wilc1000. Using 'git mv' and 'git
>> format-patch --find-renames' the patch should be really small, mostly
>> just renames and small changes to Kconfig, Makefile and MAINTAINERS
>> files. But this of course would require that there are no wilc1000
>> patches in your tree until you get the driver move commit during the
>> next merge window, otherwise we would see conflicts between staging-next
>> and wireless-drivers-next.
>> 
>> But I don't have any strong opinions, whatever is easiest for everyone :)
>
> It's kind of hard to review patches that do moves, but if you all want
> to do that, that's fine with me.

Actually we have been reviewing the driver with full diffs, one file per
patch style[1], so I think everyone are happy. At least I have not heard
any complaints.

And Ajay already submitted that the simple rename patch proposed, thanks
Ajay!

https://patchwork.kernel.org/patch/11625025/

And indeed the patch is simple as it can get. So Greg, if it's ok for
you I would like to apply that simple patch to wireless-drivers-next.

> Note, I can't guarantee that I'll not take any wilc1000 patches, I'll
> probably forget, but git mv will handle all of that just fine.

Good point. To be on the safe side one option is that if I create a
topic branch for this simple patch and use v5.8-rc1 as the baseline.
Then I would pull the topic branch to wireless-drivers-next and you
could pull it to staging-next. That way you would not have wilc1000 in
your tree anymore and no accidental submission or commits either :) What
do you think?

[1 ] https://patchwork.kernel.org/project/linux-wireless/list/?series=307223&state=*&order=date

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

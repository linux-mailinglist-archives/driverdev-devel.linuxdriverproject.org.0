Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 416B8207063
	for <lists+driverdev-devel@lfdr.de>; Wed, 24 Jun 2020 11:49:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 36B6989471;
	Wed, 24 Jun 2020 09:49:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 98u0IWPeG45W; Wed, 24 Jun 2020 09:49:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id AF061890BA;
	Wed, 24 Jun 2020 09:49:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0A4251BF860
 for <devel@linuxdriverproject.org>; Wed, 24 Jun 2020 09:49:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 06E9C87199
 for <devel@linuxdriverproject.org>; Wed, 24 Jun 2020 09:49:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F0vEONo7GRzo for <devel@linuxdriverproject.org>;
 Wed, 24 Jun 2020 09:49:39 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail29.static.mailgun.info (mail29.static.mailgun.info
 [104.130.122.29])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 33C9B8714A
 for <devel@driverdev.osuosl.org>; Wed, 24 Jun 2020 09:49:37 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1592992179; h=Content-Type: MIME-Version: Message-ID:
 In-Reply-To: Date: References: Subject: Cc: To: From: Sender;
 bh=V1XwvcOUVZ2jA1BI4jck52plbBIzsBRUg7wJIhA94nE=;
 b=YojhdgkdWKNvhxnacM01oRM8Zp7Up1T5fAgNwGu72mm4O5Q+1QGIUYRy65OE8L+DBMeo4VR5
 IcANnojV3mgQQbqTzQ66e5KEA+QHZjkBQGBMmpg3CFacIPvEcNsiOiMlbOM3rxdUZSY5Xx9V
 wIaEeig7JTZMbzYSggh3sePet7Y=
X-Mailgun-Sending-Ip: 104.130.122.29
X-Mailgun-Sid: WyI2ZDRhNSIsICJkZXZlbEBkcml2ZXJkZXYub3N1b3NsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n03.prod.us-east-1.postgun.com with SMTP id
 5ef321ab0206ad41d172abe6 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Wed, 24 Jun 2020 09:49:31
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 06949C433C8; Wed, 24 Jun 2020 09:49:31 +0000 (UTC)
Received: from x230.qca.qualcomm.com (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 05663C4339C;
 Wed, 24 Jun 2020 09:49:27 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 05663C4339C
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v7 00/17] wilc1000: move out of staging
References: <20200623110000.31559-1-ajay.kathat@microchip.com>
 <87ftaketkw.fsf@tynnyri.adurom.net>
 <20200624091000.GD1731290@kroah.com>
Date: Wed, 24 Jun 2020 12:49:24 +0300
In-Reply-To: <20200624091000.GD1731290@kroah.com> (Greg KH's message of "Wed, 
 24 Jun 2020 11:10:00 +0200")
Message-ID: <87366kztcr.fsf@codeaurora.org>
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

> On Wed, Jun 24, 2020 at 11:50:07AM +0300, Kalle Valo wrote:
>> <Ajay.Kathat@microchip.com> writes:
>> 
>> > From: Ajay Singh <ajay.kathat@microchip.com>
>> >
>> > This patch series is to review and move wilc1000 driver out of staging.
>> > Most of the review comments received in [1] & [2] are addressed in the
>> > latest code.
>> > Please review and provide your inputs.
>> >
>> > [1]. https://lore.kernel.org/linux-wireless/1537957525-11467-1-git-send-email-ajay.kathat@microchip.com/
>> > [2]. https://lore.kernel.org/linux-wireless/1562896697-8002-1-git-send-email-ajay.kathat@microchip.com/
>> >
>> > Changes since v6:
>> >  - added Reviewed-by tag received for DT binding document patch earlier.
>> >    * https://lore.kernel.org/linux-wireless/20200405013235.GA24105@bogus
>> >  - merged latest driver and included --base commit as suggested.
>> 
>> Greg, in preparation for moving the driver to drivers/net/wireless can I
>> ask you to not to take wilc1000 patches for the time being? I think that
>> way it would be easier to move the driver between trees if there are no
>> changes after v5.8-rc1. Or is there a better way handle the move?
>
> The best way is for there to be a series of patches that just adds the
> driver to the "real" part of the tree, and when that is merged, let me
> know and I will just delete the driver version in the staging tree.
>
> Does that work for you?

It would be fine for me but won't that approach break the build (eg.
allyesconfig) due to two duplicate versions of the same driver in
wireless-drivers-next?

What I was thinking that Ajay would create a patch moving the driver
from drivers/staging/wilc1000 to
drivers/net/wireless/microchip/wilc1000. Using 'git mv' and 'git
format-patch --find-renames' the patch should be really small, mostly
just renames and small changes to Kconfig, Makefile and MAINTAINERS
files. But this of course would require that there are no wilc1000
patches in your tree until you get the driver move commit during the
next merge window, otherwise we would see conflicts between staging-next
and wireless-drivers-next.

But I don't have any strong opinions, whatever is easiest for everyone :)

For reference wireless-drivers-next is merged like this:

wireless-drivers-next -> net-next -> linus

And naturally I would be aiming this for the v5.9 merge window.

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

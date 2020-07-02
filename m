Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F9A2211C5C
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Jul 2020 09:05:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DFA738AAE9;
	Thu,  2 Jul 2020 07:05:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kGo5x13P228H; Thu,  2 Jul 2020 07:05:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 524058A2BC;
	Thu,  2 Jul 2020 07:05:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E8D661BF2B5
 for <devel@linuxdriverproject.org>; Thu,  2 Jul 2020 07:05:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E01952631D
 for <devel@linuxdriverproject.org>; Thu,  2 Jul 2020 07:05:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yo7sxnN+4P6K for <devel@linuxdriverproject.org>;
 Thu,  2 Jul 2020 07:05:10 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail29.static.mailgun.info (mail29.static.mailgun.info
 [104.130.122.29])
 by silver.osuosl.org (Postfix) with ESMTPS id F1EB7253CA
 for <devel@driverdev.osuosl.org>; Thu,  2 Jul 2020 07:05:08 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1593673510; h=Content-Type: MIME-Version: Message-ID:
 In-Reply-To: Date: References: Subject: Cc: To: From: Sender;
 bh=3fwwa5vI58tW/Skqz+I+1rB/iH0AQQKspXiTMKHBrjY=;
 b=m5fcLTHMhTExB8SdOVBnYi8Iddn1vqb/H+gcMdH4TPS1b56dWlu1vML1U56CMwNxzz+89+XU
 6s2a9DnG/YkQbbGtKQvb35TkVQRm34G1w/qd2lsrM605q/zD6A9EPKSR6R6aMpRIWsrF3LL8
 RtuHx5DS2UvcIvx2bqidaiab1Sg=
X-Mailgun-Sending-Ip: 104.130.122.29
X-Mailgun-Sid: WyI2ZDRhNSIsICJkZXZlbEBkcml2ZXJkZXYub3N1b3NsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n13.prod.us-west-2.postgun.com with SMTP id
 5efd8721117610c7ff93f4bf (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Thu, 02 Jul 2020 07:05:05
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 87D53C433CA; Thu,  2 Jul 2020 07:05:05 +0000 (UTC)
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 24D13C433C6;
 Thu,  2 Jul 2020 07:05:02 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 24D13C433C6
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
 <20200624145254.GA1876138@kroah.com> <87a70qe6fb.fsf@codeaurora.org>
 <20200626134610.GB4095392@kroah.com>
Date: Thu, 02 Jul 2020 10:05:01 +0300
In-Reply-To: <20200626134610.GB4095392@kroah.com> (Greg KH's message of "Fri, 
 26 Jun 2020 15:46:10 +0200")
Message-ID: <87a70ibdnm.fsf@codeaurora.org>
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

> On Fri, Jun 26, 2020 at 08:34:48AM +0300, Kalle Valo wrote:
>
>> And Ajay already submitted that the simple rename patch proposed, thanks
>> Ajay!
>> 
>> https://patchwork.kernel.org/patch/11625025/
>> 
>> And indeed the patch is simple as it can get. So Greg, if it's ok for
>> you I would like to apply that simple patch to wireless-drivers-next.
>> 
>> > Note, I can't guarantee that I'll not take any wilc1000 patches, I'll
>> > probably forget, but git mv will handle all of that just fine.
>> 
>> Good point. To be on the safe side one option is that if I create a
>> topic branch for this simple patch and use v5.8-rc1 as the baseline.
>> Then I would pull the topic branch to wireless-drivers-next and you
>> could pull it to staging-next. That way you would not have wilc1000 in
>> your tree anymore and no accidental submission or commits either :) What
>> do you think?
>
> That sounds great, I will be happy to pull such a branch.

Great! Sorry for taking so long, I'm on vacation right now, but here's
the immutable branch:

git://git.kernel.org/pub/scm/linux/kernel/git/kvalo/wireless-drivers-next.git wilc1000-move-out-of-staging

I have pulled it into wireless-drivers-next now.

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

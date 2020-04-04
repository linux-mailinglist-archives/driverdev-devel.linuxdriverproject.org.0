Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3690E19E463
	for <lists+driverdev-devel@lfdr.de>; Sat,  4 Apr 2020 12:06:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9337088B0B;
	Sat,  4 Apr 2020 10:06:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8+XZ2bkiTBXs; Sat,  4 Apr 2020 10:06:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E784A88A13;
	Sat,  4 Apr 2020 10:05:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8A0AD1BF28F
 for <devel@linuxdriverproject.org>; Sat,  4 Apr 2020 10:05:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 82AA186205
 for <devel@linuxdriverproject.org>; Sat,  4 Apr 2020 10:05:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GTdbpPWOfiUp for <devel@linuxdriverproject.org>;
 Sat,  4 Apr 2020 10:05:55 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail27.static.mailgun.info (mail27.static.mailgun.info
 [104.130.122.27])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 88A7E86204
 for <devel@driverdev.osuosl.org>; Sat,  4 Apr 2020 10:05:52 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1585994755; h=Content-Type: MIME-Version: Message-ID:
 In-Reply-To: Date: References: Subject: Cc: To: From: Sender;
 bh=3GAnmkswPjwBSgBCS22g329FoV7EMVAnRPDSd8PlgYE=;
 b=RMYQlMrKaFc41PTp+Nip2Ut3OpyM/9fqlUqSy+hHHCrk4emAo3dcsNqmQUnXFHiGn4i27b7I
 qXLWYStLQxTebb86Q2A4yZnzkzQ8VwWnKnwxQryh0XwBTwqGThdcAUXz7xZf15PMyFCX83eo
 Z8h+KVaEfYxpvlRZJchT26I/H7I=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyI2ZDRhNSIsICJkZXZlbEBkcml2ZXJkZXYub3N1b3NsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e885bf5.7f736b4ed0d8-smtp-out-n04;
 Sat, 04 Apr 2020 10:05:41 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id CD7DEC433BA; Sat,  4 Apr 2020 10:05:41 +0000 (UTC)
Received: from tynnyri.adurom.net (tynnyri.adurom.net [51.15.11.48])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 628B7C433F2;
 Sat,  4 Apr 2020 10:05:39 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 628B7C433F2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: George Spelvin <lkml@SDF.ORG>
Subject: Re: [PATCH v3] staging: wilc1000: Use crc7 in lib/ rather than a
 private copy
References: <20200326152251.19094-1-ajay.kathat@microchip.com>
 <20200402082745.GG2001@kadam> <20200402153034.GB2013@SDF.ORG>
 <20200403091029.GC2001@kadam> <20200403234028.GA11944@SDF.ORG>
Date: Sat, 04 Apr 2020 13:05:36 +0300
In-Reply-To: <20200403234028.GA11944@SDF.ORG> (George Spelvin's message of
 "Fri, 3 Apr 2020 23:40:28 +0000")
Message-ID: <87k12vo9an.fsf@tynnyri.adurom.net>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
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
 gregkh@linuxfoundation.org, linux-wireless@vger.kernel.org,
 Adham.Abozaeid@microchip.com, johannes@sipsolutions.net,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

George Spelvin <lkml@SDF.ORG> writes:

> On Fri, Apr 03, 2020 at 12:10:29PM +0300, Dan Carpenter wrote:
>> On Thu, Apr 02, 2020 at 03:30:34PM +0000, George Spelvin wrote:
>> > On Thu, Apr 02, 2020 at 11:27:45AM +0300, Dan Carpenter wrote:
>> > > I don't know how this patch made it through two versions without anyone
>> > > complaining that this paragraph should be done as a separate patch...
>> > 
>> > I often fold comment (and spacing/formatting) patches in to a main
>> > patch, when touching adjacent code anyway and it doesn't cause
>> > distracting clutter.
>> > 
>> > This seemed like such a case, which is why I submitted it as one.
>> > But it's a bit of style thing.
>> > 
>> 
>> We're super strict in Staging.  :P  Greg is more strict than I am.
>
> Okay, but it's my fault, not his.
>
>>> This should have you Signed-off-by.  The Reviewed-by is kind of assumed
>>>> so you can drop that bit.  But everyone who touches a patch needs to
>>>> add their signed off by.
>>> 
>>> Er... all he did was add "staging: " to the front of the title.
>>> 
>>> That's not a change to the code at all, and as trivial a change
>>> to the commit message as adding "Reviewed-by:" to the end.
>>> We don't need S-o-b for such things or we'd end up in a horrible
>>> infinite recursion.
>> 
>> You've misunderstood.  He sent the email so he has to add his
>> Signed-off-by.  It's not at all related to changing anything in the
>> patch.  That's how sign offs work.
>
> Looking at my commits (just because I remember how they went in),
> you seem to be right, but damn, submitting-patches.rst could be
> clearer on the subject.
>
> I understand that it's addressed more to patch authors than
> maintainers forwarding them, but I've read that thing a dozen times,
> and the description of S-o-b always seemed to be about copyright.
>
> So I had assumed that edits which were below the de minimus standard
> of copyright didn't need a separate S-o-b.
>
> Am I right that there should be an S-o-b from everyone from the
> patch author to the patch committer (as recorded in git)?

Yes, everyone either modifying or distributing (=submitting) the patch
should add their s-o-b.

> And the one exception is that we don't need S-o-b for git pulls after
> that, because the merge commits record the information?

Correct. When you do a git pull you are pulling the commits without any
modification, so technically it's not even possible to add the s-o-b
lines to the commits you are pulling. Modifying the commit logs would
need a rebase and then it not would be a normal git pull anymore.

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id ED302258DFF
	for <lists+driverdev-devel@lfdr.de>; Tue,  1 Sep 2020 14:13:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0A84A21FA9;
	Tue,  1 Sep 2020 12:13:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YMeaQb6CubAs; Tue,  1 Sep 2020 12:13:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0462A204FD;
	Tue,  1 Sep 2020 12:13:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C69301BF28C
 for <devel@linuxdriverproject.org>; Tue,  1 Sep 2020 12:13:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C39D6861F2
 for <devel@linuxdriverproject.org>; Tue,  1 Sep 2020 12:13:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9jfq1HTqJzyX for <devel@linuxdriverproject.org>;
 Tue,  1 Sep 2020 12:13:06 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx4.wp.pl (mx4.wp.pl [212.77.101.11])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4407186168
 for <devel@driverdev.osuosl.org>; Tue,  1 Sep 2020 12:13:06 +0000 (UTC)
Received: (wp-smtpd smtp.wp.pl 16579 invoked from network);
 1 Sep 2020 14:06:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1598961984; bh=3huBavgT4ySq87VOuq/vV16pJjwKJIO2mPQe6DkFArk=;
 h=Subject:To:From;
 b=ulJCHIZzbqTaf7Nrq0fSSwY1A/u/o+MEC31Yw73+O4/jXjUrB4j0LgL/NKm+907pr
 PXBYn3SZhaNbilaYkxTeefodZUu0dCTG6fL2FMeeFKl0LLTjV1Ze6y94RWHtBeG7f5
 2NRmgdtCt2JJqKV0htUPTzZvC+9gPGCQwmMaa5jA=
Received: from 188.146.234.2.nat.umts.dynamic.t-mobile.pl (HELO
 [192.168.1.110]) (antoni.przybylik@wp.pl@[188.146.234.2])
 (envelope-sender <antoni.przybylik@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <devel@driverdev.osuosl.org>; 1 Sep 2020 14:06:24 +0200
Subject: Fwd: Re: [PATCH] staging: gdm724x: gdm_tty: corrected macro by adding
 brackets
References: <e11b8f5e-1b85-fe24-36d5-c8d707ce4e66@wp.pl>
To: Greg KH <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 devel@driverdev.osuosl.org
From: "antoni.przybylik@wp.pl" <antoni.przybylik@wp.pl>
X-Forwarded-Message-Id: <e11b8f5e-1b85-fe24-36d5-c8d707ce4e66@wp.pl>
Message-ID: <15764d01-0602-18c6-e2b1-089b71a2061d@wp.pl>
Date: Tue, 1 Sep 2020 14:06:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <e11b8f5e-1b85-fe24-36d5-c8d707ce4e66@wp.pl>
Content-Language: en-US
X-WP-MailID: 612e0fd7c75c72b6c399a159ae2e4411
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 0000000 [oYPU]                               
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 01.09.2020 13:08, Greg KH wrote:
> On Tue, Sep 01, 2020 at 12:43:11PM +0200, antoniprzybylik wrote:
>> Such macros are dangerous. Consider following example:
>> 	#define GDM_TTY_READY(gdm) (gdm && gdm->tty_dev && gdm->port.count)
>> 	GDM_TTY_READY(a + b)
>> This macro will be expanded in such a way:
>> 	(a + b && a + b->tty_dev && a + b->port.count)
>> And it will lead to errors.
> This is for a pointer, no one would ever do that :)

Nobody adds a pointer to a pointer, but it's common to add to it some 
value like that:

GDM_TTY_READY(myptr + 0x1000)

> But, if you really worry about this, turn it into an inline function,
> that way you get the proper typedef safety, which is what something like
> this should really be, not a macro.

How to do it? Do I need to send another patch?

Antoni Przybylik

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

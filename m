Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A92EC1CC41F
	for <lists+driverdev-devel@lfdr.de>; Sat,  9 May 2020 21:30:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5B10F88802;
	Sat,  9 May 2020 19:30:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id clAg3xLT88IE; Sat,  9 May 2020 19:30:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id DB9D6887AF;
	Sat,  9 May 2020 19:30:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DC19C1BF83A
 for <devel@linuxdriverproject.org>; Sat,  9 May 2020 19:30:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id CFF36203D5
 for <devel@linuxdriverproject.org>; Sat,  9 May 2020 19:30:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 33yl3VLOkNFZ for <devel@linuxdriverproject.org>;
 Sat,  9 May 2020 19:30:26 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kocurkovo.cz (mail.kocurkovo.cz [185.8.236.170])
 by silver.osuosl.org (Postfix) with ESMTPS id 4F63E203C4
 for <devel@driverdev.osuosl.org>; Sat,  9 May 2020 19:30:26 +0000 (UTC)
Received: by mail.kocurkovo.cz (Postfix, from userid 1000)
 id 32BF3E5C; Sat,  9 May 2020 21:30:22 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.kocurkovo.cz 32BF3E5C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kocurkovo.cz;
 s=mail; t=1589052622;
 bh=3NqGALpJejJs6fZ2p4UE2vn0NWmO4nMUqcpgpgZA2OU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=YkDubO0lgoq4RjOfZ4pS4p8/SWmkZcksTIYnf0vfbdLCguIWi7jvDYlQiMUjkCBoG
 g4b1WYrHDfM0Xr0B8bPIXso1ISuEDDVBz2nYLDJXtAEYJCGU6hYwmeWWVLNMaOb0AS
 oDUc8qo4vFcjM1g8OHazyukew77MMq1h37zioEGk=
Date: Sat, 9 May 2020 21:30:22 +0200
From: Matej Dujava <mdujava@kocurkovo.cz>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] staging: vt6656: vt6655: clean Makefiles
Message-ID: <20200509193022.GA4665@new.kocurkovo.cz>
Mail-Followup-To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Forest Bond <forest@alittletooquiet.net>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
References: <1589015247-738-1-git-send-email-mdujava@kocurkovo.cz>
 <20200509170714.GC2482887@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200509170714.GC2482887@kroah.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
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
Cc: devel@driverdev.osuosl.org, Forest Bond <forest@alittletooquiet.net>,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, May 09, 2020 at 07:07:14PM +0200, Greg Kroah-Hartman wrote:
>On Sat, May 09, 2020 at 11:07:27AM +0200, Matej Dujava wrote:
>> This patch is removing CFLAGS that are defining flags that are not used.
>
>You are also modifying the indentation and moving lines around for no
>reason :(
>
>Please only do one thing for a patch, and always describe everything you
>do in the changelog text.

sorry, I will split it into two separate patches and resend as v2

Thanks,
Matej

>
>Can you fix this up and send a v2?
>
>thanks,
>
>greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

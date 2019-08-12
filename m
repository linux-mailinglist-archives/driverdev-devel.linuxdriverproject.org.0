Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CD49789B18
	for <lists+driverdev-devel@lfdr.de>; Mon, 12 Aug 2019 12:14:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 88784220C2;
	Mon, 12 Aug 2019 10:14:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mSqiFarA0Ekm; Mon, 12 Aug 2019 10:14:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6312A2206D;
	Mon, 12 Aug 2019 10:14:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 44C621BF2BB
 for <devel@linuxdriverproject.org>; Mon, 12 Aug 2019 10:14:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 421CB22026
 for <devel@linuxdriverproject.org>; Mon, 12 Aug 2019 10:14:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JS5XpU94gCz3 for <devel@linuxdriverproject.org>;
 Mon, 12 Aug 2019 10:14:22 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtp113.ord1c.emailsrvr.com (smtp113.ord1c.emailsrvr.com
 [108.166.43.113])
 by silver.osuosl.org (Postfix) with ESMTPS id 999DE21FA8
 for <devel@driverdev.osuosl.org>; Mon, 12 Aug 2019 10:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
 s=20190130-41we5z8j; t=1565604861;
 bh=xOQ2SaWxyHXU419hBRM5D56wTKkjqwAXGPtYpsJA9bI=;
 h=Subject:To:From:Date:From;
 b=WAHSQYe+ucBnJ2Z7rSn//9GhxtOR7ghG3tr4F+/NPFOzz4pPWuRcxn9YSQrlgid44
 nvPQRDO+eeMnwHphb5CZsIWbZDhrCI+KvVzJEeX5H3hXMcmNFPccyCSQkW3ZvaGbc2
 GbJFSVwnD2KB/9my0GxCeLXem8Xkqg7gwy7JGji8=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp23.relay.ord1c.emailsrvr.com (Authenticated sender:
 abbotti-AT-mev.co.uk) with ESMTPSA id D444A402D3; 
 Mon, 12 Aug 2019 06:14:20 -0400 (EDT)
X-Sender-Id: abbotti@mev.co.uk
Received: from [10.0.0.62] (remote.quintadena.com [81.133.34.160])
 (using TLSv1.2 with cipher AES128-SHA) by 0.0.0.0:465 (trex/5.7.12);
 Mon, 12 Aug 2019 06:14:21 -0400
Subject: Re: linux-5.3-rc4/drivers/staging/comedi/drivers/dt3000.c:373:
 (error) Signed integer overflow for expression 'divider*base'
To: David Binderman <dcb314@hotmail.com>,
 "hsweeten@visionengravers.com" <hsweeten@visionengravers.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <DB7PR08MB3801C29431C1A737AE60F0C99CD30@DB7PR08MB3801.eurprd08.prod.outlook.com>
From: Ian Abbott <abbotti@mev.co.uk>
Organization: MEV Ltd.
Message-ID: <482e8016-fc00-025f-fe91-aecf7cbe844b@mev.co.uk>
Date: Mon, 12 Aug 2019 11:14:19 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <DB7PR08MB3801C29431C1A737AE60F0C99CD30@DB7PR08MB3801.eurprd08.prod.outlook.com>
Content-Language: en-GB
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

On 12/08/2019 08:37, David Binderman wrote:
> Hello there,
> 
> Source code is
> 
>      prescale = 15;
>      base = timer_base * (1 << prescale);
>      divider = 65535;
>      *nanosec = divider * base;
> 
> timer_base seems to be 500 or 100.
> nanosec is a pointer to int, so it can only hold about 2,000,000,000 nanoseconds, or about 2 seconds.

Thanks for the report.

I couldn't reproduce the error with the compiler version I was using, 
but I can see that it is likely to result in an arithmetic overflow.

I think the main problem is that the line (in (dt3k_ns_to_timer()):

       base = timer_base * (1 << prescale);

should be:

       base = timer_base * (prescale + 1);

which matches the earlier instance of this calculation in the same function.

In practice, these lines of code should never be reached due to earlier 
range checks in dt3k_ai_cmdtest().

> Suggest rework code to use longs.

It wouldn't do any harm to change the `int` variables to `unsigned int`.

> 
> Regards
> 
> David Binderman
> 
> 
> time-_Base seems to be 50 or 100.
> 


-- 
-=( Ian Abbott <abbotti@mev.co.uk> || Web: www.mev.co.uk )=-
-=( MEV Ltd. is a company registered in England & Wales. )=-
-=( Registered number: 02862268.  Registered address:    )=-
-=( 15 West Park Road, Bramhall, STOCKPORT, SK7 3JZ, UK. )=-
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

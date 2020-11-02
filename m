Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AC1F72A2850
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Nov 2020 11:31:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2555D87387;
	Mon,  2 Nov 2020 10:31:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id T-sIETydAX9D; Mon,  2 Nov 2020 10:31:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D943A871FB;
	Mon,  2 Nov 2020 10:31:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A1DE01BF278
 for <devel@linuxdriverproject.org>; Mon,  2 Nov 2020 10:31:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9B59286738
 for <devel@linuxdriverproject.org>; Mon,  2 Nov 2020 10:31:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1YEDCSaPm2JJ for <devel@linuxdriverproject.org>;
 Mon,  2 Nov 2020 10:31:52 +0000 (UTC)
X-Greylist: delayed 00:06:24 by SQLgrey-1.7.6
Received: from smtp114.iad3a.emailsrvr.com (smtp114.iad3a.emailsrvr.com
 [173.203.187.114])
 by whitealder.osuosl.org (Postfix) with ESMTPS id BF00C86712
 for <devel@driverdev.osuosl.org>; Mon,  2 Nov 2020 10:31:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
 s=20190130-41we5z8j; t=1604312727;
 bh=1iPAZQdymRK4SMK3HljywvaZpxIg/V54cJQz7Xq3clc=;
 h=Subject:To:From:Date:From;
 b=LdDLn21RTRd75avsOEC78Rdy1cZHBfqoiUy1jHCZwO+gGwkI738bZi9SG6mQhHnOQ
 AkKKXvcRiZJH7j/UKF82rW5vINE/aAsR3+RgDqzWWBH/QkzGl4verYdAMnea0W5P1x
 M0CmJ1MaMo1t6qa04gNWrJ1qSqISGQLAH0D9n00k=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp23.relay.iad3a.emailsrvr.com (Authenticated sender:
 abbotti-AT-mev.co.uk) with ESMTPSA id 8730324EDF; 
 Mon,  2 Nov 2020 05:25:26 -0500 (EST)
Subject: Re: [PATCH] staging: comedi: cb_pcidas: reinstate delay removed from
 trimpot setting
To: devel@driverdev.osuosl.org
References: <20201029141833.126856-1-abbotti@mev.co.uk>
From: Ian Abbott <abbotti@mev.co.uk>
Organization: MEV Ltd.
Message-ID: <3d7cf15a-c389-ec2c-5e29-8838e8466790@mev.co.uk>
Date: Mon, 2 Nov 2020 10:25:25 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20201029141833.126856-1-abbotti@mev.co.uk>
Content-Language: en-GB
X-Classification-ID: 860e8a4e-d374-4e47-a4e7-608e1eb206c8-1-1
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, stable@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 29/10/2020 14:18, Ian Abbott wrote:
> Commit eddd2a4c675c ("staging: comedi: cb_pcidas: refactor
> write_calibration_bitstream()") inadvertently removed one of the
> `udelay(1)` calls when writing to the calibration register in
> `cb_pcidas_calib_write()`.  Reinstate the delay.  It may seem strange
> that the delay is placed before the register write, but this function is
> called in a loop so the extra delay can make a difference.
> 
> This _might_ solve reported issues reading analog inputs on a
> PCIe-DAS1602/16 card where the analog input values "were scaled in a
> strange way that didn't make sense".  On the same hardware running a
> system with a 3.13 kernel, and then a system with a 4.4 kernel, but with
> the same application software, the system with the 3.13 kernel was fine,
> but the one with the 4.4 kernel exhibited the problem.  Of the 90
> changes to the driver between those kernel versions, this change looked
> like the most likely culprit.

Actually, I've realized that this patch will have no effect on the 
PCIe-DAS1602/16 card because it uses a different driver - cb_pcimdas, 
not cb_pcidas.

Greg, you might as well drop this patch if you haven't already applied 
it, since it was only a hunch that it fixed a problem.

-- 
-=( Ian Abbott <abbotti@mev.co.uk> || MEV Ltd. is a company  )=-
-=( registered in England & Wales.  Regd. number: 02862268.  )=-
-=( Regd. addr.: S11 & 12 Building 67, Europa Business Park, )=-
-=( Bird Hall Lane, STOCKPORT, SK3 0XA, UK. || www.mev.co.uk )=-
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

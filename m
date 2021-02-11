Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CC43318796
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Feb 2021 11:00:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B1EE487422;
	Thu, 11 Feb 2021 10:00:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0sMqRF-6jDDF; Thu, 11 Feb 2021 10:00:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id DAD458732E;
	Thu, 11 Feb 2021 10:00:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B651E1BF3FF
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 10:00:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id AC8A98732E
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 10:00:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0-Vub8YlOGGk for <devel@linuxdriverproject.org>;
 Thu, 11 Feb 2021 10:00:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A984A87364
 for <devel@driverdev.osuosl.org>; Thu, 11 Feb 2021 10:00:21 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id CBA3064E95;
 Thu, 11 Feb 2021 10:00:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1613037621;
 bh=jLVPIT2Tb0aqIZLErCoySxXU9jKdMCQPZI74l/yB11M=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=kTEj0WSbvgoVRPTVqdgPpMhypgO6vXabbGifC4nz3VgbAanXm9oV5LZLIyUjWzT97
 WsOTf5vbxhSRNrgu23K/VFO4ZjobRCPezUxDqVPvUwRYSr6m1NdvS1Bp1CU5pjaoLa
 923LSWqv+k5JxRLEriDzZfjNzboBiRDS4xcvUnAY=
Date: Thu, 11 Feb 2021 11:00:18 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Hemansh Agnihotri <hemanshagnihotri27@gmail.com>
Subject: Re: [PATCH 1/1] staging: greybus: Added do - while in multi
 statement macro
Message-ID: <YCUAMgFa6i9vl9An@kroah.com>
References: <20210211095444.54447-1-hemanshagnihotri27@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210211095444.54447-1-hemanshagnihotri27@gmail.com>
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
Cc: devel@driverdev.osuosl.org, greybus-dev@lists.linaro.org, elder@kernel.org,
 johan@kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Feb 11, 2021 at 03:24:44PM +0530, Hemansh Agnihotri wrote:
> This patch add fixes an checkpatch error for "Macros with multiple statements
> should be enclosed in a do - while loop"
> 
> Signed-off-by: Hemansh Agnihotri <hemanshagnihotri27@gmail.com>

Any reason you didn't test-build your patch before sending it out?

That's a bit rude to reviewers :(

Please always do that.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

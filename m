Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B3DF6303B60
	for <lists+driverdev-devel@lfdr.de>; Tue, 26 Jan 2021 12:20:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D2B8686796;
	Tue, 26 Jan 2021 11:20:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6Q3eQal9030l; Tue, 26 Jan 2021 11:20:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id DB41B86785;
	Tue, 26 Jan 2021 11:20:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9BD9F1BF47E
 for <devel@linuxdriverproject.org>; Tue, 26 Jan 2021 11:20:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 983858676C
 for <devel@linuxdriverproject.org>; Tue, 26 Jan 2021 11:20:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GVIkOkemUm-D for <devel@linuxdriverproject.org>;
 Tue, 26 Jan 2021 11:20:39 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 56AEC85B71
 for <devel@driverdev.osuosl.org>; Tue, 26 Jan 2021 11:20:39 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7039022795;
 Tue, 26 Jan 2021 11:20:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1611660038;
 bh=cxRRKLvkAzn2aBTFkAN9CJZ7uMjLsyIWHcwe3vNgWns=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mboS0X9Ca6iVq9Fp7TWZryUk0WK0mCud4u2Gn2bvqyR8Tg60493cnPLHqJT/TsstQ
 HZyG+oSPHSEEjGphSBg+68LZYU3EAVpHn9G0VK3ysj0M5aTo0FwwohhObGsu9dziND
 Vh0cTQuEWEIoc1sgAGgYrvOXRqnBzT0RahtGfg1E=
Date: Tue, 26 Jan 2021 12:20:36 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Johannes Berg <johannes@sipsolutions.net>
Subject: Re: [PATCH] staging: rtl8723bs: fix wireless regulatory API misuse
Message-ID: <YA/7BL3eblv1glZr@kroah.com>
References: <20210126115409.d5fd6f8fe042.Ib5823a6feb2e2aa01ca1a565d2505367f38ad246@changeid>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210126115409.d5fd6f8fe042.Ib5823a6feb2e2aa01ca1a565d2505367f38ad246@changeid>
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
Cc: devel@driverdev.osuosl.org, Johannes Berg <johannes.berg@intel.com>,
 netdev@vger.kernel.org, linux-wireless@vger.kernel.org, ilan.peer@intel.com,
 Hans de Goede <hdegoede@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Jan 26, 2021 at 11:54:09AM +0100, Johannes Berg wrote:
> From: Johannes Berg <johannes.berg@intel.com>
> 
> This code ends up calling wiphy_apply_custom_regulatory(), for which
> we document that it should be called before wiphy_register(). This
> driver doesn't do that, but calls it from ndo_open() with the RTNL
> held, which caused deadlocks.
> 
> Since the driver just registers static regdomain data and then the
> notifier applies the channel changes if any, there's no reason for
> it to call this in ndo_open(), move it earlier to fix the deadlock.
> 
> Reported-and-tested-by: Hans de Goede <hdegoede@redhat.com>
> Fixes: 51d62f2f2c50 ("cfg80211: Save the regulatory domain with a lock")
> Signed-off-by: Johannes Berg <johannes.berg@intel.com>
> ---
> Greg, can you take this for 5.11 please? Or if you prefer, since the
> patch that exposed this and broke the driver went through my tree, I
> can take it as well.

Please feel free to take it through yours, as I don't think I'll have
any more staging patches for 5.11-final (or none have been sent to me
yet), so this might be the fastest way in:

Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

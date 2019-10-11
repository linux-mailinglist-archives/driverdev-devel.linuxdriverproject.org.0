Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FB6CD3BD5
	for <lists+driverdev-devel@lfdr.de>; Fri, 11 Oct 2019 11:02:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7AF7A88023;
	Fri, 11 Oct 2019 09:02:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tMNPoPE2-izB; Fri, 11 Oct 2019 09:02:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 498A487FF0;
	Fri, 11 Oct 2019 09:02:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 82DFB1BF969
 for <devel@linuxdriverproject.org>; Fri, 11 Oct 2019 09:02:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7FCD286D2A
 for <devel@linuxdriverproject.org>; Fri, 11 Oct 2019 09:02:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9wxQbJwIVZ2V for <devel@linuxdriverproject.org>;
 Fri, 11 Oct 2019 09:02:16 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1792D86D27
 for <devel@driverdev.osuosl.org>; Fri, 11 Oct 2019 09:02:16 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 59F6321D6C;
 Fri, 11 Oct 2019 09:02:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570784535;
 bh=FvTRvAG+rf7yebIY8LceMF0kGTjjLrQsCByAbMcG7ks=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=z/Z3zLqCx7YOJoJckdKqYeaP6ky3TvNHlCoFKSVLmBM7DTomsg/kAAe3XlsiMK5Tl
 Pz1MaeZ3dBEwdjTTY8qVT0cePbxx7OdrYIazkw1fQsM0n83kHl2KqaYcRF4eMce1g/
 JuGUw6LadSfnZYDOi6aCkxF/Gk5mwnXjN8Mzukao=
Date: Fri, 11 Oct 2019 11:02:13 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Wambui Karuga <wambui.karugax@gmail.com>
Subject: Re: [PATCH 2/5] staging: octeon: remove typedef declaration for
 cvmx_helper_link_info_t
Message-ID: <20191011090213.GB1076760@kroah.com>
References: <cover.1570773209.git.wambui.karugax@gmail.com>
 <78e2c3a4089261e416e9b890cdf81ef029966b75.1570773209.git.wambui.karugax@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <78e2c3a4089261e416e9b890cdf81ef029966b75.1570773209.git.wambui.karugax@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
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
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Oct 11, 2019 at 09:02:39AM +0300, Wambui Karuga wrote:
> -typedef union {
> +union cvmx_helper_link_info_t {

I agree with Julia, all of the "_t" needs to be dropped as that is
pointless.  It's a holdover from the original name where "_t" was trying
to say that this is a typedef.  Gotta love abuse of hungarian notation
:(

Please redo this patch series and resend.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

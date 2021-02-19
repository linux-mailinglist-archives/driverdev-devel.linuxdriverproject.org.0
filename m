Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 358CC31F76D
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Feb 2021 11:39:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6638B867ED;
	Fri, 19 Feb 2021 10:39:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ypLcjUrFGk_O; Fri, 19 Feb 2021 10:39:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9618186222;
	Fri, 19 Feb 2021 10:39:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 522E61BF2CC
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 10:39:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4989C87478
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 10:39:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PQewjWucGpV8 for <devel@linuxdriverproject.org>;
 Fri, 19 Feb 2021 10:39:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 33BF587477
 for <devel@driverdev.osuosl.org>; Fri, 19 Feb 2021 10:39:31 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0E3BE64E43;
 Fri, 19 Feb 2021 10:39:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1613731170;
 bh=urp5ZOcocqWHVmfIWn6PjXFv/C9rB6YTIaWKOtHWh4k=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ISp7o3lKsD1idpqx3DrPqcrG2YYXsowcS4Umi/rJJRJxedH6Bol6628CRrKZwkSIC
 jLvOOvgYPLv46ipwJT7D3vlI6VAaz7PmpR5j+d1fGNuWSti9tP6wDzBLGS9PW7xZxS
 fFjq3eaaCknamwPx7G55oIqoOQUmaOkDbLtW5BoE=
Date: Fri, 19 Feb 2021 11:39:27 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: 17UCS047_Prakash Dubey <prakashdubey1999@gmail.com>
Subject: Re: [PATCH] staging: fwserial: Fix alignment of function parameters
Message-ID: <YC+VX4NpOWX1z3+V@kroah.com>
References: <20210218102851.GA20810@gmail.com> <YC9zNVWX7R9kD0Rq@kroah.com>
 <CALVjNJP=iXH+u2zUB93UZo+1+Ly0g23k5JtPXFbx=vaO+5-0Gw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CALVjNJP=iXH+u2zUB93UZo+1+Ly0g23k5JtPXFbx=vaO+5-0Gw@mail.gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Feb 19, 2021 at 03:25:38PM +0530, 17UCS047_Prakash Dubey wrote:
> I was unable to align it right below the opening parenthesis, just by using
> tabs. And when I did that with spaces, the checkpatch yelled at me for
> using spaces. Any suggestions how to do this without using spaces? I am
> using vim, I will try to find a workaround meanwhile.

I have no context here for what you are asking about at all, sorry.

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

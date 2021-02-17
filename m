Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DF2631DB86
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Feb 2021 15:37:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 20F668677F;
	Wed, 17 Feb 2021 14:37:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FOdrR6Ngp9rN; Wed, 17 Feb 2021 14:37:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D0F09866B8;
	Wed, 17 Feb 2021 14:37:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5194D1BF3A0
 for <devel@linuxdriverproject.org>; Wed, 17 Feb 2021 14:37:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4DFA286F9E
 for <devel@linuxdriverproject.org>; Wed, 17 Feb 2021 14:37:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LYJkXfjN1N93 for <devel@linuxdriverproject.org>;
 Wed, 17 Feb 2021 14:37:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E5A3186EB1
 for <devel@driverdev.osuosl.org>; Wed, 17 Feb 2021 14:37:08 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 02BB764E02;
 Wed, 17 Feb 2021 14:37:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1613572628;
 bh=O5veh4OELfkyBJQ1B2KxNysd80YQUjhIRZwEUI8Oz20=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=YeCi/2wBslmEOMzRks85JVxgVPWqdo4YKErEQi2CCEUexokprnqMCU1evQFYvnadS
 pVp2nZpeqxwFjQ1EXxpaod0eW5DWgXsiU9lDaDzwn1TApW/uS267cDuTcG9rLoinPo
 lEiyZxclmhu3V+HXfis089DfuM9HsbJwV31pdd5M=
Date: Wed, 17 Feb 2021 15:37:04 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Sean Behan <codebam@riseup.net>
Subject: Re: [PATCH] staging: emxx_udc: remove unused variable driver_desc
Message-ID: <YC0qECFf+05Flik0@kroah.com>
References: <20210217142420.7350-1-codebam@riseup.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210217142420.7350-1-codebam@riseup.net>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, nathan@kernel.org,
 Kumar Kartikeya Dwivedi <memxor@gmail.com>,
 Colin Ian King <colin.king@canonical.com>, Alex Dewar <alex.dewar90@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Feb 17, 2021 at 09:24:17AM -0500, Sean Behan wrote:
> When building with W=1, there is a warning that this variable is unused.
> 
> It is not used so remove it to fix the warning.
> 
> Thanks to nathan@kernel.org for helping me submit my first patch.

This is nice, but is it needed in the changelog text?  Please put it
below the --- line when you resend.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

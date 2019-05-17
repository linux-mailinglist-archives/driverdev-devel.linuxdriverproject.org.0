Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A8B221449
	for <lists+driverdev-devel@lfdr.de>; Fri, 17 May 2019 09:31:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2C97F313B3;
	Fri, 17 May 2019 07:31:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZTtoqkDO1dpr; Fri, 17 May 2019 07:31:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 43D28241A8;
	Fri, 17 May 2019 07:31:02 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 90E3E1BF2E4
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 17 May 2019 07:31:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8DF2788256
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 17 May 2019 07:31:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iPAroiFLtfke
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 17 May 2019 07:31:00 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 28EC48811F
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 17 May 2019 07:31:00 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 794DC206A3;
 Fri, 17 May 2019 07:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558078260;
 bh=QCzu4U9JUmK2ntiJLrxA8xP7oE6ldQ0GupstZYlGUYw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=r2upur6gFjWX8nndrWDZYPqgv+WyUCYBPILPDy82Ma1RPVtLHrfRttcWWtEUvwkAa
 AjZC/CpBgtZLBcrrkG5afU/dOEixiWC1gP7Dxu+pQAJVAk8MxdBTIU2YY1+atBWE8h
 /LyxYLaoZHtBoiwGMHMONCEZMpDJgWu3itiEmSmc=
Date: Fri, 17 May 2019 09:30:57 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Jeremy Sowden <jeremy@azazel.net>
Subject: Re: [PATCH v2 1/9] staging: kpc2000: removed trailing white-space.
Message-ID: <20190517073057.GA2631@kroah.com>
References: <20190516200411.17715-1-jeremy@azazel.net>
 <20190516213814.22232-1-jeremy@azazel.net>
 <20190516213814.22232-2-jeremy@azazel.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190516213814.22232-2-jeremy@azazel.net>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: Linux Driver Project Developer List
 <driverdev-devel@linuxdriverproject.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, May 16, 2019 at 10:38:06PM +0100, Jeremy Sowden wrote:
> Removed trailing white-space from four files.
> 
> Signed-off-by: Jeremy Sowden <jeremy@azazel.net>

I've applied, just this one patch from the series, please fix the rest
up and resend.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DAA0623E0E1
	for <lists+driverdev-devel@lfdr.de>; Thu,  6 Aug 2020 20:39:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id EBD4E88472;
	Thu,  6 Aug 2020 18:39:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IDd+rECkbZlV; Thu,  6 Aug 2020 18:39:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CCFC988464;
	Thu,  6 Aug 2020 18:39:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8AFA91BF5E0
 for <devel@linuxdriverproject.org>; Thu,  6 Aug 2020 18:39:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8773C8840C
 for <devel@linuxdriverproject.org>; Thu,  6 Aug 2020 18:39:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R-WLwBCZvYzC for <devel@linuxdriverproject.org>;
 Thu,  6 Aug 2020 18:39:19 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1F3C9883AC
 for <devel@driverdev.osuosl.org>; Thu,  6 Aug 2020 18:39:19 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B6438221E3;
 Thu,  6 Aug 2020 18:39:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1596739159;
 bh=ZrgeGz2eQCzY3et54NjiihndUZVStwHlqyFDNY4ncaU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=uJteJ4kYFz3S0hlJGMQXf/Ngjd7dsaLoheNZVjaSkDcbqYZTuH3mZqbQZQvuLX3Tx
 CPyXdm9BlKeFgU8cBxqfyKY/glgT1TlxF/XnfXmThAxzlnSwjXjQr90O2dNlKjpSHH
 nzoSmKUv6q4c9v1jEY/bI9801Infb1Xdoj+LD5gI=
Date: Thu, 6 Aug 2020 20:39:33 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Cengiz Can <cengiz@kernel.wtf>
Subject: Re: [PATCH v6] staging: atomisp: move null check to earlier point
Message-ID: <20200806183933.GA2939128@kroah.com>
References: <20200731083856.GF3703480@smile.fi.intel.com>
 <20200801220101.2783-1-cengiz@kernel.wtf>
 <173c50d7bb0.2bfa.85c738e3968116fc5c0dc2de74002084@kernel.wtf>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <173c50d7bb0.2bfa.85c738e3968116fc5c0dc2de74002084@kernel.wtf>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 andy.shevchenko@gmail.com, sakari.ailus@linux.intel.com, mchehab@kernel.org,
 dan.carpenter@oracle.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Aug 06, 2020 at 09:34:22PM +0300, Cengiz Can wrote:
> Hello Andy,
> 
> Can I get some feedback on v6 please?


It's been 4 days, in the middle of a merge window, please give people a
chance to catch up on other things...

and do not top post please.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

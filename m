Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 938E019EB6A
	for <lists+driverdev-devel@lfdr.de>; Sun,  5 Apr 2020 15:08:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CF13585E99;
	Sun,  5 Apr 2020 13:07:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Tvt0RXTLNnK5; Sun,  5 Apr 2020 13:07:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B8B9885BD0;
	Sun,  5 Apr 2020 13:07:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DFCE31BF2A6
 for <devel@linuxdriverproject.org>; Sun,  5 Apr 2020 13:07:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id DC40487E37
 for <devel@linuxdriverproject.org>; Sun,  5 Apr 2020 13:07:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QVjud9Kwa+XE for <devel@linuxdriverproject.org>;
 Sun,  5 Apr 2020 13:07:56 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 68F0B87E34
 for <devel@driverdev.osuosl.org>; Sun,  5 Apr 2020 13:07:56 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BBDF120672;
 Sun,  5 Apr 2020 13:07:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586092076;
 bh=2eM9DcYdih1xgRghkCMWJ+U/JpTdp1SmnOuimv4Gj9g=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Ty/2W+IxUOUia03bQMxbVaqCsMqgLAKlc+WW8uPATKlQF1g/BYoGKqQ3IuSvFQVtr
 SPPtglnWfPdygAFO2+eWiDT/ZrstqxbO+CMiosRB10SlfIPbSeOC5WSbyCpYljtrAT
 D0N4zJR1K9ietLymmgnRjrPedYXbgsw0njoK9Scw=
Date: Sun, 5 Apr 2020 15:07:53 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: kbuild test robot <lkp@intel.com>
Subject: Re: [staging:staging-testing 41/41]
 drivers/staging/vt6655/baseband.c:1711:15: warning: The scope of the
 variable 'preamble' can be reduced. [variableScope]
Message-ID: <20200405130753.GA1565087@kroah.com>
References: <202004052024.Gapw2WV7%lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202004052024.Gapw2WV7%lkp@intel.com>
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
Cc: devel@driverdev.osuosl.org, Stefano Brivio <sbrivio@redhat.com>,
 Briana Oursler <briana.oursler@gmail.com>, kbuild-all@lists.01.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Apr 05, 2020 at 08:43:40PM +0800, kbuild test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-testing
> head:   e7b6875944e61bec586ede80b95727cd55381e1e
> commit: e7b6875944e61bec586ede80b95727cd55381e1e [41/41] Staging: vt6655: Replace camel case variable names.
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> 
> cppcheck warnings: (new ones prefixed by >>)
> 
> >> drivers/staging/vt6655/baseband.c:1711:15: warning: The scope of the variable 'preamble' can be reduced. [variableScope]
>     unsigned int preamble;
>                  ^
> >> drivers/staging/vt6655/baseband.c:1912:16: warning: The scope of the variable 'by_value' can be reduced. [variableScope]
> >>  unsigned char by_value;
>                   ^
>    drivers/staging/vt6655/baseband.c:1955:16: warning: The scope of the variable 'by_value' can be reduced. [variableScope]
> >>  unsigned char by_value;
>                   ^

Are we seriously going to take foolish things like this from cppcheck
seriously?

Please no, "reducing scope" is an interesting thing to consider, but
really, solves almost nothing.  It will do nothing but cause a lot of
pointless churn.

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

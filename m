Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 63A89B5BB6
	for <lists+driverdev-devel@lfdr.de>; Wed, 18 Sep 2019 08:16:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B2EB3214D2;
	Wed, 18 Sep 2019 06:16:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BCM1imAbfeoJ; Wed, 18 Sep 2019 06:16:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 799A8203CC;
	Wed, 18 Sep 2019 06:16:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0996D1BF5F6
 for <devel@linuxdriverproject.org>; Wed, 18 Sep 2019 06:16:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 06A008523B
 for <devel@linuxdriverproject.org>; Wed, 18 Sep 2019 06:16:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S6XwZo3Hghu7 for <devel@linuxdriverproject.org>;
 Wed, 18 Sep 2019 06:16:08 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 66F16850DC
 for <devel@driverdev.osuosl.org>; Wed, 18 Sep 2019 06:16:08 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 909B020665;
 Wed, 18 Sep 2019 06:16:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568787368;
 bh=9+1j0c62Hdp93RT/nCYlXl4BZbarkBUvvEVoQsUdB98=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=e78QY50bO1zk1qhLTUZ4na4y+XJ5QC2JI4yWEgWDi95tgwJ7SnwgNwCAFJ3U5olf7
 CtLelPy8QitXliWD8n00wTIFEgLJi0V3uC/5sXg6vABNiTpYZ9z73dgKvPZyRt0WAS
 Vu1aW1z50LFLOPIXVfDUr05WdZPXCo4CheBLMPOY=
Date: Wed, 18 Sep 2019 08:16:05 +0200
From: 'Greg KH' <gregkh@linuxfoundation.org>
To: Namjae Jeon <namjae.jeon@samsung.com>
Subject: Re: [PATCH] staging: exfat: add exfat filesystem code to
Message-ID: <20190918061605.GA1832786@kroah.com>
References: <8998.1568693976@turing-police>
 <20190917053134.27926-1-qkrwngud825@gmail.com>
 <20190917054726.GA2058532@kroah.com>
 <CGME20190917060433epcas2p4b12d7581d0ac5477d8f26ec74e634f0a@epcas2p4.samsung.com>
 <CAD14+f1adJPRTvk8awgPJwCoHXSngqoKcAze1xbHVVvrhSMGrQ@mail.gmail.com>
 <004401d56dc9$b00fd7a0$102f86e0$@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <004401d56dc9$b00fd7a0$102f86e0$@samsung.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: devel@driverdev.osuosl.org, linkinjeon@gmail.com,
 'Valdis Kletnieks' <valdis.kletnieks@vt.edu>,
 'Ju Hyung Park' <qkrwngud825@gmail.com>, linux-kernel@vger.kernel.org,
 alexander.levin@microsoft.com, sergey.senozhatsky@gmail.com,
 linux-fsdevel@vger.kernel.org, sj1557.seo@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

A: http://en.wikipedia.org/wiki/Top_post
Q: Were do I find info about this thing called top-posting?
A: Because it messes up the order in which people normally read text.
Q: Why is top-posting such a bad thing?
A: Top-posting.
Q: What is the most annoying thing in e-mail?

A: No.
Q: Should I include quotations after my reply?

http://daringfireball.net/2007/07/on_top

On Wed, Sep 18, 2019 at 11:35:08AM +0900, Namjae Jeon wrote:
> I've summarized some of the big differences between sdfat and exfat
> in linux-next.
> 
> 1. sdfat has been refactored to improve compatibility, readability and
> to be linux friendly.(included support mass storages larger than 2TB.)
> 
> 2. sdfat has been optimized for the performance of SD-cards.
>   - Support SD-card friendly block allocation and delayed allocation
>     for vfat-fs only.
>   - Support aligned_mpage_write for both vfat-fs and exfat-fs
> 
> 3. sdfat has been optimized for the performance of general operations
>     like create,lookup and readdir.
> 
> 4. Fix many critical and minor bugs
>  - Handle many kinds of error conditions gracefully to prevent panic.
>  - Fix critical bugs related to rmdir, truncate behavior and so on...
> 
> 5. Fix NLS functions

Those are all wonderful things, any chances you can point out the
individual commits that reflect these bugfixes?

> Note, that Samsung is still improving sdfat driver. For instance,
> what will be realeased soon is sdfat v2.3.0, which will include support
> for "UtcOffset" of "File Directory Entry", in order to satisfy
> exFAT specification 7.4.

If Samsung is going to continue to keep its internal tree for this
driver, there's no way we can take a code dump today and expect things
to keep in sync.

If Samsung agrees to do development of this codebase upstream in the
kernel tree, I will be glad to consider moving to this codebase instead
and working together on it.  Otherwise it makes no sense as things
instantly diverge with no way of keeping in sync (we only can commit to
one tree, while you can in both.)

If Samsung wishes to use their sdfat codebase as the "seed" to work from
for this, please submit a patch adding the latest version to the kernel
tree and we can compare and work from there.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

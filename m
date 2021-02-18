Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F7D531E744
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Feb 2021 09:09:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0F0238699C;
	Thu, 18 Feb 2021 08:09:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iw8c0FqC7lw1; Thu, 18 Feb 2021 08:09:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0E40286749;
	Thu, 18 Feb 2021 08:09:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 053F21BF2C5
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 08:09:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DE44F60585
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 08:09:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id I4ByfrJjbKx3 for <devel@linuxdriverproject.org>;
 Thu, 18 Feb 2021 08:09:10 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id DE76E60592; Thu, 18 Feb 2021 08:09:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 589BF60585
 for <devel@driverdev.osuosl.org>; Thu, 18 Feb 2021 08:09:09 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9FF5C64E15;
 Thu, 18 Feb 2021 08:09:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1613635748;
 bh=MzGfg+8A2YxvW+4TGxe+Dognno59DY8gp+U/BjKPvXg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=kGWxFPDHJX5nUv8hiyMT5fwqChzo42nnK9oaU1VnXR4zX+bE9Fja9Y5ozx38tI6cP
 ujrRuB6K9Q7tOPfsATavqKkZZ8MZYRZAkQEw1gtgpE6MI4ufGn0q5QNQyO71Ays+6q
 NqBZu107jb4+H+7/UMPuewn41v4Z6k4Q8+FzTlsU=
Date: Thu, 18 Feb 2021 09:09:05 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: kernel test robot <lkp@intel.com>
Subject: Re: [driver-core:debugfs_remove_return_value 2/8]
 drivers/net/wireless/broadcom/b43/debugfs.c:661:28: error: void value not
 ignored as it ought to be
Message-ID: <YC4goS+wseu8ut2p@kroah.com>
References: <202102180525.MW0Rqaoj-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202102180525.MW0Rqaoj-lkp@intel.com>
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
Cc: devel@driverdev.osuosl.org, kbuild-all@lists.01.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Feb 18, 2021 at 05:58:41AM +0800, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git debugfs_remove_return_value
> head:   5187c2360ee1d023078e4302dad32fda1e895772
> commit: 72f2bf74b31aae983fb200aa7e84a05943bf27fc [2/8] debugfs: remove return value of debugfs_create_bool()
> config: x86_64-randconfig-c002-20210216 (attached as .config)
> compiler: gcc-9 (Debian 9.3.0-15) 9.3.0
> reproduce (this is a W=1 build):
>         # https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git/commit/?id=72f2bf74b31aae983fb200aa7e84a05943bf27fc
>         git remote add driver-core https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git
>         git fetch --no-tags driver-core debugfs_remove_return_value
>         git checkout 72f2bf74b31aae983fb200aa7e84a05943bf27fc
>         # save the attached .config to linux build tree
>         make W=1 ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>

You are working with an old tree, this was fixed 2 days ago, no need to
keep emailing me about this :(

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

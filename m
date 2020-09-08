Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89FCA2610D9
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Sep 2020 13:37:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 31F2E872AF;
	Tue,  8 Sep 2020 11:37:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wS9tKQnOL5Y5; Tue,  8 Sep 2020 11:37:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7C2CA87293;
	Tue,  8 Sep 2020 11:37:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 28A4E1BF82B
 for <devel@linuxdriverproject.org>; Tue,  8 Sep 2020 11:37:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 252A787297
 for <devel@linuxdriverproject.org>; Tue,  8 Sep 2020 11:37:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id teL59kBXy7VF for <devel@linuxdriverproject.org>;
 Tue,  8 Sep 2020 11:37:43 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6B967871F1
 for <devel@driverdev.osuosl.org>; Tue,  8 Sep 2020 11:37:43 +0000 (UTC)
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1709721741;
 Tue,  8 Sep 2020 11:37:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1599565061;
 bh=Tf/Ud7z6yO9OPLlDgfoM+VvRG3JW6RZx0ZjdhLOtpM4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=DmGwKgdzLtdmv1X6Xcua3RSiR7e977iiKBWrPS4LNOCCNJX+dSV5WFAxdCMIlyCkt
 3wLv8Oc9zzo3mmjaAiE8s6S2h9ea7W2TpDMFtOd+qXoU8+x5ftBg0LgSVQDep5bBCj
 ot+2/SGqKwbgY8mJeIjG4E2ux0zwBkFMJf0bbVkQ=
Date: Tue, 8 Sep 2020 13:37:54 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: kernel test robot <lkp@intel.com>
Subject: Re: [driver-core:driver-core-testing 29/33]
 include/linux/platform_device.h:75:40: error: unknown type name
 'irq_handler_t'
Message-ID: <20200908113754.GA1453813@kroah.com>
References: <202009080432.5YpVmPhM%lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202009080432.5YpVmPhM%lkp@intel.com>
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
Cc: devel@driverdev.osuosl.org, Dejin Zheng <zhengdejin5@gmail.com>,
 kbuild-all@lists.01.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Sep 08, 2020 at 04:21:36AM +0800, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git driver-core-testing
> head:   fa802fde315b87157f6d7c5dfe5d926bdb97d6e4
> commit: 4f4e9ddba1225e2dcdd08ac91f1e82aaca51f2b8 [29/33] drivers: provide devm_platform_request_irq()
> config: h8300-randconfig-r014-20200907 (attached as .config)
> compiler: h8300-linux-gcc (GCC) 9.3.0
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         git checkout 4f4e9ddba1225e2dcdd08ac91f1e82aaca51f2b8
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-9.3.0 make.cross ARCH=h8300 

I'm going to drop this patch, and the follow-up patch for this, from my
trees.  Maybe the prototype for this function should go in a different
.h file to resolve these types of build issues?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8BDB8FBA7
	for <lists+driverdev-devel@lfdr.de>; Fri, 16 Aug 2019 09:06:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 605ED884FB;
	Fri, 16 Aug 2019 07:06:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LudP4K4QtPPH; Fri, 16 Aug 2019 07:06:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D382B884E5;
	Fri, 16 Aug 2019 07:06:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 166501BF354
 for <devel@linuxdriverproject.org>; Fri, 16 Aug 2019 07:06:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 13DDF2036C
 for <devel@linuxdriverproject.org>; Fri, 16 Aug 2019 07:06:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ELJ-EYRLfG16 for <devel@linuxdriverproject.org>;
 Fri, 16 Aug 2019 07:06:01 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 8A12720361
 for <devel@driverdev.osuosl.org>; Fri, 16 Aug 2019 07:06:01 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DC570206C1;
 Fri, 16 Aug 2019 07:06:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565939161;
 bh=nm906M80KO0Xu3l6PWo+UB5AziH6MjwJ4ERd8RA4nlo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=FIJRJpIqb8t6HI3YwtHz+CaoxOj+ej8gL0oStt1J9jR/k68GfgsF5KI0zIb5i9S5h
 UAPKhRCpOeTvcY4MlmqOCjTtzqg/MT36wSFTSb5ShXTeavXGzhlSnPzZAAy++kbFdY
 NhBemp7LY/Xc0ywrA0Q4IsUePHEjzJ7ALQvalpK0=
Date: Fri, 16 Aug 2019 09:05:59 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Zhao Yakui <yakui.zhao@intel.com>
Subject: Re: [RFC PATCH 04/15] drivers/acrn: add the basic framework of acrn
 char device driver
Message-ID: <20190816070559.GB1368@kroah.com>
References: <1565922356-4488-1-git-send-email-yakui.zhao@intel.com>
 <1565922356-4488-5-git-send-email-yakui.zhao@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1565922356-4488-5-git-send-email-yakui.zhao@intel.com>
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
Cc: devel@driverdev.osuosl.org, x86@kernel.org, linux-kernel@vger.kernel.org,
 Jason Chen CJ <jason.cj.chen@intel.com>, Jack Ren <jack.ren@intel.com>,
 Liu Shuo <shuo.a.liu@intel.com>, Mingqiang Chi <mingqiang.chi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Aug 16, 2019 at 10:25:45AM +0800, Zhao Yakui wrote:
> ACRN hypervisor service module is the important middle layer that allows
> the Linux kernel to communicate with the ACRN hypervisor. It includes
> the management of virtualized CPU/memory/device/interrupt for other ACRN
> guest. The user-space applications can use the provided ACRN ioctls to
> interact with ACRN hypervisor through different hypercalls.
> 
> Add one basic framework firstly and the following patches will
> add the corresponding implementations, which includes the management of
> virtualized CPU/memory/interrupt and the emulation of MMIO/IO/PCI access.
> The device file of /dev/acrn_hsm can be accessed in user-space to
> communicate with ACRN module.
> 
> Co-developed-by: Jason Chen CJ <jason.cj.chen@intel.com>
> Signed-off-by: Jason Chen CJ <jason.cj.chen@intel.com>
> Co-developed-by: Jack Ren <jack.ren@intel.com>
> Signed-off-by: Jack Ren <jack.ren@intel.com>
> Co-developed-by: Mingqiang Chi <mingqiang.chi@intel.com>
> Signed-off-by: Mingqiang Chi <mingqiang.chi@intel.com>
> Co-developed-by: Liu Shuo <shuo.a.liu@intel.com>
> Signed-off-by: Liu Shuo <shuo.a.liu@intel.com>
> Signed-off-by: Zhao Yakui <yakui.zhao@intel.com>
> ---
>  drivers/staging/Kconfig         |   2 +

Also, your subject line for all of these patches are wrong, it is not
drivers/acrn :(

And you forgot to cc: the staging maintainer :(

As I have said with NUMEROUS Intel patches in the past, I now refuse to
take patches from you all WITHOUT having it signed-off-by someone from
the Intel "OTC" group (or whatever the Intel Linux group is called these
days).  They are a resource you can not ignore, and if you do, you just
end up making the rest of the kernel community grumpy by having us do
their work for them :(

Please work with them.

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

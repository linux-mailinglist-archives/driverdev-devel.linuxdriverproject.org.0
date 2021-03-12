Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 89EA43392E3
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Mar 2021 17:18:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 653A34ED1C;
	Fri, 12 Mar 2021 16:18:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id C0JVVjAVodow; Fri, 12 Mar 2021 16:18:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6E0C54ECEA;
	Fri, 12 Mar 2021 16:18:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BE91F1BF27F
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 16:17:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id ACFC74ECEA
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 16:17:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mFnUeC57ilkp for <devel@linuxdriverproject.org>;
 Fri, 12 Mar 2021 16:17:53 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 05CE04ECE8
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 16:17:52 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 08E5B64FFE;
 Fri, 12 Mar 2021 16:17:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1615565872;
 bh=vvmKOMLVEnNJrko4CkfcC3IFtjxLY8L3IQ7gt9+kgAA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=0b04iIgCh8BJvz35LPCL2wRcR6djqmljqdm+CWnmMS7bzACfvTm7RGW7gVxgpsvTU
 lllBCfrU6y1jE+FHoRiAwJ3DrSgCymvvMxIfllg8uwJM2oEyeiQVi0c+qG2lETItYo
 FN+hLefRwRpvPy+JqUaHJNQVMvjQGNCQy2DRnHBI=
Date: Fri, 12 Mar 2021 17:17:49 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Fabio Aiuto <fabioaiuto83@gmail.com>
Subject: Re: [PATCH 0/3] staging: rtl8723bs: remove unused code blocks
Message-ID: <YEuULYAjcVOo5Cyr@kroah.com>
References: <cover.1615561446.git.fabioaiuto83@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1615561446.git.fabioaiuto83@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux.kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Mar 12, 2021 at 04:49:40PM +0100, Fabio Aiuto wrote:
> This patch set removes unused code blocks as required in
> TODO file:
> 
>     find and remove code blocks guarded by never set CONFIG_FOO defines
> 
> Fabio Aiuto (3):
>   staging: rtl8723bs: remove unused code blocks
>   staging: rtl8723bs: remove unused code blocks
>   staging: rtl8723bs: remove unused code blocks

You sent 3 patches that did different things, yet had identical subject
lines :(

Please fix up and make them unique.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

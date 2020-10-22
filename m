Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 10F462957E9
	for <lists+driverdev-devel@lfdr.de>; Thu, 22 Oct 2020 07:29:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 89A5085751;
	Thu, 22 Oct 2020 05:29:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cviSu7KyPvAk; Thu, 22 Oct 2020 05:29:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8CB2A865C1;
	Thu, 22 Oct 2020 05:29:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7C5591BF847
 for <devel@linuxdriverproject.org>; Thu, 22 Oct 2020 05:29:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 775EF8716F
 for <devel@linuxdriverproject.org>; Thu, 22 Oct 2020 05:29:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LNqaaeY-H42Q for <devel@linuxdriverproject.org>;
 Thu, 22 Oct 2020 05:29:36 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1BB6F8716C
 for <devel@driverdev.osuosl.org>; Thu, 22 Oct 2020 05:29:36 +0000 (UTC)
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7A02F2225F;
 Thu, 22 Oct 2020 05:29:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1603344575;
 bh=RxoQR6FPdO2na09crQ7wBBRZV1pO5FWJuEADJXp4gtE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=kULppAnKrD26Kte2Qisi3cglwPBKAzJGQHBlEk8uJr73Kb7wLMeRqkXUhkWbFYm13
 I5R3YUCC1PKiT+oCoykPW386QwnqOAcqp0Idb/hnLJpM0feODlpRzDUCjoeZaQgw5i
 r/2sGpD64Cu6k/u8yxtbSMteZUr5GK6xvpqwED94=
Date: Thu, 22 Oct 2020 07:29:31 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Deepak R Varma <mh12gx2825@gmail.com>
Subject: Re: [Outreachy kernel] Clean up query: greybus/audio_manager_module.c
Message-ID: <20201022052931.GA6093@kroah.com>
References: <20201022033701.GA329478@ubuntu204>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201022033701.GA329478@ubuntu204>
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
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com,
 mgreer@animalcreek.com, vaibhav.sr@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Oct 22, 2020 at 09:07:01AM +0530, Deepak R Varma wrote:
> Hello,
> I am reviewing the file: drivers/staging/greybus/audio_manager_module.c
> and have found that there are several gb_audio_module_*_show functions
> that accept "struct gb_audio_manager_module_attribute * " as a function
> parameter. However, this parameter is not used and should not be
> necessary. Would you suggest cleaning up such functions.

Try removing it and see why it is really needed to be there :)

good luck!

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

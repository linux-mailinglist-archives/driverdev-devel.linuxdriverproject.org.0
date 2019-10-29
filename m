Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BDE5E82E9
	for <lists+driverdev-devel@lfdr.de>; Tue, 29 Oct 2019 09:03:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E5C4620789;
	Tue, 29 Oct 2019 08:03:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b+yOcuwlwOAq; Tue, 29 Oct 2019 08:03:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C30A22001A;
	Tue, 29 Oct 2019 08:03:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9D94D1BF325
 for <devel@linuxdriverproject.org>; Tue, 29 Oct 2019 08:03:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9573F86410
 for <devel@linuxdriverproject.org>; Tue, 29 Oct 2019 08:03:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kUu5tAmYEyuB for <devel@linuxdriverproject.org>;
 Tue, 29 Oct 2019 08:03:40 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0307886404
 for <devel@driverdev.osuosl.org>; Tue, 29 Oct 2019 08:03:39 +0000 (UTC)
Received: from localhost (unknown [91.217.168.176])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2DF1D20663;
 Tue, 29 Oct 2019 08:03:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572336219;
 bh=VItppw3O8SrEKZD64Wi0dUhslsw5znQj7NIHpJn67Cs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=y4Y8W4SEtb/4TCNNRCX+zR9YUgPxZHvmDq3kUWiLy7BPACcqsUr0hGvSundLwftVF
 hvexX7WiDnTL1aZmj6w6n9VKAwapJJDmswzlVr/BfNu/wD3HbzZqb6N1vYSajwZ0mV
 HUHmpE8Z3cjtVBcnRsY77lgl1a45ueab/bBIznLc=
Date: Tue, 29 Oct 2019 09:03:36 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Sven Van Asbroeck <thesven73@gmail.com>
Subject: Re: [PATCH] staging: fieldbus: make use of
 devm_platform_ioremap_resource
Message-ID: <20191029080336.GA493801@kroah.com>
References: <1570515056-23589-1-git-send-email-hariprasad.kelam@gmail.com>
 <CAGngYiX0zoAQB=SEoXfoMm9u_JzHu3eLErj4zmTYtSAoDwkp6Q@mail.gmail.com>
 <CAGngYiXxagQMiHA-pZupTPHfyFz4kU=QOrvM28L_jSV1VGw=jQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAGngYiXxagQMiHA-pZupTPHfyFz4kU=QOrvM28L_jSV1VGw=jQ@mail.gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
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
Cc: devel@driverdev.osuosl.org, hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Oct 28, 2019 at 05:11:26PM -0400, Sven Van Asbroeck wrote:
> Hi Greg, friendly reminder... Did you miss the patch review below, or
> is there a reason
> why this isn't getting queued?
> 
> There seems to be a crowd chasing down this type of warnings, resulting
> in multiple duplicates.

This has been in my tree already for a while, can you verify it is all
ok?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

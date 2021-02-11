Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 022F7318C9E
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Feb 2021 14:52:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id ED0888743E;
	Thu, 11 Feb 2021 13:52:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bz50fTseoPlM; Thu, 11 Feb 2021 13:52:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E61628733C;
	Thu, 11 Feb 2021 13:52:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 440481BF575
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 13:52:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3B44C86E29
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 13:52:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id L798XqrZXmyW for <devel@linuxdriverproject.org>;
 Thu, 11 Feb 2021 13:52:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 360AA86E1F
 for <devel@driverdev.osuosl.org>; Thu, 11 Feb 2021 13:52:15 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 607B364E87;
 Thu, 11 Feb 2021 13:52:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1613051534;
 bh=mx/ir5owcxGhvKP8aEP+Z9CweTjM4sRvImnbrqzIaKg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qII+HWhi8xgJ5IlTlO56BXxBwssvfap7hnge/KofbknZ8sD853Wf6dt42Kh5qcB+m
 2fnvunOTGfX2pp/dTMOmkTGu2jqDCWmRgLOkmARhed8XpRn5PFpR6SlbOPocZXl/83
 5tN0jKTpT7SpM1Yd+zEHYM4941nTSYiVB0BjjGK8=
Date: Thu, 11 Feb 2021 14:52:12 +0100
From: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
To: David Laight <David.Laight@aculab.com>
Subject: Re: [PATCH v4] staging: gdm724x: Fix DMA from stack
Message-ID: <YCU2jAameAtJ28+G@kroah.com>
References: <20210211053819.34858-1-ameynarkhede03@gmail.com>
 <500e7317567548b48604ed9972062da2@AcuMS.aculab.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <500e7317567548b48604ed9972062da2@AcuMS.aculab.com>
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 'Amey Narkhede' <ameynarkhede03@gmail.com>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dan.carpenter@oracle.com" <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Feb 11, 2021 at 01:28:41PM +0000, David Laight wrote:
> > Stack allocated buffers cannot be used for DMA
> > on all architectures so allocate hci_packet buffer
> > using kmalloc.
> 
> I wonder if the usb stack ought/could support a short bounce
> buffer within the memory is already has to allocate?

No.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

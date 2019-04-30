Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F5E0FB76
	for <lists+driverdev-devel@lfdr.de>; Tue, 30 Apr 2019 16:28:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B466381EBE;
	Tue, 30 Apr 2019 14:28:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 15KZ6+NN9JPM; Tue, 30 Apr 2019 14:28:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1EA68878A0;
	Tue, 30 Apr 2019 14:28:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 787BD1BF361
 for <devel@linuxdriverproject.org>; Tue, 30 Apr 2019 14:28:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5C62025B01
 for <devel@linuxdriverproject.org>; Tue, 30 Apr 2019 14:28:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kLAlK6aarvIa for <devel@linuxdriverproject.org>;
 Tue, 30 Apr 2019 14:28:01 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from ZenIV.linux.org.uk (zeniv.linux.org.uk [195.92.253.2])
 by silver.osuosl.org (Postfix) with ESMTPS id E91CA22854
 for <devel@driverdev.osuosl.org>; Tue, 30 Apr 2019 14:27:43 +0000 (UTC)
Received: from viro by ZenIV.linux.org.uk with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1hLTjJ-0003ij-4f; Tue, 30 Apr 2019 14:27:33 +0000
Date: Tue, 30 Apr 2019 15:27:33 +0100
From: Al Viro <viro@zeniv.linux.org.uk>
To: Sven Van Asbroeck <thesven73@gmail.com>
Subject: Re: [PATCH V2] staging: fieldbus: anybus-s: force endiannes annotation
Message-ID: <20190430142733.GL23075@ZenIV.linux.org.uk>
References: <1556517940-13725-1-git-send-email-hofrat@osadl.org>
 <CAGngYiVDFL1fm2oKALXORNziX6pdcBBNtp7rSnj_FBdr6u4j5w@mail.gmail.com>
 <20190430022238.GA22593@osadl.at>
 <20190430030223.GE23075@ZenIV.linux.org.uk>
 <20190430033310.GB23144@osadl.at>
 <20190430041934.GI23075@ZenIV.linux.org.uk>
 <CAGngYiVSg86X+jD+hgwwrOYX82Fu3OWSLygwGFzyc9wYq6AesQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAGngYiVSg86X+jD+hgwwrOYX82Fu3OWSLygwGFzyc9wYq6AesQ@mail.gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nicholas Mc Guire <der.herr@hofr.at>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Nicholas Mc Guire <hofrat@osadl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Apr 30, 2019 at 09:32:20AM -0400, Sven Van Asbroeck wrote:
> On Tue, Apr 30, 2019 at 12:19 AM Al Viro <viro@zeniv.linux.org.uk> wrote:
> >
> > ... not that there's much sense keeping ->fieldbus_type in host-endian,
> > while we are at it.
> 
> Interesting! Suppose we make device->fieldbus_type bus-endian.
> Then the endinan-ness conversion either needs to happen in
> bus_match() (and we'd have to convert endianness each time
> this function is called).
> Or, we make driver->fieldbus_type bus-endian also, then there
> is no need for conversion... but the driver writer has to remember
> to specify this in bus endianness:
> 
> static struct anybuss_client_driver profinet_driver = {
>         .probe = ...,
>         .fieldbus_type = endian convert?? (0x0089),
> };
> 
> Which pushes bus implementation details onto the
> client driver writer? Also, how to convert a constant
> to a specific endianness in a static initializer?

cpu_to_be16() or htons() - either will be fine there.
On little-endian you'll get
	htons(0x0089) =>
	___htons(0x0089) =>
	__cpu_to_be16(0x0089) =>
	((__force __be16)__swab16((0x0089))) =>
	((__be16)(__builtin_constant_p((__u16)((0x0089))) ?
		___constant_swab16((0x0089)) : __fswab16((0x0089))) =>
	((__be16)(__builtin_constant_p((__u16)((0x0089))) ?
		((__u16)((((__u16)((0x0089)) & (__u16)0x00ffU) << 8) |
			 (((__u16)((0x0089)) & (__u16)0xff00U) >> 8))) :
		__fswab16((0x0089)))
and once the preprocessor has produced that, from compiler POV we have
a constant expression as argument of __builtin_constant_p(), so it
evaluates as true, reducing the whole thing to
	((__be16)(((__u16)((((__u16)((0x0089)) & (__u16)0x00ffU) << 8) |
			 (((__u16)((0x0089)) & (__u16)0xff00U) >> 8))) )
i.e. (__be16)0x8900.  On big-endian expansion will be different,
resulting in (__be16)0x0089...

IOW, you can use endianness convertors in static initializers; things
like
struct sockaddr_in addr = {.sin_addr.s_addr = htonl(0x7f000001),
			 .sin_port = htons(25),
			 .sin_family = AF_INET};
are fine kernel-side (from the compiler POV, that is - something
trying to speak SMTP in the kernel code would obviously be a bad sign).

As for having to remember - sparse will complain about endianness mismatches
in initializer...
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

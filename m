Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5D781E1D82
	for <lists+driverdev-devel@lfdr.de>; Tue, 26 May 2020 10:41:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4D9A3883BC;
	Tue, 26 May 2020 08:41:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id c1irve2YuNIj; Tue, 26 May 2020 08:41:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B98D188330;
	Tue, 26 May 2020 08:41:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A606E1BF29C
 for <devel@linuxdriverproject.org>; Tue, 26 May 2020 08:41:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9EE4E85E77
 for <devel@linuxdriverproject.org>; Tue, 26 May 2020 08:41:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mpuDMe9upV53 for <devel@linuxdriverproject.org>;
 Tue, 26 May 2020 08:41:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 157E985C00
 for <devel@driverdev.osuosl.org>; Tue, 26 May 2020 08:41:20 +0000 (UTC)
Received: from coco.lan (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 130A32075F;
 Tue, 26 May 2020 08:41:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590482479;
 bh=U7YCn0pFqNnM1v0+Hrv8eqtblogkxRNYSfptbk8i3qQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=oltZ4LmKyAn+ohAy+PnO2uzZb7xI2NUUuQL6Ybqo5+nBjFhGChyAkylHP0WHrPx0N
 5szIFU1IMRayJbcochM4NV0NfZ35C1Yj4EHAUhsvBtij3XaMkfSAEJU4LWUlwB3Tgd
 C1Q4CKvdrKAjsfJwVj0K2HPbIxvorfAa1Y3vtFpU=
Date: Tue, 26 May 2020 10:41:11 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Subject: Re: [PATCH 09/11] media: atomisp: partially get rid of one
 abstraction layer
Message-ID: <20200526104111.52a6ef23@coco.lan>
In-Reply-To: <20200526072605.GJ7618@paasikivi.fi.intel.com>
References: <cover.1590389536.git.mchehab+huawei@kernel.org>
 <9c0522e86c0d858d7268621e9ad398df9c1f9e06.1590389536.git.mchehab+huawei@kernel.org>
 <20200526072605.GJ7618@paasikivi.fi.intel.com>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Em Tue, 26 May 2020 10:26:05 +0300
Sakari Ailus <sakari.ailus@linux.intel.com> escreveu:

> Hi Mauro,
> 
> On Mon, May 25, 2020 at 08:56:08AM +0200, Mauro Carvalho Chehab wrote:
> > The very same macros are defined as CSS_foo and IA_CSS_foo.
> > 
> > Remove this abstraction, as it just make things confusing,
> > for no good reason.  
> 
> I think this boils down to which prefix should the uAPI structs of this
> driver use. I'd prefer atomisp_something, ia_css has been used internally,
> and that probably has been there in later firmware versions (vs. just css).
> 
> At this point removing the duplication makes sense though, so I'm not
> proposing changes here.

Yeah, agreed. From CSS PoV, there are several abstraction layers: the "hive"
code, the "css" code (overlayed by a css layer for isp2400 and another one
for isp2401), the "ia_css" layer, the "compat_css20" layer, and the
"ia_css" layer. Finally, the "atomisp" upper layer.

From namespace PoV, IA_CSS_foo is worse than CSS_foo. The best would be 
to use ATOMISP_foo, but there are still too much layers there abstracting
the code. For now, I prefer to keep the name used by the "IA_" layer,
in order to avoid needing to deal with symbol conflicts. Let's get
rid of it when we remove the IA_ abstraction as a hole.

Btw, the vast majority of this driver's source code is due to all those
layers.

We need to be careful to remove them. There are even some duplicated
structures there for the same thing, with some ugly compile-time
checks to identify if the same struct (with different name) still
preserves the same size. For now, I'm refraining touching these, as 
some of those structs could be used by the firmware (check needed).

My plan is to do the renaming once we get rid of those abstractions.

-

Btw, from practical PoV, I suspect that the next layer to be
removed would be the atomisp_compat_css20 one. Several functions
there are just wrapper ones.

Thanks,
Mauro
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

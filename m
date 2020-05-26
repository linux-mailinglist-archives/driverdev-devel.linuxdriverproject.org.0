Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 38EC41E1F74
	for <lists+driverdev-devel@lfdr.de>; Tue, 26 May 2020 12:13:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0A42F87590;
	Tue, 26 May 2020 10:13:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mThZPgKNouEE; Tue, 26 May 2020 10:13:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1BE6F86DB3;
	Tue, 26 May 2020 10:13:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 68BF51BF84C
 for <devel@linuxdriverproject.org>; Tue, 26 May 2020 10:13:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5BF4585F5C
 for <devel@linuxdriverproject.org>; Tue, 26 May 2020 10:13:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tl1FAKqww0Z3 for <devel@linuxdriverproject.org>;
 Tue, 26 May 2020 10:13:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 07E3685F59
 for <devel@driverdev.osuosl.org>; Tue, 26 May 2020 10:13:15 +0000 (UTC)
Received: from coco.lan (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D1ACD2073B;
 Tue, 26 May 2020 10:13:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590487994;
 bh=PLkiViVVh3uWEsY/htwxg1e2QtpNCzhpzNZL99DdnaE=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=L4RvBh+mrqq596YVcht7v2nppDpocP+wMg6lOjU3YmQBfwAj7P2HIsnTqaSF0e+bM
 bWj7uCtAG9WWJ5pIEym5lfDiQaiSRr+U+BmnpdOpzywuiEn2zh+chr0XOTqM/QerP7
 087GW3rO/MKtphDZdhhld8TVNkdcz8jvhCZwK4bU=
Date: Tue, 26 May 2020 12:13:10 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Subject: Re: [PATCH] media: atomisp: get rid of a warning message
Message-ID: <20200526121310.589478d0@coco.lan>
In-Reply-To: <20200526095418.GO7618@paasikivi.fi.intel.com>
References: <4e3d3326483c74c9f8b181a51a4f4d195631c937.1590483215.git.mchehab+huawei@kernel.org>
 <20200526095418.GO7618@paasikivi.fi.intel.com>
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

Em Tue, 26 May 2020 12:54:18 +0300
Sakari Ailus <sakari.ailus@linux.intel.com> escreveu:

> On Tue, May 26, 2020 at 10:53:57AM +0200, Mauro Carvalho Chehab wrote:
> > There's a warning message about an unused code. The code that
> > were using it were commented out, due to a problem causing the
> > firmware load to fail on the machines we're using for testing.
> > 
> > Change the place where we're commenting the code out, in order
> > to avoid the warning.
> > 
> > Fixes: 95d1f398c4dc ("media: atomisp: keep the ISP powered on when setting it")
> > Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>  
> 
> Acked-by: Sakari Ailus <sakari.ailus@linux.intel.com>
> 
> Note that some of this may be needed to power on some parts of the
> hardware on some platforms.

Yes, I know. That's why I'm preserving the code over there.

This driver is supposed to work on 4 different types of Atom CPU:


	#define __IS_SOC(x) (boot_cpu_data.x86_vendor == X86_VENDOR_INTEL && \
			     boot_cpu_data.x86 == 6 &&                       \
			     boot_cpu_data.x86_model == x)


	#define IS_MFLD	__IS_SOC(0x27)
	#define IS_BYT		__IS_SOC(0x37)
	#define IS_CHT		__IS_SOC(0x4C)
	#define IS_MOFD	__IS_SOC(0x5A)


Right now, I have just the CHT hardware for testing.

Thanks,
Mauro
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

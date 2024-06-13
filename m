Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C92A90642A
	for <lists+driverdev-devel@lfdr.de>; Thu, 13 Jun 2024 08:37:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 91B3D40167;
	Thu, 13 Jun 2024 06:37:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RljQDQOG4MKV; Thu, 13 Jun 2024 06:37:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 50FC44025E
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 50FC44025E;
	Thu, 13 Jun 2024 06:37:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DB5FA1BF35C
 for <devel@linuxdriverproject.org>; Thu, 13 Jun 2024 06:37:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C8B9B40167
 for <devel@linuxdriverproject.org>; Thu, 13 Jun 2024 06:37:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7m41QdbOB81E for <devel@linuxdriverproject.org>;
 Thu, 13 Jun 2024 06:37:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:40e1:4800::1; helo=sin.source.kernel.org;
 envelope-from=gregkh@linuxfoundation.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3516A400D3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3516A400D3
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3516A400D3
 for <devel@driverdev.osuosl.org>; Thu, 13 Jun 2024 06:37:24 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id BA23CCE10BF;
 Thu, 13 Jun 2024 06:37:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8DF96C2BBFC;
 Thu, 13 Jun 2024 06:37:20 +0000 (UTC)
Date: Thu, 13 Jun 2024 08:37:18 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Dan Carpenter <dan.carpenter@linaro.org>
Subject: Re: [driver-core:const_driver 12/12] drivers/usb/core/driver.c:80
 store_id() error: uninitialized symbol 'usb_dynid'.
Message-ID: <2024061319-griminess-unicorn-6093@gregkh>
References: <5cd22783-8150-4101-9dc5-c556d94fce22@moroto.mountain>
 <2024061328-unifier-hesitancy-48b2@gregkh>
 <aa6f5023-745f-4116-8dc9-2f155bf14832@moroto.mountain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aa6f5023-745f-4116-8dc9-2f155bf14832@moroto.mountain>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=linuxfoundation.org; 
 s=korg; t=1718260641;
 bh=5PKoGPa6jsIRpn97KuuxlUikZJJ/lsquk2okH3PUFVg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tYy2VhXK4Zd7vtC6VdWu8wCd5+CWlwdiJwUyjcQtCRTyPKsG+ObcbjvgCOyRYXvQv
 Dc4W55MMQgqm4UVlZTtGT/QGIGq99OzqwVD4IQmSRxci3l0VSdD+SVIL0q+TunH8uM
 WwUCFYBIn8SUVOOy5kz9HS06diuRK8QiZAiExS9o=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linuxfoundation.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linuxfoundation.org header.i=@linuxfoundation.org
 header.a=rsa-sha256 header.s=korg header.b=tYy2VhXK
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
Cc: devel@driverdev.osuosl.org, oe-kbuild@lists.linux.dev,
 oe-kbuild-all@lists.linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Jun 13, 2024 at 09:31:36AM +0300, Dan Carpenter wrote:
> On Thu, Jun 13, 2024 at 08:18:04AM +0200, Greg Kroah-Hartman wrote:
> > On Thu, Jun 13, 2024 at 08:57:13AM +0300, Dan Carpenter wrote:
> > > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git const_driver
> > > head:   be520b87ec28aa3b5c908a859501fb601bd8b322
> > > commit: be520b87ec28aa3b5c908a859501fb601bd8b322 [12/12] USB: move dynamic ids out of usb driver structures
> > > config: i386-randconfig-141-20240613 (https://download.01.org/0day-ci/archive/20240613/202406130740.HIr25kIC-lkp@intel.com/config)
> > > compiler: clang version 18.1.5 (https://github.com/llvm/llvm-project 617a15a9eac96088ae5e9134248d8236e34b91b1)
> > > 
> > > If you fix the issue in a separate patch/commit (i.e. not just a new version of
> > > the same patch/commit), kindly add following tags
> > > | Reported-by: kernel test robot <lkp@intel.com>
> > > | Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
> > > | Closes: https://lore.kernel.org/r/202406130740.HIr25kIC-lkp@intel.com/
> > > 
> > > smatch warnings:
> > > drivers/usb/core/driver.c:80 store_id() error: uninitialized symbol 'usb_dynid'.
> > > 
> > > vim +/usb_dynid +80 drivers/usb/core/driver.c
> > > 
> > > be520b87ec28aa Greg Kroah-Hartman 2024-06-11  70  static int store_id(const struct device_driver *driver, const struct usb_device_id *id)
> > > be520b87ec28aa Greg Kroah-Hartman 2024-06-11  71  {
> > > be520b87ec28aa Greg Kroah-Hartman 2024-06-11  72  	struct usb_dynids *u;
> > > be520b87ec28aa Greg Kroah-Hartman 2024-06-11  73  	struct usb_dynid *usb_dynid;
> > > be520b87ec28aa Greg Kroah-Hartman 2024-06-11  74  
> > > be520b87ec28aa Greg Kroah-Hartman 2024-06-11  75  	u = usb_find_dynids(driver);
> > > be520b87ec28aa Greg Kroah-Hartman 2024-06-11  76  	if (!u) {
> > > be520b87ec28aa Greg Kroah-Hartman 2024-06-11  77  		/* This driver has not stored any ids yet, so make a new entry for it */
> > > be520b87ec28aa Greg Kroah-Hartman 2024-06-11  78  		u = kmalloc(sizeof(*u), GFP_KERNEL);
> > > be520b87ec28aa Greg Kroah-Hartman 2024-06-11  79  		if (!u) {
> > > be520b87ec28aa Greg Kroah-Hartman 2024-06-11 @80  			kfree(usb_dynid);
> > > 
> > > Delete the kfree()
> > 
> > Ugh, thanks, missed that.
> > 
> > And you are now testing random branches in my tree, nice!  Note, I
> > haven't even booted this one yet, it barely builds :)
> 
> These are zero day bot stuff.  The zero day bot is always out there
> automatically slurping up any git repository it can find.  There is a
> way to opt-out but I can't remember what it is...

No, I want zero-day to test this branch (I use it as my "build on all
arches test") and it found a bunch of issues already that I will be
queueing up later today.

For some reason I thought you were testing this on your own, nevermind,
it's just a side affect of 0-day's testing.  No objection from me!

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

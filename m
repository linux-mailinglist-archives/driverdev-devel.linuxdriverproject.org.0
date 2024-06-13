Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1029D9063EA
	for <lists+driverdev-devel@lfdr.de>; Thu, 13 Jun 2024 08:18:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0892160B57;
	Thu, 13 Jun 2024 06:18:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Rkal9T_Wlozp; Thu, 13 Jun 2024 06:18:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1813160857
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1813160857;
	Thu, 13 Jun 2024 06:18:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 52D271BF35C
 for <devel@linuxdriverproject.org>; Thu, 13 Jun 2024 06:18:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3EA37841E8
 for <devel@linuxdriverproject.org>; Thu, 13 Jun 2024 06:18:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id w_gCp3Cr_5l9 for <devel@linuxdriverproject.org>;
 Thu, 13 Jun 2024 06:18:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:40e1:4800::1; helo=sin.source.kernel.org;
 envelope-from=gregkh@linuxfoundation.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0B349841EB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0B349841EB
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0B349841EB
 for <devel@driverdev.osuosl.org>; Thu, 13 Jun 2024 06:18:12 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 98F44CE2463;
 Thu, 13 Jun 2024 06:18:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E6C4BC4AF50;
 Thu, 13 Jun 2024 06:18:06 +0000 (UTC)
Date: Thu, 13 Jun 2024 08:18:04 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Dan Carpenter <dan.carpenter@linaro.org>
Subject: Re: [driver-core:const_driver 12/12] drivers/usb/core/driver.c:80
 store_id() error: uninitialized symbol 'usb_dynid'.
Message-ID: <2024061328-unifier-hesitancy-48b2@gregkh>
References: <5cd22783-8150-4101-9dc5-c556d94fce22@moroto.mountain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5cd22783-8150-4101-9dc5-c556d94fce22@moroto.mountain>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=linuxfoundation.org; 
 s=korg; t=1718259487;
 bh=MTy9hwhmGCWEt2iGEMq2oefZrzkfkI/BuA+ZwXLoKMo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=o7FXV2OF8Oy2mRJ1+OVqnNFPJ3qi+pucSFNjTZzd4FYNnY9fhLvtnV4YwoG/9aHQy
 sYndyak5EqzKitAm9Px53LSCN53fY8BaQiDiKeVihZiL6z8y+r2j1ThPMiYG4f2onJ
 TjQjZ3iBaOz2rGt+Vq31Thjsw/q7WDwyWS07snu0=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linuxfoundation.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linuxfoundation.org header.i=@linuxfoundation.org
 header.a=rsa-sha256 header.s=korg header.b=o7FXV2OF
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

On Thu, Jun 13, 2024 at 08:57:13AM +0300, Dan Carpenter wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git const_driver
> head:   be520b87ec28aa3b5c908a859501fb601bd8b322
> commit: be520b87ec28aa3b5c908a859501fb601bd8b322 [12/12] USB: move dynamic ids out of usb driver structures
> config: i386-randconfig-141-20240613 (https://download.01.org/0day-ci/archive/20240613/202406130740.HIr25kIC-lkp@intel.com/config)
> compiler: clang version 18.1.5 (https://github.com/llvm/llvm-project 617a15a9eac96088ae5e9134248d8236e34b91b1)
> 
> If you fix the issue in a separate patch/commit (i.e. not just a new version of
> the same patch/commit), kindly add following tags
> | Reported-by: kernel test robot <lkp@intel.com>
> | Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
> | Closes: https://lore.kernel.org/r/202406130740.HIr25kIC-lkp@intel.com/
> 
> smatch warnings:
> drivers/usb/core/driver.c:80 store_id() error: uninitialized symbol 'usb_dynid'.
> 
> vim +/usb_dynid +80 drivers/usb/core/driver.c
> 
> be520b87ec28aa Greg Kroah-Hartman 2024-06-11  70  static int store_id(const struct device_driver *driver, const struct usb_device_id *id)
> be520b87ec28aa Greg Kroah-Hartman 2024-06-11  71  {
> be520b87ec28aa Greg Kroah-Hartman 2024-06-11  72  	struct usb_dynids *u;
> be520b87ec28aa Greg Kroah-Hartman 2024-06-11  73  	struct usb_dynid *usb_dynid;
> be520b87ec28aa Greg Kroah-Hartman 2024-06-11  74  
> be520b87ec28aa Greg Kroah-Hartman 2024-06-11  75  	u = usb_find_dynids(driver);
> be520b87ec28aa Greg Kroah-Hartman 2024-06-11  76  	if (!u) {
> be520b87ec28aa Greg Kroah-Hartman 2024-06-11  77  		/* This driver has not stored any ids yet, so make a new entry for it */
> be520b87ec28aa Greg Kroah-Hartman 2024-06-11  78  		u = kmalloc(sizeof(*u), GFP_KERNEL);
> be520b87ec28aa Greg Kroah-Hartman 2024-06-11  79  		if (!u) {
> be520b87ec28aa Greg Kroah-Hartman 2024-06-11 @80  			kfree(usb_dynid);
> 
> Delete the kfree()

Ugh, thanks, missed that.

And you are now testing random branches in my tree, nice!  Note, I
haven't even booted this one yet, it barely builds :)

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

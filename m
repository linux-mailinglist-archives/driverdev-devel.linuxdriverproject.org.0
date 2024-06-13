Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CA81906415
	for <lists+driverdev-devel@lfdr.de>; Thu, 13 Jun 2024 08:31:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CA5A440BDE;
	Thu, 13 Jun 2024 06:31:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hsXIjg5yuZki; Thu, 13 Jun 2024 06:31:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 95B494025E
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 95B494025E;
	Thu, 13 Jun 2024 06:31:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 15B501BF35C
 for <devel@linuxdriverproject.org>; Thu, 13 Jun 2024 06:31:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 02028408B6
 for <devel@linuxdriverproject.org>; Thu, 13 Jun 2024 06:31:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GT9LhVYa8vBW for <devel@linuxdriverproject.org>;
 Thu, 13 Jun 2024 06:31:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::32f; helo=mail-wm1-x32f.google.com;
 envelope-from=dan.carpenter@linaro.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0974240578
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0974240578
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com
 [IPv6:2a00:1450:4864:20::32f])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0974240578
 for <devel@driverdev.osuosl.org>; Thu, 13 Jun 2024 06:31:42 +0000 (UTC)
Received: by mail-wm1-x32f.google.com with SMTP id
 5b1f17b1804b1-421820fc26dso6224615e9.2
 for <devel@driverdev.osuosl.org>; Wed, 12 Jun 2024 23:31:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1718260301; x=1718865101;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=pBVT7K7qk7izzrLrbCfdOYZVnSOXnzJ3MLMf5MLb8wc=;
 b=GEQp8oGtymUx0OXhOgBPKOcKT74A1iShzHV/Y1qMvIoakxqKJ1ZOZ5goUXy+Lc0iRI
 qifadgXneDcnudkFVwBkT0XRX7huxdFI/fa62bNjnnZeOcbTjL6dGYBe0aOAtJi7sOXl
 qTSid0+99Yikbeg2c/6t5+97oxB7grV0obO6KXzuDeF3e/vf5YJLTE8z2/2S5PjA3GRC
 pmLBSz4t6ZjgZAtD+24UWGtUCuQkpo08cSVXM7J4qaQr6Pf7OrwFaATjrMq+K1wqGSon
 uuwrbUoVTBmCm0kwhy7FWFk7ZLVZOKvL+IYBHDj3FZ4Oc7j8bVSDCx/IXLifJ0PgBUmP
 e5MQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCW0Bqvr1WzKmAN8czx9RTCX4BqAIis58P4zUez5Bhhm+Dch3zBmSLg+WUm7UN2Hg63Aldl3j4XeRZIn2eZPH3f8dgES91NPIAZsXQ==
X-Gm-Message-State: AOJu0Yxis4fGgief4m7bSvcJ3cTcyX961JpHFDiiWO2el1OSzrnlPT9C
 xPiJEG+nHwVr83PLUa4SMxFNHrHPe9P1ryX8AeDWrp2vLCdL5OtGCh3QEb8rJDc=
X-Google-Smtp-Source: AGHT+IEDuuU6pIME/KuYUu9ORb+sYmWfnj1up5yqyf8cUSFiVSRSvN55Tgn+z1flP67sSEap5yyfCg==
X-Received: by 2002:a5d:4e84:0:b0:35e:4f42:6016 with SMTP id
 ffacd0b85a97d-35fdf7ac9cfmr2605755f8f.30.1718260300564; 
 Wed, 12 Jun 2024 23:31:40 -0700 (PDT)
Received: from localhost ([102.222.70.76]) by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-36075104a3dsm723210f8f.112.2024.06.12.23.31.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 12 Jun 2024 23:31:40 -0700 (PDT)
Date: Thu, 13 Jun 2024 09:31:36 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [driver-core:const_driver 12/12] drivers/usb/core/driver.c:80
 store_id() error: uninitialized symbol 'usb_dynid'.
Message-ID: <aa6f5023-745f-4116-8dc9-2f155bf14832@moroto.mountain>
References: <5cd22783-8150-4101-9dc5-c556d94fce22@moroto.mountain>
 <2024061328-unifier-hesitancy-48b2@gregkh>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2024061328-unifier-hesitancy-48b2@gregkh>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1718260301; x=1718865101; darn=driverdev.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=pBVT7K7qk7izzrLrbCfdOYZVnSOXnzJ3MLMf5MLb8wc=;
 b=IAaxfTj8CNU20mLmEqCL2UAendGauTQoTyXl+yTI2rsnPxOmSXgBnaV769aQ8OYwQO
 18mAq+GhuUK2nPwkaQrKOnLmckCzoVVYGUgw/0USByDFhi4kcavF4kKz7G4fOKNxACzP
 k5Pv1kBRsn6i2RsShbQyo7IfBdc9wcpGkteDacA10cMoVWAKJJRYK1U87KT+SZQscoMT
 os6J3hj6ZbjC3Ug9VbB8E4KON66aFsraaNn5K6NpGMvQKdiX0ps+PF1ESiBHCk+/auXw
 4nstor4cIDgaZKYG9Np5YMG9ubc02g3b76HjTBSqeLHE6dP0/5ERVH4/H+zU5uHaD+GH
 JsOg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linaro.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256
 header.s=google header.b=IAaxfTj8
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

On Thu, Jun 13, 2024 at 08:18:04AM +0200, Greg Kroah-Hartman wrote:
> On Thu, Jun 13, 2024 at 08:57:13AM +0300, Dan Carpenter wrote:
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git const_driver
> > head:   be520b87ec28aa3b5c908a859501fb601bd8b322
> > commit: be520b87ec28aa3b5c908a859501fb601bd8b322 [12/12] USB: move dynamic ids out of usb driver structures
> > config: i386-randconfig-141-20240613 (https://download.01.org/0day-ci/archive/20240613/202406130740.HIr25kIC-lkp@intel.com/config)
> > compiler: clang version 18.1.5 (https://github.com/llvm/llvm-project 617a15a9eac96088ae5e9134248d8236e34b91b1)
> > 
> > If you fix the issue in a separate patch/commit (i.e. not just a new version of
> > the same patch/commit), kindly add following tags
> > | Reported-by: kernel test robot <lkp@intel.com>
> > | Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
> > | Closes: https://lore.kernel.org/r/202406130740.HIr25kIC-lkp@intel.com/
> > 
> > smatch warnings:
> > drivers/usb/core/driver.c:80 store_id() error: uninitialized symbol 'usb_dynid'.
> > 
> > vim +/usb_dynid +80 drivers/usb/core/driver.c
> > 
> > be520b87ec28aa Greg Kroah-Hartman 2024-06-11  70  static int store_id(const struct device_driver *driver, const struct usb_device_id *id)
> > be520b87ec28aa Greg Kroah-Hartman 2024-06-11  71  {
> > be520b87ec28aa Greg Kroah-Hartman 2024-06-11  72  	struct usb_dynids *u;
> > be520b87ec28aa Greg Kroah-Hartman 2024-06-11  73  	struct usb_dynid *usb_dynid;
> > be520b87ec28aa Greg Kroah-Hartman 2024-06-11  74  
> > be520b87ec28aa Greg Kroah-Hartman 2024-06-11  75  	u = usb_find_dynids(driver);
> > be520b87ec28aa Greg Kroah-Hartman 2024-06-11  76  	if (!u) {
> > be520b87ec28aa Greg Kroah-Hartman 2024-06-11  77  		/* This driver has not stored any ids yet, so make a new entry for it */
> > be520b87ec28aa Greg Kroah-Hartman 2024-06-11  78  		u = kmalloc(sizeof(*u), GFP_KERNEL);
> > be520b87ec28aa Greg Kroah-Hartman 2024-06-11  79  		if (!u) {
> > be520b87ec28aa Greg Kroah-Hartman 2024-06-11 @80  			kfree(usb_dynid);
> > 
> > Delete the kfree()
> 
> Ugh, thanks, missed that.
> 
> And you are now testing random branches in my tree, nice!  Note, I
> haven't even booted this one yet, it barely builds :)

These are zero day bot stuff.  The zero day bot is always out there
automatically slurping up any git repository it can find.  There is a
way to opt-out but I can't remember what it is...

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

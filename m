Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 91E7B9063A7
	for <lists+driverdev-devel@lfdr.de>; Thu, 13 Jun 2024 07:57:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9F0DC60B35;
	Thu, 13 Jun 2024 05:57:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 545Ty6d1zB2A; Thu, 13 Jun 2024 05:57:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AA14A60B36
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id AA14A60B36;
	Thu, 13 Jun 2024 05:57:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 38A471BF35D
 for <devel@linuxdriverproject.org>; Thu, 13 Jun 2024 05:57:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 22C6A83366
 for <devel@linuxdriverproject.org>; Thu, 13 Jun 2024 05:57:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rU7wTb-HYjgK for <devel@linuxdriverproject.org>;
 Thu, 13 Jun 2024 05:57:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::32f; helo=mail-wm1-x32f.google.com;
 envelope-from=dan.carpenter@linaro.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 06598832E6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 06598832E6
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com
 [IPv6:2a00:1450:4864:20::32f])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 06598832E6
 for <devel@driverdev.osuosl.org>; Thu, 13 Jun 2024 05:57:19 +0000 (UTC)
Received: by mail-wm1-x32f.google.com with SMTP id
 5b1f17b1804b1-42165f6645fso6139735e9.2
 for <devel@driverdev.osuosl.org>; Wed, 12 Jun 2024 22:57:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1718258238; x=1718863038;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=caHeE9ePEp+sugnxiiOHn0DpPrQ59FW7YgAtSlyt8BU=;
 b=fvfhI2Gxe5EnHum5dDnQdEIt4NvXn7Mxkkdm4Tc4RljA/7CwdTFMXoonBspOnRicoo
 p5Ks9b/Tk7Lb8kZOK62M7lb53m3h69ckxTc3W985FfQt3qSgNfldqmo5/57vhNlONk4W
 xOOboiCwioV3GnLcL4IjUd4e4kf+UOOgIrgfwG8wyUhdjlxMtIUJq9n8FvsJyIru1cnK
 cvgko/9dqgeL3vFtepLByUCvODIGUyoKj+FomelVHa2/evgt0PVL3CMFVNl40ITLSVKM
 Im4pWLoLqH7YKOGnLQD9d4zi8LLz4bWDYGYeoJRPLDP7wiE+1cIPBBIDFQmSU4RTnmPm
 dB0Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCUfLC0CRNK66kd/djkQ/cdOvjROAHGlHJ5d1szr6UlU1NuD4okRkMfWp/4FJlT9opUHvtvSfKypNknCNOFXLwMGLyJGYv3zJkkHdg==
X-Gm-Message-State: AOJu0YyFglFt2XVfOLhsB44f/iOdC43Bw5yUaFnFmi/N6LuP8hIbx2YS
 n7qJRi4/1Dljd4WF4WZz3SNj1mBk1FAnJJAyR1CcOAstFJAWn7V3ytmdHtoHncg=
X-Google-Smtp-Source: AGHT+IEWIwa40VxP/Xvwp2V15etuHLo7iOeH/OGA9JOZTJuuibeav9Qq+XmMcfisXacjqD2Pgx3PYg==
X-Received: by 2002:a05:600c:3486:b0:421:7983:f1d3 with SMTP id
 5b1f17b1804b1-422862aca3cmr28337595e9.9.1718258237609; 
 Wed, 12 Jun 2024 22:57:17 -0700 (PDT)
Received: from localhost ([102.222.70.76]) by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-422f641a666sm10364115e9.45.2024.06.12.22.57.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 12 Jun 2024 22:57:17 -0700 (PDT)
Date: Thu, 13 Jun 2024 08:57:13 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: oe-kbuild@lists.linux.dev, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [driver-core:const_driver 12/12] drivers/usb/core/driver.c:80
 store_id() error: uninitialized symbol 'usb_dynid'.
Message-ID: <5cd22783-8150-4101-9dc5-c556d94fce22@moroto.mountain>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1718258238; x=1718863038; darn=driverdev.osuosl.org; 
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=caHeE9ePEp+sugnxiiOHn0DpPrQ59FW7YgAtSlyt8BU=;
 b=doQ7Ff+LIf1h34XngaePlFp8ETfINKEgKY1XC1eKmtKdg9SWZVa7hsAZIIkmcW/wci
 bKAVqVMR/WQ/pKIZGMRK5lkuRBlq1SA1p1VR9AGRT/vDTo1r7BT3hgH94gH7yfDRHd9M
 v47t+dXa0d6kIz6vDPDiqwDwDRMFG6+ZTzHT5hbf04cbvYScG0Gn3EGL9i3S4NYI1Cm5
 kJGXcR12ZQWaVnaS1OEb1hliLatmgFadFhRpycGkZ4eT4smC1svmGCwpjQCKtDBu5WYc
 KplbvL0ytc2eBGFyPuHZGUbr8iJcnvx2g29m6R3tjgQ3kGSkto+DzJKEIHRmlRDLIWlx
 /BiA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linaro.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256
 header.s=google header.b=doQ7Ff+L
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
Cc: devel@driverdev.osuosl.org, oe-kbuild-all@lists.linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git const_driver
head:   be520b87ec28aa3b5c908a859501fb601bd8b322
commit: be520b87ec28aa3b5c908a859501fb601bd8b322 [12/12] USB: move dynamic ids out of usb driver structures
config: i386-randconfig-141-20240613 (https://download.01.org/0day-ci/archive/20240613/202406130740.HIr25kIC-lkp@intel.com/config)
compiler: clang version 18.1.5 (https://github.com/llvm/llvm-project 617a15a9eac96088ae5e9134248d8236e34b91b1)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
| Closes: https://lore.kernel.org/r/202406130740.HIr25kIC-lkp@intel.com/

smatch warnings:
drivers/usb/core/driver.c:80 store_id() error: uninitialized symbol 'usb_dynid'.

vim +/usb_dynid +80 drivers/usb/core/driver.c

be520b87ec28aa Greg Kroah-Hartman 2024-06-11  70  static int store_id(const struct device_driver *driver, const struct usb_device_id *id)
be520b87ec28aa Greg Kroah-Hartman 2024-06-11  71  {
be520b87ec28aa Greg Kroah-Hartman 2024-06-11  72  	struct usb_dynids *u;
be520b87ec28aa Greg Kroah-Hartman 2024-06-11  73  	struct usb_dynid *usb_dynid;
be520b87ec28aa Greg Kroah-Hartman 2024-06-11  74  
be520b87ec28aa Greg Kroah-Hartman 2024-06-11  75  	u = usb_find_dynids(driver);
be520b87ec28aa Greg Kroah-Hartman 2024-06-11  76  	if (!u) {
be520b87ec28aa Greg Kroah-Hartman 2024-06-11  77  		/* This driver has not stored any ids yet, so make a new entry for it */
be520b87ec28aa Greg Kroah-Hartman 2024-06-11  78  		u = kmalloc(sizeof(*u), GFP_KERNEL);
be520b87ec28aa Greg Kroah-Hartman 2024-06-11  79  		if (!u) {
be520b87ec28aa Greg Kroah-Hartman 2024-06-11 @80  			kfree(usb_dynid);

Delete the kfree()

be520b87ec28aa Greg Kroah-Hartman 2024-06-11  81  			return -ENOMEM;
be520b87ec28aa Greg Kroah-Hartman 2024-06-11  82  		}
be520b87ec28aa Greg Kroah-Hartman 2024-06-11  83  		u->driver = driver;
be520b87ec28aa Greg Kroah-Hartman 2024-06-11  84  		INIT_LIST_HEAD(&u->list);
be520b87ec28aa Greg Kroah-Hartman 2024-06-11  85  		guard(spinlock)(&usb_dynids_lock);
be520b87ec28aa Greg Kroah-Hartman 2024-06-11  86  		list_add_tail(&u->node, &usb_dynids);
be520b87ec28aa Greg Kroah-Hartman 2024-06-11  87  	}
be520b87ec28aa Greg Kroah-Hartman 2024-06-11  88  
be520b87ec28aa Greg Kroah-Hartman 2024-06-11  89  	/* Allocate a new entry and add it to the list of driver ids for this driver */
be520b87ec28aa Greg Kroah-Hartman 2024-06-11  90  	usb_dynid = kmalloc(sizeof(*usb_dynid), GFP_KERNEL);
be520b87ec28aa Greg Kroah-Hartman 2024-06-11  91  	if (!usb_dynid)
be520b87ec28aa Greg Kroah-Hartman 2024-06-11  92  		return -ENOMEM;
be520b87ec28aa Greg Kroah-Hartman 2024-06-11  93  
be520b87ec28aa Greg Kroah-Hartman 2024-06-11  94  	INIT_LIST_HEAD(&usb_dynid->node);
be520b87ec28aa Greg Kroah-Hartman 2024-06-11  95  	memcpy(&usb_dynid->id, id, sizeof(*id));
be520b87ec28aa Greg Kroah-Hartman 2024-06-11  96  	list_add_tail(&usb_dynid->node, &u->list);
be520b87ec28aa Greg Kroah-Hartman 2024-06-11  97  	return 0;
be520b87ec28aa Greg Kroah-Hartman 2024-06-11  98  }

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

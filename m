Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF39E822A93
	for <lists+driverdev-devel@lfdr.de>; Wed,  3 Jan 2024 10:51:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B00884012B;
	Wed,  3 Jan 2024 09:51:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B00884012B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RTr_7UAnqzkr; Wed,  3 Jan 2024 09:51:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1A24A4035D;
	Wed,  3 Jan 2024 09:51:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1A24A4035D
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1126C1BF3D9
 for <devel@linuxdriverproject.org>; Wed,  3 Jan 2024 09:51:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EAAED82193
 for <devel@linuxdriverproject.org>; Wed,  3 Jan 2024 09:51:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EAAED82193
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JnQO2QtQgnwe for <devel@linuxdriverproject.org>;
 Wed,  3 Jan 2024 09:51:17 +0000 (UTC)
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com
 [IPv6:2a00:1450:4864:20::535])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A970282197
 for <devel@driverdev.osuosl.org>; Wed,  3 Jan 2024 09:51:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A970282197
Received: by mail-ed1-x535.google.com with SMTP id
 4fb4d7f45d1cf-5553f251e3cso4573375a12.2
 for <devel@driverdev.osuosl.org>; Wed, 03 Jan 2024 01:51:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1704275475; x=1704880275;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=9xz96zpZamnuctw20aOBbPKcLc59nkqAsmoJMPTjuCo=;
 b=U548Y7adqz7vIVxKDbtX+qspBBPCn9Ty6jnQUQEQlbh1H8vYH5TR27VWaCdpFODYBh
 i8dL+dS46BP5JrA+FQhXuL503GStxJuiigJ3AmO1ue2veyFIiCYJopnhj0hr8dQYhIEd
 uQBbMMsbG8HSfp9twKT1NQeIaw/lDG9cPT+ofQgRBQr2ooOLGxpxzx4FapvDQmloazRM
 KzTwg0gvEuGftaKENeZ4mZHvBrDKXx+NmxINDfUe/TIUSaQXI3J9pxLl0xt5uSeJd51V
 /HUG5Z4F0jhnLklwFM0wf5IzfrwhCw2MgyjCAIHeAh3b4Z2UK+8k8W4XxL9M1E5QhS4b
 +SGw==
X-Gm-Message-State: AOJu0Yzt+E7CYzvCjCv5zygI+VOANS3PRZ7lhxfCNbTmai8J6Dd2t5TI
 8GshXemjyYv8zCU8++wN7t9uv91WjDrK2g==
X-Google-Smtp-Source: AGHT+IGfKTc+Py7i8LdLGx/i1V4Wa4lS2rgURpQzd2pME/OVI7Sj7UBHlJevkQc1MVZxPtZi1HUxJg==
X-Received: by 2002:a50:d59b:0:b0:553:2dc2:4b9b with SMTP id
 v27-20020a50d59b000000b005532dc24b9bmr12044606edi.14.1704275474715; 
 Wed, 03 Jan 2024 01:51:14 -0800 (PST)
Received: from localhost ([102.140.209.237]) by smtp.gmail.com with ESMTPSA id
 fj25-20020a0564022b9900b00556cd818dd2sm577119edb.70.2024.01.03.01.51.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 03 Jan 2024 01:51:14 -0800 (PST)
Date: Wed, 3 Jan 2024 12:51:11 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: oe-kbuild@lists.linux.dev, Umang Jain <umang.jain@ideasonboard.com>
Subject: [staging:staging-testing 87/153]
 drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:686
 vchiq_initialise() error: we previously assumed 'state' could be null (see
 line 681)
Message-ID: <7a7fd5e8-7f06-4da5-9123-c7a154c05fc2@moroto.mountain>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1704275475; x=1704880275; darn=driverdev.osuosl.org; 
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=9xz96zpZamnuctw20aOBbPKcLc59nkqAsmoJMPTjuCo=;
 b=tE88QkZ4VIQwVEGW7CxrmzYIq1rwlLbspvkSFWVIa5iKVTRe5fl81cQqTNvNUA9wXC
 p/yPLdXD1KzZryMr1L8z+CHW5WwAwmZyYv5EfJVc3UVphi5zURSaN/tuvUANw/v8Ydyk
 nlZ0jiP/8jMYtIB9LRpm3AE99VMYRj5YRGTT8QlADLDxs3mcIgitD8yosTferWWsYOKN
 w2RW0sYBiIm0Vr/NY5Zj0dyYr4S5wQ87GNlPoG2/T1+mut+PdyUdcJfOEBMsbLt5f2pn
 tzjZ5ocvgNl89V2U/ti20/bJMbpsaJnGoVKC0m8bbeChc9Gu4PP69Q4SdyyAL5jJYu0d
 j4+w==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org
 header.a=rsa-sha256 header.s=google header.b=tE88QkZ4
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
 oe-kbuild-all@lists.linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-testing
head:   5e8cdb6f6ebe28976876ab04995a5d3779b85082
commit: e70f17ed997cb7ee6c34089f2cdc2a9edc886503 [87/153] staging: vc04_services: Drop vchiq_log_error() in favour of dev_err
config: csky-randconfig-r081-20231218 (https://download.01.org/0day-ci/archive/20231219/202312190038.zuEX32PB-lkp@intel.com/config)
compiler: csky-linux-gcc (GCC) 13.2.0

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
| Closes: https://lore.kernel.org/r/202312190038.zuEX32PB-lkp@intel.com/

smatch warnings:
drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:686 vchiq_initialise() error: we previously assumed 'state' could be null (see line 681)

vim +/state +686 drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c

abf2836a381a307 Stefan Wahren        2021-04-25  668  int vchiq_initialise(struct vchiq_instance **instance_out)
5c5e6ef6287cbf3 Arnd Bergmann        2018-02-02  669  {
2d0a0291135fd2f Dominic Braun        2018-12-14  670  	struct vchiq_state *state;
4ddf9a2555caf21 Jamal Shareef        2019-11-05  671  	struct vchiq_instance *instance = NULL;
abf2836a381a307 Stefan Wahren        2021-04-25  672  	int i, ret;
5c5e6ef6287cbf3 Arnd Bergmann        2018-02-02  673  
3da8757576ef789 Amarjargal Gundjalam 2020-10-28  674  	/*
3da8757576ef789 Amarjargal Gundjalam 2020-10-28  675  	 * VideoCore may not be ready due to boot up timing.
5c5e6ef6287cbf3 Arnd Bergmann        2018-02-02  676  	 * It may never be ready if kernel and firmware are mismatched,so don't
5c5e6ef6287cbf3 Arnd Bergmann        2018-02-02  677  	 * block forever.
5c5e6ef6287cbf3 Arnd Bergmann        2018-02-02  678  	 */
5c5e6ef6287cbf3 Arnd Bergmann        2018-02-02  679  	for (i = 0; i < VCHIQ_INIT_RETRIES; i++) {
5c5e6ef6287cbf3 Arnd Bergmann        2018-02-02  680  		state = vchiq_get_state();
5c5e6ef6287cbf3 Arnd Bergmann        2018-02-02 @681  		if (state)

We exit early if state is valid

5c5e6ef6287cbf3 Arnd Bergmann        2018-02-02  682  			break;
81244ba0f03691a Stefan Wahren        2018-03-31  683  		usleep_range(500, 600);
5c5e6ef6287cbf3 Arnd Bergmann        2018-02-02  684  	}
5c5e6ef6287cbf3 Arnd Bergmann        2018-02-02  685  	if (i == VCHIQ_INIT_RETRIES) {
e70f17ed997cb7e Umang Jain           2023-12-05 @686  		dev_err(state->dev, "core: %s: Videocore not initialized\n", __func__);
                                                                        ^^^^^^^^^^
state is NULL at this point.

abf2836a381a307 Stefan Wahren        2021-04-25  687  		ret = -ENOTCONN;
5c5e6ef6287cbf3 Arnd Bergmann        2018-02-02  688  		goto failed;
5c5e6ef6287cbf3 Arnd Bergmann        2018-02-02  689  	} else if (i > 0) {

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

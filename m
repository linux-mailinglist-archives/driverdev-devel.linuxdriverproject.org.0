Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D2B4E79FC3E
	for <lists+driverdev-devel@lfdr.de>; Thu, 14 Sep 2023 08:41:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 28F8783336;
	Thu, 14 Sep 2023 06:41:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 28F8783336
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ytDomF2whEhl; Thu, 14 Sep 2023 06:41:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C04EE83339;
	Thu, 14 Sep 2023 06:41:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C04EE83339
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0116E1BF2E4
 for <devel@linuxdriverproject.org>; Thu, 14 Sep 2023 06:41:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CD9E560F0F
 for <devel@linuxdriverproject.org>; Thu, 14 Sep 2023 06:41:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CD9E560F0F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aFqCFQnXGMbJ for <devel@linuxdriverproject.org>;
 Thu, 14 Sep 2023 06:41:34 +0000 (UTC)
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com
 [IPv6:2a00:1450:4864:20::329])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 613C260F04
 for <devel@driverdev.osuosl.org>; Thu, 14 Sep 2023 06:41:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 613C260F04
Received: by mail-wm1-x329.google.com with SMTP id
 5b1f17b1804b1-404571cbb8dso2802285e9.3
 for <devel@driverdev.osuosl.org>; Wed, 13 Sep 2023 23:41:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1694673692; x=1695278492;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=mbPn8jG0aaiKDlxm4t2ttIZEEd6U3lKk9eO8XNX7zCA=;
 b=JuHjjypu24tl3TfAvz0UUre9SAmjZQ2xHi8+Haq9+/YQcg8UMqIs5AAF2g+XteLLxu
 ca0XHz8+YrOBRW/vfNOaA2bHoFaiYRfgU81htpV8wNgmCO2A57y9rr0AcoJ0plJy94fi
 JCePp/F2+y9mAPqTHAmbss3cQwZEqQyLSS1iw4Av8636BFn4+ii4w0Qv972lgwWNRNoG
 Cjxgkcc/lkkEFE2EoNfEnCR8EjnGINWo19hnqrGwLXKLnL/bcIKY6PdbWf6DpmGaVVU/
 foRTwhRNJSrIJgqx9EsDwy7zRhpxPsEih3XBqb2Gw8C9l8XtrIKwopdOKLhy7ivt7p+u
 G91A==
X-Gm-Message-State: AOJu0YxwynC6zO7NGUSCzjExjZyb2N7LtiuW51ADFmbSb/hSHKKjRthI
 PW/wg1kfpaKHOQqbo4mAfew8QA==
X-Google-Smtp-Source: AGHT+IFgeGqKGjC19iBPDtNMSzCBGblrqc4Ak12Todt8W8/zsACpjAIRkD+d9CMRsRDWUFDe6Nn7WA==
X-Received: by 2002:a1c:7204:0:b0:403:442:5421 with SMTP id
 n4-20020a1c7204000000b0040304425421mr3855814wmc.4.1694673692426; 
 Wed, 13 Sep 2023 23:41:32 -0700 (PDT)
Received: from localhost ([102.36.222.112]) by smtp.gmail.com with ESMTPSA id
 m10-20020a7bce0a000000b003fee53feab5sm1061962wmc.10.2023.09.13.23.41.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Sep 2023 23:41:32 -0700 (PDT)
Date: Thu, 14 Sep 2023 09:41:29 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: oe-kbuild@lists.linux.dev, Jinjie Ruan <ruanjinjie@huawei.com>
Subject: [staging:staging-testing 17/17] drivers/staging/vme_user/vme.c:296
 vme_slave_request() error: we previously assumed 'slave_image' could be null
 (see line 297)
Message-ID: <87c5de5b-ecb8-46ec-8489-605971214683@kadam.mountain>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1694673692; x=1695278492; darn=driverdev.osuosl.org; 
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=mbPn8jG0aaiKDlxm4t2ttIZEEd6U3lKk9eO8XNX7zCA=;
 b=Um5606JW+pFNVN9EDV/1UzXbZmRFhv5Uw+1cuALTRpywpmu7TvOFggbOEHxX1mGd5C
 2hhPfK6j4gUcbAdpUpwejLARnf95b0a8DidlCJcjGkpBRL0O5ggHy8MTp4jHFe6EWv0N
 YylcXEstiAyiXUtWu3JLsdYg50u1mSM9cfNAcS/a2g8x63CzlcyCsNF+zDlaFVIaIqLd
 5dYdEqLR2QugB9zL28zMJZQ845B/kp5oOtXVYRlO8xvsnFyWonnWxKtL2U8cJdnIzQKR
 f6EFL4yC3FryXqdv6jCbni00Bea3RGT4VEVsLfujwRuh5iViw3fLkso0zDQis7X4Wn7k
 1KKg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org
 header.a=rsa-sha256 header.s=google header.b=Um5606JW
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

Hi Jinjie,

FYI, the error/warning was bisected to this commit, please ignore it if it's irrelevant.

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-testing
head:   4c5ba1d7a93e098aececbf93afbdd7add98ec6f3
commit: 4c5ba1d7a93e098aececbf93afbdd7add98ec6f3 [17/17] staging: vme_user: Use list_for_each_entry() helper
config: x86_64-randconfig-161-20230913 (https://download.01.org/0day-ci/archive/20230914/202309140330.fgOxoRhE-lkp@intel.com/config)
compiler: gcc-12 (Debian 12.2.0-14) 12.2.0
reproduce: (https://download.01.org/0day-ci/archive/20230914/202309140330.fgOxoRhE-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
| Closes: https://lore.kernel.org/r/202309140330.fgOxoRhE-lkp@intel.com/

smatch warnings:
drivers/staging/vme_user/vme.c:296 vme_slave_request() error: we previously assumed 'slave_image' could be null (see line 297)
drivers/staging/vme_user/vme.c:492 vme_master_request() error: we previously assumed 'master_image' could be null (see line 493)
drivers/staging/vme_user/vme.c:866 vme_dma_request() error: we previously assumed 'dma_ctrlr' could be null (see line 867)
drivers/staging/vme_user/vme.c:1460 vme_lm_request() error: we previously assumed 'lm' could be null (see line 1461)

vim +/slave_image +296 drivers/staging/vme_user/vme.c

6af04b065b048e drivers/staging/vme/vme.c      Martyn Welch    2011-12-01  281  struct vme_resource *vme_slave_request(struct vme_dev *vdev, u32 address,
6af04b065b048e drivers/staging/vme/vme.c      Martyn Welch    2011-12-01  282  				       u32 cycle)
a17a75e2666f71 drivers/staging/vme/vme.c      Martyn Welch    2009-07-31  283  {
a17a75e2666f71 drivers/staging/vme/vme.c      Martyn Welch    2009-07-31  284  	struct vme_bridge *bridge;
a17a75e2666f71 drivers/staging/vme/vme.c      Martyn Welch    2009-07-31  285  	struct vme_slave_resource *allocated_image = NULL;
a17a75e2666f71 drivers/staging/vme/vme.c      Martyn Welch    2009-07-31  286  	struct vme_slave_resource *slave_image = NULL;
a17a75e2666f71 drivers/staging/vme/vme.c      Martyn Welch    2009-07-31  287  	struct vme_resource *resource = NULL;
a17a75e2666f71 drivers/staging/vme/vme.c      Martyn Welch    2009-07-31  288  
8f966dc444b11a drivers/staging/vme/vme.c      Manohar Vanga   2011-09-26  289  	bridge = vdev->bridge;
61282c04984e40 drivers/vme/vme.c              Markus Elfring  2017-08-24  290  	if (!bridge) {
a17a75e2666f71 drivers/staging/vme/vme.c      Martyn Welch    2009-07-31  291  		printk(KERN_ERR "Can't find VME bus\n");
a17a75e2666f71 drivers/staging/vme/vme.c      Martyn Welch    2009-07-31  292  		goto err_bus;
a17a75e2666f71 drivers/staging/vme/vme.c      Martyn Welch    2009-07-31  293  	}
a17a75e2666f71 drivers/staging/vme/vme.c      Martyn Welch    2009-07-31  294  
a17a75e2666f71 drivers/staging/vme/vme.c      Martyn Welch    2009-07-31  295  	/* Loop through slave resources */
4c5ba1d7a93e09 drivers/staging/vme_user/vme.c Jinjie Ruan     2023-08-23 @296  	list_for_each_entry(slave_image, &bridge->slave_resources, list) {
                                                                                                    ^^^^^^^^^^^
This is the iterator.

61282c04984e40 drivers/vme/vme.c              Markus Elfring  2017-08-24 @297  		if (!slave_image) {

And list iterators are never NULL.  Please remove this if statement.

ead1f3e301e2d8 drivers/staging/vme/vme.c      Martyn Welch    2009-12-15  298  			printk(KERN_ERR "Registered NULL Slave resource\n");
a17a75e2666f71 drivers/staging/vme/vme.c      Martyn Welch    2009-07-31  299  			continue;
a17a75e2666f71 drivers/staging/vme/vme.c      Martyn Welch    2009-07-31  300  		}
a17a75e2666f71 drivers/staging/vme/vme.c      Martyn Welch    2009-07-31  301  
a17a75e2666f71 drivers/staging/vme/vme.c      Martyn Welch    2009-07-31  302  		/* Find an unlocked and compatible image */
886953e9b70bcb drivers/staging/vme/vme.c      Emilio G. Cota  2010-11-12  303  		mutex_lock(&slave_image->mtx);
a17a75e2666f71 drivers/staging/vme/vme.c      Martyn Welch    2009-07-31  304  		if (((slave_image->address_attr & address) == address) &&
a17a75e2666f71 drivers/staging/vme/vme.c      Martyn Welch    2009-07-31  305  		    ((slave_image->cycle_attr & cycle) == cycle) &&
a17a75e2666f71 drivers/staging/vme/vme.c      Martyn Welch    2009-07-31  306  		    (slave_image->locked == 0)) {
a17a75e2666f71 drivers/staging/vme/vme.c      Martyn Welch    2009-07-31  307  			slave_image->locked = 1;
886953e9b70bcb drivers/staging/vme/vme.c      Emilio G. Cota  2010-11-12  308  			mutex_unlock(&slave_image->mtx);
a17a75e2666f71 drivers/staging/vme/vme.c      Martyn Welch    2009-07-31  309  			allocated_image = slave_image;
a17a75e2666f71 drivers/staging/vme/vme.c      Martyn Welch    2009-07-31  310  			break;
a17a75e2666f71 drivers/staging/vme/vme.c      Martyn Welch    2009-07-31  311  		}
886953e9b70bcb drivers/staging/vme/vme.c      Emilio G. Cota  2010-11-12  312  		mutex_unlock(&slave_image->mtx);
a17a75e2666f71 drivers/staging/vme/vme.c      Martyn Welch    2009-07-31  313  	}

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E65803609B4
	for <lists+driverdev-devel@lfdr.de>; Thu, 15 Apr 2021 14:45:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3283A60D9B;
	Thu, 15 Apr 2021 12:45:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hINp5TrLQb-E; Thu, 15 Apr 2021 12:45:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D663860644;
	Thu, 15 Apr 2021 12:45:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DE2EA1BF3AE
 for <devel@linuxdriverproject.org>; Thu, 15 Apr 2021 12:45:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C31FD84727
 for <devel@linuxdriverproject.org>; Thu, 15 Apr 2021 12:45:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FvJ0XUf5gCdp for <devel@linuxdriverproject.org>;
 Thu, 15 Apr 2021 12:45:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 354CD84728
 for <devel@driverdev.osuosl.org>; Thu, 15 Apr 2021 12:45:40 +0000 (UTC)
IronPort-SDR: c20bTacUwKGqwffpOOjBSpcmjjPE9yOK2zZH1mRSolzFivMS8BkcaWObfeg4BvQzeI3wqZdeTr
 07V1RpUu87ZA==
X-IronPort-AV: E=McAfee;i="6200,9189,9955"; a="182341603"
X-IronPort-AV: E=Sophos;i="5.82,225,1613462400"; 
 d="gz'50?scan'50,208,50";a="182341603"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2021 05:45:38 -0700
IronPort-SDR: mOLbl3Bh9jOUluv/J0IXF78zh5GQve3/b+RjptNuNXHHVhmLpwvXa1mRuoHQAvtMSQNunkGQIA
 s52wsc9X3BXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,225,1613462400"; 
 d="gz'50?scan'50,208,50";a="451116290"
Received: from lkp-server02.sh.intel.com (HELO fa9c8fcc3464) ([10.239.97.151])
 by FMSMGA003.fm.intel.com with ESMTP; 15 Apr 2021 05:45:35 -0700
Received: from kbuild by fa9c8fcc3464 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lX1NG-0000xc-Hb; Thu, 15 Apr 2021 12:45:34 +0000
Date: Thu, 15 Apr 2021 20:44:36 +0800
From: kernel test robot <lkp@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing 704/705]
 drivers/comedi/drivers/jr3_pci.c:507:22: warning: variable 'min_full_scale'
 set but not used
Message-ID: <202104152019.R2OFa5ew-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="AqsLC8rIMeq19msA"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: devel@driverdev.osuosl.org, kbuild-all@lists.01.org
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--AqsLC8rIMeq19msA
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Greg,

First bad commit (maybe != root cause):

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-testing
head:   71d3edc61e29e45b613b841108688d711846f969
commit: 8ffdff6a8cfbdc174a3a390b6f825a277b5bb895 [704/705] staging: comedi: move out of staging directory
config: parisc-randconfig-r022-20210415 (attached as .config)
compiler: hppa-linux-gcc (GCC) 9.3.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git/commit/?id=8ffdff6a8cfbdc174a3a390b6f825a277b5bb895
        git remote add staging https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
        git fetch --no-tags staging staging-testing
        git checkout 8ffdff6a8cfbdc174a3a390b6f825a277b5bb895
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-9.3.0 make.cross W=1 ARCH=parisc 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   drivers/comedi/drivers/jr3_pci.c: In function 'jr3_pci_poll_subdevice':
>> drivers/comedi/drivers/jr3_pci.c:507:22: warning: variable 'min_full_scale' set but not used [-Wunused-but-set-variable]
     507 |    struct six_axis_t min_full_scale;
         |                      ^~~~~~~~~~~~~~


vim +/min_full_scale +507 drivers/comedi/drivers/jr3_pci.c

07b509e6584a55 drivers/staging/comedi/drivers/jr3_pci.c Anders Blomdell   2009-02-12  437  
d5e59c967830f9 drivers/staging/comedi/drivers/jr3_pci.c Anson Jacob       2016-08-26  438  static struct jr3_pci_poll_delay
d5e59c967830f9 drivers/staging/comedi/drivers/jr3_pci.c Anson Jacob       2016-08-26  439  jr3_pci_poll_subdevice(struct comedi_subdevice *s)
07b509e6584a55 drivers/staging/comedi/drivers/jr3_pci.c Anders Blomdell   2009-02-12  440  {
01fca4732b98ab drivers/staging/comedi/drivers/jr3_pci.c H Hartley Sweeten 2014-03-07  441  	struct jr3_pci_subdev_private *spriv = s->private;
da1331a50315a0 drivers/staging/comedi/drivers/jr3_pci.c H Hartley Sweeten 2014-03-07  442  	struct jr3_pci_poll_delay result = poll_delay_min_max(1000, 2000);
713eab88c66de4 drivers/staging/comedi/drivers/jr3_pci.c Ian Abbott        2017-03-08  443  	struct jr3_sensor __iomem *sensor;
01fca4732b98ab drivers/staging/comedi/drivers/jr3_pci.c H Hartley Sweeten 2014-03-07  444  	u16 model_no;
01fca4732b98ab drivers/staging/comedi/drivers/jr3_pci.c H Hartley Sweeten 2014-03-07  445  	u16 serial_no;
01fca4732b98ab drivers/staging/comedi/drivers/jr3_pci.c H Hartley Sweeten 2014-03-07  446  	int errors;
b1f68dc1d61015 drivers/staging/comedi/drivers/jr3_pci.c Ian Abbott        2009-09-21  447  	int i;
07b509e6584a55 drivers/staging/comedi/drivers/jr3_pci.c Anders Blomdell   2009-02-12  448  
713eab88c66de4 drivers/staging/comedi/drivers/jr3_pci.c Ian Abbott        2017-03-08  449  	sensor = spriv->sensor;
713eab88c66de4 drivers/staging/comedi/drivers/jr3_pci.c Ian Abbott        2017-03-08  450  	errors = get_u16(&sensor->errors);
7803d8e05d63d7 drivers/staging/comedi/drivers/jr3_pci.c Kumar Amit Mehta  2012-11-07  451  
01fca4732b98ab drivers/staging/comedi/drivers/jr3_pci.c H Hartley Sweeten 2014-03-07  452  	if (errors != spriv->errors)
01fca4732b98ab drivers/staging/comedi/drivers/jr3_pci.c H Hartley Sweeten 2014-03-07  453  		spriv->errors = errors;
01fca4732b98ab drivers/staging/comedi/drivers/jr3_pci.c H Hartley Sweeten 2014-03-07  454  
01fca4732b98ab drivers/staging/comedi/drivers/jr3_pci.c H Hartley Sweeten 2014-03-07  455  	/* Sensor communication lost? force poll mode */
7803d8e05d63d7 drivers/staging/comedi/drivers/jr3_pci.c Kumar Amit Mehta  2012-11-07  456  	if (errors & (watch_dog | watch_dog2 | sensor_change))
01fca4732b98ab drivers/staging/comedi/drivers/jr3_pci.c H Hartley Sweeten 2014-03-07  457  		spriv->state = state_jr3_poll;
01fca4732b98ab drivers/staging/comedi/drivers/jr3_pci.c H Hartley Sweeten 2014-03-07  458  
01fca4732b98ab drivers/staging/comedi/drivers/jr3_pci.c H Hartley Sweeten 2014-03-07  459  	switch (spriv->state) {
01fca4732b98ab drivers/staging/comedi/drivers/jr3_pci.c H Hartley Sweeten 2014-03-07  460  	case state_jr3_poll:
713eab88c66de4 drivers/staging/comedi/drivers/jr3_pci.c Ian Abbott        2017-03-08  461  		model_no = get_u16(&sensor->model_no);
713eab88c66de4 drivers/staging/comedi/drivers/jr3_pci.c Ian Abbott        2017-03-08  462  		serial_no = get_u16(&sensor->serial_no);
07b509e6584a55 drivers/staging/comedi/drivers/jr3_pci.c Anders Blomdell   2009-02-12  463  
07b509e6584a55 drivers/staging/comedi/drivers/jr3_pci.c Anders Blomdell   2009-02-12  464  		if ((errors & (watch_dog | watch_dog2)) ||
07b509e6584a55 drivers/staging/comedi/drivers/jr3_pci.c Anders Blomdell   2009-02-12  465  		    model_no == 0 || serial_no == 0) {
2696fb57e6af65 drivers/staging/comedi/drivers/jr3_pci.c Bill Pemberton    2009-03-27  466  			/*
abcdc99f7cb387 drivers/staging/comedi/drivers/jr3_pci.c Ian Abbott        2012-11-01  467  			 * Still no sensor, keep on polling.
01fca4732b98ab drivers/staging/comedi/drivers/jr3_pci.c H Hartley Sweeten 2014-03-07  468  			 * Since it takes up to 10 seconds for offsets to
01fca4732b98ab drivers/staging/comedi/drivers/jr3_pci.c H Hartley Sweeten 2014-03-07  469  			 * stabilize, polling each second should suffice.
2696fb57e6af65 drivers/staging/comedi/drivers/jr3_pci.c Bill Pemberton    2009-03-27  470  			 */
07b509e6584a55 drivers/staging/comedi/drivers/jr3_pci.c Anders Blomdell   2009-02-12  471  		} else {
01fca4732b98ab drivers/staging/comedi/drivers/jr3_pci.c H Hartley Sweeten 2014-03-07  472  			spriv->retries = 0;
01fca4732b98ab drivers/staging/comedi/drivers/jr3_pci.c H Hartley Sweeten 2014-03-07  473  			spriv->state = state_jr3_init_wait_for_offset;
07b509e6584a55 drivers/staging/comedi/drivers/jr3_pci.c Anders Blomdell   2009-02-12  474  		}
07b509e6584a55 drivers/staging/comedi/drivers/jr3_pci.c Anders Blomdell   2009-02-12  475  		break;
abcdc99f7cb387 drivers/staging/comedi/drivers/jr3_pci.c Ian Abbott        2012-11-01  476  	case state_jr3_init_wait_for_offset:
01fca4732b98ab drivers/staging/comedi/drivers/jr3_pci.c H Hartley Sweeten 2014-03-07  477  		spriv->retries++;
01fca4732b98ab drivers/staging/comedi/drivers/jr3_pci.c H Hartley Sweeten 2014-03-07  478  		if (spriv->retries < 10) {
01fca4732b98ab drivers/staging/comedi/drivers/jr3_pci.c H Hartley Sweeten 2014-03-07  479  			/*
01fca4732b98ab drivers/staging/comedi/drivers/jr3_pci.c H Hartley Sweeten 2014-03-07  480  			 * Wait for offeset to stabilize
01fca4732b98ab drivers/staging/comedi/drivers/jr3_pci.c H Hartley Sweeten 2014-03-07  481  			 * (< 10 s according to manual)
01fca4732b98ab drivers/staging/comedi/drivers/jr3_pci.c H Hartley Sweeten 2014-03-07  482  			 */
07b509e6584a55 drivers/staging/comedi/drivers/jr3_pci.c Anders Blomdell   2009-02-12  483  		} else {
0a44493fb18738 drivers/staging/comedi/drivers/jr3_pci.c H Hartley Sweeten 2014-03-07  484  			struct jr3_pci_transform transf;
07b509e6584a55 drivers/staging/comedi/drivers/jr3_pci.c Anders Blomdell   2009-02-12  485  
713eab88c66de4 drivers/staging/comedi/drivers/jr3_pci.c Ian Abbott        2017-03-08  486  			spriv->model_no = get_u16(&sensor->model_no);
713eab88c66de4 drivers/staging/comedi/drivers/jr3_pci.c Ian Abbott        2017-03-08  487  			spriv->serial_no = get_u16(&sensor->serial_no);
07b509e6584a55 drivers/staging/comedi/drivers/jr3_pci.c Anders Blomdell   2009-02-12  488  
2696fb57e6af65 drivers/staging/comedi/drivers/jr3_pci.c Bill Pemberton    2009-03-27  489  			/* Transformation all zeros */
b1f68dc1d61015 drivers/staging/comedi/drivers/jr3_pci.c Ian Abbott        2009-09-21  490  			for (i = 0; i < ARRAY_SIZE(transf.link); i++) {
01fca4732b98ab drivers/staging/comedi/drivers/jr3_pci.c H Hartley Sweeten 2014-03-07  491  				transf.link[i].link_type = (enum link_types)0;
b1f68dc1d61015 drivers/staging/comedi/drivers/jr3_pci.c Ian Abbott        2009-09-21  492  				transf.link[i].link_amount = 0;
b1f68dc1d61015 drivers/staging/comedi/drivers/jr3_pci.c Ian Abbott        2009-09-21  493  			}
07b509e6584a55 drivers/staging/comedi/drivers/jr3_pci.c Anders Blomdell   2009-02-12  494  
713eab88c66de4 drivers/staging/comedi/drivers/jr3_pci.c Ian Abbott        2017-03-08  495  			set_transforms(sensor, &transf, 0);
713eab88c66de4 drivers/staging/comedi/drivers/jr3_pci.c Ian Abbott        2017-03-08  496  			use_transform(sensor, 0);
01fca4732b98ab drivers/staging/comedi/drivers/jr3_pci.c H Hartley Sweeten 2014-03-07  497  			spriv->state = state_jr3_init_transform_complete;
abcdc99f7cb387 drivers/staging/comedi/drivers/jr3_pci.c Ian Abbott        2012-11-01  498  			/* Allow 20 ms for completion */
abcdc99f7cb387 drivers/staging/comedi/drivers/jr3_pci.c Ian Abbott        2012-11-01  499  			result = poll_delay_min_max(20, 100);
07b509e6584a55 drivers/staging/comedi/drivers/jr3_pci.c Anders Blomdell   2009-02-12  500  		}
abcdc99f7cb387 drivers/staging/comedi/drivers/jr3_pci.c Ian Abbott        2012-11-01  501  		break;
abcdc99f7cb387 drivers/staging/comedi/drivers/jr3_pci.c Ian Abbott        2012-11-01  502  	case state_jr3_init_transform_complete:
713eab88c66de4 drivers/staging/comedi/drivers/jr3_pci.c Ian Abbott        2017-03-08  503  		if (!is_complete(sensor)) {
07b509e6584a55 drivers/staging/comedi/drivers/jr3_pci.c Anders Blomdell   2009-02-12  504  			result = poll_delay_min_max(20, 100);
07b509e6584a55 drivers/staging/comedi/drivers/jr3_pci.c Anders Blomdell   2009-02-12  505  		} else {
2696fb57e6af65 drivers/staging/comedi/drivers/jr3_pci.c Bill Pemberton    2009-03-27  506  			/* Set full scale */
050509fa558306 drivers/staging/comedi/drivers/jr3_pci.c Bill Pemberton    2009-03-16 @507  			struct six_axis_t min_full_scale;
050509fa558306 drivers/staging/comedi/drivers/jr3_pci.c Bill Pemberton    2009-03-16  508  			struct six_axis_t max_full_scale;
07b509e6584a55 drivers/staging/comedi/drivers/jr3_pci.c Anders Blomdell   2009-02-12  509  
713eab88c66de4 drivers/staging/comedi/drivers/jr3_pci.c Ian Abbott        2017-03-08  510  			min_full_scale = get_min_full_scales(sensor);
713eab88c66de4 drivers/staging/comedi/drivers/jr3_pci.c Ian Abbott        2017-03-08  511  			max_full_scale = get_max_full_scales(sensor);
713eab88c66de4 drivers/staging/comedi/drivers/jr3_pci.c Ian Abbott        2017-03-08  512  			set_full_scales(sensor, max_full_scale);
07b509e6584a55 drivers/staging/comedi/drivers/jr3_pci.c Anders Blomdell   2009-02-12  513  
01fca4732b98ab drivers/staging/comedi/drivers/jr3_pci.c H Hartley Sweeten 2014-03-07  514  			spriv->state = state_jr3_init_set_full_scale_complete;
abcdc99f7cb387 drivers/staging/comedi/drivers/jr3_pci.c Ian Abbott        2012-11-01  515  			/* Allow 20 ms for completion */
abcdc99f7cb387 drivers/staging/comedi/drivers/jr3_pci.c Ian Abbott        2012-11-01  516  			result = poll_delay_min_max(20, 100);
07b509e6584a55 drivers/staging/comedi/drivers/jr3_pci.c Anders Blomdell   2009-02-12  517  		}
07b509e6584a55 drivers/staging/comedi/drivers/jr3_pci.c Anders Blomdell   2009-02-12  518  		break;
abcdc99f7cb387 drivers/staging/comedi/drivers/jr3_pci.c Ian Abbott        2012-11-01  519  	case state_jr3_init_set_full_scale_complete:
713eab88c66de4 drivers/staging/comedi/drivers/jr3_pci.c Ian Abbott        2017-03-08  520  		if (!is_complete(sensor)) {
07b509e6584a55 drivers/staging/comedi/drivers/jr3_pci.c Anders Blomdell   2009-02-12  521  			result = poll_delay_min_max(20, 100);
07b509e6584a55 drivers/staging/comedi/drivers/jr3_pci.c Anders Blomdell   2009-02-12  522  		} else {
713eab88c66de4 drivers/staging/comedi/drivers/jr3_pci.c Ian Abbott        2017-03-08  523  			struct force_array __iomem *fs = &sensor->full_scale;
4af8c8195188b5 drivers/staging/comedi/drivers/jr3_pci.c Ian Abbott        2017-02-17  524  			union jr3_pci_single_range *r = spriv->range;
01fca4732b98ab drivers/staging/comedi/drivers/jr3_pci.c H Hartley Sweeten 2014-03-07  525  
01fca4732b98ab drivers/staging/comedi/drivers/jr3_pci.c H Hartley Sweeten 2014-03-07  526  			/* Use ranges in kN or we will overflow around 2000N! */
4af8c8195188b5 drivers/staging/comedi/drivers/jr3_pci.c Ian Abbott        2017-02-17  527  			r[0].l.range[0].min = -get_s16(&fs->fx) * 1000;
4af8c8195188b5 drivers/staging/comedi/drivers/jr3_pci.c Ian Abbott        2017-02-17  528  			r[0].l.range[0].max = get_s16(&fs->fx) * 1000;
4af8c8195188b5 drivers/staging/comedi/drivers/jr3_pci.c Ian Abbott        2017-02-17  529  			r[1].l.range[0].min = -get_s16(&fs->fy) * 1000;
4af8c8195188b5 drivers/staging/comedi/drivers/jr3_pci.c Ian Abbott        2017-02-17  530  			r[1].l.range[0].max = get_s16(&fs->fy) * 1000;
4af8c8195188b5 drivers/staging/comedi/drivers/jr3_pci.c Ian Abbott        2017-02-17  531  			r[2].l.range[0].min = -get_s16(&fs->fz) * 1000;
4af8c8195188b5 drivers/staging/comedi/drivers/jr3_pci.c Ian Abbott        2017-02-17  532  			r[2].l.range[0].max = get_s16(&fs->fz) * 1000;
4af8c8195188b5 drivers/staging/comedi/drivers/jr3_pci.c Ian Abbott        2017-02-17  533  			r[3].l.range[0].min = -get_s16(&fs->mx) * 100;
4af8c8195188b5 drivers/staging/comedi/drivers/jr3_pci.c Ian Abbott        2017-02-17  534  			r[3].l.range[0].max = get_s16(&fs->mx) * 100;
4af8c8195188b5 drivers/staging/comedi/drivers/jr3_pci.c Ian Abbott        2017-02-17  535  			r[4].l.range[0].min = -get_s16(&fs->my) * 100;
4af8c8195188b5 drivers/staging/comedi/drivers/jr3_pci.c Ian Abbott        2017-02-17  536  			r[4].l.range[0].max = get_s16(&fs->my) * 100;
4af8c8195188b5 drivers/staging/comedi/drivers/jr3_pci.c Ian Abbott        2017-02-17  537  			r[5].l.range[0].min = -get_s16(&fs->mz) * 100;
01fca4732b98ab drivers/staging/comedi/drivers/jr3_pci.c H Hartley Sweeten 2014-03-07  538  			/* the next five are questionable */
4af8c8195188b5 drivers/staging/comedi/drivers/jr3_pci.c Ian Abbott        2017-02-17  539  			r[5].l.range[0].max = get_s16(&fs->mz) * 100;
4af8c8195188b5 drivers/staging/comedi/drivers/jr3_pci.c Ian Abbott        2017-02-17  540  			r[6].l.range[0].min = -get_s16(&fs->v1) * 100;
4af8c8195188b5 drivers/staging/comedi/drivers/jr3_pci.c Ian Abbott        2017-02-17  541  			r[6].l.range[0].max = get_s16(&fs->v1) * 100;
4af8c8195188b5 drivers/staging/comedi/drivers/jr3_pci.c Ian Abbott        2017-02-17  542  			r[7].l.range[0].min = -get_s16(&fs->v2) * 100;
4af8c8195188b5 drivers/staging/comedi/drivers/jr3_pci.c Ian Abbott        2017-02-17  543  			r[7].l.range[0].max = get_s16(&fs->v2) * 100;
4af8c8195188b5 drivers/staging/comedi/drivers/jr3_pci.c Ian Abbott        2017-02-17  544  			r[8].l.range[0].min = 0;
4af8c8195188b5 drivers/staging/comedi/drivers/jr3_pci.c Ian Abbott        2017-02-17  545  			r[8].l.range[0].max = 65535;
07b509e6584a55 drivers/staging/comedi/drivers/jr3_pci.c Anders Blomdell   2009-02-12  546  
713eab88c66de4 drivers/staging/comedi/drivers/jr3_pci.c Ian Abbott        2017-03-08  547  			use_offset(sensor, 0);
01fca4732b98ab drivers/staging/comedi/drivers/jr3_pci.c H Hartley Sweeten 2014-03-07  548  			spriv->state = state_jr3_init_use_offset_complete;
abcdc99f7cb387 drivers/staging/comedi/drivers/jr3_pci.c Ian Abbott        2012-11-01  549  			/* Allow 40 ms for completion */
abcdc99f7cb387 drivers/staging/comedi/drivers/jr3_pci.c Ian Abbott        2012-11-01  550  			result = poll_delay_min_max(40, 100);
07b509e6584a55 drivers/staging/comedi/drivers/jr3_pci.c Anders Blomdell   2009-02-12  551  		}
07b509e6584a55 drivers/staging/comedi/drivers/jr3_pci.c Anders Blomdell   2009-02-12  552  		break;
abcdc99f7cb387 drivers/staging/comedi/drivers/jr3_pci.c Ian Abbott        2012-11-01  553  	case state_jr3_init_use_offset_complete:
713eab88c66de4 drivers/staging/comedi/drivers/jr3_pci.c Ian Abbott        2017-03-08  554  		if (!is_complete(sensor)) {
07b509e6584a55 drivers/staging/comedi/drivers/jr3_pci.c Anders Blomdell   2009-02-12  555  			result = poll_delay_min_max(20, 100);
07b509e6584a55 drivers/staging/comedi/drivers/jr3_pci.c Anders Blomdell   2009-02-12  556  		} else {
713eab88c66de4 drivers/staging/comedi/drivers/jr3_pci.c Ian Abbott        2017-03-08  557  			set_s16(&sensor->offsets.fx, 0);
713eab88c66de4 drivers/staging/comedi/drivers/jr3_pci.c Ian Abbott        2017-03-08  558  			set_s16(&sensor->offsets.fy, 0);
713eab88c66de4 drivers/staging/comedi/drivers/jr3_pci.c Ian Abbott        2017-03-08  559  			set_s16(&sensor->offsets.fz, 0);
713eab88c66de4 drivers/staging/comedi/drivers/jr3_pci.c Ian Abbott        2017-03-08  560  			set_s16(&sensor->offsets.mx, 0);
713eab88c66de4 drivers/staging/comedi/drivers/jr3_pci.c Ian Abbott        2017-03-08  561  			set_s16(&sensor->offsets.my, 0);
713eab88c66de4 drivers/staging/comedi/drivers/jr3_pci.c Ian Abbott        2017-03-08  562  			set_s16(&sensor->offsets.mz, 0);
07b509e6584a55 drivers/staging/comedi/drivers/jr3_pci.c Anders Blomdell   2009-02-12  563  
713eab88c66de4 drivers/staging/comedi/drivers/jr3_pci.c Ian Abbott        2017-03-08  564  			set_offset(sensor);
07b509e6584a55 drivers/staging/comedi/drivers/jr3_pci.c Anders Blomdell   2009-02-12  565  
01fca4732b98ab drivers/staging/comedi/drivers/jr3_pci.c H Hartley Sweeten 2014-03-07  566  			spriv->state = state_jr3_done;
07b509e6584a55 drivers/staging/comedi/drivers/jr3_pci.c Anders Blomdell   2009-02-12  567  		}
07b509e6584a55 drivers/staging/comedi/drivers/jr3_pci.c Anders Blomdell   2009-02-12  568  		break;
abcdc99f7cb387 drivers/staging/comedi/drivers/jr3_pci.c Ian Abbott        2012-11-01  569  	case state_jr3_done:
01fca4732b98ab drivers/staging/comedi/drivers/jr3_pci.c H Hartley Sweeten 2014-03-07  570  		result = poll_delay_min_max(10000, 20000);
07b509e6584a55 drivers/staging/comedi/drivers/jr3_pci.c Anders Blomdell   2009-02-12  571  		break;
abcdc99f7cb387 drivers/staging/comedi/drivers/jr3_pci.c Ian Abbott        2012-11-01  572  	default:
07b509e6584a55 drivers/staging/comedi/drivers/jr3_pci.c Anders Blomdell   2009-02-12  573  		break;
07b509e6584a55 drivers/staging/comedi/drivers/jr3_pci.c Anders Blomdell   2009-02-12  574  	}
01fca4732b98ab drivers/staging/comedi/drivers/jr3_pci.c H Hartley Sweeten 2014-03-07  575  
07b509e6584a55 drivers/staging/comedi/drivers/jr3_pci.c Anders Blomdell   2009-02-12  576  	return result;
07b509e6584a55 drivers/staging/comedi/drivers/jr3_pci.c Anders Blomdell   2009-02-12  577  }
07b509e6584a55 drivers/staging/comedi/drivers/jr3_pci.c Anders Blomdell   2009-02-12  578  

:::::: The code at line 507 was first introduced by commit
:::::: 050509fa558306399f2a987956514a8f849846ef Staging: comedi: Remove six_axis_t typedef

:::::: TO: Bill Pemberton <wfp5p@virginia.edu>
:::::: CC: Greg Kroah-Hartman <gregkh@suse.de>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--AqsLC8rIMeq19msA
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--AqsLC8rIMeq19msA
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--AqsLC8rIMeq19msA--

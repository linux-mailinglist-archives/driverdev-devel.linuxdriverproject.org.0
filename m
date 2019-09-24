Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A5CDBD317
	for <lists+driverdev-devel@lfdr.de>; Tue, 24 Sep 2019 21:53:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 919D785DE1;
	Tue, 24 Sep 2019 19:53:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WLnj50h6n51V; Tue, 24 Sep 2019 19:52:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7740D85DC1;
	Tue, 24 Sep 2019 19:52:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E1C661BF385
 for <devel@linuxdriverproject.org>; Tue, 24 Sep 2019 19:52:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D25F985DC1
 for <devel@linuxdriverproject.org>; Tue, 24 Sep 2019 19:52:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id a1F5mCscvoJ6 for <devel@linuxdriverproject.org>;
 Tue, 24 Sep 2019 19:52:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 62EF985D92
 for <devel@driverdev.osuosl.org>; Tue, 24 Sep 2019 19:52:54 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Sep 2019 12:52:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,545,1559545200"; 
 d="gz'50?scan'50,208,50";a="272738777"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga001.jf.intel.com with ESMTP; 24 Sep 2019 12:52:46 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1iCqre-0002aj-Dv; Wed, 25 Sep 2019 03:52:46 +0800
Date: Wed, 25 Sep 2019 03:51:45 +0800
From: kbuild test robot <lkp@intel.com>
To: Jerry Lin <wahahab11@gmail.com>
Subject: [staging:staging-testing 14/19]
 drivers/staging/olpc_dcon/olpc_dcon_xo_1.c:191: undefined reference to
 `cs5535_gpio_set'
Message-ID: <201909250336.sZv0FPcg%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="bfjf4wzizh7telj6"
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
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
 kbuild-all@01.org
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--bfjf4wzizh7telj6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

tree:   https://kernel.googlesource.com/pub/scm/linux/kernel/git/gregkh/staging.git staging-testing
head:   3f1962fdc723cb48f0ea4e8a733d3ffa88708e98
commit: a3f54564061da0c8c0b60033ff44acfa356b8779 [14/19] staging: olpc_dcon: allow simultaneous XO-1 and XO-1.5 support
config: i386-randconfig-g002-201938 (attached as .config)
compiler: gcc-7 (Debian 7.4.0-13) 7.4.0
reproduce:
        git checkout a3f54564061da0c8c0b60033ff44acfa356b8779
        # save the attached .config to linux build tree
        make ARCH=i386 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   ld: drivers/staging/olpc_dcon/olpc_dcon_xo_1.o: in function `dcon_read_status_xo_1':
>> drivers/staging/olpc_dcon/olpc_dcon_xo_1.c:191: undefined reference to `cs5535_gpio_set'
   ld: drivers/staging/olpc_dcon/olpc_dcon_xo_1.o: in function `dcon_wiggle_xo_1':
   drivers/staging/olpc_dcon/olpc_dcon_xo_1.c:156: undefined reference to `cs5535_gpio_set'
>> ld: drivers/staging/olpc_dcon/olpc_dcon_xo_1.c:157: undefined reference to `cs5535_gpio_set'
   ld: drivers/staging/olpc_dcon/olpc_dcon_xo_1.c:158: undefined reference to `cs5535_gpio_set'
   ld: drivers/staging/olpc_dcon/olpc_dcon_xo_1.c:159: undefined reference to `cs5535_gpio_set'
>> ld: drivers/staging/olpc_dcon/olpc_dcon_xo_1.c:160: undefined reference to `cs5535_gpio_clear'
   ld: drivers/staging/olpc_dcon/olpc_dcon_xo_1.c:161: undefined reference to `cs5535_gpio_clear'
   ld: drivers/staging/olpc_dcon/olpc_dcon_xo_1.c:162: undefined reference to `cs5535_gpio_clear'
   ld: drivers/staging/olpc_dcon/olpc_dcon_xo_1.c:163: undefined reference to `cs5535_gpio_clear'
   ld: drivers/staging/olpc_dcon/olpc_dcon_xo_1.c:164: undefined reference to `cs5535_gpio_clear'
   ld: drivers/staging/olpc_dcon/olpc_dcon_xo_1.o:drivers/staging/olpc_dcon/olpc_dcon_xo_1.c:165: more undefined references to `cs5535_gpio_clear' follow
   ld: drivers/staging/olpc_dcon/olpc_dcon_xo_1.o: in function `dcon_wiggle_xo_1':
   drivers/staging/olpc_dcon/olpc_dcon_xo_1.c:171: undefined reference to `cs5535_gpio_set'
   ld: drivers/staging/olpc_dcon/olpc_dcon_xo_1.c:174: undefined reference to `cs5535_gpio_set'
   ld: drivers/staging/olpc_dcon/olpc_dcon_xo_1.c:175: undefined reference to `cs5535_gpio_set'
   ld: drivers/staging/olpc_dcon/olpc_dcon_xo_1.c:176: undefined reference to `cs5535_gpio_set'
   ld: drivers/staging/olpc_dcon/olpc_dcon_xo_1.c:177: undefined reference to `cs5535_gpio_set'
   ld: drivers/staging/olpc_dcon/olpc_dcon_xo_1.o: in function `dcon_init_xo_1':
>> drivers/staging/olpc_dcon/olpc_dcon_xo_1.c:57: undefined reference to `cs5535_gpio_clear'
>> ld: drivers/staging/olpc_dcon/olpc_dcon_xo_1.c:69: undefined reference to `cs5535_gpio_isset'
>> ld: drivers/staging/olpc_dcon/olpc_dcon_xo_1.c:85: undefined reference to `cs5535_gpio_setup_event'
>> ld: drivers/staging/olpc_dcon/olpc_dcon_xo_1.c:88: undefined reference to `cs5535_gpio_set_irq'
   ld: drivers/staging/olpc_dcon/olpc_dcon_xo_1.c:102: undefined reference to `cs5535_gpio_clear'
   ld: drivers/staging/olpc_dcon/olpc_dcon_xo_1.c:105: undefined reference to `cs5535_gpio_set'
   ld: drivers/staging/olpc_dcon/olpc_dcon_xo_1.c:108: undefined reference to `cs5535_gpio_clear'
   ld: drivers/staging/olpc_dcon/olpc_dcon_xo_1.c:111: undefined reference to `cs5535_gpio_clear'
   ld: drivers/staging/olpc_dcon/olpc_dcon_xo_1.c:112: undefined reference to `cs5535_gpio_clear'
   ld: drivers/staging/olpc_dcon/olpc_dcon_xo_1.c:115: undefined reference to `cs5535_gpio_set'
   ld: drivers/staging/olpc_dcon/olpc_dcon_xo_1.c:118: undefined reference to `cs5535_gpio_clear'
   ld: drivers/staging/olpc_dcon/olpc_dcon_xo_1.c:121: undefined reference to `cs5535_gpio_set'
   ld: drivers/staging/olpc_dcon/olpc_dcon_xo_1.c:124: undefined reference to `cs5535_gpio_set'
   ld: drivers/staging/olpc_dcon/olpc_dcon_xo_1.c:127: undefined reference to `cs5535_gpio_set'
   ld: drivers/staging/olpc_dcon/olpc_dcon_xo_1.c:128: undefined reference to `cs5535_gpio_set'
   ld: drivers/staging/olpc_dcon/olpc_dcon_xo_1.c:131: undefined reference to `cs5535_gpio_set'
   ld: drivers/staging/olpc_dcon/olpc_dcon_xo_1.o:drivers/staging/olpc_dcon/olpc_dcon_xo_1.c:132: more undefined references to `cs5535_gpio_set' follow

vim +191 drivers/staging/olpc_dcon/olpc_dcon_xo_1.c

2159fb3729293c Nishad Kamdar      2018-11-07   38  
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04   39  static int dcon_init_xo_1(struct dcon_priv *dcon)
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04   40  {
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04   41  	unsigned char lob;
2159fb3729293c Nishad Kamdar      2018-11-07   42  	int ret, i;
ae0a6d2017f733 Arnd Bergmann      2019-03-04   43  	const struct dcon_gpio *pin = &gpios_asis[0];
2159fb3729293c Nishad Kamdar      2018-11-07   44  
2159fb3729293c Nishad Kamdar      2018-11-07   45  	for (i = 0; i < ARRAY_SIZE(gpios_asis); i++) {
2159fb3729293c Nishad Kamdar      2018-11-07   46  		gpios[i] = devm_gpiod_get(&dcon->client->dev, pin[i].name,
2159fb3729293c Nishad Kamdar      2018-11-07   47  					  pin[i].flags);
2159fb3729293c Nishad Kamdar      2018-11-07   48  		if (IS_ERR(gpios[i])) {
2159fb3729293c Nishad Kamdar      2018-11-07   49  			ret = PTR_ERR(gpios[i]);
2159fb3729293c Nishad Kamdar      2018-11-07   50  			pr_err("failed to request %s GPIO: %d\n", pin[i].name,
2159fb3729293c Nishad Kamdar      2018-11-07   51  			       ret);
2159fb3729293c Nishad Kamdar      2018-11-07   52  			return ret;
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04   53  		}
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04   54  	}
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04   55  
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04   56  	/* Turn off the event enable for GPIO7 just to be safe */
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04  @57  	cs5535_gpio_clear(OLPC_GPIO_DCON_IRQ, GPIO_EVENTS_ENABLE);
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04   58  
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04   59  	/*
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04   60  	 * Determine the current state by reading the GPIO bit; earlier
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04   61  	 * stages of the boot process have established the state.
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04   62  	 *
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04   63  	 * Note that we read GPIO_OUTPUT_VAL rather than GPIO_READ_BACK here;
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04   64  	 * this is because OFW will disable input for the pin and set a value..
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04   65  	 * READ_BACK will only contain a valid value if input is enabled and
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04   66  	 * then a value is set.  So, future readings of the pin can use
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04   67  	 * READ_BACK, but the first one cannot.  Awesome, huh?
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04   68  	 */
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04  @69  	dcon->curr_src = cs5535_gpio_isset(OLPC_GPIO_DCON_LOAD, GPIO_OUTPUT_VAL)
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04   70  		? DCON_SOURCE_CPU
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04   71  		: DCON_SOURCE_DCON;
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04   72  	dcon->pending_src = dcon->curr_src;
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04   73  
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04   74  	/* Set the directions for the GPIO pins */
2159fb3729293c Nishad Kamdar      2018-11-07   75  	gpiod_direction_input(gpios[OLPC_DCON_STAT0]);
2159fb3729293c Nishad Kamdar      2018-11-07   76  	gpiod_direction_input(gpios[OLPC_DCON_STAT1]);
2159fb3729293c Nishad Kamdar      2018-11-07   77  	gpiod_direction_input(gpios[OLPC_DCON_IRQ]);
2159fb3729293c Nishad Kamdar      2018-11-07   78  	gpiod_direction_input(gpios[OLPC_DCON_BLANK]);
2159fb3729293c Nishad Kamdar      2018-11-07   79  	gpiod_direction_output(gpios[OLPC_DCON_LOAD],
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04   80  			       dcon->curr_src == DCON_SOURCE_CPU);
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04   81  
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04   82  	/* Set up the interrupt mappings */
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04   83  
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04   84  	/* Set the IRQ to pair 2 */
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04  @85  	cs5535_gpio_setup_event(OLPC_GPIO_DCON_IRQ, 2, 0);
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04   86  
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04   87  	/* Enable group 2 to trigger the DCON interrupt */
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04  @88  	cs5535_gpio_set_irq(2, DCON_IRQ);
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04   89  
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04   90  	/* Select edge level for interrupt (in PIC) */
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04   91  	lob = inb(0x4d0);
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04   92  	lob &= ~(1 << DCON_IRQ);
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04   93  	outb(lob, 0x4d0);
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04   94  
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04   95  	/* Register the interrupt handler */
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04   96  	if (request_irq(DCON_IRQ, &dcon_interrupt, 0, "DCON", dcon)) {
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04   97  		pr_err("failed to request DCON's irq\n");
2159fb3729293c Nishad Kamdar      2018-11-07   98  		return -EIO;
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04   99  	}
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04  100  
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04  101  	/* Clear INV_EN for GPIO7 (DCONIRQ) */
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04  102  	cs5535_gpio_clear(OLPC_GPIO_DCON_IRQ, GPIO_INPUT_INVERT);
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04  103  
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04  104  	/* Enable filter for GPIO12 (DCONBLANK) */
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04  105  	cs5535_gpio_set(OLPC_GPIO_DCON_BLANK, GPIO_INPUT_FILTER);
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04  106  
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04  107  	/* Disable filter for GPIO7 */
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04  108  	cs5535_gpio_clear(OLPC_GPIO_DCON_IRQ, GPIO_INPUT_FILTER);
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04  109  
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04  110  	/* Disable event counter for GPIO7 (DCONIRQ) and GPIO12 (DCONBLANK) */
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04  111  	cs5535_gpio_clear(OLPC_GPIO_DCON_IRQ, GPIO_INPUT_EVENT_COUNT);
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04  112  	cs5535_gpio_clear(OLPC_GPIO_DCON_BLANK, GPIO_INPUT_EVENT_COUNT);
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04  113  
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04  114  	/* Add GPIO12 to the Filter Event Pair #7 */
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04  115  	cs5535_gpio_set(OLPC_GPIO_DCON_BLANK, GPIO_FE7_SEL);
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04  116  
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04  117  	/* Turn off negative Edge Enable for GPIO12 */
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04  118  	cs5535_gpio_clear(OLPC_GPIO_DCON_BLANK, GPIO_NEGATIVE_EDGE_EN);
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04  119  
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04  120  	/* Enable negative Edge Enable for GPIO7 */
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04  121  	cs5535_gpio_set(OLPC_GPIO_DCON_IRQ, GPIO_NEGATIVE_EDGE_EN);
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04  122  
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04  123  	/* Zero the filter amount for Filter Event Pair #7 */
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04  124  	cs5535_gpio_set(0, GPIO_FLTR7_AMOUNT);
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04  125  
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04  126  	/* Clear the negative edge status for GPIO7 and GPIO12 */
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04  127  	cs5535_gpio_set(OLPC_GPIO_DCON_IRQ, GPIO_NEGATIVE_EDGE_STS);
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04  128  	cs5535_gpio_set(OLPC_GPIO_DCON_BLANK, GPIO_NEGATIVE_EDGE_STS);
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04  129  
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04  130  	/* FIXME:  Clear the positive status as well, just to be sure */
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04  131  	cs5535_gpio_set(OLPC_GPIO_DCON_IRQ, GPIO_POSITIVE_EDGE_STS);
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04  132  	cs5535_gpio_set(OLPC_GPIO_DCON_BLANK, GPIO_POSITIVE_EDGE_STS);
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04  133  
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04  134  	/* Enable events for GPIO7 (DCONIRQ) and GPIO12 (DCONBLANK) */
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04  135  	cs5535_gpio_set(OLPC_GPIO_DCON_IRQ, GPIO_EVENTS_ENABLE);
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04  136  	cs5535_gpio_set(OLPC_GPIO_DCON_BLANK, GPIO_EVENTS_ENABLE);
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04  137  
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04  138  	return 0;
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04  139  }
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04  140  
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04  141  static void dcon_wiggle_xo_1(void)
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04  142  {
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04  143  	int x;
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04  144  
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04  145  	/*
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04  146  	 * According to HiMax, when powering the DCON up we should hold
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04  147  	 * SMB_DATA high for 8 SMB_CLK cycles.  This will force the DCON
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04  148  	 * state machine to reset to a (sane) initial state.  Mitch Bradley
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04  149  	 * did some testing and discovered that holding for 16 SMB_CLK cycles
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04  150  	 * worked a lot more reliably, so that's what we do here.
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04  151  	 *
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04  152  	 * According to the cs5536 spec, to set GPIO14 to SMB_CLK we must
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04  153  	 * simultaneously set AUX1 IN/OUT to GPIO14; ditto for SMB_DATA and
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04  154  	 * GPIO15.
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04  155  	 */
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04  156  	cs5535_gpio_set(OLPC_GPIO_SMB_CLK, GPIO_OUTPUT_VAL);
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04 @157  	cs5535_gpio_set(OLPC_GPIO_SMB_DATA, GPIO_OUTPUT_VAL);
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04  158  	cs5535_gpio_set(OLPC_GPIO_SMB_CLK, GPIO_OUTPUT_ENABLE);
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04  159  	cs5535_gpio_set(OLPC_GPIO_SMB_DATA, GPIO_OUTPUT_ENABLE);
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04 @160  	cs5535_gpio_clear(OLPC_GPIO_SMB_CLK, GPIO_OUTPUT_AUX1);
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04  161  	cs5535_gpio_clear(OLPC_GPIO_SMB_DATA, GPIO_OUTPUT_AUX1);
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04  162  	cs5535_gpio_clear(OLPC_GPIO_SMB_CLK, GPIO_OUTPUT_AUX2);
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04  163  	cs5535_gpio_clear(OLPC_GPIO_SMB_DATA, GPIO_OUTPUT_AUX2);
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04 @164  	cs5535_gpio_clear(OLPC_GPIO_SMB_CLK, GPIO_INPUT_AUX1);
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04 @165  	cs5535_gpio_clear(OLPC_GPIO_SMB_DATA, GPIO_INPUT_AUX1);
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04  166  
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04  167  	for (x = 0; x < 16; x++) {
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04  168  		udelay(5);
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04  169  		cs5535_gpio_clear(OLPC_GPIO_SMB_CLK, GPIO_OUTPUT_VAL);
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04  170  		udelay(5);
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04 @171  		cs5535_gpio_set(OLPC_GPIO_SMB_CLK, GPIO_OUTPUT_VAL);
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04  172  	}
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04  173  	udelay(5);
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04  174  	cs5535_gpio_set(OLPC_GPIO_SMB_CLK, GPIO_OUTPUT_AUX1);
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04  175  	cs5535_gpio_set(OLPC_GPIO_SMB_DATA, GPIO_OUTPUT_AUX1);
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04  176  	cs5535_gpio_set(OLPC_GPIO_SMB_CLK, GPIO_INPUT_AUX1);
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04  177  	cs5535_gpio_set(OLPC_GPIO_SMB_DATA, GPIO_INPUT_AUX1);
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04  178  }
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04  179  
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04  180  static void dcon_set_dconload_1(int val)
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04  181  {
2159fb3729293c Nishad Kamdar      2018-11-07  182  	gpiod_set_value(gpios[OLPC_DCON_LOAD], val);
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04  183  }
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04  184  
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04  185  static int dcon_read_status_xo_1(u8 *status)
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04  186  {
2159fb3729293c Nishad Kamdar      2018-11-07  187  	*status = gpiod_get_value(gpios[OLPC_DCON_STAT0]);
2159fb3729293c Nishad Kamdar      2018-11-07  188  	*status |= gpiod_get_value(gpios[OLPC_DCON_STAT1]) << 1;
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04  189  
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04  190  	/* Clear the negative edge status for GPIO7 */
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04 @191  	cs5535_gpio_set(OLPC_GPIO_DCON_IRQ, GPIO_NEGATIVE_EDGE_STS);
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04  192  
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04  193  	return 0;
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04  194  }
53c43c5ca13328 Greg Kroah-Hartman 2016-04-04  195  

:::::: The code at line 191 was first introduced by commit
:::::: 53c43c5ca13328ac8f415aa2251791b441a12b51 Revert "Staging: olpc_dcon: Remove obsolete driver"

:::::: TO: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
:::::: CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

--bfjf4wzizh7telj6
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--bfjf4wzizh7telj6
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--bfjf4wzizh7telj6--

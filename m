Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B7FE625A3F2
	for <lists+driverdev-devel@lfdr.de>; Wed,  2 Sep 2020 05:16:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E83388647F;
	Wed,  2 Sep 2020 03:16:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rKia6AhU_cDV; Wed,  2 Sep 2020 03:16:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6EFEE864B3;
	Wed,  2 Sep 2020 03:16:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B8A661BF989
 for <devel@linuxdriverproject.org>; Wed,  2 Sep 2020 03:16:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B531D85F34
 for <devel@linuxdriverproject.org>; Wed,  2 Sep 2020 03:16:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aGRdNAswkVUh for <devel@linuxdriverproject.org>;
 Wed,  2 Sep 2020 03:16:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4DEBF85F31
 for <devel@driverdev.osuosl.org>; Wed,  2 Sep 2020 03:16:47 +0000 (UTC)
IronPort-SDR: 7lNd1gIBda6w372wDFDmImOpJBDnBruf5RtQQ9kL0Jvda/wVRTBmTqPB73UHIYbRcrIiGDQzVk
 B4Hn8yHFZK2w==
X-IronPort-AV: E=McAfee;i="6000,8403,9731"; a="158308177"
X-IronPort-AV: E=Sophos;i="5.76,381,1592895600"; d="scan'208";a="158308177"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2020 20:16:45 -0700
IronPort-SDR: LXntd/mgrOVxTNYikK1HzWlvgZf9X3Bls5oKdndZNtbGWduT8XLIzTyOYxloVwFD3+Z2C+4zRv
 uqcdhkcOyXrQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,381,1592895600"; d="scan'208";a="341256460"
Received: from lkp-server02.sh.intel.com (HELO 500e1ab2883a) ([10.239.97.151])
 by orsmga007.jf.intel.com with ESMTP; 01 Sep 2020 20:16:44 -0700
Received: from kbuild by 500e1ab2883a with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1kDJGN-00000S-9v; Wed, 02 Sep 2020 03:16:43 +0000
Date: Wed, 2 Sep 2020 11:15:47 +0800
From: kernel test robot <lkp@intel.com>
To: Alex Dewar <alex.dewar90@gmail.com>
Subject: [staging:staging-testing 62/88]
 drivers/staging/emxx_udc/emxx_udc.c:839:9: warning: Variable 'result' is
 reassigned a value before the old one has been used.
Message-ID: <202009021127.uodVMaSJ%lkp@intel.com>
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kbuild-all@lists.01.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git =
staging-testing
head:   4c6491a343e91a5a2a699b0b545f8ba1ec1e8c65
commit: fbcfdfab4a2c4ec5e2195929528506fec39388f3 [62/88] staging: emxx_udc:=
 Allow for building on !ARM
compiler: riscv32-linux-gcc (GCC) 9.3.0

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>


cppcheck warnings: (new ones prefixed by >>)

>> drivers/staging/emxx_udc/emxx_udc.c:839:9: warning: Variable 'result' is=
 reassigned a value before the old one has been used. [redundantAssignment]
    result =3D length & ~(u32)0x03;
           ^
   drivers/staging/emxx_udc/emxx_udc.c:796:0: note: Variable 'result' is re=
assigned a value before the old one has been used.
    int  result =3D -EINVAL;
   ^
   drivers/staging/emxx_udc/emxx_udc.c:839:9: note: Variable 'result' is re=
assigned a value before the old one has been used.
    result =3D length & ~(u32)0x03;
           ^
   drivers/staging/emxx_udc/emxx_udc.c:1045:9: warning: Variable 'result' i=
s reassigned a value before the old one has been used. [redundantAssignment]
    result =3D i_write_length & ~(u32)0x3;
           ^
   drivers/staging/emxx_udc/emxx_udc.c:990:0: note: Variable 'result' is re=
assigned a value before the old one has been used.
    int  result =3D -EINVAL;
   ^
   drivers/staging/emxx_udc/emxx_udc.c:1045:9: note: Variable 'result' is r=
eassigned a value before the old one has been used.
    result =3D i_write_length & ~(u32)0x3;
           ^
>> drivers/staging/emxx_udc/emxx_udc.c:1307:16: warning: Variable 'ep->stal=
led' is reassigned a value before the old one has been used. [redundantAssi=
gnment]
      ep->stalled =3D false;
                  ^
   drivers/staging/emxx_udc/emxx_udc.c:1292:16: note: Variable 'ep->stalled=
' is reassigned a value before the old one has been used.
      ep->stalled =3D false;
                  ^
   drivers/staging/emxx_udc/emxx_udc.c:1307:16: note: Variable 'ep->stalled=
' is reassigned a value before the old one has been used.
      ep->stalled =3D false;
                  ^
>> drivers/staging/emxx_udc/emxx_udc.c:3094:9: warning: Variable 'status' i=
s reassigned a value before the old one has been used. [redundantAssignment]
    status =3D devm_request_irq(&pdev->dev, irq, _nbu2ss_udc_irq,
           ^
   drivers/staging/emxx_udc/emxx_udc.c:3076:0: note: Variable 'status' is r=
eassigned a value before the old one has been used.
    int status =3D -ENODEV;
   ^
   drivers/staging/emxx_udc/emxx_udc.c:3094:9: note: Variable 'status' is r=
eassigned a value before the old one has been used.
    status =3D devm_request_irq(&pdev->dev, irq, _nbu2ss_udc_irq,
           ^
>> drivers/staging/emxx_udc/emxx_udc.c:2095:48: warning: Uninitialized vari=
able: ep [uninitvar]
    list_for_each_entry(ep, &udc->gadget.ep_list, ep.ep_list) {
                                                  ^

# https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git/commit=
/?id=3Dfbcfdfab4a2c4ec5e2195929528506fec39388f3
git remote add staging https://git.kernel.org/pub/scm/linux/kernel/git/greg=
kh/staging.git
git fetch --no-tags staging staging-testing
git checkout fbcfdfab4a2c4ec5e2195929528506fec39388f3
vim +/result +839 drivers/staging/emxx_udc/emxx_udc.c

33aa8d45a4fea3 Magnus Damm         2014-06-06  785  =

33aa8d45a4fea3 Magnus Damm         2014-06-06  786  /*---------------------=
----------------------------------------------------*/
e2d34dfdffcfd1 Cristian Sicilia    2018-11-17  787  static int _nbu2ss_out_=
dma(struct nbu2ss_udc *udc, struct nbu2ss_req *req,
e2d34dfdffcfd1 Cristian Sicilia    2018-11-17  788  			   u32 num, u32 leng=
th)
33aa8d45a4fea3 Magnus Damm         2014-06-06  789  {
5a012f67cbcb20 Alexis Lothor=E9      2017-05-10  790  	dma_addr_t	p_buffer;
33aa8d45a4fea3 Magnus Damm         2014-06-06  791  	u32		mpkt;
33aa8d45a4fea3 Magnus Damm         2014-06-06  792  	u32		lmpkt;
33aa8d45a4fea3 Magnus Damm         2014-06-06  793  	u32		dmacnt;
33aa8d45a4fea3 Magnus Damm         2014-06-06  794  	u32		burst =3D 1;
33aa8d45a4fea3 Magnus Damm         2014-06-06  795  	u32		data;
33aa8d45a4fea3 Magnus Damm         2014-06-06  796  	int		result =3D -EINVA=
L;
64407f6e7d158e Carmeli Tamir       2018-11-07  797  	struct fc_regs __iomem=
 *preg =3D udc->p_regs;
33aa8d45a4fea3 Magnus Damm         2014-06-06  798  =

33aa8d45a4fea3 Magnus Damm         2014-06-06  799  	if (req->dma_flag)
33aa8d45a4fea3 Magnus Damm         2014-06-06  800  		return 1;		/* DMA is =
forwarded */
33aa8d45a4fea3 Magnus Damm         2014-06-06  801  =

8b77d94e69c33f Saiyam Doshi        2019-09-08  802  	req->dma_flag =3D true;
5a012f67cbcb20 Alexis Lothor=E9      2017-05-10  803  	p_buffer =3D req->re=
q.dma;
5a012f67cbcb20 Alexis Lothor=E9      2017-05-10  804  	p_buffer +=3D req->r=
eq.actual;
33aa8d45a4fea3 Magnus Damm         2014-06-06  805  =

33aa8d45a4fea3 Magnus Damm         2014-06-06  806  	/* DMA Address */
5a012f67cbcb20 Alexis Lothor=E9      2017-05-10  807  	_nbu2ss_writel(&preg=
->EP_DCR[num].EP_TADR, (u32)p_buffer);
33aa8d45a4fea3 Magnus Damm         2014-06-06  808  =

33aa8d45a4fea3 Magnus Damm         2014-06-06  809  	/* Number of transfer =
packets */
75d9c393763da3 Alexis Lothor=E9      2017-05-10  810  	mpkt =3D _nbu2ss_rea=
dl(&preg->EP_REGS[num].EP_PCKT_ADRS) & EPN_MPKT;
599b87809594e2 Janani Ravichandran 2016-02-11  811  	dmacnt =3D length / mp=
kt;
33aa8d45a4fea3 Magnus Damm         2014-06-06  812  	lmpkt =3D (length % mp=
kt) & ~(u32)0x03;
33aa8d45a4fea3 Magnus Damm         2014-06-06  813  =

2866914ce1f84f Cristina Moraru     2015-09-29  814  	if (dmacnt > DMA_MAX_C=
OUNT) {
33aa8d45a4fea3 Magnus Damm         2014-06-06  815  		dmacnt =3D DMA_MAX_CO=
UNT;
33aa8d45a4fea3 Magnus Damm         2014-06-06  816  		lmpkt =3D 0;
2866914ce1f84f Cristina Moraru     2015-09-29  817  	} else if (lmpkt !=3D =
0) {
2866914ce1f84f Cristina Moraru     2015-09-29  818  		if (dmacnt =3D=3D 0)
33aa8d45a4fea3 Magnus Damm         2014-06-06  819  			burst =3D 0;	/* Burs=
t OFF */
33aa8d45a4fea3 Magnus Damm         2014-06-06  820  		dmacnt++;
33aa8d45a4fea3 Magnus Damm         2014-06-06  821  	}
33aa8d45a4fea3 Magnus Damm         2014-06-06  822  =

33aa8d45a4fea3 Magnus Damm         2014-06-06  823  	data =3D mpkt | (lmpkt=
 << 16);
33aa8d45a4fea3 Magnus Damm         2014-06-06  824  	_nbu2ss_writel(&preg->=
EP_DCR[num].EP_DCR2, data);
33aa8d45a4fea3 Magnus Damm         2014-06-06  825  =

75d9c393763da3 Alexis Lothor=E9      2017-05-10  826  	data =3D ((dmacnt & =
0xff) << 16) | DCR1_EPN_DIR0 | DCR1_EPN_REQEN;
33aa8d45a4fea3 Magnus Damm         2014-06-06  827  	_nbu2ss_writel(&preg->=
EP_DCR[num].EP_DCR1, data);
33aa8d45a4fea3 Magnus Damm         2014-06-06  828  =

2866914ce1f84f Cristina Moraru     2015-09-29  829  	if (burst =3D=3D 0) {
33aa8d45a4fea3 Magnus Damm         2014-06-06  830  		_nbu2ss_writel(&preg-=
>EP_REGS[num].EP_LEN_DCNT, 0);
75d9c393763da3 Alexis Lothor=E9      2017-05-10  831  		_nbu2ss_bitclr(&pre=
g->EP_REGS[num].EP_DMA_CTRL, EPN_BURST_SET);
33aa8d45a4fea3 Magnus Damm         2014-06-06  832  	} else {
33aa8d45a4fea3 Magnus Damm         2014-06-06  833  		_nbu2ss_writel(&preg-=
>EP_REGS[num].EP_LEN_DCNT
33aa8d45a4fea3 Magnus Damm         2014-06-06  834  				, (dmacnt << 16));
75d9c393763da3 Alexis Lothor=E9      2017-05-10  835  		_nbu2ss_bitset(&pre=
g->EP_REGS[num].EP_DMA_CTRL, EPN_BURST_SET);
33aa8d45a4fea3 Magnus Damm         2014-06-06  836  	}
75d9c393763da3 Alexis Lothor=E9      2017-05-10  837  	_nbu2ss_bitset(&preg=
->EP_REGS[num].EP_DMA_CTRL, EPN_DMA_EN);
33aa8d45a4fea3 Magnus Damm         2014-06-06  838  =

33aa8d45a4fea3 Magnus Damm         2014-06-06 @839  	result =3D length & ~(=
u32)0x03;
33aa8d45a4fea3 Magnus Damm         2014-06-06  840  	req->div_len =3D resul=
t;
33aa8d45a4fea3 Magnus Damm         2014-06-06  841  =

33aa8d45a4fea3 Magnus Damm         2014-06-06  842  	return result;
33aa8d45a4fea3 Magnus Damm         2014-06-06  843  }
33aa8d45a4fea3 Magnus Damm         2014-06-06  844  =


:::::: The code at line 839 was first introduced by commit
:::::: 33aa8d45a4fea3dc5d90338aad0867a66e0c38d5 staging: emxx_udc: Add Emma=
 Mobile USB Gadget driver

:::::: TO: Magnus Damm <damm+renesas@opensource.se>
:::::: CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

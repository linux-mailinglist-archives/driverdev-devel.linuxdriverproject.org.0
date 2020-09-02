Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D3E6925AF01
	for <lists+driverdev-devel@lfdr.de>; Wed,  2 Sep 2020 17:33:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 59EAA86981;
	Wed,  2 Sep 2020 15:33:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5nIS4bYm7Afm; Wed,  2 Sep 2020 15:33:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 854E286791;
	Wed,  2 Sep 2020 15:33:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 97B2F1BF489
 for <devel@linuxdriverproject.org>; Wed,  2 Sep 2020 15:33:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9021E87253
 for <devel@linuxdriverproject.org>; Wed,  2 Sep 2020 15:33:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1twiEhkzX-hS for <devel@linuxdriverproject.org>;
 Wed,  2 Sep 2020 15:33:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 61E2B8704E
 for <devel@driverdev.osuosl.org>; Wed,  2 Sep 2020 15:33:05 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id c15so5686901wrs.11
 for <devel@driverdev.osuosl.org>; Wed, 02 Sep 2020 08:33:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=vCxJqo81KDOikpN8/N3WsGXGAL3h4pyAbZw3YHeS6dc=;
 b=RyrFjQ1VXmKgM8omHnmX2ykWJtcrLqYArJ9XvZvuV9vmtnwcCBJKA11FVj0Ty6Eult
 qm3M8c2Pn4wH4mfpcX790W/M0JeqdM3jzMljrCxcfOXhb8NKDgc+FNuT5ZxanSH1XQ7K
 1mnTuYPDSCd/QfEbrZUWfaNIe1gt20I3VLhaWFMsksb/h2u8phQovaQmTh99jqA0B7BW
 85YX76XVu4WYBY5WHMY1nItM/frLGu3f2PApmWvjmpZb1/0gz7KX5CB++WzYqJYqkVR9
 k5rwKahjlAI3FwhoFTJOogbzIiJPeceB18S1+g5pamvsNrBOkTTjP4Nge3fA9Y9zdZ9z
 NsZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=vCxJqo81KDOikpN8/N3WsGXGAL3h4pyAbZw3YHeS6dc=;
 b=JoI0y7mgMAqT9ty8TDrPbZytNcZ+jZ+1PltaEmE6WvTucLPqnC9P4YXj7eG6S0Dz00
 fS+U90uWg1oSXZSnuCSnX4zbr4/5YZywIceO4Zv59Ba0iRMXS1wWii9rg6/PzG7Mwc1q
 JSac2KyN11m4FMNZvMgGsKe4/RcFbNkJ1CtEPeBADpvjtrhFKjWUkMpIL5RF7WH1g5UB
 UHNVALnJzfSrGk6rsnBixzD0sZcq/YzEMdVq5yuMn/tdocYLwdNd4k0GygBhaaxpW1nl
 U6asEfgb3bVHY0EOMReO+4ghU9NPZiJBg3LxzGHcJ6NuQJBRU4dafdlBtkLYHnNQL3fg
 X3og==
X-Gm-Message-State: AOAM533Ddhqqo/np/HVM9S64OPhx8bJ152z9zlbj1smZZqD4JHNQPM+i
 4zhGECdNEwqRSkGF0gbzuBI=
X-Google-Smtp-Source: ABdhPJyl1PRTLtMOgxdnpFRUISqLaHEzJbCxwLSLSjbKKDXoPgRBNBOHX+U4nJ4L4V7ms7/FKfNa4g==
X-Received: by 2002:adf:e407:: with SMTP id g7mr7622302wrm.349.1599060783713; 
 Wed, 02 Sep 2020 08:33:03 -0700 (PDT)
Received: from medion (cpc83661-brig20-2-0-cust443.3-3.cable.virginm.net.
 [82.28.105.188])
 by smtp.gmail.com with ESMTPSA id u66sm5319wmg.44.2020.09.02.08.33.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Sep 2020 08:33:02 -0700 (PDT)
From: Alex Dewar <alex.dewar90@gmail.com>
X-Google-Original-From: Alex Dewar <alex.dewar@gmx.co.uk>
Date: Wed, 2 Sep 2020 16:33:00 +0100
To: kernel test robot <lkp@intel.com>
Subject: Re: [staging:staging-testing 62/88]
 drivers/staging/emxx_udc/emxx_udc.c:839:9: warning: Variable 'result' is
 reassigned a value before the old one has been used.
Message-ID: <20200902153300.t2lqmd4clpagdftp@medion>
References: <202009021127.uodVMaSJ%lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202009021127.uodVMaSJ%lkp@intel.com>
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
 kbuild-all@lists.01.org, Alex Dewar <alex.dewar90@gmail.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Sep 02, 2020 at 11:15:47AM +0800, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.gi=
t staging-testing
> head:   4c6491a343e91a5a2a699b0b545f8ba1ec1e8c65
> commit: fbcfdfab4a2c4ec5e2195929528506fec39388f3 [62/88] staging: emxx_ud=
c: Allow for building on !ARM
> compiler: riscv32-linux-gcc (GCC) 9.3.0

[snip]

> >> drivers/staging/emxx_udc/emxx_udc.c:2095:48: warning: Uninitialized va=
riable: ep [uninitvar]
>     list_for_each_entry(ep, &udc->gadget.ep_list, ep.ep_list) {
>                                                   ^
This warning's bogus. The ep here refers to a member name, not the
variable ep. I'll send a patch for the other warnings though.

> =

> # https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git/comm=
it/?id=3Dfbcfdfab4a2c4ec5e2195929528506fec39388f3
> git remote add staging https://git.kernel.org/pub/scm/linux/kernel/git/gr=
egkh/staging.git
> git fetch --no-tags staging staging-testing
> git checkout fbcfdfab4a2c4ec5e2195929528506fec39388f3
> vim +/result +839 drivers/staging/emxx_udc/emxx_udc.c
> =

> 33aa8d45a4fea3 Magnus Damm         2014-06-06  785  =

> 33aa8d45a4fea3 Magnus Damm         2014-06-06  786  /*-------------------=
------------------------------------------------------*/
> e2d34dfdffcfd1 Cristian Sicilia    2018-11-17  787  static int _nbu2ss_ou=
t_dma(struct nbu2ss_udc *udc, struct nbu2ss_req *req,
> e2d34dfdffcfd1 Cristian Sicilia    2018-11-17  788  			   u32 num, u32 le=
ngth)
> 33aa8d45a4fea3 Magnus Damm         2014-06-06  789  {
> 5a012f67cbcb20 Alexis Lothor=E9      2017-05-10  790  	dma_addr_t	p_buffe=
r;
> 33aa8d45a4fea3 Magnus Damm         2014-06-06  791  	u32		mpkt;
> 33aa8d45a4fea3 Magnus Damm         2014-06-06  792  	u32		lmpkt;
> 33aa8d45a4fea3 Magnus Damm         2014-06-06  793  	u32		dmacnt;
> 33aa8d45a4fea3 Magnus Damm         2014-06-06  794  	u32		burst =3D 1;
> 33aa8d45a4fea3 Magnus Damm         2014-06-06  795  	u32		data;
> 33aa8d45a4fea3 Magnus Damm         2014-06-06  796  	int		result =3D -EIN=
VAL;
> 64407f6e7d158e Carmeli Tamir       2018-11-07  797  	struct fc_regs __iom=
em *preg =3D udc->p_regs;
> 33aa8d45a4fea3 Magnus Damm         2014-06-06  798  =

> 33aa8d45a4fea3 Magnus Damm         2014-06-06  799  	if (req->dma_flag)
> 33aa8d45a4fea3 Magnus Damm         2014-06-06  800  		return 1;		/* DMA i=
s forwarded */
> 33aa8d45a4fea3 Magnus Damm         2014-06-06  801  =

> 8b77d94e69c33f Saiyam Doshi        2019-09-08  802  	req->dma_flag =3D tr=
ue;
> 5a012f67cbcb20 Alexis Lothor=E9      2017-05-10  803  	p_buffer =3D req->=
req.dma;
> 5a012f67cbcb20 Alexis Lothor=E9      2017-05-10  804  	p_buffer +=3D req-=
>req.actual;
> 33aa8d45a4fea3 Magnus Damm         2014-06-06  805  =

> 33aa8d45a4fea3 Magnus Damm         2014-06-06  806  	/* DMA Address */
> 5a012f67cbcb20 Alexis Lothor=E9      2017-05-10  807  	_nbu2ss_writel(&pr=
eg->EP_DCR[num].EP_TADR, (u32)p_buffer);
> 33aa8d45a4fea3 Magnus Damm         2014-06-06  808  =

> 33aa8d45a4fea3 Magnus Damm         2014-06-06  809  	/* Number of transfe=
r packets */
> 75d9c393763da3 Alexis Lothor=E9      2017-05-10  810  	mpkt =3D _nbu2ss_r=
eadl(&preg->EP_REGS[num].EP_PCKT_ADRS) & EPN_MPKT;
> 599b87809594e2 Janani Ravichandran 2016-02-11  811  	dmacnt =3D length / =
mpkt;
> 33aa8d45a4fea3 Magnus Damm         2014-06-06  812  	lmpkt =3D (length % =
mpkt) & ~(u32)0x03;
> 33aa8d45a4fea3 Magnus Damm         2014-06-06  813  =

> 2866914ce1f84f Cristina Moraru     2015-09-29  814  	if (dmacnt > DMA_MAX=
_COUNT) {
> 33aa8d45a4fea3 Magnus Damm         2014-06-06  815  		dmacnt =3D DMA_MAX_=
COUNT;
> 33aa8d45a4fea3 Magnus Damm         2014-06-06  816  		lmpkt =3D 0;
> 2866914ce1f84f Cristina Moraru     2015-09-29  817  	} else if (lmpkt !=
=3D 0) {
> 2866914ce1f84f Cristina Moraru     2015-09-29  818  		if (dmacnt =3D=3D 0)
> 33aa8d45a4fea3 Magnus Damm         2014-06-06  819  			burst =3D 0;	/* Bu=
rst OFF */
> 33aa8d45a4fea3 Magnus Damm         2014-06-06  820  		dmacnt++;
> 33aa8d45a4fea3 Magnus Damm         2014-06-06  821  	}
> 33aa8d45a4fea3 Magnus Damm         2014-06-06  822  =

> 33aa8d45a4fea3 Magnus Damm         2014-06-06  823  	data =3D mpkt | (lmp=
kt << 16);
> 33aa8d45a4fea3 Magnus Damm         2014-06-06  824  	_nbu2ss_writel(&preg=
->EP_DCR[num].EP_DCR2, data);
> 33aa8d45a4fea3 Magnus Damm         2014-06-06  825  =

> 75d9c393763da3 Alexis Lothor=E9      2017-05-10  826  	data =3D ((dmacnt =
& 0xff) << 16) | DCR1_EPN_DIR0 | DCR1_EPN_REQEN;
> 33aa8d45a4fea3 Magnus Damm         2014-06-06  827  	_nbu2ss_writel(&preg=
->EP_DCR[num].EP_DCR1, data);
> 33aa8d45a4fea3 Magnus Damm         2014-06-06  828  =

> 2866914ce1f84f Cristina Moraru     2015-09-29  829  	if (burst =3D=3D 0) {
> 33aa8d45a4fea3 Magnus Damm         2014-06-06  830  		_nbu2ss_writel(&pre=
g->EP_REGS[num].EP_LEN_DCNT, 0);
> 75d9c393763da3 Alexis Lothor=E9      2017-05-10  831  		_nbu2ss_bitclr(&p=
reg->EP_REGS[num].EP_DMA_CTRL, EPN_BURST_SET);
> 33aa8d45a4fea3 Magnus Damm         2014-06-06  832  	} else {
> 33aa8d45a4fea3 Magnus Damm         2014-06-06  833  		_nbu2ss_writel(&pre=
g->EP_REGS[num].EP_LEN_DCNT
> 33aa8d45a4fea3 Magnus Damm         2014-06-06  834  				, (dmacnt << 16));
> 75d9c393763da3 Alexis Lothor=E9      2017-05-10  835  		_nbu2ss_bitset(&p=
reg->EP_REGS[num].EP_DMA_CTRL, EPN_BURST_SET);
> 33aa8d45a4fea3 Magnus Damm         2014-06-06  836  	}
> 75d9c393763da3 Alexis Lothor=E9      2017-05-10  837  	_nbu2ss_bitset(&pr=
eg->EP_REGS[num].EP_DMA_CTRL, EPN_DMA_EN);
> 33aa8d45a4fea3 Magnus Damm         2014-06-06  838  =

> 33aa8d45a4fea3 Magnus Damm         2014-06-06 @839  	result =3D length & =
~(u32)0x03;
> 33aa8d45a4fea3 Magnus Damm         2014-06-06  840  	req->div_len =3D res=
ult;
> 33aa8d45a4fea3 Magnus Damm         2014-06-06  841  =

> 33aa8d45a4fea3 Magnus Damm         2014-06-06  842  	return result;
> 33aa8d45a4fea3 Magnus Damm         2014-06-06  843  }
> 33aa8d45a4fea3 Magnus Damm         2014-06-06  844  =

> =

> :::::: The code at line 839 was first introduced by commit
> :::::: 33aa8d45a4fea3dc5d90338aad0867a66e0c38d5 staging: emxx_udc: Add Em=
ma Mobile USB Gadget driver
> =

> :::::: TO: Magnus Damm <damm+renesas@opensource.se>
> :::::: CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> =

> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

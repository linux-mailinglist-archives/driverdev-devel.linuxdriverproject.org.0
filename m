Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E580C97F6A
	for <lists+driverdev-devel@lfdr.de>; Wed, 21 Aug 2019 17:52:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 363D8861F6;
	Wed, 21 Aug 2019 15:52:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7zu3pKwKT4gz; Wed, 21 Aug 2019 15:52:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 086618618F;
	Wed, 21 Aug 2019 15:52:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1545F1BF352
 for <devel@linuxdriverproject.org>; Wed, 21 Aug 2019 15:52:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1268D87F44
 for <devel@linuxdriverproject.org>; Wed, 21 Aug 2019 15:52:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2nmYxiTy1X4d for <devel@linuxdriverproject.org>;
 Wed, 21 Aug 2019 15:52:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sonic314-19.consmr.mail.gq1.yahoo.com
 (sonic314-19.consmr.mail.gq1.yahoo.com [98.137.69.82])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6E1B587F1F
 for <devel@driverdev.osuosl.org>; Wed, 21 Aug 2019 15:52:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aol.com; s=a2048;
 t=1566402738; bh=iTroMwNCz0Ok+97McvMjs1IUkl8f42sTIG9Axgs6bb8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From:Subject;
 b=tpWLkJHvp5wDL9lOErA+mK5oaMKtJi0s4i09AHBLHbf95o6w5ASKzs6O/9dKtvC5Pa/wp+acouUpwhClDxofcjmsVmABXh4l45rl0wVMz6viNMNt9ihbZTNDQD6PYeHWieJtCzbHxHWxZGk8rimEdbOi5aF9CUHlkQh2pTiHzCkRDt1IQRyfyTP794vvDGOZOmuud/xj30fkkl+it+3IJDlhTNu/v+2cfSO5x1LltfcEeeSEvpQYAQ2ZPduS13fRUWdYxiSF8dvHQ7nB2AKhRTHfOlL8Y34q1adsdmNPxmFylGk2ctfX3Je8iJ8QTw5cRtpUHrBAoDxlwgF0SrX28Q==
X-YMail-OSG: ACr3z4gVM1nQcSJWKwDoFqS9sY8unHRHRiwM9wt_EilF9KlIPY1BSkpT9aqvnq8
 NHM1x8Yzu3SZPqv6Loh.JKQsZN.qZGVhNBBisiIACy1lnFbWqd_mEFFCDSyvgBMPgDiW0NMSgJnV
 Vywe6hfL15SYBJ.Nj4lUpjpbPBxCxoLa94lr08SfRDRmmYl7JQCcT0ih.iuxckBLtlKJ0ALw9AlM
 5BFHSJ9BTMS9pHgX07eLgozEoakSvBbE1DiVovzTF34Q6Z9t2V_rXeAJ4HJsHFRfmIhqhXABuj5w
 J6qOqdbdv2oP0VHnSmtJZFJpnlwrobY5qzoPUHaCpRzuY2Dnnrxi_CtxAR_Ojo2tWFC2Juh9IBZa
 KaiJw4rAKHL.1Od2mzdmf1Pg1Dcm3XYwblQk71jU8jMS7o8J9aYiqt6wHNdjoSEL3wL_vyr2Yqc6
 TaBeOe2ePbE1tOplYVPjZQPwZHgh8OBhoQS6HaIgd6Ej5D27QpKYNum3OO91VQ2y1nzLBsNwelmP
 AZCRO1DF8rR1EBzytFg8nAtFRZ2c3A11JFjQi4E18RbleqsUWD6x0NKXDqOrLGNoVQ4ZMX__br9M
 7cVRZJstjrv10E7G9Onsdd1Xd0DJbnNy36u1mCMr26k0yscqul4BYP2D1PN_YHq65HrVCA5q1_x6
 GKpy5N.VSrbERBBVaUemEBK.eAnzkD0vftwdXp0bMh.fkPkkdWeqdH_d8ym0zBCy7XIN1sArvI2t
 7lmmg4AgJ0Q.dxn6ZI8dMTFSFwuJXkWOFeeMvrZZoqwIAElwRcU3cCwTpnjciR_CaV8B0pIZBi0U
 JLXSsUVCu.N11CuwbRm8e4gGzB6HWjfOYnCug0FQRfDilv7_88oLkudbdRPzhhQDW7Ij6GC_Y2yg
 OkpS9uO59tlPbq3Q0ZagSxx5CWzpxyVd1F1s4dzWHeonvvC_JfG3XwRVlUgKfArQRpyC73P20Abd
 huyiX.nUI1u7.Utfo8RTX6gt2hUaC6Sjr.B5bQoSeaN7jQlrY19Ipk3dkVC7vyfGwcItJ5ju4Yt1
 Kk4Zo46YSt6jwUtRv6YvJapziBmjHQ46k0_yxhDqAeAalOdXtzDy37LDtSNt4R8_8fUnrvjiB9T0
 a4FcIse013QugDOgvyGmVdHmMkj.PxauN4XPqdGHu04SEpWiHH53XDyMhz6BtXXWpjT7.6PZB_44
 .MMyM1l6w1xYeWYq01w.7kcvqCFhcIifG4kT1Jz0eLh2FYh9wPepNH1IPMgNhgli_0gPGkaM5SVN
 yjKYGiCAbGpiQ9cR71Tzp7N7acQ--
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic314.consmr.mail.gq1.yahoo.com with HTTP; Wed, 21 Aug 2019 15:52:18 +0000
Received: by smtp403.mail.gq1.yahoo.com (Oath Hermes SMTP Server) with ESMTPA
 ID 49078682cac6f4c277a5635d11b259eb; 
 Wed, 21 Aug 2019 15:52:17 +0000 (UTC)
Date: Wed, 21 Aug 2019 23:52:09 +0800
From: Gao Xiang <hsiangkao@aol.com>
To: "Tobin C. Harding" <me@tobin.cc>
Subject: Re: [PATCH 2/2] staging/erofs: Balanced braces around a few
 conditional statements.
Message-ID: <20190821155205.GB5060@hsiangkao-HP-ZHAN-66-Pro-G1>
References: <1566346700-28536-1-git-send-email-caitlynannefinn@gmail.com>
 <1566346700-28536-3-git-send-email-caitlynannefinn@gmail.com>
 <7aaca457a3d3feb951082d0659eec568a908971f.camel@perches.com>
 <20190821023122.GA159802@architecture4>
 <20190821151241.GF12461@ares>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190821151241.GF12461@ares>
User-Agent: Mutt/1.9.4 (2018-02-28)
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
 linux-kernel@vger.kernel.org, Joe Perches <joe@perches.com>,
 linux-erofs@lists.ozlabs.org, Caitlyn <caitlynannefinn@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Tobin,

On Wed, Aug 21, 2019 at 08:13:35AM -0700, Tobin C. Harding wrote:
> On Wed, Aug 21, 2019 at 10:31:22AM +0800, Gao Xiang wrote:
> > On Tue, Aug 20, 2019 at 07:26:46PM -0700, Joe Perches wrote:
> > > On Tue, 2019-08-20 at 20:18 -0400, Caitlyn wrote:
> > > > Balanced braces to fix some checkpath warnings in inode.c and
> > > > unzip_vle.c
> > > []
> > > > diff --git a/drivers/staging/erofs/unzip_vle.c b/drivers/staging/erofs/unzip_vle.c
> > > []
> > > > @@ -915,21 +915,21 @@ static int z_erofs_vle_unzip(struct super_block *sb,
> > > >  	mutex_lock(&work->lock);
> > > >  	nr_pages = work->nr_pages;
> > > >  
> > > > -	if (likely(nr_pages <= Z_EROFS_VLE_VMAP_ONSTACK_PAGES))
> > > > +	if (likely(nr_pages <= Z_EROFS_VLE_VMAP_ONSTACK_PAGES)) {
> > > >  		pages = pages_onstack;
> > > > -	else if (nr_pages <= Z_EROFS_VLE_VMAP_GLOBAL_PAGES &&
> > > > -		 mutex_trylock(&z_pagemap_global_lock))
> > > > +	} else if (nr_pages <= Z_EROFS_VLE_VMAP_GLOBAL_PAGES &&
> > > > +		 mutex_trylock(&z_pagemap_global_lock)) {
> > > 
> > > Extra space after tab
> > 
> > There is actually balanced braces in linux-next.
> > https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/drivers/staging/erofs/zdata.c#n762
> 
> Which tree did these changes go in through please Gao?  I believe
> Caitlyn was working off of the staging-next branch of Greg's staging
> tree.

I don't think so, the reason is that unzip_vle.c was renamed to zdata.c
months ago, see:
https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git/tree/drivers/staging/erofs?h=staging-next

so I think the patch is outdated when I first look at it.

Thanks,
Gao Xiang

> 
> thanks,
> Tobin.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 834B09143A
	for <lists+driverdev-devel@lfdr.de>; Sun, 18 Aug 2019 05:01:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3E33087812;
	Sun, 18 Aug 2019 03:01:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q9uxiIOAhF-r; Sun, 18 Aug 2019 03:01:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A02D986A2E;
	Sun, 18 Aug 2019 03:01:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D99061BF319
 for <devel@linuxdriverproject.org>; Sun, 18 Aug 2019 03:01:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D62DC86C1D
 for <devel@linuxdriverproject.org>; Sun, 18 Aug 2019 03:01:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4X-sqruCRLtb for <devel@linuxdriverproject.org>;
 Sun, 18 Aug 2019 03:01:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sonic314-21.consmr.mail.gq1.yahoo.com
 (sonic314-21.consmr.mail.gq1.yahoo.com [98.137.69.84])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B3A9986A2E
 for <devel@driverdev.osuosl.org>; Sun, 18 Aug 2019 03:01:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aol.com; s=a2048;
 t=1566097281; bh=I4C6rCQzwDF8szQde73gehM1EeR+FLkMDXAWM2PWei0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From:Subject;
 b=LIeaEYsczsqtRf493QsS5KzQsZg1T9VF0F1j0fYENqYOc/REzKc+saTP3doZjsZ07TqlentmL2Sy63QiGuU49Xijepagr5r3dsPspLp57s5ye6WvKCmFhLVo8GG0TvoDLhHpAYKcOxCwENPd/bVdjL3c4PA8oyZix2HpWoRF6fSogrbJccmxu9LUwvmfIlWNLTT2XfnreCxxT0s0rmAyWRGkU5puHrj/DQkblb7KDguWGVdBdYUbC51jZruBUpfcexEbXJFX+QLR9g6lumAbuyN/m5dhG+3POH/3E4NNt2luUPG3ZK/fRDIrqXpdBAIYftJFxHm0lUju2KMYrHV2+g==
X-YMail-OSG: Gr2FzTQVM1kUMeQJOwp8RVW_Ff5tqdXg5JrVzwEBe0rO5WDIsvncv7IBkpTLHyn
 ZAb_zyZP3JjwswQZDWIO9MqKqWuUz6mSfLtQxL4u8TjZ5nIkPCQmCjv3mbpOhuBhWhOXSuUMR0cY
 UHrv6PsDmYeP5.uiUo5hC9u9lI8ODKrLFmfRSY_4g8I5QoUe7W2CNVv31rVzvJRzK7wC6SohJ7lC
 hS9Fx1NGc7IOJJ.H7uHrLpOkPMv3LOUB8Ku5tfNVnoVernKkEva2XSy8JaTRXopEjxGLfOs71mO2
 lp5_Tn5r.8c.ofpz.Xlnt7oxaFrGn3YvysFwkMdKrrnU459O4y3P6bR.Rn7vH76IIX.UhDI8_TS4
 uR7hRFkdoqdrw7eBvFRGVFlbXspbn8SUFqzpkRPhoIPtXzcyOyvQItN2m_OXTtE7EVnLAfg_MPaY
 u1A.NQAQNJaYp.9jIMs5Ss_Xx0.btWlrbJ5stDDyP00eiSJp1pt0d_OV6HGmTes7uXt5NP9aX8c2
 X1ia.S7RxvGYQTVN.ulBlRgm4GxKLtaBmE1y8G5ZEGVzcrzCLz50mI.Dc7xajZHTEhz9wwKvUW4U
 C9e0evW_YIPX79K3BiuOobKSfzL_xsAViBoPXjtaMXmMx1zujiIo2MZvTd3D_vMSnB7EioAC_xVF
 EHHbtvmuk3p1J.rP4WupOy7lwQYOYE14Q1vzObM8S2vmdZDqkNVREa_w7kSzo9Xlsez.vvjsTeGp
 Ykq2GJpKOaFkgGMOQHV5MxuCOZ8Sn05nhCDCG_kECBprd1ekeDLz49EUol2GC7N1yU0dNaEDlyys
 g24e33ZxljD_YT3EUzTDyt6z9GKHSa1dUZHqYpA5U5JwXdjGMtxxyOuQrfsBFVm7jwp3ExjnDeDD
 nRCgaA7w8qQn6JqkBN1jj3Tm8FWWj9eLLNNeVhtqTAUvvtHMQuGO2qBOye8kXan6wBaOrePilxF9
 JWZDgSEeclN8q0FitALbDqYHkSWTPmllFSfAtLFu_GMAZQLCWxL3czRWBNd6Cxqtlg_d43s3SIIr
 QMDk3cOz9uPIO6kWkDpdc1GVfbYLG6T73w5_7V1.Zzxn02wGvKYJNGBjRf4c9.3.ete6b0GYR6RZ
 lS9Gq8YZfTIiVqe.0ZAwjbC7MET3w0rrjOaqZz30MV_Zajd0dOMb1djHNpJguEfggpkp9LVPyPko
 x8AeHh2Jly1W0xq3WAqRHankPneXNgYTk7Qj.TIWBnVhfpBszlob_iC1KNHVnaMt7BzD_TTte26G
 2EhAjWG9b_6WuiescpSbAiJa04.qVAr8TZnY-
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic314.consmr.mail.gq1.yahoo.com with HTTP; Sun, 18 Aug 2019 03:01:21 +0000
Received: by smtp424.mail.gq1.yahoo.com (Oath Hermes SMTP Server) with ESMTPA
 ID 67844616e4907afc199d186c2f61c1e0; 
 Sun, 18 Aug 2019 03:01:19 +0000 (UTC)
Date: Sun, 18 Aug 2019 11:01:10 +0800
From: Gao Xiang <hsiangkao@aol.com>
To: Matthew Wilcox <willy@infradead.org>
Subject: Re: [PATCH v2] staging: erofs: fix an error handling in
 erofs_readdir()
Message-ID: <20190818030109.GA8225@hsiangkao-HP-ZHAN-66-Pro-G1>
References: <20190818014835.5874-1-hsiangkao@aol.com>
 <20190818015631.6982-1-hsiangkao@aol.com>
 <20190818022055.GA14592@bombadil.infradead.org>
 <20190818023240.GA7739@hsiangkao-HP-ZHAN-66-Pro-G1>
 <20190818025339.GB14592@bombadil.infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190818025339.GB14592@bombadil.infradead.org>
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
Cc: devel@driverdev.osuosl.org, Chao Yu <chao@kernel.org>,
 Richard Weinberger <richard@nod.at>, Miao Xie <miaoxie@huawei.com>,
 Chao Yu <yuchao0@huawei.com>, LKML <linux-kernel@vger.kernel.org>,
 stable@vger.kernel.org, Fang Wei <fangwei1@huawei.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-fsdevel@vger.kernel.org,
 linux-erofs@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Aug 17, 2019 at 07:53:39PM -0700, Matthew Wilcox wrote:
> On Sun, Aug 18, 2019 at 10:32:45AM +0800, Gao Xiang wrote:
> > On Sat, Aug 17, 2019 at 07:20:55PM -0700, Matthew Wilcox wrote:
> > > On Sun, Aug 18, 2019 at 09:56:31AM +0800, Gao Xiang wrote:
> > > > @@ -82,8 +82,12 @@ static int erofs_readdir(struct file *f, struct dir_context *ctx)
> > > >  		unsigned int nameoff, maxsize;
> > > >  
> > > >  		dentry_page = read_mapping_page(mapping, i, NULL);
> > > > -		if (IS_ERR(dentry_page))
> > > > -			continue;
> > > > +		if (IS_ERR(dentry_page)) {
> > > > +			errln("fail to readdir of logical block %u of nid %llu",
> > > > +			      i, EROFS_V(dir)->nid);
> > > > +			err = PTR_ERR(dentry_page);
> > > > +			break;
> > > 
> > > I don't think you want to use the errno that came back from
> > > read_mapping_page() (which is, I think, always going to be -EIO).
> > > Rather you want -EFSCORRUPTED, at least if I understand the recent
> > > patches to ext2/ext4/f2fs/xfs/...
> > 
> > Thanks for your reply and noticing this. :)
> > 
> > Yes, as I talked with you about read_mapping_page() in a xfs related
> > topic earlier, I think I fully understand what returns here.
> > 
> > I actually had some concern about that before sending out this patch.
> > You know the status is
> >    PG_uptodate is not set and PG_error is set here.
> > 
> > But we cannot know it is actually a disk read error or due to
> > corrupted images (due to lack of page flags or some status, and
> > I think it could be a waste of page structure space for such
> > corrupted image or disk error)...
> > 
> > And some people also like propagate errors from insiders...
> > (and they could argue about err = -EFSCORRUPTED as well..)
> > 
> > I'd like hear your suggestion about this after my words above?
> > still return -EFSCORRUPTED?
> 
> I don't think it matters whether it's due to a disk error or a corrupted
> image.  We can't read the directory entry, so we should probably return
> -EFSCORRUPTED.  Thinking about it some more, read_mapping_page() can
> also return -ENOMEM, so it should probably look something like this:

OK, I will send the next version like what you described below.
I realized that at first but I have no tendency to return
EFSCORRUPTED or EIO here.

Thanks,
Gao Xiang

> 
> 		err = 0;
> 		if (dentry_page == ERR_PTR(-ENOMEM))
> 			err = -ENOMEM;
> 		else if (IS_ERR(dentry_page)) {
> 			errln("fail to readdir of logical block %u of nid %llu",
> 			      i, EROFS_V(dir)->nid);
> 			err = -EFSCORRUPTED;
> 		}
> 
> 		if (err)
> 			break;
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

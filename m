Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CB2E59163F
	for <lists+driverdev-devel@lfdr.de>; Sun, 18 Aug 2019 12:53:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0338B860CE;
	Sun, 18 Aug 2019 10:53:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3q7DZGmfPnra; Sun, 18 Aug 2019 10:53:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 70DE7857D8;
	Sun, 18 Aug 2019 10:53:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D09351BF3AA
 for <devel@linuxdriverproject.org>; Sun, 18 Aug 2019 10:53:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CCBA2857D8
 for <devel@linuxdriverproject.org>; Sun, 18 Aug 2019 10:53:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rCGlVM0M38Qw for <devel@linuxdriverproject.org>;
 Sun, 18 Aug 2019 10:53:13 +0000 (UTC)
X-Greylist: delayed 09:58:48 by SQLgrey-1.7.6
Received: from sonic305-19.consmr.mail.ir2.yahoo.com
 (sonic305-19.consmr.mail.ir2.yahoo.com [77.238.177.81])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C6BF9857CB
 for <devel@driverdev.osuosl.org>; Sun, 18 Aug 2019 10:53:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aol.com; s=a2048;
 t=1566125590; bh=Al7Y79Y4t+qPG08oQ3rkqS3r0H46fW3GAyLkFntSPXo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From:Subject;
 b=M2McAfxRbhGiA/0b4+xywWlJrewVv/IwjTYML1lhULiYenunwVh9Ahgd90lsKojPEHc9F5IienBDhYzhLQVcRz2oxoIZ8Hzz3G/xBxxgvm3mG/Dcm04eU/LYwC3laxx5eeNxblMgMdcxYT+uekAWqwWYvmqACGpE1Y/lqJ6Yoh0nDCCmrGZHUgIgUu/Sewa+PzbJhieokO8Q0IWhxiBGu7AQsXkt+VgOqoIjpQxAFDFowLTdZavozhLEjXcCL3Ko9khwsqYE83+hDWmYSVLa/pfA22o6aiOl6mR4Fr1Ypy4IxC6c8dxsLYi9hbq9HwNQ2k/m9FBEqW3JYume/RJlug==
X-YMail-OSG: uM6fM94VM1lxnXrNt1PY5AwmA8fYkML9MdvAM01bYLragDYqn_MMxbQDRPqqafy
 x3BjQr_39SkgDengqN3VD9l3BgXEYhIiEhAM7TFgBlOMjnuEkFgmLDUbxpfF4vV7W1cRnvEemxW6
 BFBj7gpsYzs.vvlsxw0rA76F8gPhaHP6GcEpRfU7_yzhQDx.YuqB4BnepLJt45W9TydO70oBpB3m
 tGG2stBZAd.D2z0rmf_ZgRkCkD3UhJcnXZNNBBWjHe.DfOmqknFLSW5D0N2o9FvzIjmNoQ3ieSkg
 GRyMCgMDnruyXL2XyvLwuYxFhQ8yKbCCv0rPhgt9ht__AXQDACJV3bW5rTDNYxZXcoUfo13dvQck
 xmEFf6JeyzJLb4dj7EQdv4XnttnRElO9kwzZAhEf_upjVvxIE8AJA29QW8R1AAOS2m1psv5tVbg8
 rsYzTjvEciQV8aCzX_upLja6BCr1PhpvVFfL6D7hdXc2ePxk0cA15pjaAYu59KbvF3t8sln196wm
 5dbPaa.LT7i.Rxkm_FelPNuMUVc0ivQdvxp0QV9mRtrOilhvLuDrL4oPKx5VcsajWwiyck1axAWM
 Nnc_HkWYKEJMWAtsWcvMYG_FdtZooE67FwxynUuuRlz0SSlDZM8LwHSfy.C3BbcFQB4mpzTK9hHc
 T9q85Q8AUtFRH8stiXpdnUqdHOWBdhT43P.p2s9R8Z.3R0BUSiSo9dJhmNh2F8m4AmQ4ITyAHX4R
 SdwBnxQl49LGeCoVkf4vKNv_JFG8t7jwMMwpf6K21BjCwuiULcWHCqNTEWNvnEDElvshHSgYC.2h
 T.XDZ4Bzv9mSuiIVgTGIrScSLrCD4DLEVKHrRBVwQBzXikD1PsFPa7Ey3QIpyqR3Sh8ttdY2eG3F
 KWM4A7VYJbkYAIJYzXbD8ldIzh8THl7qL6mJaaskWarIJl6UCnmEv4_CarQU6lAHHBFiVKtdPU7b
 3PWtVEIru0jjngFXpU936UtTyDU8anPV8FS7wGcXLpa4aCZGZC_obL06TIqmeO3E87SenFCIz0LI
 BaEiN6kMAcSXNpRMxBnET8N9r1QeolsbsX2t5Guv9yHXD3Qfbk0C965qSbRnMdUwieuG9DeatByj
 DAcgU0xT4ii3pDPyOpbXjB7QkI6iiZJh2n7fk02ZTWOfeOnpmsx8shsSS4kw8tnTui38JLVWAATS
 ISt4uorjWXYws6K3TcbGA.l2xOjSninezGeO_tjP_6owXpATuZLSvyFZpgS9hQF_2ADCFriz00Nq
 55h05WsQ1Oi9rAuob8hfcBew3L95XQX8c54hUjqP8
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic305.consmr.mail.ir2.yahoo.com with HTTP; Sun, 18 Aug 2019 10:53:10 +0000
Received: by smtp411.mail.ir2.yahoo.com (Oath Hermes SMTP Server) with ESMTPA
 ID c4c1659c966ff50bb0667c28376a62d2; 
 Sun, 18 Aug 2019 10:53:08 +0000 (UTC)
Date: Sun, 18 Aug 2019 18:52:58 +0800
From: Gao Xiang <hsiangkao@aol.com>
To: Chao Yu <chao@kernel.org>
Subject: Re: [PATCH v2] staging: erofs: fix an error handling in
 erofs_readdir()
Message-ID: <20190818105255.GA22640@hsiangkao-HP-ZHAN-66-Pro-G1>
References: <20190818014835.5874-1-hsiangkao@aol.com>
 <20190818015631.6982-1-hsiangkao@aol.com>
 <20190818022055.GA14592@bombadil.infradead.org>
 <20190818023240.GA7739@hsiangkao-HP-ZHAN-66-Pro-G1>
 <20190818025339.GB14592@bombadil.infradead.org>
 <c624d057-cd42-515c-cff8-cf68340401e0@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c624d057-cd42-515c-cff8-cf68340401e0@kernel.org>
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
Cc: devel@driverdev.osuosl.org, Richard Weinberger <richard@nod.at>,
 Miao Xie <miaoxie@huawei.com>, Chao Yu <yuchao0@huawei.com>,
 LKML <linux-kernel@vger.kernel.org>, Matthew Wilcox <willy@infradead.org>,
 Fang Wei <fangwei1@huawei.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-fsdevel@vger.kernel.org,
 stable@vger.kernel.org, linux-erofs@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Chao,

On Sun, Aug 18, 2019 at 06:39:52PM +0800, Chao Yu wrote:
> On 2019-8-18 10:53, Matthew Wilcox wrote:
> > On Sun, Aug 18, 2019 at 10:32:45AM +0800, Gao Xiang wrote:
> >> On Sat, Aug 17, 2019 at 07:20:55PM -0700, Matthew Wilcox wrote:
> >>> On Sun, Aug 18, 2019 at 09:56:31AM +0800, Gao Xiang wrote:
> >>>> @@ -82,8 +82,12 @@ static int erofs_readdir(struct file *f, struct dir_context *ctx)
> >>>>  		unsigned int nameoff, maxsize;
> >>>>  
> >>>>  		dentry_page = read_mapping_page(mapping, i, NULL);
> >>>> -		if (IS_ERR(dentry_page))
> >>>> -			continue;
> >>>> +		if (IS_ERR(dentry_page)) {
> >>>> +			errln("fail to readdir of logical block %u of nid %llu",
> >>>> +			      i, EROFS_V(dir)->nid);
> >>>> +			err = PTR_ERR(dentry_page);
> >>>> +			break;
> >>>
> >>> I don't think you want to use the errno that came back from
> >>> read_mapping_page() (which is, I think, always going to be -EIO).
> >>> Rather you want -EFSCORRUPTED, at least if I understand the recent
> >>> patches to ext2/ext4/f2fs/xfs/...
> >>
> >> Thanks for your reply and noticing this. :)
> >>
> >> Yes, as I talked with you about read_mapping_page() in a xfs related
> >> topic earlier, I think I fully understand what returns here.
> >>
> >> I actually had some concern about that before sending out this patch.
> >> You know the status is
> >>    PG_uptodate is not set and PG_error is set here.
> >>
> >> But we cannot know it is actually a disk read error or due to
> >> corrupted images (due to lack of page flags or some status, and
> >> I think it could be a waste of page structure space for such
> >> corrupted image or disk error)...
> >>
> >> And some people also like propagate errors from insiders...
> >> (and they could argue about err = -EFSCORRUPTED as well..)
> >>
> >> I'd like hear your suggestion about this after my words above?
> >> still return -EFSCORRUPTED?
> > 
> > I don't think it matters whether it's due to a disk error or a corrupted
> > image.  We can't read the directory entry, so we should probably return
> > -EFSCORRUPTED.  Thinking about it some more, read_mapping_page() can
> > also return -ENOMEM, so it should probably look something like this:
> > 
> > 		err = 0;
> > 		if (dentry_page == ERR_PTR(-ENOMEM))
> > 			err = -ENOMEM;
> > 		else if (IS_ERR(dentry_page)) {
> > 			errln("fail to readdir of logical block %u of nid %llu",
> > 			      i, EROFS_V(dir)->nid);
> > 			err = -EFSCORRUPTED;
> 
> Well, if there is real IO error happen under filesystem, we should return -EIO
> instead of EFSCORRUPTED?
> 
> The right fix may be that doing sanity check on on-disk blkaddr, and return
> -EFSCORRUPTED if the blkaddr is invalid and propagate the error to its caller
> erofs_readdir(), IIUC below error info.

In my thought, I actually don't care what is actually returned
(In other words, I have no tendency about EFSCORRUPTED / EIO)
as long as it behaves normal for corrupted image.

A little concern is that I have no idea whether all user problems
can handle EUCLEAN properly.

I don't want to limit blkaddr as what ->blocks recorded in
erofs_super_block since it's already used for our hotpatching
approach and that field is only used for statfs() for users
to know its visible size, and block layer will block such
invalid block access.

All in all, that is minor. I think we can fix as what Matthew said.

Thanks,
Gao Xiang

> 
> > [36297.354090] attempt to access beyond end of device
> > [36297.354098] loop17: rw=0, want=29887428984, limit=1953128
> > [36297.354107] attempt to access beyond end of device
> > [36297.354109] loop17: rw=0, want=29887428480, limit=1953128
> > [36301.827234] attempt to access beyond end of device
> > [36301.827243] loop17: rw=0, want=29887428480, limit=1953128
> 
> Thanks,
> 
> > 		}
> > 
> > 		if (err)
> > 			break;
> > 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

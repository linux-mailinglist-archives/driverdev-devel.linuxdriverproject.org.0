Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AD8AD917DD
	for <lists+driverdev-devel@lfdr.de>; Sun, 18 Aug 2019 18:34:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DB762856BF;
	Sun, 18 Aug 2019 16:34:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4D84G95S4c5r; Sun, 18 Aug 2019 16:34:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 35A1B85633;
	Sun, 18 Aug 2019 16:34:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 663A01BF3DB
 for <devel@linuxdriverproject.org>; Sun, 18 Aug 2019 16:33:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5AF9185633
 for <devel@linuxdriverproject.org>; Sun, 18 Aug 2019 16:33:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DFUVljzllfW0 for <devel@linuxdriverproject.org>;
 Sun, 18 Aug 2019 16:33:46 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from sonic303-24.consmr.mail.gq1.yahoo.com
 (sonic303-24.consmr.mail.gq1.yahoo.com [98.137.64.205])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9C16284FFF
 for <devel@driverdev.osuosl.org>; Sun, 18 Aug 2019 16:33:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aol.com; s=a2048;
 t=1566146026; bh=jLjIB1S1BZc9ke0Rkvt8JkIdY+FmHiPvR7jQ8rfSgEE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From:Subject;
 b=NxqzZzhe7/JrNtnNZNJLaUbycF529RdNjPWh1BQiyz6fCUudGypFd79d+xy6SMGHCUFer9KbepCbLco9Kpa8YrjaGO5mi8lshgpXtcuxBF37W4L5+hMXiqgho1STXYLy6PsH8li9aVEAXNfFSRKuFCjgUntl+9Tv8U09W+HcykysadtiEZR54On6PIWWdSeMYbfum6yAIp/i9JG2Yd7TtaTaYaHxMnRnvSNb0+7GOLc8QRu31fEus+I4S7MOAWFbtbqHb6Alf1iMpRQguVz+azmLWK0fTqccEz5MItIyt+qrv+hNIYxrdA9elnZx5CxY0y7rtwgffHnPtVd93e/GZQ==
X-YMail-OSG: IJtAW8QVM1mRuS69bqPHAJpkcTppGPb5LTXO09dPAYGCFnO5LtO1AeLrRdvlw3q
 DGPLtzQCiLPGz7.Aku9H.i4fwJJ1LxNOIfJmFRxVpLSk.NXPbve4JBur0892UPt9gUmtm92lL7OK
 OafMfmKhK2J3.QJ4r1ohWRMzKEfeE8J8hYdPxK6kznAVNTRWsivuCmtBwKVhUE_TX27f8VEVaO0K
 02ibn8iP0muO55ZIzzA4bMtrLbokTVi58.zvPYkr1UwWSss.ul6Xtm5VEx0yfeqAm5_YZbryWeoJ
 eIzg.5Grbawr.saIebp4L.tptU_7ih_SyPGd4q0Lerm1.0.dqz15VYjOZl3An149F2QYCyF_w1Rd
 mfPngSs5V1SsKY7tSvXruPPX5j_IDJAW8.aIZOBzuH2_qVS8Si46p62I9sFuQ.B0X_FZzph5uQ8U
 KgJGUH7.0I55QCt.9yEosFi6VYLlvuMksOTQH2oLePOwUc00.dFZ4a0WBhB3GcS8mVN8XJfc3uYy
 2xO_gzqHceZ_.ZijOEDhUN1KKyiGqTDqdncvtpnD_wlk7nJ0cbY2ImBVOyigFxm4VZBKRqQcvtto
 YxIps6n3VYr2qnEkcYHD5e6ZBAKaOuGTZDxEwRyUNlIGY41Tq0fBz6w1yKqcHICw6zZTSFTs8Qo9
 pb6Apt.gO1lbneXojf84qWy0WuPFE3p95CAsae1xBbOSkU7wLYSv7PQUOTlpZmuWAFu3_o1EKy9M
 jlJho7LhraIFTfWA6D_NcOKL.1eN6yfGy.G6Hlxwx8xG.vYXOehcgQ07crl0NkV482x4lvYr0UwV
 DXV15jw.qFd1bI0S3PU9YUDPCkSOaLXxe4mNMp8yTGt5onmMnF_orOQIf5Leeq1bRchdgkW5Fv0X
 9TmfTBbyX43_7PZ1o7wFQjd9yTd1q0gkDKn51ByOr3SkfQGTou.G0TiwzyDoo5wNgLUWKZ_tDly.
 LYi6e7pN0esbspnff_6NztTIrvfvYcf0AqDM0MZwzfwlT4Sfw9axs2jUlOa6h.1.qkK0r0N2OadB
 4GFx_V56CGiJ0cjBD65w3h4JBAnkX0AtRyeE.ZTRQyceUJPbiNymMol7BlIQ.d5qS8ZTKu0PsYc2
 xjTyDu9xOQ50GxWmQBX2AM5JSjkDc2e60a3V5WL4rCChuHgNKKDGh8RdDSvz3YZIHJ5ITVXUwLCf
 iFvzDsgvgSAK_f3bUCIZ1NG.rrTuEu9N77bIO0Jfa_JH9d40.IbhtzlTrL6jSYDIG02q4gj2CanO
 YIbhsbWL9iyMS9562htwREDtPHpbW5KDp8UPWERA-
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic303.consmr.mail.gq1.yahoo.com with HTTP; Sun, 18 Aug 2019 16:33:46 +0000
Received: by smtp425.mail.gq1.yahoo.com (Oath Hermes SMTP Server) with ESMTPA
 ID fa33da4732240156c1a7911764ba7d16; 
 Sun, 18 Aug 2019 16:33:41 +0000 (UTC)
Date: Mon, 19 Aug 2019 00:33:25 +0800
From: Gao Xiang <hsiangkao@aol.com>
To: Christoph Hellwig <hch@infradead.org>
Subject: Re: [PATCH] erofs: move erofs out of staging
Message-ID: <20190818163318.GB31588@hsiangkao-HP-ZHAN-66-Pro-G1>
References: <20190817233843.GA16991@hsiangkao-HP-ZHAN-66-Pro-G1>
 <1405781266.69008.1566116210649.JavaMail.zimbra@nod.at>
 <20190818084521.GA17909@hsiangkao-HP-ZHAN-66-Pro-G1>
 <1133002215.69049.1566119033047.JavaMail.zimbra@nod.at>
 <20190818090949.GA30276@kroah.com>
 <790210571.69061.1566120073465.JavaMail.zimbra@nod.at>
 <20190818151154.GA32157@mit.edu>
 <20190818155812.GB13230@infradead.org>
 <20190818161638.GE1118@sol.localdomain>
 <20190818162201.GA16269@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190818162201.GA16269@infradead.org>
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
Cc: Jan Kara <jack@suse.cz>, Amir Goldstein <amir73il@gmail.com>,
 Dave Chinner <david@fromorbit.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Miao Xie <miaoxie@huawei.com>,
 devel <devel@driverdev.osuosl.org>, Stephen Rothwell <sfr@canb.auug.org.au>,
 Darrick <darrick.wong@oracle.com>, Richard Weinberger <richard@nod.at>,
 torvalds <torvalds@linux-foundation.org>, Chao Yu <yuchao0@huawei.com>,
 Al Viro <viro@zeniv.linux.org.uk>, Jaegeuk Kim <jaegeuk@kernel.org>,
 "Theodore Y. Ts'o" <tytso@mit.edu>, Pavel Machek <pavel@denx.de>,
 David Sterba <dsterba@suse.cz>, Li Guifu <bluce.liguifu@huawei.com>,
 Fang Wei <fangwei1@huawei.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 linux-erofs <linux-erofs@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Hch,

On Sun, Aug 18, 2019 at 09:22:01AM -0700, Christoph Hellwig wrote:
> On Sun, Aug 18, 2019 at 09:16:38AM -0700, Eric Biggers wrote:
> > Ted's observation was about maliciously-crafted filesystems, though, so
> > integrity-only features such as metadata checksums are irrelevant.  Also the
> > filesystem version is irrelevant; anything accepted by the kernel code (even if
> 
> I think allowing users to mount file systems (any of ours) without
> privilege is a rather bad idea.  But that doesn't mean we should not be
> as robust as we can.  Optionally disabling support for legacy formats
> at compile and/or runtime is something we should actively look into as
> well.
> 
> > it's legacy/deprecated) is open attack surface.
> > 
> > I personally consider it *mandatory* that we deal with this stuff.  But I can
> > understand that we don't do a good job at it, so we shouldn't hold a new
> > filesystem to an unfairly high standard relative to other filesystems...
> 
> I very much disagree.  We can't really force anyone to fix up old file
> systems.  But we can very much hold new ones to (slightly) higher
> standards.  Thats the only way to get the average quality up.  Some as
> for things like code style - we can't magically fix up all old stuff,
> but we can and usually do hold new code to higher standards.  (Often not
> to standards as high as I'd personally prefer, btw).

I personally don't want to discuss about other fses here...

I think XFS developers do great jobs all the time and
EROFS is a simple file system compared with these
generic file systems.

I can promise you that our team will fix bug reports in time, and
I personally think the current EROFS code is not as bad as a bullsh**t...

If you have some time, I'm very happy if you can take some of
your precious time on our work...

Thanks,
Gao Xiang


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

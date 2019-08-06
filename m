Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EFA8837CC
	for <lists+driverdev-devel@lfdr.de>; Tue,  6 Aug 2019 19:23:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0713C8602D;
	Tue,  6 Aug 2019 17:23:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KoND_nOm6rvT; Tue,  6 Aug 2019 17:23:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9F0F785F85;
	Tue,  6 Aug 2019 17:23:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8EC611BF5E6
 for <devel@linuxdriverproject.org>; Tue,  6 Aug 2019 17:23:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 75574820A4
 for <devel@linuxdriverproject.org>; Tue,  6 Aug 2019 17:23:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pBqG8nn4vfKL for <devel@linuxdriverproject.org>;
 Tue,  6 Aug 2019 17:23:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sonic312-26.consmr.mail.ir2.yahoo.com
 (sonic312-26.consmr.mail.ir2.yahoo.com [77.238.178.97])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 983C882083
 for <devel@driverdev.osuosl.org>; Tue,  6 Aug 2019 17:23:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aol.com; s=a2048;
 t=1565112199; bh=OGfEqfx+PU4InM0VSbOYRNhJFzEA/rXojevv3mMEsbI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From:Subject;
 b=TijO69dKSef4grNj5YvuFuCViS3tkbiRLzmXITMq9b4WIfijV6drAHDD3JphnNkXoD6pPimmkBWNkoL7R06B0Onxj+7taagrnsjqR/uhzEG7CcfsB5LrviNSeiT7qow4xCHkA82ZXogD/yYt0KxEjBU36eL+g2wapkf24bJJJ5IwDzDFnIxxd7ZeE51XS7WjMUdKnDyQv8ygl1py4yYGUjrFd+kOiXBKD+MV/nQyJ09ZGpUUNTnV8dWdsoMcVjG4bihoyMdfhs2RPe2iTvJKhApXV5DgUlmTAeDmxKW1198OG2IDNkbxuKx/DcIF77b8JnEK58SVRtGw4ej8/7Wz0w==
X-YMail-OSG: sl1gkSwVM1mlHDEiCdaH5dj7rsgViEgTQ3a6APzIjZvHoF1PNh8AdYZocdONKXb
 DehHMC3hV8mbP2YRe6_SnmdQQtkOXiuatzZxsjswEf.dHL9RDFe52j3Ea.QU29gtRweDu7id2oKj
 hXXXElssWDQgY.XnofRaJm.RSJ2sFha5tiCVB8Nn_WrrGaZdX_Jqp2U8IxRQwBYaoxrXWp5J5tcE
 xYrjyrhQD0exM2ILMUpC4YQUPCeJYkdmTHhUC5vrgeT9Vzufc2V3.5GQCz84d7tugwqfGLUB3sxs
 s95K0Rn81hYEjC0wfFNwDC4H_VX_HUp4UJqFcwiaGkIAg8HRdaAUB.k6rF46KxvOlobREg3nGUsY
 mBRyWi0gPKRhJdk946XQ4TbieDTjNwUUmORU7PKqkefgBoBEJWSgD2VySrTya1ZAVZoJr6EE8pXT
 gBUQ87pm4doEnbtWwfM9XLJhaouK2jKB6fhWp7NxDiYOIQNer8_my3FtsUbtxS584m462LYqEJ6f
 4KrKgQPr534DA.p5fhxf6QbVPIppQMsZ5WPigBeajM9KmLbcmaMSQue2XaxHN4jwym_L6Owdman3
 NRlXrxqOOxfQl5ENsEe7AcvIOjXWQ1LD0BEkmB61nUwa2zh5jDnbCn1HM4LIssrWO72z_OjydP3K
 vC1ARwrEbZUllkReaxbmnk7PEQY2bd1r2Ya0NcSQ9Fem5pfrNGVQy5QfdCOcPbbWdHt4GiDKQyn0
 X3grpvJkl9QTKL4oP.G6D1suJaS2OLkFs8rKEKP4Xell0qSBC10f55SY1bQPzzLr7Mr6cTnsTxr3
 VkIz3d8TnFi8bVFDOtazRIsYNigMp3ohRsTf9FwSDRK7SblzKBF8bCoFbjDwbBPrEQLHwjeFFjee
 0ljSMjbIwfO_7RJq1oHK3NFTYo5_2n23HDeLukA2E2xkYQOOgtz_s4kSq0kqbtTZX9vkSFHRbV94
 uKQCtyV_ZEjLuyU.MCs2FhejKDQxoIJGUFYbFNMU9mXVX.iP_AJjv.1n.9s8H5dgk2HaeXlBmbQ0
 MuzYGTPsK6NIkofKI6bIxSVF1BfLyKjVBOlO1cQJ2TBGcLcyFrao6jAMC4iMOa9oTR5JlxZGh5yx
 k870EeUkAb1Hh3smqInaGEMA6u.FQErg037R3OTAJt15QCoKSFboc2d1EKe4Ywnxqk3Pq1CS8EZf
 hC7Thr59WMZjgZUzlmngacmH5IgHTpqRD_BGXn50aYE_bLCy8DRrm_fIMDqDQMR43gG4YiYf01Vc
 k68WnBIHCfPMWRieLByE9LBAWCw--
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic312.consmr.mail.ir2.yahoo.com with HTTP; Tue, 6 Aug 2019 17:23:19 +0000
Received: by smtp406.mail.ir2.yahoo.com (Oath Hermes SMTP Server) with ESMTPA
 ID af769fc35dd430e77b6ac1739d1acdf0; 
 Tue, 06 Aug 2019 17:03:11 +0000 (UTC)
Date: Wed, 7 Aug 2019 01:02:58 +0800
From: Gao Xiang <hsiangkao@aol.com>
To: Stephen Rothwell <sfr@canb.auug.org.au>
Subject: Re: [PATCH RFC] erofs: move erofs out of staging
Message-ID: <20190806170252.GB29093@hsiangkao-HP-ZHAN-66-Pro-G1>
References: <20190806094925.228906-1-gaoxiang25@huawei.com>
 <20190807013423.02fd6990@canb.auug.org.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190807013423.02fd6990@canb.auug.org.au>
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
Cc: devel@driverdev.osuosl.org, "Darrick J . Wong" <darrick.wong@oracle.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jan Kara <jack@suse.cz>,
 Amir Goldstein <amir73il@gmail.com>, Dave Chinner <david@fromorbit.com>,
 David Sterba <dsterba@suse.cz>, LKML <linux-kernel@vger.kernel.org>,
 Christoph Hellwig <hch@infradead.org>,
 Linus Torvalds <torvalds@linux-foundation.org>, Miao Xie <miaoxie@huawei.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>, Pavel Machek <pavel@denx.de>,
 linux-fsdevel@vger.kernel.org, Theodore Ts'o <tytso@mit.edu>,
 Jaegeuk Kim <jaegeuk@kernel.org>, linux-erofs@lists.ozlabs.org,
 Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Stephen,

On Wed, Aug 07, 2019 at 01:34:23AM +1000, Stephen Rothwell wrote:
> Hi Gao,
> 
> One small suggestion: just remove the file names from the comments at
> the top of the files rather than change them to reflect that they have
> moved.  We can usually tell the name of a file by its name :-)

Thanks for your reply :)

For this part, EROFS initially followed what ext4, f2fs, even fsverity do,
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/fs/ext4/namei.c
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/fs/f2fs/namei.c
https://git.kernel.org/pub/scm/linux/kernel/git/ebiggers/linux.git/tree/fs/verity/verify.c?h=fsverity

I think I can remove these filenames as you suggested in the next version.
I thought these are some common practice and there is no obvious right or
wrong of this kind of stuffs.

Thanks,
Gao Xiang


> 
> -- 
> Cheers,
> Stephen Rothwell


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E76029136B
	for <lists+driverdev-devel@lfdr.de>; Sun, 18 Aug 2019 00:07:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1490785F53;
	Sat, 17 Aug 2019 22:07:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rlYVGY2N56-v; Sat, 17 Aug 2019 22:07:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 116A785A1D;
	Sat, 17 Aug 2019 22:07:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 615D01BF2F0
 for <devel@linuxdriverproject.org>; Sat, 17 Aug 2019 22:07:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5E5AD20368
 for <devel@linuxdriverproject.org>; Sat, 17 Aug 2019 22:07:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IUIItAgiq9Wz for <devel@linuxdriverproject.org>;
 Sat, 17 Aug 2019 22:07:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sonic304-25.consmr.mail.gq1.yahoo.com
 (sonic304-25.consmr.mail.gq1.yahoo.com [98.137.68.206])
 by silver.osuosl.org (Postfix) with ESMTPS id 3635220366
 for <devel@driverdev.osuosl.org>; Sat, 17 Aug 2019 22:07:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aol.com; s=a2048;
 t=1566079639; bh=26eP1y8zgvwC7tDEbSrCZDGdjPiTLQsD1xucwKQlOQE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From:Subject;
 b=IQmWtUpiqH0I56d8gXpOUepQBjIeos+73NC/v6LtHOw1YWBDT38CUFSR9kTSOzfsaGuxtm25NEAuP+vmQ17anzsSkCXgL8BxMwBj8snkbfgsrKBPN/nNGZ22DgxekdFnAMNYz959desiE+T4i+GmtiXWuo3V3pcBarJG2uxLy65OheQ0Wq4b66Y00Lo/1cfeEEINY5SnqgN/SlSKkS7e0QyJii0NaiLGtWBQ+/Dk/sOKMi48apgj68S+DWdiKvPScYMjAqx+ZlY8eU0XF4f6lpqiXlXvwPdl4Ls9yHp0wK4iYtd3tqvhWR1EYkdlcauXxOz7pmoQ14ATwX4FdUMRTg==
X-YMail-OSG: vHJ52NwVM1mNmnrN5URQmFswc5FfTt7..sdPljkO27m9bxGo.BsD7T6P1ZQvERg
 CtMm7RU.R6VsQW19a402hg.Q.ABAsR0_.qkwY09O6RB8OVvwdy.5xsN.Vrnf0f7qqzMMUzZDyDDH
 AvWcgr22As4vhRCrYZO5kk4FnOd3rko1ubfVKcWf0D2P44VBOzndwPPK2pphLGp3PU304Yrxakzj
 28HFCirgd11ioC5EsD7ESmYzHLSz4dbLsl1pnMmuDvUNU7A1bw8HKqtzG5WOI7.eI89VoO.ALb_y
 RLQn3RlQxPkPm9pPpAgOtiDOfOYlqpwHTCj9x7aYPjH986kIQiNQ4JwXn5F96zTNul5qXELeZENb
 KD_UiDW5NGFeUjAb__cYvsNFUxAiwRfro_edIs6_VwPIfI5Tbit.5hS8mELUFXwPkesrDEosWDvD
 Hit55xcQaI_Z9UzfnljAoXNkjRtP1qIKpcUodU9jd1Yt4XjFnRIzNSZw438P2.X36Jtp3hquhHGm
 8R3WQ0erGzhWCfZ9Cvjel1fZjNNvOIEzG3AEHfFDob92KADLM1tTvd2kb0eq9qhDhFvAGiM2fWf.
 9UUcZ26C9GeO5GeGoGEJeMu4qmrLOw0TXhf7phvpqd1_E9x_l.ujtzasiKALLq7.0G5qp.JNT2Ek
 cFurYuI1AkDRi4ueWDTDBLTnGU2MrTq8NbCIQ6Q087Yz47zfLJrMf4znrrakT.HrtUbVUUix.kHS
 PSvycxxvAywh5197lyeLKrGdThNLMCOkHGb._TxLx61QUOp1IABfbQiYjiED0DnGSEjYM69YIcli
 zeep.PEZqs1K.5dnPzhX_6n4c546ebUIcihtXB3LLxR.GQ35kDUosAjFoup9PyhnS.YMOzxi3dt9
 rta0a7GtoHVgKm9YWpYbSP3EQ54QaQL0H01kEHtxQLy4P5a8HgBaKs4sA3lXo.Oyr23pAzKqz9X2
 cZQWYAUbD8A1mWf0QdTo5_4Q.H3ZrFAuIkNldjd0mvy.Ph2ZXqUmYLb_a.Tap5g8HGpCMsIRmcfH
 YB2FqExCDjaKYFaOq8TUDWb5UFG3WSA7y5aF0.x67vJzVpIZaW0spPXoXrGdE437qnp29hv3jpKc
 gpvMOq1f3cUU8FQJqp6uI8NTodga9B47ChtLrRNJd7q7hbmQlgzwLJM8Sj2dkJH6wsfHuHSkVsL4
 UTzRjOO0hBiOiRy94OMtXccMH7Du5LuIKrdW.D6ESa6SVoiEPmeZKhApKvhxBki2Xi.LdYJFfOz5
 WRhdce1iVz7obXGl1Qz7Esx0MqvQyTIGe1_s7SMLc1dBMxevdkJ4-
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic304.consmr.mail.gq1.yahoo.com with HTTP; Sat, 17 Aug 2019 22:07:19 +0000
Received: by smtp419.mail.gq1.yahoo.com (Oath Hermes SMTP Server) with ESMTPA
 ID f1835cace093bf9aad1c22c8c8f4eeda; 
 Sat, 17 Aug 2019 22:07:16 +0000 (UTC)
Date: Sun, 18 Aug 2019 06:07:07 +0800
From: Gao Xiang <hsiangkao@aol.com>
To: Richard Weinberger <richard@nod.at>
Subject: Re: [PATCH] erofs: move erofs out of staging
Message-ID: <20190817220706.GA11443@hsiangkao-HP-ZHAN-66-Pro-G1>
References: <20190817082313.21040-1-hsiangkao@aol.com>
 <1746679415.68815.1566076790942.JavaMail.zimbra@nod.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1746679415.68815.1566076790942.JavaMail.zimbra@nod.at>
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
Cc: Jan Kara <jack@suse.cz>, Chao Yu <yuchao0@huawei.com>,
 Dave Chinner <david@fromorbit.com>, David Sterba <dsterba@suse.cz>,
 Miao Xie <miaoxie@huawei.com>, devel@driverdev.osuosl.org,
 Stephen Rothwell <sfr@canb.auug.org.au>,
 "Darrick J . Wong" <darrick.wong@oracle.com>,
 Christoph Hellwig <hch@infradead.org>, Amir Goldstein <amir73il@gmail.com>,
 linux-erofs@lists.ozlabs.org, Al Viro <viro@zeniv.linux.org.uk>,
 Jaegeuk Kim <jaegeuk@kernel.org>, tytso <tytso@mit.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Li Guifu <bluce.liguifu@huawei.com>, Fang Wei <fangwei1@huawei.com>,
 Pavel Machek <pavel@denx.de>, linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Richard,

On Sat, Aug 17, 2019 at 11:19:50PM +0200, Richard Weinberger wrote:
> ----- Urspr?ngliche Mail -----
> > Von: "Gao Xiang" <hsiangkao@aol.com>
> > An: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>, "Al Viro" <viro@zeniv.linux.org.uk>, "linux-fsdevel"
> > <linux-fsdevel@vger.kernel.org>, devel@driverdev.osuosl.org, linux-erofs@lists.ozlabs.org, "linux-kernel"
> > <linux-kernel@vger.kernel.org>
> > CC: "Andrew Morton" <akpm@linux-foundation.org>, "Stephen Rothwell" <sfr@canb.auug.org.au>, "tytso" <tytso@mit.edu>,
> > "Pavel Machek" <pavel@denx.de>, "David Sterba" <dsterba@suse.cz>, "Amir Goldstein" <amir73il@gmail.com>, "Christoph
> > Hellwig" <hch@infradead.org>, "Darrick J . Wong" <darrick.wong@oracle.com>, "Dave Chinner" <david@fromorbit.com>,
> > "Jaegeuk Kim" <jaegeuk@kernel.org>, "Jan Kara" <jack@suse.cz>, "richard" <richard@nod.at>, "torvalds"
> > <torvalds@linux-foundation.org>, "Chao Yu" <yuchao0@huawei.com>, "Miao Xie" <miaoxie@huawei.com>, "Li Guifu"
> > <bluce.liguifu@huawei.com>, "Fang Wei" <fangwei1@huawei.com>, "Gao Xiang" <gaoxiang25@huawei.com>
> > Gesendet: Samstag, 17. August 2019 10:23:13
> > Betreff: [PATCH] erofs: move erofs out of staging
> 
> > EROFS filesystem has been merged into linux-staging for a year.
> > 
> > EROFS is designed to be a better solution of saving extra storage
> > space with guaranteed end-to-end performance for read-only files
> > with the help of reduced metadata, fixed-sized output compression
> > and decompression inplace technologies.
>  
> How does erofs compare to squashfs?
> IIUC it is designed to be faster. Do you have numbers?
> Feel free to point me older mails if you already showed numbers,
> I have to admit I didn't follow the development very closely.

You can see the following related material which has microbenchmark
tested on my laptop:
https://static.sched.com/hosted_files/kccncosschn19eng/19/EROFS%20file%20system_OSS2019_Final.pdf

which was mentioned in the related topic as well:
https://lore.kernel.org/r/20190815044155.88483-1-gaoxiang25@huawei.com/

Thanks,
Gao Xiang

> 
> Thanks,
> //richard
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

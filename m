Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 36FAA918AF
	for <lists+driverdev-devel@lfdr.de>; Sun, 18 Aug 2019 20:18:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id EF929855E1;
	Sun, 18 Aug 2019 18:18:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b3SqIwfl+pA3; Sun, 18 Aug 2019 18:18:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 65E0B8568D;
	Sun, 18 Aug 2019 18:18:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 59F341BF406
 for <devel@linuxdriverproject.org>; Sun, 18 Aug 2019 18:18:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 567A787020
 for <devel@linuxdriverproject.org>; Sun, 18 Aug 2019 18:18:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ca6Uq19BjWKm for <devel@linuxdriverproject.org>;
 Sun, 18 Aug 2019 18:18:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 04B6A85F4B
 for <devel@driverdev.osuosl.org>; Sun, 18 Aug 2019 18:18:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1566152236;
 bh=olzbdpYcdX1wo7rbrojZaOo8itZUmiQpkIvpjbyhLeU=;
 h=X-UI-Sender-Class:Date:From:To:Cc:Subject:References:In-Reply-To;
 b=HMwG3oLdNmJN4LwbI7ogCURJC88T06OH3KBlC5IwNwbTsx8KLJsSSMmjzn67eABHB
 6VxegqXBrcFbQXK6eOdy4S8jrdTjxxARdbzAkdWDg7RkXrFAveo7FIm5D0MXyUEEVg
 zBdc3ZX1L+0XichC43N+idjWxyIwXO2mAGxkuiVI=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from hsiangkao-HP-ZHAN-66-Pro-G1 ([115.197.242.96]) by mail.gmx.com
 (mrgmx102 [212.227.17.174]) with ESMTPSA (Nemesis) id
 0LuJDv-1iR9G13gHv-011ke0; Sun, 18 Aug 2019 20:17:15 +0200
Date: Mon, 19 Aug 2019 02:16:55 +0800
From: Gao Xiang <hsiangkao@gmx.com>
To: Christoph Hellwig <hch@infradead.org>
Subject: Re: [PATCH] erofs: move erofs out of staging
Message-ID: <20190818181654.GA1617@hsiangkao-HP-ZHAN-66-Pro-G1>
References: <20190818084521.GA17909@hsiangkao-HP-ZHAN-66-Pro-G1>
 <1133002215.69049.1566119033047.JavaMail.zimbra@nod.at>
 <20190818090949.GA30276@kroah.com>
 <790210571.69061.1566120073465.JavaMail.zimbra@nod.at>
 <20190818151154.GA32157@mit.edu>
 <20190818155812.GB13230@infradead.org>
 <20190818161638.GE1118@sol.localdomain>
 <20190818162201.GA16269@infradead.org>
 <20190818172938.GA14413@sol.localdomain>
 <20190818174702.GA17633@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190818174702.GA17633@infradead.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Provags-ID: V03:K1:KyuZ/WlcN/RTUTJEyD8sKz+ptXDlsFU1HZE5mU1CXHgB7K5RIaw
 158LdLU1Wf8aLgfTcPtookMI86iKy6/vzRW1tpHjI8n6wMPaK7u1hGJQdU8t23xOliK5I/w
 WEivIkLCTOLT9MafloVCTBsCLAqnByyq59Aoku1gp7+GfZ6flkOhFP5CbdTWv0w7qgNvFS6
 k8vypWLt6/OAKPH5pqBNA==
X-UI-Out-Filterresults: notjunk:1;V03:K0:MX3f/wK6Ywc=:Oro2x4h6CadPFq+FPfjCv/
 I6Rr49SvHCPwy/w4Oi4ys9TCk+9tdGwcGhu6AcTM24l/vdxq7WAkfxt5QvhFs7Hgb/nGw/ewu
 kYnIjoeR29tj5K32SBJy2T6pg4gDr/3VxN+lOnpgJShaBzraEPb2qlysppfUpJu3Pl/y/Fxjl
 yNe6RcPOGTWZwql7pgfEFprfgP2EKyWSMTmQ/HHgW3+fcIk97zac9/0NAEF0v+QGZc7jprXlZ
 kJ6IeFrb+92NTwW4+Wx53L5h7G78NQAXo0gux4seyey3nzjO3pKJbp4si9Eo4YEwGXrRWC54B
 AmjyEXnpeypiwGjs3euzj8CpFLJip3j0twHo462ObokuCmZjq3UPdYv8MylUJ3X0JzqFNrR0L
 XgP51yJr/LsnUMug7Rrxz9QldKY+5VmAXPoAOKWyGqJRroAj9HrI7uPSCbBXRVEpbVBSCyLxT
 u6DfbHB49Dcd12lVMwHDx7PYU3Ipn4yWr76cPdKErHI+nDL8XY0GOyPuRRwl6RUIob+AOlnRT
 2I4XbUn1F6KnEwp5LAdQfh/T1WBDT+9kPvgxATq/2jjx/Mb+Vm6KFH54cE4fwiCk8LLJ5/8a4
 /zbvOtHDeyBvcJYNM9ZRMIt7lD7MCNRDX7k8ri3QyrysiEV1V9teLgT3394IaP/toVVT9RQep
 jZ66f4NuRKFUBiHYnCiLrPVFAANpOcH50Dk19UPuIDFbtvbCwiaS/+KOoglhrbk5syG/lHCuI
 UQNU8STHtzRIFCStyGWfQ/JcF3tdgXnaTVXOAqwMnr8kxDqlk1gapvcBkVydgDPRDcOXJ69VJ
 urYwA5qMkykGbGo5GInXHkgqLtUnCE1JJfsH13j4LzKmANoyrBywkfhNzzqlC8tvBcevJH3js
 G6vKLJt+ul6hTTxngAEAXv9viptALFMMQHvduab1UOB25dvjayPbL/8VcJPNwtgbEL292kOG2
 91xCJG22O6r+hEQDPyq0aYjJp6O4xVpEqT8ExrgMvXTOr09P+PAHSsoVIyfrGc3tQ8CeePNNH
 ZR2GewzHPsI6GNOMz8UctXI2vzMrQ2bjkvlbCYS2GUCFpvdljdzdrcVwdKLfh/o2T+4mr/buV
 qess+xQKNEjmbvsTrOqb3syi3ZQS5DHl2mBjvbdEVSgn/N4VRVef1bMpg==
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

On Sun, Aug 18, 2019 at 10:47:02AM -0700, Christoph Hellwig wrote:
> On Sun, Aug 18, 2019 at 10:29:38AM -0700, Eric Biggers wrote:
> > Not sure what you're even disagreeing with, as I *do* expect new filesystems to
> > be held to a high standard, and to be written with the assumption that the
> > on-disk data may be corrupted or malicious.  We just can't expect the bar to be
> > so high (e.g. no bugs) that it's never been attained by *any* filesystem even
> > after years/decades of active development.  If the developers were careful, the
> > code generally looks robust, and they are willing to address such bugs as they
> > are found, realistically that's as good as we can expect to get...
>
> Well, the impression I got from Richards quick look and the reply to it is
> that there is very little attempt to validate the ondisk data structure
> and there is absolutely no priority to do so.  Which is very different
> from there is a bug or two here and there.

As my second reply to Richard, I didn't fuzz all the on-disk fields for EROFS.
and as my reply to Richard / Greg, current EROFS is used on the top of dm-verity.

I cannot say how well EROFS will be performed on malformed images (and you can
also find the bug richard pointed out is a miswritten break->continue by myself).

I posted the upstream EROFS post on July 4, 2019 and a month and a half later,
no one can tell me (yes, thanks for kind people reply me about their suggestion)
what we should do next (you can see these emails, I sent many times) to meet
the minimal upstream requirements and rare people can even dip into my code.

That is all I want to say. I will work on autofuzz these days, and I want to
know how to meet your requirements on this (you can tell us your standard,
how well should we do).

OK, you don't reply to my post once, I have no idea how to get your first reply.

Thanks,
Gao Xiang

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

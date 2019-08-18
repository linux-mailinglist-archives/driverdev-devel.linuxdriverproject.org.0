Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 76D6C91612
	for <lists+driverdev-devel@lfdr.de>; Sun, 18 Aug 2019 12:13:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6D7A385ABE;
	Sun, 18 Aug 2019 10:13:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pED9YKffiNPC; Sun, 18 Aug 2019 10:13:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 32B5583502;
	Sun, 18 Aug 2019 10:13:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BA7151BF3AA
 for <devel@linuxdriverproject.org>; Sun, 18 Aug 2019 10:13:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B395220553
 for <devel@linuxdriverproject.org>; Sun, 18 Aug 2019 10:13:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id blu9FAwy--lB for <devel@linuxdriverproject.org>;
 Sun, 18 Aug 2019 10:13:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 68E8020510
 for <devel@driverdev.osuosl.org>; Sun, 18 Aug 2019 10:13:04 +0000 (UTC)
Received: from [192.168.0.101] (unknown [180.111.132.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 92D3C2146E;
 Sun, 18 Aug 2019 10:13:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566123184;
 bh=FEJ0D22QdNqnoKVDg6XJ8v/pgAIJ+yN/b9/Sje9fAog=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=e6vO1cbRmb5/UacRY1GhawsTwpzh/wGW7wMXmpyMOmit8gY/AvqEFAZLbgm5W4iYl
 OMjAyzYabjvm1WcK8/wAYbkKpw5Gxe6qwSfd6SWh7cOAiSa0DBWY6uJehHu57cxtHj
 iCxqsdt6Ivupp269p105juxK5aaCnmSZQ1OlSu84=
Subject: Re: [PATCH] erofs: move erofs out of staging
To: Richard Weinberger <richard@nod.at>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <20190817082313.21040-1-hsiangkao@aol.com>
 <20190817220706.GA11443@hsiangkao-HP-ZHAN-66-Pro-G1>
 <1163995781.68824.1566084358245.JavaMail.zimbra@nod.at>
 <20190817233843.GA16991@hsiangkao-HP-ZHAN-66-Pro-G1>
 <1405781266.69008.1566116210649.JavaMail.zimbra@nod.at>
 <20190818084521.GA17909@hsiangkao-HP-ZHAN-66-Pro-G1>
 <1133002215.69049.1566119033047.JavaMail.zimbra@nod.at>
 <20190818090949.GA30276@kroah.com>
 <790210571.69061.1566120073465.JavaMail.zimbra@nod.at>
From: Chao Yu <chao@kernel.org>
Message-ID: <8319896b-22c1-0550-f464-f4419a70202e@kernel.org>
Date: Sun, 18 Aug 2019 18:12:57 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <790210571.69061.1566120073465.JavaMail.zimbra@nod.at>
Content-Language: en-US
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
Cc: devel <devel@driverdev.osuosl.org>, Stephen Rothwell <sfr@canb.auug.org.au>,
 linux-erofs <linux-erofs@lists.ozlabs.org>, Jan Kara <jack@suse.cz>,
 Darrick <darrick.wong@oracle.com>, torvalds <torvalds@linux-foundation.org>,
 Amir Goldstein <amir73il@gmail.com>, Dave Chinner <david@fromorbit.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, tytso <tytso@mit.edu>,
 Christoph Hellwig <hch@infradead.org>, David Sterba <dsterba@suse.cz>,
 Al Viro <viro@zeniv.linux.org.uk>, Pavel Machek <pavel@denx.de>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Jaegeuk Kim <jaegeuk@kernel.org>, Andrew Morton <akpm@linux-foundation.org>,
 Miao Xie <miaoxie@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Richard,

On 2019-8-18 17:21, Richard Weinberger wrote:
> For normal use I see no problem at all.
> I fear distros that try to mount anything you plug into your USB.
> 
> At least SUSE already blacklists erofs:
> https://github.com/openSUSE/suse-module-tools/blob/master/suse-module-tools.spec#L24

Thanks for letting us know current status of erofs in SUSE distro.

Currently erofs cares more about the requirement of Android, in there, we are
safe on fuzzed image case as dm-verity can keep all partition data being
verified before mount.

For other scenarios, like distro, erofs should improve itself step by step as
many mainline filesystems in many aspects to fit the there-in requirement. :)

Thanks,

> 
> Thanks,
> //richard
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

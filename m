Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DA5F0913B5
	for <lists+driverdev-devel@lfdr.de>; Sun, 18 Aug 2019 01:39:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A423B857BF;
	Sat, 17 Aug 2019 23:39:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OH18gyxefHhZ; Sat, 17 Aug 2019 23:39:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 542D485250;
	Sat, 17 Aug 2019 23:39:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 35B5F1BF23F
 for <devel@linuxdriverproject.org>; Sat, 17 Aug 2019 23:39:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2EE0785259
 for <devel@linuxdriverproject.org>; Sat, 17 Aug 2019 23:39:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8HYC5BGWEOAT for <devel@linuxdriverproject.org>;
 Sat, 17 Aug 2019 23:39:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sonic313-20.consmr.mail.gq1.yahoo.com
 (sonic313-20.consmr.mail.gq1.yahoo.com [98.137.65.83])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7700C85250
 for <devel@driverdev.osuosl.org>; Sat, 17 Aug 2019 23:39:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aol.com; s=a2048;
 t=1566085139; bh=dNZpHSLd1MuwxobwDIzjjPQQ+9FM8pPg85T+oHS7F4A=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From:Subject;
 b=XxQf3c6Gcb0YtoB6iBaRiEGqCsT1ErD/JcSy8yQ+BJzKBsJY8k2cmd5RM3O6Ub0iVknNit104Fuo+fjkVmZbTAT9K0wMxPRrkEdwzG7KTifBNUQJPUNHkI5jyq2QPEaGVD/TaLnU7nqkyJn3K0kSHrxf6qtBcRGWxQnMlSEfO+2E76YPPEc24m2obNVz3REgQpPPemneAsmkz0Vejk05g01wd2GIYtFw1gMJND05xonjhhP3qZf/Q4OMecawaecvmSNyjGNieH3FRmqomInkiwHZeEmWx+aIe6dvYsQSsOf/PRmOSnBCzMY71RpV/zGzIGe4az6/imIVlesqlmpr5w==
X-YMail-OSG: Ep10XbEVM1kSG8sbeMSNao_0J_WWVtTwLsv5LkLVVRiUhy89YECRw79g_4ImXJI
 3hCZGvhWrl6eMjwWlXAbuYdMSnngJ6XORVtk2a9ORU7FjvIubJ2uEHLBGl80XnLR1lNWUgNU.l.y
 Mrg6KcPk0YrgWiw2nNrnSdkOcjwb3k.PDoeYfhahDLYlsDXlM097Tx1p.kWQV0bZsabdHovIzTDa
 g16UBb5M6ltAS47QRZeiGzXLXvLC0pvyqwP4xe.TUoKgaXTSRylquLcDdYk9fz5vS5q08Q_hBTtt
 Ivl7Xk9PaEAwB5Dn0QlZ7hf.xXhkkcQRF1BAZDqM4CzzGkvmVIsAsWKz2dEFbzqYLAHbZGZbMhSm
 DT7ZkVT.ecgUm6pa4taL8Dc4K8LmQllc593rYHC_uHaWoiqh6kGNiwOyY5SWYPR0odwzjTviHXi_
 9HXwtYYRKLXix5kQprvf474J6z.PdgKHVaMwnHkRTFg_4PGipILoOZNarkmyhYd6gzOWLohgiZCH
 C.KEZ22TNN87f_4lTKA70bec1ZYC0ojBg.AxYa4AYqIMIZHmMr4d9bpBea56tn1XhK3MQG50tL8D
 NijkvQKiIXZCcETePvTyhUPhUAWBkPi.AGzB7oQib2Ssyvv3f4zC3rKZ2ROgBcbfyb61j_D7Rh4q
 Vc1dA5_Jh4l.0M8Q3eR0zTL33O3AkAdvVOokgPeFBXBs6B_fbj44QHWpqfGtki_hxhfUhiM5fkn4
 dJJvr0WW4HLvcF06437_N4JoqfkCsMVEehZIY.KNHpwWtRD3vrN0FE7YAQLif4Ly8YriXzObRjGs
 hGt7S65J.zQVQaLevdR_0xAjFzfoPRUXm.hxosCj7paangwHwitjLZ2KwYqUUWePmFFKvdaFe3MX
 Yk6ZaKCa2V_Bpi4IyKoQy69OSs5AIIc0HU_K3C2jaM.HxXBcmxAOHTRb9pX7cIbfjUGAYDise5VU
 hQmNWc3tiUM.XTWayMWFWyghYJ_PhXZZhyV4H_AadKU6RmRdxyKB7gVZU4l2O3zmdCjnRzVY5zWU
 jZZk7EFVBCb9Tp79dPA1Dc.G1fOOvi2xdkfTHxNs8q03jedl.rBSvrUpXOE2jdEIiwoZ09WooofK
 HkGePYJ5pioTFtwMMnzRaxpqS4smZC0hKoOO8jyw9u.0b4mUnEWbfQDTNgKWwMfRwXQEBweXwrJ3
 MGJ3u8i12VDKqcE.8ksDvij4ANqPtkRawhyf3JEYx6jSK751DtA9obXEvix5fFFlgZKXnkRYb4oQ
 zNdzA_HXS5n3R9kYTMW5NBwZ8RTqUcTVcIfA-
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic313.consmr.mail.gq1.yahoo.com with HTTP; Sat, 17 Aug 2019 23:38:59 +0000
Received: by smtp425.mail.gq1.yahoo.com (Oath Hermes SMTP Server) with ESMTPA
 ID 00b0015a4452c970986fbbd4b408816c; 
 Sat, 17 Aug 2019 23:38:56 +0000 (UTC)
Date: Sun, 18 Aug 2019 07:38:48 +0800
From: Gao Xiang <hsiangkao@aol.com>
To: Richard Weinberger <richard@nod.at>
Subject: Re: [PATCH] erofs: move erofs out of staging
Message-ID: <20190817233843.GA16991@hsiangkao-HP-ZHAN-66-Pro-G1>
References: <20190817082313.21040-1-hsiangkao@aol.com>
 <1746679415.68815.1566076790942.JavaMail.zimbra@nod.at>
 <20190817220706.GA11443@hsiangkao-HP-ZHAN-66-Pro-G1>
 <1163995781.68824.1566084358245.JavaMail.zimbra@nod.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1163995781.68824.1566084358245.JavaMail.zimbra@nod.at>
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
 Miao Xie <miaoxie@huawei.com>, devel <devel@driverdev.osuosl.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>, Darrick <darrick.wong@oracle.com>,
 Christoph Hellwig <hch@infradead.org>, Amir Goldstein <amir73il@gmail.com>,
 linux-erofs <linux-erofs@lists.ozlabs.org>, Al Viro <viro@zeniv.linux.org.uk>,
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

On Sun, Aug 18, 2019 at 01:25:58AM +0200, Richard Weinberger wrote:
> ----- Urspr?ngliche Mail -----
> >> How does erofs compare to squashfs?
> >> IIUC it is designed to be faster. Do you have numbers?
> >> Feel free to point me older mails if you already showed numbers,
> >> I have to admit I didn't follow the development very closely.
> > 
> > You can see the following related material which has microbenchmark
> > tested on my laptop:
> > https://static.sched.com/hosted_files/kccncosschn19eng/19/EROFS%20file%20system_OSS2019_Final.pdf
> > 
> > which was mentioned in the related topic as well:
> > https://lore.kernel.org/r/20190815044155.88483-1-gaoxiang25@huawei.com/
> 
> Thanks!
> Will read into.

Yes, it was mentioned in the related topic from v1 and I you can have
a try with the latest kernel and enwik9 silesia.tar testdata.

> 
> While digging a little into the code I noticed that you have very few
> checks of the on-disk data.
> For example ->u.i_blkaddr. I gave it a try and created a
> malformed filesystem where u.i_blkaddr is 0xdeadbeef, it causes the kernel
> to loop forever around erofs_read_raw_page().

I don't fuzz all the on-disk fields for EROFS, I will do later..
You can see many in-kernel filesystems are still hardening the related
stuff. Anyway, I will dig into this field you mentioned recently, but
I think it can be fixed easily later.

Thanks,
Gao Xiang 

> 
> Thanks,
> //richard
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

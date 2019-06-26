Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C28B55D2A
	for <lists+driverdev-devel@lfdr.de>; Wed, 26 Jun 2019 03:03:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id EFDB421080;
	Wed, 26 Jun 2019 01:03:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id I7N2LbDSyS3A; Wed, 26 Jun 2019 01:03:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0C7B620553;
	Wed, 26 Jun 2019 01:03:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0D3FF1BF408
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 01:03:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 08701204E3
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 01:03:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LJrLGXUDPjDM for <devel@linuxdriverproject.org>;
 Wed, 26 Jun 2019 01:02:58 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from ushosting.nmnhosting.com (ushosting.nmnhosting.com
 [66.55.73.32])
 by silver.osuosl.org (Postfix) with ESMTP id CABC120106
 for <devel@driverdev.osuosl.org>; Wed, 26 Jun 2019 01:02:58 +0000 (UTC)
Received: from mail2.nmnhosting.com (unknown [202.169.106.97])
 by ushosting.nmnhosting.com (Postfix) with ESMTPS id E27A72DC0076;
 Tue, 25 Jun 2019 21:02:57 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=d-silva.org;
 s=201810a; t=1561510978;
 bh=alTGTolfSOaJib81/HV1xk13UMDoyRYklK/SpUrmd7w=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=NoxHUcByzLTCusX5pVe1lsXlBMGElTVDnI/XfJAy1Nl2CPCT+1tOht6i2EK/ciNkm
 K9KG5Y432fz/6LApPs3O84qtWA9SlyMmA/wuAdUcSD4rSsw1vczNmq2IadH3d8Yjjj
 5s/aRpOn+J8LZ+0EdQegjtRsGUm+NIxhK/RJ9SV1bF1UePOw1rCMB/TgxdowIewNFZ
 Ra5cgiPNVLsA+gWt+IwCMHonGdcRTTyshPS7dwjlm4RdNgxtOKDy+eQbfRQfotbzjs
 B5QQnvu0X2cSsH+yxVwnjSR18+Dt0Tt9kbJq7vhB7kczzOGw3vGeE9Nsk1oow8i/1I
 3EN2KiSeiTlphcIF4jujWhyKJYRq8hKZqgXXkbYQ8cniR0sy1e4f3msouuG7u7FAGN
 4N62OPQDxWHpA6QCR2bkcmJBVH1Jb6OE2kFfBG7EgyAY7YE5RDCG3qHf3x06F/DOxs
 QIPziAUS4TwpT/g1pYu4AH2VTerslwlrRiUj0wkS6makKQ6LJI017iD3ClsF1dCjvw
 9OKcxJoGQDOPUyeiE1V2QvnozdCZZJ0tZIwv2ngVO0Y5g38kYMSlrgiQm08cGPPyV1
 1vTrS9K7ZJD22fxteol1WonkF1zHEWTT8Eu6rNYpH6cAVTxvZ5Uw16GXOQ+goHTzVz
 m6Ftvv6Q+FYsWPnR2eqrJFq0=
Received: from adsilva.ozlabs.ibm.com (static-82-10.transact.net.au
 [122.99.82.10] (may be forged)) (authenticated bits=0)
 by mail2.nmnhosting.com (8.15.2/8.15.2) with ESMTPSA id x5Q12T29029544
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NO);
 Wed, 26 Jun 2019 11:02:45 +1000 (AEST)
 (envelope-from alastair@d-silva.org)
Message-ID: <e16caf5b98aafea4033bfc0e49845ef987c02678.camel@d-silva.org>
Subject: Re: [PATCH v4 0/7] Hexdump Enhancements
From: "Alastair D'Silva" <alastair@d-silva.org>
To: Joe Perches <joe@perches.com>
Date: Wed, 26 Jun 2019 11:02:29 +1000
In-Reply-To: <3ae4c1a4a72f8ee6b75c45adfbe543fc0a7b5da1.camel@perches.com>
References: <20190625031726.12173-1-alastair@au1.ibm.com>
 <3ae4c1a4a72f8ee6b75c45adfbe543fc0a7b5da1.camel@perches.com>
User-Agent: Evolution 3.32.2 (3.32.2-1.fc30) 
MIME-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.6.2
 (mail2.nmnhosting.com [10.0.1.20]); Wed, 26 Jun 2019 11:02:53 +1000 (AEST)
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
Cc: linux-fbdev@vger.kernel.org, Stanislaw Gruszka <sgruszka@redhat.com>,
 Petr Mladek <pmladek@suse.com>, David Airlie <airlied@linux.ie>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 dri-devel@lists.freedesktop.org, devel@driverdev.osuosl.org,
 linux-scsi@vger.kernel.org, Jassi Brar <jassisinghbrar@gmail.com>,
 ath10k@lists.infradead.org, intel-gfx@lists.freedesktop.org,
 Dan Carpenter <dan.carpenter@oracle.com>, Jose Abreu <Jose.Abreu@synopsys.com>,
 Tom Lendacky <thomas.lendacky@amd.com>,
 "James E.J. Bottomley" <jejb@linux.ibm.com>,
 Jani Nikula <jani.nikula@linux.intel.com>, linux-fsdevel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Benson Leung <bleung@chromium.org>, Kalle Valo <kvalo@codeaurora.org>,
 Karsten Keil <isdn@linux-pingi.de>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 David Laight <David.Laight@ACULAB.COM>, Daniel Vetter <daniel@ffwll.ch>,
 netdev@vger.kernel.org, Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>,
 Alexander Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, 2019-06-24 at 22:01 -0700, Joe Perches wrote:
> On Tue, 2019-06-25 at 13:17 +1000, Alastair D'Silva wrote:
> > From: Alastair D'Silva <alastair@d-silva.org>
> > 
> > Apologies for the large CC list, it's a heads up for those
> > responsible
> > for subsystems where a prototype change in generic code causes a
> > change
> > in those subsystems.
> []
> > The default behaviour of hexdump is unchanged, however, the
> > prototype
> > for hex_dump_to_buffer() has changed, and print_hex_dump() has been
> > renamed to print_hex_dump_ext(), with a wrapper replacing it for
> > compatibility with existing code, which would have been too
> > invasive to
> > change.
> 
> I believe this cover letter is misleading.
> 
> The point of the wrapper is to avoid unnecessary changes
> in existing
> code.
> 
> 

The wrapper is for print_hex_dump(), which has many callers.

The changes to existing code are for hex_dump_to_buffer(), which is
called in relatively few places.

-- 
Alastair D'Silva           mob: 0423 762 819
skype: alastair_dsilva    
Twitter: @EvilDeece
blog: http://alastair.d-silva.org


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

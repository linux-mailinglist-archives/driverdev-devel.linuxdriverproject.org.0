Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B6504C40A
	for <lists+driverdev-devel@lfdr.de>; Thu, 20 Jun 2019 01:16:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D0B6D85F56;
	Wed, 19 Jun 2019 23:16:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Tl48sHUyMmvB; Wed, 19 Jun 2019 23:16:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4910E85F3A;
	Wed, 19 Jun 2019 23:16:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E4CE51BF29D
 for <devel@linuxdriverproject.org>; Wed, 19 Jun 2019 23:16:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E1593834C2
 for <devel@linuxdriverproject.org>; Wed, 19 Jun 2019 23:16:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wtl2j2IyRlao for <devel@linuxdriverproject.org>;
 Wed, 19 Jun 2019 23:16:29 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from ushosting.nmnhosting.com (ushosting.nmnhosting.com
 [66.55.73.32])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4041483070
 for <devel@driverdev.osuosl.org>; Wed, 19 Jun 2019 23:16:29 +0000 (UTC)
Received: from mail2.nmnhosting.com (unknown [202.169.106.97])
 by ushosting.nmnhosting.com (Postfix) with ESMTPS id 5F37E2DC005B;
 Wed, 19 Jun 2019 19:16:28 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=d-silva.org;
 s=201810a; t=1560986188;
 bh=P+nFrCYIAy9nbAT3inDjyh5Nu1AGlpkuYDjYYSTo8SU=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=UMKHysbwL4zdfy50KqutmgBEIg3sB7A1AG+8ItwZQtNEjbw3/kefwvZoa3HJ/qPue
 FtHy3iQpmn+NaSFA3Mu2gOfCMETJuOCnHShThOrTrRi0524godGZCgjbLwEXdIrujV
 xDt+bXPG551xLU30DowKCzCX4sh2ZLCYlpwKny3nSfu6TdTO04XxEEAerz4PtGaObB
 mK5WkSsuK3ES4PAPxgZb+pSYtoFroMpH18T3PLybvLGSjfjyn/CtIMs+blM8XYmdPJ
 TvkZW6Ca8pzYT9RsBfJRAJWjf4qfNG6J0j+xJvEaD7SP/MIMGo1VZ5d/zw4b3FdeYt
 JetXAd65Zd6yavahdde3VtkKoryPECl8+glQZ+N2eRG9ycQ1RafCdpTqdv72F0hGkL
 4apz6zp0SeF0J1KA9qT4u68PJKa7dlMEnKXEomd5VE+2hLj+H2XT6HltLJdB5+pK9G
 cMe1+bLK+ayAWxIXuyZ1/r/oJ5pzAFraInvomTVKBkCfLFy8CdlSIihUmPfej/4psJ
 72/lVeYRJl+IifxxJ9hEA9A+QWlY8W986ROsAQ5xOTxmaRzXMnnZRdFLVPZt5axFGD
 EQ+IOd3b5ZUWjk3U7T3wAvcchJQaqLNw/Njxg2yMVkYsKSYnAMuX4DYn+A7LJX3oLF
 sv3nSS3HZsRxp6mS1j36fWkI=
Received: from adsilva.ozlabs.ibm.com (static-82-10.transact.net.au
 [122.99.82.10] (may be forged)) (authenticated bits=0)
 by mail2.nmnhosting.com (8.15.2/8.15.2) with ESMTPSA id x5JNFxcT078663
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NO);
 Thu, 20 Jun 2019 09:16:14 +1000 (AEST)
 (envelope-from alastair@d-silva.org)
Message-ID: <c68cb819257f251cbb66f8998a95c31cebe2d72e.camel@d-silva.org>
Subject: Re: [PATCH v3 0/7] Hexdump Enhancements
From: "Alastair D'Silva" <alastair@d-silva.org>
To: Joe Perches <joe@perches.com>
Date: Thu, 20 Jun 2019 09:15:58 +1000
In-Reply-To: <9a000734375c0801fc16b71f4be1235f9b857772.camel@perches.com>
References: <20190617020430.8708-1-alastair@au1.ibm.com>
 <9a000734375c0801fc16b71f4be1235f9b857772.camel@perches.com>
User-Agent: Evolution 3.32.2 (3.32.2-1.fc30) 
MIME-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.6.2
 (mail2.nmnhosting.com [10.0.1.20]); Thu, 20 Jun 2019 09:16:24 +1000 (AEST)
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

On Wed, 2019-06-19 at 09:31 -0700, Joe Perches wrote:
> On Mon, 2019-06-17 at 12:04 +1000, Alastair D'Silva wrote:
> > From: Alastair D'Silva <alastair@d-silva.org>
> > 
> > Apologies for the large CC list, it's a heads up for those
> > responsible
> > for subsystems where a prototype change in generic code causes a
> > change
> > in those subsystems.
> > 
> > This series enhances hexdump.
> 
> Still not a fan of these patches.

I'm afraid there's not too much action I can take on that, I'm happy to
address specific issues though.

> 
> > These improve the readability of the dumped data in certain
> > situations
> > (eg. wide terminals are available, many lines of empty bytes exist,
> > etc).
> 
> Changing hexdump's last argument from bool to int is odd.
> 

Think of it as replacing a single boolean with many booleans.

> Perhaps a new function should be added instead of changing
> the existing hexdump.
> 

There's only a handful of consumers, I don't think there is a value-add 
in creating more wrappers vs updating the existing callers.

-- 
Alastair D'Silva           mob: 0423 762 819
skype: alastair_dsilva    
Twitter: @EvilDeece
blog: http://alastair.d-silva.org


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

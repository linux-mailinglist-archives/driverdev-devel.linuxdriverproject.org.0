Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 87C2655D67
	for <lists+driverdev-devel@lfdr.de>; Wed, 26 Jun 2019 03:28:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A29CA214E9;
	Wed, 26 Jun 2019 01:28:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id B6QKFgLrBbaY; Wed, 26 Jun 2019 01:28:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 554E42083F;
	Wed, 26 Jun 2019 01:28:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 887D41BF2C1
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 01:28:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 82D4A85FAE
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 01:28:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eCjdLa4CyB9L for <devel@linuxdriverproject.org>;
 Wed, 26 Jun 2019 01:28:29 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from ushosting.nmnhosting.com (ushosting.nmnhosting.com
 [66.55.73.32])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CB0FC85FA5
 for <devel@driverdev.osuosl.org>; Wed, 26 Jun 2019 01:28:29 +0000 (UTC)
Received: from mail2.nmnhosting.com (unknown [202.169.106.97])
 by ushosting.nmnhosting.com (Postfix) with ESMTPS id 1D8A72DC731F;
 Tue, 25 Jun 2019 21:28:28 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=d-silva.org;
 s=201810a; t=1561512509;
 bh=53CwIRf7Bgu2C3nB/E/dYkm1SUmyHI16H7Vrw6tYZw0=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=XYXgZQwV/JVmjvrmmpsEfrzhsSdzQz90TZ3u4A5LuvxvOBf47Fp2ZRE6sw/yQxU8X
 TpjMqn9q/O2CpE5gTKB+jX8JuW3ZvjWwRjKNgYyQtDeLqC3AOTxGIo14uCtoknu1Ie
 FG22iYtvXLRXXqfNrSrJa+rVjda1vgisi7GOJbC+jBgTu/RViRQay4OWXhgCn3Nczb
 R37TlMkpZX8Y+mP/etyzy+OqhHUjAKgompFg31JlAIqUoS4aI+1LPHijcYXXJoVYTq
 Ygr7XlPyBBKYZb2Gi7aXZQsO2+StG1sjXOx+KdwCdKzCFyEWfWEKY/tQLkurs+ph9A
 MUUYKoT1SLivN87ZIKD5usJUxI6X9VbGAq0Giu0wTPvBE4irR3Jbh5NIjNdxwD4tWj
 TuNlZSN8qLv9Snh5uGeZMKYFnfUm7WdcPupOF8k4TJ+2MhVD7L9GTL2CGk9Qoaw7Tt
 MaiNteFekcRUw59fQrYPbrAIf7xqCZ3+cibIiO+j7YlstTAk+6ESZJ9WDAtwep+vAH
 niADVBPNIHpavAj51iob25f8WoSUtiKoWtXOYdL4L28EGQ9w2ayhlYobW1Jykne0xY
 8hbzBb2ugqf6wp6vG7XdsVpanY8BP7CyvaQOvuPAyHTsyukMlhVI18R5nWD5Fmf0gP
 U/5V+IOscL3fg+gbEE7NrBI8=
Received: from adsilva.ozlabs.ibm.com (static-82-10.transact.net.au
 [122.99.82.10] (may be forged)) (authenticated bits=0)
 by mail2.nmnhosting.com (8.15.2/8.15.2) with ESMTPSA id x5Q1S75T029659
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NO);
 Wed, 26 Jun 2019 11:28:23 +1000 (AEST)
 (envelope-from alastair@d-silva.org)
Message-ID: <e1b3d172f07f681fed9c311dec67cfb695408f5c.camel@d-silva.org>
Subject: Re: [PATCH v4 4/7] lib/hexdump.c: Replace ascii bool in
 hex_dump_to_buffer with flags
From: "Alastair D'Silva" <alastair@d-silva.org>
To: Joe Perches <joe@perches.com>
Date: Wed, 26 Jun 2019 11:27:53 +1000
In-Reply-To: <4ba3b835fb3675ea685390903a082bf8b7f9e955.camel@perches.com>
References: <20190625031726.12173-1-alastair@au1.ibm.com>
 <20190625031726.12173-5-alastair@au1.ibm.com>
 <3340b520a57e00a483eae170be97316c8d18c22c.camel@perches.com>
 <746098160c4ff6527d573d2af23c403b6d4e5b80.camel@d-silva.org>
 <4ba3b835fb3675ea685390903a082bf8b7f9e955.camel@perches.com>
User-Agent: Evolution 3.32.2 (3.32.2-1.fc30) 
MIME-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.6.2
 (mail2.nmnhosting.com [10.0.1.20]); Wed, 26 Jun 2019 11:28:23 +1000 (AEST)
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

On Mon, 2019-06-24 at 22:19 -0700, Joe Perches wrote:
> On Tue, 2019-06-25 at 15:06 +1000, Alastair D'Silva wrote:
> > The change actions Jani's suggestion:
> > https://lkml.org/lkml/2019/6/20/343
> 
> I suggest not changing any of the existing uses of
> hex_dump_to_buffer and only use hex_dump_to_buffer_ext
> when necessary for your extended use cases.
> 
> 

I disagree, adding a wrapper for the benefit of avoiding touching a
handful of call sites that are easily amended would be adding technical
debt.

-- 
Alastair D'Silva           mob: 0423 762 819
skype: alastair_dsilva    
Twitter: @EvilDeece
blog: http://alastair.d-silva.org


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

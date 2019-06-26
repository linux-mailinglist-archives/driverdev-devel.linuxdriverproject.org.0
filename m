Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0540E55D6F
	for <lists+driverdev-devel@lfdr.de>; Wed, 26 Jun 2019 03:28:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A95D78677E;
	Wed, 26 Jun 2019 01:28:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ks6EGb3MwVsQ; Wed, 26 Jun 2019 01:28:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A956886747;
	Wed, 26 Jun 2019 01:28:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1B5841BF2C1
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 01:28:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 16E588670F
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 01:28:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 43gJo-DN2CDk for <devel@linuxdriverproject.org>;
 Wed, 26 Jun 2019 01:28:44 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from ushosting.nmnhosting.com (ushosting.nmnhosting.com
 [66.55.73.32])
 by whitealder.osuosl.org (Postfix) with ESMTP id 65CFC86704
 for <devel@driverdev.osuosl.org>; Wed, 26 Jun 2019 01:28:44 +0000 (UTC)
Received: from mail2.nmnhosting.com (unknown [202.169.106.97])
 by ushosting.nmnhosting.com (Postfix) with ESMTPS id E68172DC0076;
 Tue, 25 Jun 2019 21:28:43 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=d-silva.org;
 s=201810a; t=1561512524;
 bh=8vdGphBYIKXv89awGOAQ/cgWRG22AyeDg2eeDYLZ3zI=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=alSxZcqu57hfIi9j9AhbXS8R6Sp8P9EIyLX38MQJ9PvxVXzIuDLw+GMwM5K31tSbM
 gzdS9k+A1COhdwdvmxUTT7neeouLyzPVXBbbQIUqbYpng9jjLKSTVkUtfCzbM2traV
 66aBsJesrmb2pquAr+ikAnlFtIz2MX8COw6xImMdDzX7cORTSmL/7suBd2fWgHGcSa
 CSgtsbZsT6q7z1xworHDg8t0cQqtep34bRKMyEiFivuEsvS7KvfT0XDE+ir1QbaFpe
 qNJCJvTwUWvEm1B+kFjLaSMS3n+SpewSyAwVWdMioky2aZjNRxFrSlIwEMfnHy7fKu
 37248Myte0LZ3cwEfXQtWD4I3ropVT1011THvyQlNqoj5HYjPxJXzQS6TEePLg55il
 d1e10RdRKAs0H649v7SEHnGTaG5XhEUbgoBfaN+rXX2kxC+uvk3GCCKHYYkcJZAAgv
 0NREGULbA9C+5QStsPe8IqzAuUhhWmKLguptMEYpWMMi4DrZ/q7woDAkIOBtw70S9z
 xBmgxWDEVL3pwhhtGcpR0yZETTuHII506PHFURlIBdSloaX9GFdyV5O/4o4dYbggD2
 FPLHvHF+9fk1N7j7sdJKzKIP2EWISpMCfTv7hDzkRR1480DJuZxLGr/YfvYJtT2cBa
 aQ8Wmv3nDA7FqMwj0k32Ebg8=
Received: from adsilva.ozlabs.ibm.com (static-82-10.transact.net.au
 [122.99.82.10] (may be forged)) (authenticated bits=0)
 by mail2.nmnhosting.com (8.15.2/8.15.2) with ESMTPSA id x5Q1SOP1029666
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NO);
 Wed, 26 Jun 2019 11:28:39 +1000 (AEST)
 (envelope-from alastair@d-silva.org)
Message-ID: <ef3aac0cb37fd7bb421db313e839809fd7649d05.camel@d-silva.org>
Subject: Re: [PATCH v4 5/7] lib/hexdump.c: Allow multiple groups to be
 separated by lines '|'
From: "Alastair D'Silva" <alastair@d-silva.org>
To: Joe Perches <joe@perches.com>
Date: Wed, 26 Jun 2019 11:28:01 +1000
In-Reply-To: <c364c36338d385eba60c523828ad8995c792ae4d.camel@perches.com>
References: <20190625031726.12173-1-alastair@au1.ibm.com>
 <20190625031726.12173-6-alastair@au1.ibm.com>
 <c364c36338d385eba60c523828ad8995c792ae4d.camel@perches.com>
User-Agent: Evolution 3.32.2 (3.32.2-1.fc30) 
MIME-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.6.2
 (mail2.nmnhosting.com [10.0.1.20]); Wed, 26 Jun 2019 11:28:40 +1000 (AEST)
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

On Mon, 2019-06-24 at 22:37 -0700, Joe Perches wrote:
> On Tue, 2019-06-25 at 13:17 +1000, Alastair D'Silva wrote:
> > From: Alastair D'Silva <alastair@d-silva.org>
> > 
> > With the wider display format, it can become hard to identify how
> > many
> > bytes into the line you are looking at.
> > 
> > The patch adds new flags to hex_dump_to_buffer() and
> > print_hex_dump() to
> > print vertical lines to separate every N groups of bytes.
> > 
> > eg.
> > buf:00000000: 454d414e 43415053|4e495f45
> > 00584544  NAMESPAC|E_INDEX.
> > buf:00000010: 00000000 00000002|00000000
> > 00000000  ........|........
> > 
> > Signed-off-by: Alastair D'Silva <alastair@d-silva.org>
> > ---
> >  include/linux/printk.h |  3 +++
> >  lib/hexdump.c          | 59 ++++++++++++++++++++++++++++++++++++
> > ------
> >  2 files changed, 54 insertions(+), 8 deletions(-)
> > 
> > diff --git a/include/linux/printk.h b/include/linux/printk.h
> []
> > @@ -485,6 +485,9 @@ enum {
> >  
> >  #define HEXDUMP_ASCII			BIT(0)
> >  #define HEXDUMP_SUPPRESS_REPEATED	BIT(1)
> > +#define HEXDUMP_2_GRP_LINES		BIT(2)
> > +#define HEXDUMP_4_GRP_LINES		BIT(3)
> > +#define HEXDUMP_8_GRP_LINES		BIT(4)
> 
> These aren't really bits as only one value should be set
> as 8 overrides 4 and 4 overrides 2.

This should be the other way around, as we should be emitting alternate
seperators based on the smallest grouping (2 implies 4 and 8, and 4
implies 8). I'll fix the logic.

I can't come up with a better way to represent these without making the
API more complex, if you have a suggestion, I'm happy to hear it.

> 
> I would also expect this to be a value of 2 in your above
> example, rather than 8.  It's described as groups not bytes.
> 
> The example is showing a what would normally be a space ' '
> separator as a vertical bar '|' every 2nd grouping.
> 

The above example shows a group size of 4 bytes, and
HEXDUMP_2_GRP_LINES set, with 2 groups being 8 bytes.

I'll make that clearer in the commit message.

-- 
Alastair D'Silva           mob: 0423 762 819
skype: alastair_dsilva    
Twitter: @EvilDeece
blog: http://alastair.d-silva.org


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

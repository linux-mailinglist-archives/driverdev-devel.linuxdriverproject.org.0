Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3639D178C5
	for <lists+driverdev-devel@lfdr.de>; Wed,  8 May 2019 13:49:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 67DC787F5D;
	Wed,  8 May 2019 11:49:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eRTGnzwLDHef; Wed,  8 May 2019 11:49:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6FFFB87ED0;
	Wed,  8 May 2019 11:49:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6AA9A1BF29C
 for <devel@linuxdriverproject.org>; Wed,  8 May 2019 11:49:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 63B912E10C
 for <devel@linuxdriverproject.org>; Wed,  8 May 2019 11:49:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O09N+jAAxGNh for <devel@linuxdriverproject.org>;
 Wed,  8 May 2019 11:49:11 +0000 (UTC)
X-Greylist: delayed 00:07:39 by SQLgrey-1.7.6
Received: from ushosting.nmnhosting.com (unknown [66.55.73.32])
 by silver.osuosl.org (Postfix) with ESMTP id 67D68227A3
 for <devel@driverdev.osuosl.org>; Wed,  8 May 2019 11:49:11 +0000 (UTC)
Received: from mail2.nmnhosting.com (unknown [202.169.106.97])
 by ushosting.nmnhosting.com (Postfix) with ESMTPS id DDDBC2DC005C;
 Wed,  8 May 2019 07:41:31 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=d-silva.org;
 s=201810a; t=1557315692;
 bh=qGJ1gft/kRGbomR5Gk2AnhkGNE1jEj5BAJb5oyv/unk=;
 h=From:To:Cc:References:In-Reply-To:Subject:Date:From;
 b=D+zmQJifkhs/X6hPId/5NOett9ofrnDtUcWmjqgDQKc3MmGh9k5veKFfjfUsCtBRf
 FZFf+wE05oyytQb7I5QSxpb8YxDDNMe6ras9l+lOOdI2I4wiVfcvVdJcxhmp074fZd
 eRfG22Mm+p4YPGTk3H20/tVbabqxfxaCBFrcWbKEadAx4wluAml+keUbhh37xxzXH1
 jtnTkpsPpKimyEG7DXFY/jeFQeaJwfUkTK4Y4DMRUEvIV24VAnYN4wKYIXpQo7fIGQ
 VGyU0Ocndb2O+pHLhMLiHTXnhHlfJTLiOr/fkcrymF6eMLuTxDHq2RU1TzLj/TXOk3
 0DHxjm3K4DlaD2QfxJxOwBDRpmGvsUA8eIUifWm1Sn5HQZJb+LlRhYErwP2ZYDV3+C
 49RUeWCn3gF4iQu8ftb0irqDnHSyUrWFqyq4nWWgrsBOv2CSo+ZX1rkDkY6YAan0OZ
 R5UsEzcVLiOBK726gA7kr8p0v149w9/LtDfcs4XWO4JVXsDJSNWwTjckKovyK9ONYa
 5CpWuRo7c7nrXNmuqkuBSzsJddB0icDr3C5q9J7R5hsEiM6ZjPf1kRCxaGMNO/56Lw
 6LX/sDBs5uEivJwatqdQjgbEIoWnyCHietGWGP4y8wVI8SHGxaoZVonCIdFTE8Jl3v
 W7xdnNfZrPNxEU3wwX3/F4u4=
Received: from Hawking (ntp.lan [10.0.1.1]) (authenticated bits=0)
 by mail2.nmnhosting.com (8.15.2/8.15.2) with ESMTPSA id x48BfEeD017421
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Wed, 8 May 2019 21:41:15 +1000 (AEST)
 (envelope-from alastair@d-silva.org)
From: "Alastair D'Silva" <alastair@d-silva.org>
To: "'David Laight'" <David.Laight@ACULAB.COM>,
 "'Alastair D'Silva'" <alastair@au1.ibm.com>
References: <20190508070148.23130-1-alastair@au1.ibm.com>
 <20190508070148.23130-5-alastair@au1.ibm.com>
 <c98a499a4e824bcd824d5ad53d037c67@AcuMS.aculab.com>
In-Reply-To: <c98a499a4e824bcd824d5ad53d037c67@AcuMS.aculab.com>
Subject: RE: [PATCH v2 4/7] lib/hexdump.c: Replace ascii bool in
 hex_dump_to_buffer with flags
Date: Wed, 8 May 2019 21:41:15 +1000
Message-ID: <0a1c01d50592$f90f6f00$eb2e4d00$@d-silva.org>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQGz7QD7bMLLz3XdMyQiMIIzLY+D4AHts+RHAcfZVGymhZij0A==
Content-Language: en-au
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.6.2
 (mail2.nmnhosting.com [10.0.1.20]); Wed, 08 May 2019 21:41:26 +1000 (AEST)
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
Cc: linux-fbdev@vger.kernel.org, 'Stanislaw Gruszka' <sgruszka@redhat.com>,
 'Petr Mladek' <pmladek@suse.com>, 'David Airlie' <airlied@linux.ie>,
 'Joonas Lahtinen' <joonas.lahtinen@linux.intel.com>,
 dri-devel@lists.freedesktop.org, devel@driverdev.osuosl.org,
 linux-scsi@vger.kernel.org, 'Jassi Brar' <jassisinghbrar@gmail.com>,
 ath10k@lists.infradead.org, intel-gfx@lists.freedesktop.org,
 'Dan Carpenter' <dan.carpenter@oracle.com>,
 'Jose Abreu' <Jose.Abreu@synopsys.com>,
 'Tom Lendacky' <thomas.lendacky@amd.com>,
 "'James E.J. Bottomley'" <jejb@linux.ibm.com>,
 'Jani Nikula' <jani.nikula@linux.intel.com>, linux-fsdevel@vger.kernel.org,
 'Steven Rostedt' <rostedt@goodmis.org>,
 'Rodrigo Vivi' <rodrigo.vivi@intel.com>, 'Benson Leung' <bleung@chromium.org>,
 'Kalle Valo' <kvalo@codeaurora.org>, 'Karsten Keil' <isdn@linux-pingi.de>,
 "'Martin K. Petersen'" <martin.petersen@oracle.com>,
 'Greg Kroah-Hartman' <gregkh@linuxfoundation.org>,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 'Sergey Senozhatsky' <sergey.senozhatsky@gmail.com>,
 'Daniel Vetter' <daniel@ffwll.ch>, netdev@vger.kernel.org,
 'Enric Balletbo i Serra' <enric.balletbo@collabora.com>,
 'Andrew Morton' <akpm@linux-foundation.org>,
 "'David S. Miller'" <davem@davemloft.net>,
 'Alexander Viro' <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

> -----Original Message-----
> From: David Laight <David.Laight@ACULAB.COM>
> Sent: Wednesday, 8 May 2019 7:20 PM
> To: 'Alastair D'Silva' <alastair@au1.ibm.com>; alastair@d-silva.org
> Cc: Jani Nikula <jani.nikula@linux.intel.com>; Joonas Lahtinen
> <joonas.lahtinen@linux.intel.com>; Rodrigo Vivi <rodrigo.vivi@intel.com>;
> David Airlie <airlied@linux.ie>; Daniel Vetter <daniel@ffwll.ch>; Dan
> Carpenter <dan.carpenter@oracle.com>; Karsten Keil <isdn@linux-
> pingi.de>; Jassi Brar <jassisinghbrar@gmail.com>; Tom Lendacky
> <thomas.lendacky@amd.com>; David S. Miller <davem@davemloft.net>;
> Jose Abreu <Jose.Abreu@synopsys.com>; Kalle Valo
> <kvalo@codeaurora.org>; Stanislaw Gruszka <sgruszka@redhat.com>;
> Benson Leung <bleung@chromium.org>; Enric Balletbo i Serra
> <enric.balletbo@collabora.com>; James E.J. Bottomley
> <jejb@linux.ibm.com>; Martin K. Petersen <martin.petersen@oracle.com>;
> Greg Kroah-Hartman <gregkh@linuxfoundation.org>; Alexander Viro
> <viro@zeniv.linux.org.uk>; Petr Mladek <pmladek@suse.com>; Sergey
> Senozhatsky <sergey.senozhatsky@gmail.com>; Steven Rostedt
> <rostedt@goodmis.org>; Andrew Morton <akpm@linux-foundation.org>;
> intel-gfx@lists.freedesktop.org; dri-devel@lists.freedesktop.org; linux-
> kernel@vger.kernel.org; netdev@vger.kernel.org;
> ath10k@lists.infradead.org; linux-wireless@vger.kernel.org; linux-
> scsi@vger.kernel.org; linux-fbdev@vger.kernel.org;
> devel@driverdev.osuosl.org; linux-fsdevel@vger.kernel.org
> Subject: RE: [PATCH v2 4/7] lib/hexdump.c: Replace ascii bool in
> hex_dump_to_buffer with flags
> 
> From: Alastair D'Silva
> > Sent: 08 May 2019 08:02
> > To: alastair@d-silva.org
> ...
> > --- a/include/linux/printk.h
> > +++ b/include/linux/printk.h
> > @@ -480,13 +480,13 @@ enum {
> >  	DUMP_PREFIX_OFFSET
> >  };
> >
> > -extern int hex_dump_to_buffer(const void *buf, size_t len, int rowsize,
> > -			      int groupsize, char *linebuf, size_t linebuflen,
> > -			      bool ascii);
> > -
> >  #define HEXDUMP_ASCII			(1 << 0)
> >  #define HEXDUMP_SUPPRESS_REPEATED	(1 << 1)
> 
> These ought to be BIT(0) and BIT(1)

Thanks, I'll address that.

> 
> > +extern int hex_dump_to_buffer(const void *buf, size_t len, int rowsize,
> > +			      int groupsize, char *linebuf, size_t linebuflen,
> > +			      u64 flags);
> 
> Why 'u64 flags' ?
> How many flags do you envisage ??
> Your HEXDUMP_ASCII (etc) flags are currently signed values and might get
> sign extended causing grief.
> 'unsigned int flags' is probably sufficient.

I was trying to avoid having to change the prototype again in the future, but it's not a big deal, if enough work goes in to require more than 32 bits, it can be updated at that point.

> 
> I've not really looked at the code, it seems OTT in places though.

I'll wait for more concrete criticisms here, this it a bit too vague to take any action on.

> If someone copies it somewhere where the performance matters (I've user
> space code which is dominated by its tracing!) then you don't want all the
> function calls and conditionals even if you want some of the functionality.

Calling hexdump (even in it's unaltered form) in performance critical code is always going to suck. As you mentioned before, it's all based around printf. A performance conscious user would be better off building their code around hex_asc_hi/lo instead (see lib/vsprintf.c:hex_string).

-- 
Alastair D'Silva           mob: 0423 762 819
skype: alastair_dsilva     msn: alastair@d-silva.org
blog: http://alastair.d-silva.org    Twitter: @EvilDeece



_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

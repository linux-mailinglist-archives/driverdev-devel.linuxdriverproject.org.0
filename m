Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3539C522CD
	for <lists+driverdev-devel@lfdr.de>; Tue, 25 Jun 2019 07:27:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 312FA855D2;
	Tue, 25 Jun 2019 05:27:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dkfm3c+wnPcq; Tue, 25 Jun 2019 05:27:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C155D84F57;
	Tue, 25 Jun 2019 05:27:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DDF511BF342
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2019 05:27:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id DAA5220501
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2019 05:27:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fjUpL9M2Qsme for <devel@linuxdriverproject.org>;
 Tue, 25 Jun 2019 05:27:07 +0000 (UTC)
X-Greylist: delayed 00:19:23 by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0028.hostedemail.com
 [216.40.44.28])
 by silver.osuosl.org (Postfix) with ESMTPS id 0A89D203A9
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2019 05:27:06 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave02.hostedemail.com (Postfix) with ESMTP id 2D2401800FB73
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2019 05:17:51 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay03.hostedemail.com (Postfix) with ESMTP id 9E83B837F24C;
 Tue, 25 Jun 2019 05:17:48 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 
X-HE-Tag: spade50_7d8321185044f
X-Filterd-Recvd-Size: 3418
Received: from XPS-9350 (cpe-23-242-196-136.socal.res.rr.com [23.242.196.136])
 (Authenticated sender: joe@perches.com)
 by omf16.hostedemail.com (Postfix) with ESMTPA;
 Tue, 25 Jun 2019 05:17:42 +0000 (UTC)
Message-ID: <45177fdaff2bf2a2538e34dab175488d2ba9a46c.camel@perches.com>
Subject: Re: [PATCH v4 4/7] lib/hexdump.c: Replace ascii bool in
 hex_dump_to_buffer with flags
From: Joe Perches <joe@perches.com>
To: Alastair D'Silva <alastair@d-silva.org>
Date: Mon, 24 Jun 2019 22:17:40 -0700
In-Reply-To: <746098160c4ff6527d573d2af23c403b6d4e5b80.camel@d-silva.org>
References: <20190625031726.12173-1-alastair@au1.ibm.com>
 <20190625031726.12173-5-alastair@au1.ibm.com>
 <3340b520a57e00a483eae170be97316c8d18c22c.camel@perches.com>
 <746098160c4ff6527d573d2af23c403b6d4e5b80.camel@d-silva.org>
User-Agent: Evolution 3.30.5-0ubuntu0.18.10.1 
MIME-Version: 1.0
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

On Tue, 2019-06-25 at 15:06 +1000, Alastair D'Silva wrote:
> On Mon, 2019-06-24 at 22:01 -0700, Joe Perches wrote:
> > On Tue, 2019-06-25 at 13:17 +1000, Alastair D'Silva wrote:
> > > From: Alastair D'Silva <alastair@d-silva.org>
> > > 
> > > In order to support additional features, rename hex_dump_to_buffer
> > > to
> > > hex_dump_to_buffer_ext, and replace the ascii bool parameter with
> > > flags.
> > []
> > > diff --git a/drivers/gpu/drm/i915/intel_engine_cs.c
> > > b/drivers/gpu/drm/i915/intel_engine_cs.c
> > []
> > > @@ -1338,9 +1338,8 @@ static void hexdump(struct drm_printer *m,
> > > const void *buf, size_t len)
> > >  		}
> > >  
> > >  		WARN_ON_ONCE(hex_dump_to_buffer(buf + pos, len - pos,
> > > -						rowsize, sizeof(u32),
> > > -						line, sizeof(line),
> > > -						false) >=
> > > sizeof(line));
> > > +						rowsize, sizeof(u32),
> > > line,
> > > +						sizeof(line)) >=
> > > sizeof(line));
> > 
> > Huh?  Why do this?
[]
> The change actions Jani's suggestion:
> https://lkml.org/lkml/2019/6/20/343

I think you need to read this change again.


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

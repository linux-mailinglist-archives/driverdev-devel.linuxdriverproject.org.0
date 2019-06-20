Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 670F64C52E
	for <lists+driverdev-devel@lfdr.de>; Thu, 20 Jun 2019 04:00:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A5A4285F7F;
	Thu, 20 Jun 2019 02:00:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qvnQ1_MFCP1I; Thu, 20 Jun 2019 02:00:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CF69785F61;
	Thu, 20 Jun 2019 02:00:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 018F91BF2FB
 for <devel@linuxdriverproject.org>; Thu, 20 Jun 2019 02:00:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id F272487BB6
 for <devel@linuxdriverproject.org>; Thu, 20 Jun 2019 02:00:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HmhdLdsicydW for <devel@linuxdriverproject.org>;
 Thu, 20 Jun 2019 02:00:34 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0031.hostedemail.com
 [216.40.44.31])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 94A8487B47
 for <devel@driverdev.osuosl.org>; Thu, 20 Jun 2019 02:00:34 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave04.hostedemail.com (Postfix) with ESMTP id 2640F1800CE17
 for <devel@driverdev.osuosl.org>; Thu, 20 Jun 2019 02:00:33 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay01.hostedemail.com (Postfix) with ESMTP id 61216100E86C2;
 Thu, 20 Jun 2019 02:00:30 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 
X-HE-Tag: tent82_3890fedb2856
X-Filterd-Recvd-Size: 4880
Received: from XPS-9350.home (cpe-23-242-196-136.socal.res.rr.com
 [23.242.196.136]) (Authenticated sender: joe@perches.com)
 by omf13.hostedemail.com (Postfix) with ESMTPA;
 Thu, 20 Jun 2019 02:00:24 +0000 (UTC)
Message-ID: <fcf57339aea60fb1744cea2a2593656c728c4ec4.camel@perches.com>
Subject: Re: [PATCH v3 0/7] Hexdump Enhancements
From: Joe Perches <joe@perches.com>
To: Alastair D'Silva <alastair@d-silva.org>
Date: Wed, 19 Jun 2019 19:00:22 -0700
In-Reply-To: <9456ca2a4ae827635bb6d864e5095a9e51f2ac45.camel@d-silva.org>
References: <20190617020430.8708-1-alastair@au1.ibm.com>
 <9a000734375c0801fc16b71f4be1235f9b857772.camel@perches.com>
 <c68cb819257f251cbb66f8998a95c31cebe2d72e.camel@d-silva.org>
 <d8316be322f33ea67640ff83f2248fe433078407.camel@perches.com>
 <9456ca2a4ae827635bb6d864e5095a9e51f2ac45.camel@d-silva.org>
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

On Thu, 2019-06-20 at 11:14 +1000, Alastair D'Silva wrote:
> On Wed, 2019-06-19 at 17:35 -0700, Joe Perches wrote:
> > On Thu, 2019-06-20 at 09:15 +1000, Alastair D'Silva wrote:
> > > On Wed, 2019-06-19 at 09:31 -0700, Joe Perches wrote:
> > > > On Mon, 2019-06-17 at 12:04 +1000, Alastair D'Silva wrote:
> > > > > From: Alastair D'Silva <alastair@d-silva.org>
> > > > > 
> > > > > Apologies for the large CC list, it's a heads up for those
> > > > > responsible
> > > > > for subsystems where a prototype change in generic code causes
> > > > > a
> > > > > change
> > > > > in those subsystems.
> > > > > 
> > > > > This series enhances hexdump.
> > > > 
> > > > Still not a fan of these patches.
> > > 
> > > I'm afraid there's not too much action I can take on that, I'm
> > > happy to
> > > address specific issues though.
> > > 
> > > > > These improve the readability of the dumped data in certain
> > > > > situations
> > > > > (eg. wide terminals are available, many lines of empty bytes
> > > > > exist,
> > > > > etc).
> > 
> > I think it's generally overkill for the desired uses.
> 
> I understand where you're coming from, however, these patches make it a
> lot easier to work with large chucks of binary data. I think it makes
> more sense to have these patches upstream, even though committed code
> may not necessarily have all the features enabled, as it means that
> devs won't have to apply out-of-tree patches during development to make
> larger dumps manageable.
> 
> > > > Changing hexdump's last argument from bool to int is odd.
> > > > 
> > > 
> > > Think of it as replacing a single boolean with many booleans.
> > 
> > I understand it.  It's odd.
> > 
> > I would rather not have a mixture of true, false, and apparently
> > random collections of bitfields like 0xd or 0b1011 or their
> > equivalent or'd defines.
> > 
> 
> Where's the mixture? What would you propose instead?

create a hex_dump_to_buffer_ext with a new argument
and a new static inline for the old hex_dump_to_buffer
without modifying the argument list that calls
hex_dump_to_buffer with whatever added argument content
you need.

Something like:

static inline
int hex_dump_to_buffer(const void *buf, size_t len, int rowsize,
		       int groupsize, char *linebuf, size_t linebuflen,
		       bool ascii)
{
	return hex_dump_to_buffer_ext(buf, len, rowsize, groupsize,
				      linebuf, linebuflen, ascii, 0);
}

and remove EXPORT_SYMBOL(hex_dump_to_buffer)
				      


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

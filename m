Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 505534CC36
	for <lists+driverdev-devel@lfdr.de>; Thu, 20 Jun 2019 12:47:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id AA6E721F65;
	Thu, 20 Jun 2019 10:47:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m3RovM-9M4uT; Thu, 20 Jun 2019 10:47:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C7ADA21561;
	Thu, 20 Jun 2019 10:47:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 708791BF964
 for <devel@linuxdriverproject.org>; Thu, 20 Jun 2019 10:47:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6D43882DDF
 for <devel@linuxdriverproject.org>; Thu, 20 Jun 2019 10:47:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zi66HaxOz10e for <devel@linuxdriverproject.org>;
 Thu, 20 Jun 2019 10:47:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 75383823FA
 for <devel@driverdev.osuosl.org>; Thu, 20 Jun 2019 10:47:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Jun 2019 03:47:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,396,1557212400"; d="scan'208";a="181838324"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 20 Jun 2019 03:47:41 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Joe Perches <joe@perches.com>, Alastair D'Silva <alastair@d-silva.org>
Subject: Re: [PATCH v3 0/7] Hexdump Enhancements
In-Reply-To: <fcf57339aea60fb1744cea2a2593656c728c4ec4.camel@perches.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20190617020430.8708-1-alastair@au1.ibm.com>
 <9a000734375c0801fc16b71f4be1235f9b857772.camel@perches.com>
 <c68cb819257f251cbb66f8998a95c31cebe2d72e.camel@d-silva.org>
 <d8316be322f33ea67640ff83f2248fe433078407.camel@perches.com>
 <9456ca2a4ae827635bb6d864e5095a9e51f2ac45.camel@d-silva.org>
 <fcf57339aea60fb1744cea2a2593656c728c4ec4.camel@perches.com>
Date: Thu, 20 Jun 2019 13:50:33 +0300
Message-ID: <87sgs4sf7q.fsf@intel.com>
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
 Steven Rostedt <rostedt@goodmis.org>, linux-fsdevel@vger.kernel.org,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Benson Leung <bleung@chromium.org>,
 Kalle Valo <kvalo@codeaurora.org>, Karsten Keil <isdn@linux-pingi.de>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 David Laight <David.Laight@ACULAB.COM>, Daniel Vetter <daniel@ffwll.ch>,
 netdev@vger.kernel.org, Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, 19 Jun 2019, Joe Perches <joe@perches.com> wrote:
> On Thu, 2019-06-20 at 11:14 +1000, Alastair D'Silva wrote:
>> On Wed, 2019-06-19 at 17:35 -0700, Joe Perches wrote:
>> > On Thu, 2019-06-20 at 09:15 +1000, Alastair D'Silva wrote:
>> > > On Wed, 2019-06-19 at 09:31 -0700, Joe Perches wrote:
>> > > > On Mon, 2019-06-17 at 12:04 +1000, Alastair D'Silva wrote:
>> > > > > From: Alastair D'Silva <alastair@d-silva.org>
>> > > > > 
>> > > > > Apologies for the large CC list, it's a heads up for those
>> > > > > responsible
>> > > > > for subsystems where a prototype change in generic code causes
>> > > > > a
>> > > > > change
>> > > > > in those subsystems.
>> > > > > 
>> > > > > This series enhances hexdump.
>> > > > 
>> > > > Still not a fan of these patches.
>> > > 
>> > > I'm afraid there's not too much action I can take on that, I'm
>> > > happy to
>> > > address specific issues though.
>> > > 
>> > > > > These improve the readability of the dumped data in certain
>> > > > > situations
>> > > > > (eg. wide terminals are available, many lines of empty bytes
>> > > > > exist,
>> > > > > etc).
>> > 
>> > I think it's generally overkill for the desired uses.
>> 
>> I understand where you're coming from, however, these patches make it a
>> lot easier to work with large chucks of binary data. I think it makes
>> more sense to have these patches upstream, even though committed code
>> may not necessarily have all the features enabled, as it means that
>> devs won't have to apply out-of-tree patches during development to make
>> larger dumps manageable.
>> 
>> > > > Changing hexdump's last argument from bool to int is odd.
>> > > > 
>> > > 
>> > > Think of it as replacing a single boolean with many booleans.
>> > 
>> > I understand it.  It's odd.
>> > 
>> > I would rather not have a mixture of true, false, and apparently
>> > random collections of bitfields like 0xd or 0b1011 or their
>> > equivalent or'd defines.
>> > 
>> 
>> Where's the mixture? What would you propose instead?
>
> create a hex_dump_to_buffer_ext with a new argument
> and a new static inline for the old hex_dump_to_buffer
> without modifying the argument list that calls
> hex_dump_to_buffer with whatever added argument content
> you need.
>
> Something like:
>
> static inline
> int hex_dump_to_buffer(const void *buf, size_t len, int rowsize,
> 		       int groupsize, char *linebuf, size_t linebuflen,
> 		       bool ascii)
> {
> 	return hex_dump_to_buffer_ext(buf, len, rowsize, groupsize,
> 				      linebuf, linebuflen, ascii, 0);
> }
>
> and remove EXPORT_SYMBOL(hex_dump_to_buffer)

If you decide to do something like this, I'd actually suggest you drop
the bool ascii parameter from hex_dump_to_buffer() altogether, and
replace the callers that do require ascii with
hex_dump_to_buffer_ext(..., HEXDUMP_ASCII). Even if that also requires
touching all callers.

But no strong opinions, really.

BR,
Jani.

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

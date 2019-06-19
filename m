Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 94DDE4BE6F
	for <lists+driverdev-devel@lfdr.de>; Wed, 19 Jun 2019 18:41:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0935586749;
	Wed, 19 Jun 2019 16:41:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id d0FV5dNr3csh; Wed, 19 Jun 2019 16:41:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3C41B81433;
	Wed, 19 Jun 2019 16:41:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 58EAD1BF355
 for <devel@linuxdriverproject.org>; Wed, 19 Jun 2019 16:41:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5368D2036B
 for <devel@linuxdriverproject.org>; Wed, 19 Jun 2019 16:41:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tqV80KXe4sQa for <devel@linuxdriverproject.org>;
 Wed, 19 Jun 2019 16:41:11 +0000 (UTC)
X-Greylist: delayed 21:59:13 by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0250.hostedemail.com
 [216.40.44.250])
 by silver.osuosl.org (Postfix) with ESMTPS id F12B620353
 for <devel@driverdev.osuosl.org>; Wed, 19 Jun 2019 16:41:10 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave02.hostedemail.com (Postfix) with ESMTP id F180F1800BC53
 for <devel@driverdev.osuosl.org>; Wed, 19 Jun 2019 16:31:34 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay05.hostedemail.com (Postfix) with ESMTP id D3FFA1801A0B4;
 Wed, 19 Jun 2019 16:31:31 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 
X-HE-Tag: cakes27_80e37c98d9d58
X-Filterd-Recvd-Size: 3106
Received: from XPS-9350 (cpe-23-242-196-136.socal.res.rr.com [23.242.196.136])
 (Authenticated sender: joe@perches.com)
 by omf09.hostedemail.com (Postfix) with ESMTPA;
 Wed, 19 Jun 2019 16:31:25 +0000 (UTC)
Message-ID: <9a000734375c0801fc16b71f4be1235f9b857772.camel@perches.com>
Subject: Re: [PATCH v3 0/7] Hexdump Enhancements
From: Joe Perches <joe@perches.com>
To: Alastair D'Silva <alastair@au1.ibm.com>, alastair@d-silva.org
Date: Wed, 19 Jun 2019 09:31:24 -0700
In-Reply-To: <20190617020430.8708-1-alastair@au1.ibm.com>
References: <20190617020430.8708-1-alastair@au1.ibm.com>
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

On Mon, 2019-06-17 at 12:04 +1000, Alastair D'Silva wrote:
> From: Alastair D'Silva <alastair@d-silva.org>
> 
> Apologies for the large CC list, it's a heads up for those responsible
> for subsystems where a prototype change in generic code causes a change
> in those subsystems.
> 
> This series enhances hexdump.

Still not a fan of these patches.

> These improve the readability of the dumped data in certain situations
> (eg. wide terminals are available, many lines of empty bytes exist, etc).

Changing hexdump's last argument from bool to int is odd.

Perhaps a new function should be added instead of changing
the existing hexdump.

> The default behaviour of hexdump is unchanged, however, the prototype
> for hex_dump_to_buffer() has changed, and print_hex_dump() has been
> renamed to print_hex_dump_ext(), with a wrapper replacing it for
> compatibility with existing code, which would have been too invasive to
> change.
> 
> Hexdump selftests have be run & confirmed passed.


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

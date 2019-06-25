Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id ECE6F522E8
	for <lists+driverdev-devel@lfdr.de>; Tue, 25 Jun 2019 07:37:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7E06285C5E;
	Tue, 25 Jun 2019 05:37:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s-o3xZfpuCps; Tue, 25 Jun 2019 05:37:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E8AEB85C67;
	Tue, 25 Jun 2019 05:37:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D530B1BF342
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2019 05:37:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D0A3820501
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2019 05:37:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2BBceJfMOBMg for <devel@linuxdriverproject.org>;
 Tue, 25 Jun 2019 05:37:44 +0000 (UTC)
X-Greylist: delayed 00:19:38 by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0121.hostedemail.com
 [216.40.44.121])
 by silver.osuosl.org (Postfix) with ESMTPS id C3FD620500
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2019 05:37:44 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave04.hostedemail.com (Postfix) with ESMTP id D79BB1801665D
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2019 05:19:12 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay01.hostedemail.com (Postfix) with ESMTP id 694D7100E86C1;
 Tue, 25 Jun 2019 05:19:10 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 
X-HE-Tag: crown72_8991fd23cb832
X-Filterd-Recvd-Size: 2612
Received: from XPS-9350.home (cpe-23-242-196-136.socal.res.rr.com
 [23.242.196.136]) (Authenticated sender: joe@perches.com)
 by omf04.hostedemail.com (Postfix) with ESMTPA;
 Tue, 25 Jun 2019 05:19:05 +0000 (UTC)
Message-ID: <4ba3b835fb3675ea685390903a082bf8b7f9e955.camel@perches.com>
Subject: Re: [PATCH v4 4/7] lib/hexdump.c: Replace ascii bool in
 hex_dump_to_buffer with flags
From: Joe Perches <joe@perches.com>
To: Alastair D'Silva <alastair@d-silva.org>
Date: Mon, 24 Jun 2019 22:19:03 -0700
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
> The change actions Jani's suggestion:
> https://lkml.org/lkml/2019/6/20/343

I suggest not changing any of the existing uses of
hex_dump_to_buffer and only use hex_dump_to_buffer_ext
when necessary for your extended use cases.



_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

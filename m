Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 023BA1DE307
	for <lists+driverdev-devel@lfdr.de>; Fri, 22 May 2020 11:27:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D4113258C4;
	Fri, 22 May 2020 09:27:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m150nq2x-fZw; Fri, 22 May 2020 09:27:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 57EF420458;
	Fri, 22 May 2020 09:27:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1A3771BF370
 for <devel@linuxdriverproject.org>; Fri, 22 May 2020 09:27:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1361D894A2
 for <devel@linuxdriverproject.org>; Fri, 22 May 2020 09:27:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9LxF629+PUel for <devel@linuxdriverproject.org>;
 Fri, 22 May 2020 09:27:27 +0000 (UTC)
X-Greylist: delayed 00:05:33 by SQLgrey-1.7.6
Received: from hera.aquilenet.fr (hera.aquilenet.fr [185.233.100.1])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 42876894A0
 for <devel@driverdev.osuosl.org>; Fri, 22 May 2020 09:27:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id 1F7462D2B;
 Fri, 22 May 2020 11:21:50 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OYOLJKbB0yKe; Fri, 22 May 2020 11:21:48 +0200 (CEST)
Received: from function (lfbn-bor-1-797-11.w86-234.abo.wanadoo.fr
 [86.234.239.11])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id 3DEC82C0C;
 Fri, 22 May 2020 11:21:48 +0200 (CEST)
Received: from samy by function with local (Exim 4.93)
 (envelope-from <samuel.thibault@ens-lyon.org>)
 id 1jc3sA-00GDlb-Nu; Fri, 22 May 2020 11:21:46 +0200
Date: Fri, 22 May 2020 11:21:46 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: MugilRaj <dmugil2000@gmail.com>
Subject: Re: [PATCH] taging: speakup: remove volatile
Message-ID: <20200522092146.6ijoma4re7ijai7a@function>
Mail-Followup-To: Samuel Thibault <samuel.thibault@ens-lyon.org>,
 MugilRaj <dmugil2000@gmail.com>,
 William Hubbs <w.d.hubbs@gmail.com>,
 Chris Brannon <chris@the-brannons.com>,
 Kirk Reiser <kirk@reisers.ca>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 speakup@linux-speakup.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
References: <1590138989-6091-1-git-send-email-dmugil2000@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1590138989-6091-1-git-send-email-dmugil2000@gmail.com>
Organization: I am not organized
User-Agent: NeoMutt/20170609 (1.8.3)
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
Cc: devel@driverdev.osuosl.org, Kirk Reiser <kirk@reisers.ca>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, speakup@linux-speakup.org,
 linux-kernel@vger.kernel.org, Chris Brannon <chris@the-brannons.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello,

MugilRaj, le ven. 22 mai 2020 14:46:28 +0530, a ecrit:
> fix checkpatch.pl warning, which is Use of volatile is usually wrong: see
> Documentation/process/volatile-considered-harmful.rst

Yes, but the proper fix is usually not to just remove the volatile
qualifier, which will not fix anything and potentially break things.

Fixing this requires really understanding what is at stake here, between
the read_buff_add function and the use of synth_full(). That goes
through interrupt handlers, tty disciplines, and the actual behavior
expected by speakup. Not a simple task, henceforth :)

> Signed-off-by: MugilRaj <dmugil2000@gmail.com>
> ---
>  drivers/staging/speakup/speakup_decext.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/speakup/speakup_decext.c b/drivers/staging/speakup/speakup_decext.c
> index ddbb7e9..22baaeb 100644
> --- a/drivers/staging/speakup/speakup_decext.c
> +++ b/drivers/staging/speakup/speakup_decext.c
> @@ -21,7 +21,7 @@
>  #define SYNTH_CLEAR 0x03
>  #define PROCSPEECH 0x0b
>  
> -static volatile unsigned char last_char;
> +static unsigned char last_char;
>  
>  static void read_buff_add(u_char ch)
>  {
> -- 
> 2.7.4
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D08D296D32
	for <lists+driverdev-devel@lfdr.de>; Fri, 23 Oct 2020 12:57:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 752A08746E;
	Fri, 23 Oct 2020 10:57:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8iY7r-eL3J4O; Fri, 23 Oct 2020 10:57:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3239787405;
	Fri, 23 Oct 2020 10:57:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 27FE21BF3FC
 for <devel@linuxdriverproject.org>; Fri, 23 Oct 2020 10:57:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 21E5087247
 for <devel@linuxdriverproject.org>; Fri, 23 Oct 2020 10:57:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id c1Tb-ubRRPEN for <devel@linuxdriverproject.org>;
 Fri, 23 Oct 2020 10:57:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail2-relais-roc.national.inria.fr
 (mail2-relais-roc.national.inria.fr [192.134.164.83])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 93D4C86F1B
 for <devel@driverdev.osuosl.org>; Fri, 23 Oct 2020 10:57:52 +0000 (UTC)
X-IronPort-AV: E=Sophos;i="5.77,408,1596492000"; d="scan'208";a="474021391"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
 by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Oct 2020 12:57:50 +0200
Date: Fri, 23 Oct 2020 12:57:50 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Elena Afanasova <eafanasova@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging/rtl8712: replace (precvframe
 == NULL) with (!precvframe)
In-Reply-To: <20201023105109.5905-1-eafanasova@gmail.com>
Message-ID: <alpine.DEB.2.22.394.2010231255220.2707@hadrien>
References: <20201023105109.5905-1-eafanasova@gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



On Fri, 23 Oct 2020, Elena Afanasova wrote:

> Correct the code style for comparison to NULL. Reported by checkpatch.pl.

I have the impression that the subject line is too detailed, and the log
message is not detailed enough.  The subject line should just orient the
reader, so they can decide whether they want to look at the patch in more
detail.  The log message should say what you want to do and why.  In both
cases, mentioning the variable names doesn't really seem necessary.

Again, the part of the subject line to the left of the : is not correct.
Use git log --oneline on this file to see what others have done.

julia

>
> Signed-off-by: Elena Afanasova <eafanasova@gmail.com>
> ---
>  drivers/staging/rtl8712/rtl871x_recv.h | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/staging/rtl8712/rtl871x_recv.h b/drivers/staging/rtl8712/rtl871x_recv.h
> index e83c256e1474..ea1aad4a5561 100644
> --- a/drivers/staging/rtl8712/rtl871x_recv.h
> +++ b/drivers/staging/rtl8712/rtl871x_recv.h
> @@ -136,7 +136,7 @@ int recv_func(struct _adapter *padapter, void *pcontext);
>  static inline u8 *get_rxmem(union recv_frame *precvframe)
>  {
>  	/* always return rx_head... */
> -	if (precvframe == NULL)
> +	if (!precvframe)
>  		return NULL;
>  	return precvframe->u.hdr.rx_head;
>  }
> @@ -144,7 +144,7 @@ static inline u8 *get_rxmem(union recv_frame *precvframe)
>  static inline u8 *get_recvframe_data(union recv_frame *precvframe)
>  {
>  	/* always return rx_data */
> -	if (precvframe == NULL)
> +	if (!precvframe)
>  		return NULL;
>  	return precvframe->u.hdr.rx_data;
>  }
> @@ -154,7 +154,7 @@ static inline u8 *recvframe_pull(union recv_frame *precvframe, sint sz)
>  	/* used for extract sz bytes from rx_data, update rx_data and return
>  	 * the updated rx_data to the caller
>  	 */
> -	if (precvframe == NULL)
> +	if (!precvframe)
>  		return NULL;
>  	precvframe->u.hdr.rx_data += sz;
>  	if (precvframe->u.hdr.rx_data > precvframe->u.hdr.rx_tail) {
> @@ -171,7 +171,7 @@ static inline u8 *recvframe_put(union recv_frame *precvframe, sint sz)
>  	 * return the updated rx_tail to the caller
>  	 * after putting, rx_tail must be still larger than rx_end.
>  	 */
> -	if (precvframe == NULL)
> +	if (!precvframe)
>  		return NULL;
>  	precvframe->u.hdr.rx_tail += sz;
>  	if (precvframe->u.hdr.rx_tail > precvframe->u.hdr.rx_end) {
> @@ -189,7 +189,7 @@ static inline u8 *recvframe_pull_tail(union recv_frame *precvframe, sint sz)
>  	 * updated rx_end to the caller
>  	 * after pulling, rx_end must be still larger than rx_data.
>  	 */
> -	if (precvframe == NULL)
> +	if (!precvframe)
>  		return NULL;
>  	precvframe->u.hdr.rx_tail -= sz;
>  	if (precvframe->u.hdr.rx_tail < precvframe->u.hdr.rx_data) {
> --
> 2.25.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20201023105109.5905-1-eafanasova%40gmail.com.
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

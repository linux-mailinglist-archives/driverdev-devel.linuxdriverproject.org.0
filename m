Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A1FA345F50
	for <lists+driverdev-devel@lfdr.de>; Tue, 23 Mar 2021 14:16:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3831E404D4;
	Tue, 23 Mar 2021 13:16:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RgR-K9ZrRtSK; Tue, 23 Mar 2021 13:16:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DE417404C0;
	Tue, 23 Mar 2021 13:16:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 91B141BF331
 for <devel@linuxdriverproject.org>; Tue, 23 Mar 2021 13:16:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8025C83EB3
 for <devel@linuxdriverproject.org>; Tue, 23 Mar 2021 13:16:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QfIGJuNgx-Ev for <devel@linuxdriverproject.org>;
 Tue, 23 Mar 2021 13:16:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D7C7683EAE
 for <devel@driverdev.osuosl.org>; Tue, 23 Mar 2021 13:16:19 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id CD84561990;
 Tue, 23 Mar 2021 13:16:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1616505379;
 bh=Cj5IOH7chrcZeUM/Ve74t3Qs1c93JnmkzNVeGi2sh6c=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=QQcBRhqvQgRA28Ir5zzpvQCz+MxRHBDR0+75BeeUG+lae6YjrXQAB9WZgn5t0lV0m
 h/QBfXOkDbrlaveBAIo2aCz//Jvhq3tautTV5ymZV9IeCNxLECYlUQ4VcCbhJyVb0B
 G9v03RwNQ+A1ixuHl3ThUlbF5Tf5tfGeN2wDgvhM3iXP7LqiITZmWxInn5rP3EJ3xL
 hMdyGi1UanMpl7qJ2PSweVR6PpYkqdDJ6qhAbd3aHWJNIODeYMarsUgWgCMHipHcHo
 LwYAjp0f5uvJZH7phycufFOdVYhGE4VLzylVgbezym8NpYUkIU299j/6B1ghgP0pI3
 wqY2qMDq89S2w==
Date: Tue, 23 Mar 2021 14:16:14 +0100
From: Mauro Carvalho Chehab <mchehab@kernel.org>
To: Philipp Gerlesberger <Philipp.Gerlesberger@fau.de>
Subject: Re: [PATCH v2 12/12] media: atomisp: Fix LOGICAL_CONTINUATIONS
Message-ID: <20210323141614.6fcb195b@coco.lan>
In-Reply-To: <20201214110156.6152-13-Philipp.Gerlesberger@fau.de>
References: <20201214110156.6152-1-Philipp.Gerlesberger@fau.de>
 <20201214110156.6152-13-Philipp.Gerlesberger@fau.de>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-redhat-linux-gnu)
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
Cc: devel@driverdev.osuosl.org, linux-kernel@i4.cs.fau.de,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 ij72uhux@stud.informatik.uni-erlangen.de, sakari.ailus@linux.intel.com,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Em Mon, 14 Dec 2020 12:01:56 +0100
Philipp Gerlesberger <Philipp.Gerlesberger@fau.de> escreveu:

> Logical continuations should be on the previous line
> 
> Co-developed-by: Andrey Khlopkov <ij72uhux@stud.informatik.uni-erlangen.de>
> Signed-off-by: Andrey Khlopkov <ij72uhux@stud.informatik.uni-erlangen.de>
> Signed-off-by: Philipp Gerlesberger <Philipp.Gerlesberger@fau.de>
> ---
>  drivers/staging/media/atomisp/pci/runtime/queue/src/queue.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/media/atomisp/pci/runtime/queue/src/queue.c b/drivers/staging/media/atomisp/pci/runtime/queue/src/queue.c
> index 2f1c2df59f71..7d44070c7114 100644
> --- a/drivers/staging/media/atomisp/pci/runtime/queue/src/queue.c
> +++ b/drivers/staging/media/atomisp/pci/runtime/queue/src/queue.c
> @@ -24,8 +24,8 @@
>   *****************************************************************************/
>  int ia_css_queue_local_init(ia_css_queue_t *qhandle, ia_css_queue_local_t *desc)
>  {
> -	if (NULL == qhandle || NULL == desc
> -	    || NULL == desc->cb_elems || NULL == desc->cb_desc) {
> +	if (NULL == qhandle || NULL == desc ||
> +	    NULL == desc->cb_elems || NULL == desc->cb_desc) {

Nah, there are coding style issues here... we usually do:

	if (foo == CONSTANT)

instead of:

	if (CONSTANT == foo)

Also, we usually simplify checks for null. So, the above should
be, instead, just:

	if (!qhandle || !desc || !desc->cb_elements || !desc->cb_desc)


>  		/* Invalid parameters, return error*/
>  		return -EINVAL;
>  	}



Thanks,
Mauro
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

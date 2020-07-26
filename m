Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 382C022DDC6
	for <lists+driverdev-devel@lfdr.de>; Sun, 26 Jul 2020 11:42:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A6C922155C;
	Sun, 26 Jul 2020 09:42:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ja+cad5JtfIJ; Sun, 26 Jul 2020 09:42:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id DB8C421135;
	Sun, 26 Jul 2020 09:42:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 28CF71BF35E
 for <devel@linuxdriverproject.org>; Sun, 26 Jul 2020 09:42:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 20AF785E83
 for <devel@linuxdriverproject.org>; Sun, 26 Jul 2020 09:42:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id N2r-G6mzKf8V for <devel@linuxdriverproject.org>;
 Sun, 26 Jul 2020 09:42:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B6E9785D90
 for <devel@driverdev.osuosl.org>; Sun, 26 Jul 2020 09:42:28 +0000 (UTC)
Received: from coco.lan (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2A5992065C;
 Sun, 26 Jul 2020 09:42:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1595756548;
 bh=xU3mIY5/hOHJA9Dae120zT2CM7tU7BcJpSsWowzvqcU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Lm4qRcFfX69sVvN8HloMzZSOCi0Ezg2P6d3048kP4DtpGl11HJxusW9XiM2YhG1Z7
 nOe9QBhlaD+gvKLOlmPPdYLbfkVxVTO2V0628CnUeQ2TTEgeT5bZkecaUA5I0L5G7h
 473Xm9s4iPMV22fPUrYd8YUCz+EUgJVrsnyMAEqU=
Date: Sun, 26 Jul 2020 11:42:24 +0200
From: Mauro Carvalho Chehab <mchehab@kernel.org>
To: Rohit K Bharadwaj <bharadwaj.rohit8@gmail.com>
Subject: Re: [PATCH v3 2/4] staging: media: atomisp: fix style of open brace
Message-ID: <20200726114224.1825a769@coco.lan>
In-Reply-To: <20200726090512.20574-2-bharadwaj.rohit8@gmail.com>
References: <20200726062541.11304-1-bharadwaj.rohit8@gmail.com>
 <20200726090512.20574-2-bharadwaj.rohit8@gmail.com>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
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
 linux-kernel@vger.kernel.org, sakari.ailus@linux.intel.com,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Em Sun, 26 Jul 2020 14:35:12 +0530
Rohit K Bharadwaj <bharadwaj.rohit8@gmail.com> escreveu:

> this patch fixes style of open brace after functions and if statements
> 
> Signed-off-by: Rohit K Bharadwaj <bharadwaj.rohit8@gmail.com>

> @@ -119,8 +121,9 @@ sh_css_load_blob_info(const char *fw, const struct ia_css_fw_info *bi,
>  	blob = (const unsigned char *)fw + bi->blob.offset;
>  
>  	/* sanity check */
> -	if (bi->blob.size != bi->blob.text_size + bi->blob.icache_size + bi->blob.data_size + bi->blob.padding_size)
> -	{
> +	if (bi->blob.size !=
> +		bi->blob.text_size + bi->blob.icache_size +
> +		bi->blob.data_size + bi->blob.padding_size) {


Please adjust the alignments here. I'm pretty sure checkpatch --strict
will end complaining with the above, as the first line ends with "=".

I would, instead, code it as:

	if (bi->blob.size != bi->blob.text_size + bi->blob.icache_size +
			     bi->blob.data_size + bi->blob.padding_size) {


Thanks,
Mauro
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

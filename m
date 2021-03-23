Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E541A345F19
	for <lists+driverdev-devel@lfdr.de>; Tue, 23 Mar 2021 14:12:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0BB9360667;
	Tue, 23 Mar 2021 13:12:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QkfDPK21XB6f; Tue, 23 Mar 2021 13:12:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 47D5660820;
	Tue, 23 Mar 2021 13:12:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A7C261BF331
 for <devel@linuxdriverproject.org>; Tue, 23 Mar 2021 13:12:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7306D60820
 for <devel@linuxdriverproject.org>; Tue, 23 Mar 2021 13:12:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YAwT-AcTP6Yc for <devel@linuxdriverproject.org>;
 Tue, 23 Mar 2021 13:12:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7A72F605D8
 for <devel@driverdev.osuosl.org>; Tue, 23 Mar 2021 13:12:13 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id BF939619B8;
 Tue, 23 Mar 2021 13:12:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1616505133;
 bh=vCYR3ZBZvyax7SeVVHE9u9H/gK+P9HuMDSSUVInEa3k=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=NqunR2LCqbRdIrWeRH4B/w/oeXwFFoAMUYyiluOZ/KAlbO9qURC8kLON+PQr0Gyl6
 ZS8k9UJxqIhWQ4EkV9hyMhAxKS/4g1G/kvV0947eefBXpL3pv+Wxg0sI1PBduGOToM
 fZL2JbVdrZd0wt7vBFDH7lJQUG5Pkh6wP8k1udBPn0+oYknLDmZYeipSGdrUuWgT6I
 NetmbwcsJWGTEbJ75lAhmMoH+RcJeF/U1mZj2aAWs+W+0aFxIC7PsF9NdqB8eUXQPz
 /QSF8YKhlstgZzg3sw5QNKNauIamAwE069/OBvfP2VVVPzTB4DRcaNy5oHr+K5Z+SS
 1RFunG2xTgGoQ==
Date: Tue, 23 Mar 2021 14:12:07 +0100
From: Mauro Carvalho Chehab <mchehab@kernel.org>
To: Philipp Gerlesberger <Philipp.Gerlesberger@fau.de>
Subject: Re: [PATCH v2 06/12] media: atomisp: Remove defines
Message-ID: <20210323141207.2185a4b8@coco.lan>
In-Reply-To: <20201214110156.6152-7-Philipp.Gerlesberger@fau.de>
References: <20201214110156.6152-1-Philipp.Gerlesberger@fau.de>
 <20201214110156.6152-7-Philipp.Gerlesberger@fau.de>
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

Em Mon, 14 Dec 2020 12:01:50 +0100
Philipp Gerlesberger <Philipp.Gerlesberger@fau.de> escreveu:

> Remov defines, they don't make sense.
> The programmer should know what things need to be static and what not.
> Also leave "inline" out and let the compiler decide
> 
> Co-developed-by: Andrey Khlopkov <ij72uhux@stud.informatik.uni-erlangen.de>
> Signed-off-by: Andrey Khlopkov <ij72uhux@stud.informatik.uni-erlangen.de>
> Signed-off-by: Philipp Gerlesberger <Philipp.Gerlesberger@fau.de>
> ---
>  .../media/atomisp/pci/runtime/rmgr/interface/ia_css_rmgr.h   | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/media/atomisp/pci/runtime/rmgr/interface/ia_css_rmgr.h b/drivers/staging/media/atomisp/pci/runtime/rmgr/interface/ia_css_rmgr.h
> index 9cd3d92b34c9..45b72e98bc9f 100644
> --- a/drivers/staging/media/atomisp/pci/runtime/rmgr/interface/ia_css_rmgr.h
> +++ b/drivers/staging/media/atomisp/pci/runtime/rmgr/interface/ia_css_rmgr.h
> @@ -21,10 +21,7 @@
>  #ifndef __INLINE_RMGR__
>  #define STORAGE_CLASS_RMGR_H extern
>  #define STORAGE_CLASS_RMGR_C
> -#else				/* __INLINE_RMGR__ */
> -#define STORAGE_CLASS_RMGR_H static inline
> -#define STORAGE_CLASS_RMGR_C static inline
> -#endif				/* __INLINE_RMGR__ */
> +#endif


No, that's not the right way to address it. Instead, you should
replace the occurrences of those macros at the code and get rid
of them.


Thanks,
Mauro
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

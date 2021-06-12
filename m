Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 07DA13A4FDA
	for <lists+driverdev-devel@lfdr.de>; Sat, 12 Jun 2021 19:04:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F156D404CD;
	Sat, 12 Jun 2021 17:04:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BFyHK57cLe4h; Sat, 12 Jun 2021 17:04:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C3CA840388;
	Sat, 12 Jun 2021 17:04:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B67DB1BF2B6
 for <devel@linuxdriverproject.org>; Sat, 12 Jun 2021 17:04:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A5ACA83440
 for <devel@linuxdriverproject.org>; Sat, 12 Jun 2021 17:04:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=mailo.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IgCIunQbj7vp for <devel@linuxdriverproject.org>;
 Sat, 12 Jun 2021 17:04:05 +0000 (UTC)
X-Greylist: delayed 00:20:34 by SQLgrey-1.8.0
Received: from msg-3.mailo.com (ip-8.mailobj.net [213.182.54.8])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 722F581D5C
 for <devel@driverdev.osuosl.org>; Sat, 12 Jun 2021 17:04:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailo.com; s=mailo;
 t=1623516197; bh=d6LIR7S6jjI4mXqkbA62IUweHEQazYbPtmR/339Qqy8=;
 h=X-EA-Auth:Date:From:To:Cc:Subject:Message-ID:References:
 MIME-Version:Content-Type:In-Reply-To;
 b=ccEujJsiJmKalL+PkWprn1KGuUE/5JjZJ517oFOLXJiXUN/oQD0RcqqDouJIiocel
 TIHm1JxZnX+502pwnbekcy8ixg/f8IfNiLHh43JHb3RAkBOxKs1/yXwDf1gTfwH3Fq
 mgas4guf7lFQ5CHaHr/pmZdfYnoE/eWJLOJVDVAY=
Received: by b-4.in.mailobj.net [192.168.90.14] with ESMTP
 via ip-206.mailobj.net [213.182.55.206]
 Sat, 12 Jun 2021 18:43:17 +0200 (CEST)
X-EA-Auth: A6puxyQLIT2Pr7uBw7qahIRUTGef5g/z72HejE2fnSHmsiJrz0fX37wzQ+FL86Yar2uMGMtCAwVuC8VYABDaFcJSXxb0nJyX
Date: Sat, 12 Jun 2021 22:13:12 +0530
From: Deepak R Varma <drv@mailo.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH RESEND 0/5] staging: media: atomisp: code formatting
 changes
Message-ID: <YMTkIFIDHPdzrPcl@dU2104>
References: <cover.1619850663.git.drv@mailo.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1619850663.git.drv@mailo.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, May 21, 2021 at 12:30:41AM +0530, Deepak R Varma wrote:
> This patch set overall improves the code organisation and readability of
> the files of atomisp drivers. There are several complaints reported by
> checkpatch including ERROR and WARNING types on the files under atomisp/pci
> directory.
> 
> The changes are proposed on a per file basis since there are many
> issues to be addressed in each individual file. The patches are built
> on the media_tree/for-v5.14-out1 tree/branch.

Hi All,
I have only received one comment on one of the patch of this patch set. I
have not seen any comment or ack on the other patches.

Will you review and share feedback on the patches please.

Thank you,
deepak.

> 
> 
> Deepak R Varma (5):
>   staging: media: atomisp: code formatting changes atomisp_csi2.c
>   staging: media: atomisp: code formatting changes sh_css_mipi.c
>   staging: media: atomisp: code formatting changes sh_css_params.c
>   staging: media: atomisp: code formatting changes sh_css_sp.c
>   staging: media: atomisp: code formatting changes sh_css_version.c
> 
>  .../staging/media/atomisp/pci/atomisp_csi2.c  |  72 +-
>  .../staging/media/atomisp/pci/sh_css_mipi.c   | 170 ++--
>  .../staging/media/atomisp/pci/sh_css_params.c | 929 +++++++++---------
>  drivers/staging/media/atomisp/pci/sh_css_sp.c | 471 ++++-----
>  .../media/atomisp/pci/sh_css_version.c        |   4 +-
>  5 files changed, 754 insertions(+), 892 deletions(-)
> 
> -- 
> 2.30.2
> 


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

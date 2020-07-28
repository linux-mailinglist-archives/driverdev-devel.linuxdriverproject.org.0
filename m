Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 695A32305AD
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 Jul 2020 10:43:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id BBF68228D5;
	Tue, 28 Jul 2020 08:43:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nulR1FLsUnVP; Tue, 28 Jul 2020 08:43:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 37D69227CD;
	Tue, 28 Jul 2020 08:43:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6CA7E1BF842
 for <devel@linuxdriverproject.org>; Tue, 28 Jul 2020 08:43:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6938984B60
 for <devel@linuxdriverproject.org>; Tue, 28 Jul 2020 08:43:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YMtOHcCMnacR for <devel@linuxdriverproject.org>;
 Tue, 28 Jul 2020 08:43:48 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6241C84B1F
 for <devel@driverdev.osuosl.org>; Tue, 28 Jul 2020 08:43:48 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 98F10206F5;
 Tue, 28 Jul 2020 08:43:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1595925828;
 bh=xG2EtA52/LnnPqDmfRptDJ0EcKmjdNqZ9O7JBN2Bl5s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=UHGo3rcdXuUAckRTYIGWR14g3x+Nhb26N+wf2u8qpj/A2vl8HSwzsz6J5fWcbu/Tn
 mtZ4Hiv/3Kk2W+XS//f9vC8GRZTkotu16D+POrulNGfFkKIlDNsJ9ECcrsdzIDsHXM
 mQvCZPPECXvErNAMYgaLuITzhuuxl7z05ZIkYKpw=
Date: Tue, 28 Jul 2020 10:43:41 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Ankit <b18007@students.iitmandi.ac.in>
Subject: Re: [PATCH v2] Staging : media : atomisp : fixed a brace coding
 sytle issue
Message-ID: <20200728084341.GA1795795@kroah.com>
References: <20200728073715.GA351768@kroah.com>
 <20200728082330.24948-1-b18007@students.iitmandi.ac.in>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200728082330.24948-1-b18007@students.iitmandi.ac.in>
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
Cc: devel@driverdev.osuosl.org, mchehab@kernel.org,
 linux-kernel@vger.kernel.org, sakari.ailus@linux.intel.com,
 andriy.shevchenko@linux.intel.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Jul 28, 2020 at 01:53:30PM +0530, Ankit wrote:
> From: Ankit Baluni <b18007@students.iitmandi.ac.in>
> 
> Removed braces for a 'if' condition as it contain only single line & 
> there is no need for braces for such case according to coding style
> rules.
> 
> Signed-off-by: Ankit Baluni <b18007@students.iitmandi.ac.in>
> 
> ---
>  drivers/staging/media/atomisp/pci/atomisp_cmd.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)

What changed from v1?

Always put that below the --- line as the documentation asks for.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

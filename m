Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 767E8155465
	for <lists+driverdev-devel@lfdr.de>; Fri,  7 Feb 2020 10:21:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id AF11187DFE;
	Fri,  7 Feb 2020 09:21:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Lgg-NpzPBwhF; Fri,  7 Feb 2020 09:21:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 752B287D89;
	Fri,  7 Feb 2020 09:21:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 238BD1BF59D
 for <devel@linuxdriverproject.org>; Fri,  7 Feb 2020 09:21:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1ADAD85F95
 for <devel@linuxdriverproject.org>; Fri,  7 Feb 2020 09:21:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MxegC64U6XWJ for <devel@linuxdriverproject.org>;
 Fri,  7 Feb 2020 09:21:27 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BF24685F82
 for <devel@driverdev.osuosl.org>; Fri,  7 Feb 2020 09:21:27 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2323A20726;
 Fri,  7 Feb 2020 09:21:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581067287;
 bh=rxfE3CGS2tLN84Rkks86mGZCRveVi6w9/Uzgu4ZbZPw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=O8+eoBko0GW6q3Z58Tr1NRIPXmJSSL3wx2ox9nW0P0FJsQhbTxGOKsiGKtiuw0B25
 ENhCpv1dScCdkL9PBI4cCq1/59wbdT44324XXyrecWBSVXSoSj3HOZICA1Ki9XDD0d
 mQSnr/cQQsoNCFDJz8wyVr7bbbxvMlSiFcOz0hqg=
Date: Fri, 7 Feb 2020 10:21:25 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Saurav Girepunje <saurav.girepunje@gmail.com>
Subject: Re: [PATCH] staging: rtl8723bs: hal: fix condition with no effect
Message-ID: <20200207092125.GA520856@kroah.com>
References: <20200125134604.GA4247@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200125134604.GA4247@google.com>
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
Cc: devel@driverdev.osuosl.org, saurav.girepunje@hotmail.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Jan 25, 2020 at 07:16:04PM +0530, Saurav Girepunje wrote:
> fix warning reorted by coccicheck
> WARNING: possible condition with no effect (if == else)
> 
> Signed-off-by: Saurav Girepunje <saurav.girepunje@gmail.com>
> ---
>  drivers/staging/rtl8723bs/hal/HalBtc8723b2Ant.c | 8 --------
>  1 file changed, 8 deletions(-)

Patch does not apply to Linus's latest tree :(
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

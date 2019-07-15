Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 21E3469BB7
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Jul 2019 21:54:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4622A21539;
	Mon, 15 Jul 2019 19:54:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aoyzBV+auZ6c; Mon, 15 Jul 2019 19:54:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 885CA20445;
	Mon, 15 Jul 2019 19:54:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0BE4E1BF393
 for <devel@linuxdriverproject.org>; Mon, 15 Jul 2019 19:53:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 09228203F1
 for <devel@linuxdriverproject.org>; Mon, 15 Jul 2019 19:53:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ESU3lW81bry9 for <devel@linuxdriverproject.org>;
 Mon, 15 Jul 2019 19:53:58 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 8A3D7203A7
 for <devel@driverdev.osuosl.org>; Mon, 15 Jul 2019 19:53:58 +0000 (UTC)
Received: from localhost (unknown [88.128.80.139])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C605620659;
 Mon, 15 Jul 2019 19:53:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563220438;
 bh=n6cm3L6dN1BEISYwsj9HOpKQvIB6z17LN6vs4l7AxGY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=0PchMxTgtkRsW4x6czb9dBemK3Z58TGgPvh0urhrrgA0x/DmNEyoBH99H4kzujGoG
 A5S0u/VnIw8SvygmxhZ8SJYnHJsOwF+wuM7HXWCJeqfhNeJNx0GnaAk6BBYaSmn3uw
 L4qRV56lYNs46CCNW0GnW2gcJz7KB9hamUEWKaPk=
Date: Mon, 15 Jul 2019 21:37:31 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Emanuel Bennici <benniciemanuel78@gmail.com>
Subject: Re: [PATCH] staging: rtl8723bs: core: Remove code valid only for 5GHz
Message-ID: <20190715193731.GB27406@kroah.com>
References: <20190714172826.GA6950@hari-Inspiron-1545>
 <CA+d=JG=Zyy_azX2eENRBa366TV3GppNBmZ+r8CggM+YGqVY9aQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+d=JG=Zyy_azX2eENRBa366TV3GppNBmZ+r8CggM+YGqVY9aQ@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: devel@driverdev.osuosl.org, Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 linux-kernel@vger.kernel.org, Hardik Singh Rathore <hardiksingh.k@gmail.com>,
 Madhumitha Prabakaran <madhumithabiw@gmail.com>,
 Hans de Goede <hdegoede@redhat.com>,
 Nishka Dasgupta <nishkadg.linux@gmail.com>,
 Vatsala Narang <vatsalanarang@gmail.com>, Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Jul 15, 2019 at 08:51:30AM +0200, Emanuel Bennici wrote:
>  As per TODO ,remove code valid only for 5 GHz(channel > 14).
> 
> Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
> Reviewed-by: Emanuel Bennici <benniciemanuel78@gmail.com>
> ---
>  drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 6 +-----
>  1 file changed, 1 insertion(+), 5 deletions(-)

Please do not send html email to a kernel mailing list :(

Also, what did you do here?  Why resend the whole thing?

confused,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
